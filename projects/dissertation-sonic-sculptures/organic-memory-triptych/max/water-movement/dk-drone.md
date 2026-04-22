# dk-drone.maxpat — Pseudocode

Data Knot drone layer. Listens to live hydrophone, responds directly to dissolution
events with granular/sample playback. No Somax2 involvement — this layer is
low-latency and physically coupled to the container events.

---

## Inputs / Outputs

```
INLET 1:  audio~ from hydrophone (via [receive~ hydrophone-in])
OUTLET 1: audio~ drone output (via [send~ drone-out])
```

---

## Analysis Chain

```
-- dk.descriptors~ is the primary analysis object.
-- It does onset detection AND outputs descriptors in one object.
-- Outlet 0 = list: loudness, loudness_derivative, centroid (MIDI), centroid_derivative,
--                  flatness, flatness_derivative, pitch (MIDI), pitch_confidence
-- Outlet 2 = trigger signal (onset-aligned, use for playback trigger)
-- Outlet 3 = gate signal

[ receive~ hydrophone-in ]
        |
[ dk.descriptors~ ]
  @input 2          -- contact mic mode (appropriate for hydrophone)
  @sensitivity 50   -- default, tune lower (30-40) for quiet dissolution sounds
  @floor -60        -- noise floor, raise to -50 if too many false triggers
  @lockout 100      -- ms between onsets (default 30 is too fast for dissolution)
        |
        ├── outlet 0: descriptor list → [unpack] for individual values (see below)
        ├── outlet 2: trigger~ signal → onset trigger
        └── outlet 3: gate~ signal → sustained gate while sound above floor

-- Unpack descriptor list (order is fixed):
[ unpack 0. 0. 0. 0. 0. 0. 0. 0. ]
  index 0: loudness (dB)
  index 1: loudness_derivative
  index 2: centroid (MIDI pitch, 0-127)
  index 3: centroid_derivative
  index 4: flatness (dB)
  index 5: flatness_derivative
  index 6: pitch (MIDI pitch, 0-127)
  index 7: pitch_confidence (0.0–1.0)
```

---

## Confidence Gate

```
-- Only respond to onsets where pitch is detectable (not pure noise hits)
-- Use pitch_confidence (index 7 from unpack) as quality gate

[ unpack ] outlet 7 → pitch_confidence
        |
[ > 0.6 ]   -- confidence threshold, expose as float number box parameter
        |
    CONFIDENCE PASS (1 = tonal enough, 0 = too noisy)

-- Gate the trigger signal:
[ dk.descriptors~ ] outlet 2 (trigger~)
        |
[ *~ ] ← CONFIDENCE PASS (upsampled via [sig~] or direct *~ gate)
        |
    GATED TRIGGER → playback trigger
```

---

## Pitch → Playback Rate Mapping

```
-- pitch (index 6) arrives as MIDI pitch (0–127), not Hz
-- Convert to playback rate relative to drone sample root pitch

[ unpack ] outlet 6 → MIDI_PITCH
        |
[ - DRONE_ROOT_MIDI ]   -- DRONE_ROOT_MIDI = MIDI note of your drone sample root
        |                 -- e.g. if drone sample is tuned to A2, DRONE_ROOT_MIDI = 45
[ / 12.0 ]              -- semitones → octaves
        |
[ pow 2 ] ← 2^(semitones/12) = playback rate ratio
        |
[ clip 0.5 2.0 ]        -- ±1 octave max transposition range
        |
PLAYBACK_RATE → granular engine
```

---

## Loudness → Amplitude Mapping

```
-- loudness (index 0) arrives in dB

[ unpack ] outlet 0 → LOUDNESS_DB
        |
[ scale -40 -6 0.1 0.9 ]   -- map dB range to amplitude 0.1–0.9
        |                      -- floor at 0.1 so it never goes fully silent
[ clip 0.0 1.0 ]
        |
AMPLITUDE_TARGET → envelope
```

---

## Granular Playback

```
-- Assumes drone sample loaded into buffer~ [drone-sample]
-- Two options: groove~ (simpler) or dk.sampler~ (more expressive)
-- Start with groove~ for testing, switch to dk.sampler~ for performance

-- OPTION A: groove~ approach (simpler, good for testing)
GATED TRIGGER (from outlet 2 of dk.descriptors~, converted to bang via [edge~])
        |
[ line~ 0.0 TARGET_AMP 2000 ]   -- 2s attack envelope (softens onset click)
        |
[ *~ ] ← multiply envelope by groove~ output
        |
[ groove~ drone-sample ]
  rate input: PLAYBACK_RATE (from pitch mapping)
        |
[ *~ AMPLITUDE ]
        |
[ line~ TARGET_AMP 0.0 4000 ]  -- 4s release after each trigger
        |
[ send~ drone-out ]

-- OPTION B: dk.sampler~ approach (more granular control)
-- dk.sampler~ is Data Knot's sample playback object
-- Accepts position, rate, duration, and overlap arguments
-- See dk.sampler~ help patcher for full parameter list
```

---

## Slow Position Drift (for continuous granular texture between onsets)

```
-- Keeps a low-level granular haze running even between onset events
-- Quieter than triggered layer — gives the drone its ambient quality

-- Use a second groove~ instance running at very slow rate (not onset-triggered)
[ groove~ drone-sample 1 ]   -- arg 1 = loop mode on
  rate: 0.15–0.25            -- very slow playback (set via [sig~ 0.2] on inlet 0)
        |
[ *~ 0.12 ]                  -- quiet background amplitude (fixed, not modulated)
        |
[ send~ drone-out ]

-- Alternatively, use dk.sampler~ for more granular texture:
-- See dk.sampler~.maxref.xml in tools/data-knot/docs/dataknot-ref/
-- dk.sampler~ gives independent control of grain position, rate, duration, overlap
```

---

## Notes

- Load multiple drone samples for variety — use a [umenu] or [coll] to select
  different samples per performance/scene
- Consider separate drone samples for different dissolution materials
  (seltzer fizz → higher-pitched drone, clay dissolution → lower/murkier drone)
- fluid.onset~ threshold will need significant tuning during Phase 2 testing —
  dissolution sounds are often quieter and more diffuse than percussive sources

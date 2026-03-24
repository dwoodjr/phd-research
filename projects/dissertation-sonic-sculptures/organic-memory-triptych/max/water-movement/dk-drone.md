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
[ receive~ hydrophone-in ]
        |
        ├── [ fluid.onset~ ]
        |     threshold: 0.5   -- tune per dissolution material
        |     mingap: 100ms    -- ignore re-triggers within 100ms
        |     |
        |     └── ONSET BANG (goes to playback trigger below)
        |
        ├── [ fluid.pitch~ ]
        |     numframes: 2048
        |     hopsize: 512
        |     |
        |     ├── outlet 0: frequency (Hz)
        |     └── outlet 1: confidence (0.0–1.0)
        |
        └── [ fluid.loudness~ ]
              numframes: 2048
              hopsize: 512
              |
              └── outlet 0: loudness (dB, roughly -60 to 0)
```

---

## Confidence Gate

```
-- Only respond to onsets where pitch is detectable (not pure noise hits)

[ fluid.pitch~ ] confidence outlet
        |
[ > 0.7 ]   -- confidence threshold, expose as parameter
        |
[ gate 1 ]  ← also gated by ONSET BANG from fluid.onset~
        |
    GATED ONSET BANG → playback trigger
```

---

## Pitch → Playback Rate Mapping

```
[ fluid.pitch~ ] Hz outlet
        |
[ / BASE_FREQ ]   -- BASE_FREQ = fundamental pitch of your drone sample
        |           -- e.g. if drone sample is tuned to A2 (110 Hz), divide by 110
[ clip 0.5 2.0 ]  -- limit rate to ±1 octave transposition range
        |
[ * ] ← playback rate for granular engine
```

---

## Loudness → Amplitude Mapping

```
[ fluid.loudness~ ] dB outlet
        |
[ scale -40 -6 0.1 0.9 ]   -- map dB range to amplitude 0.1–0.9
        |                      -- floor at 0.1 so it never goes silent entirely
[ clip 0.0 1.0 ]
        |
[ * ] ← amplitude envelope target
```

---

## Granular Playback

```
-- Assumes drone sample loaded into buffer~ [drone-sample]
-- Use groove~ or a granular object (e.g. munger~, fluid.bufgrain~ if available)

GATED ONSET BANG
        |
[ line~ 0.0 TARGET_AMP 2000 ]   -- 2s attack envelope (softens onset click)
        |
[ *~ ]  ← also multiply by playback output
        |
[ groove~ drone-sample PLAYBACK_RATE ]
        |
    -- or use granular approach:
    -- [ fluid.bufgrain~ drone-sample ]
    --   position: slow random drift (drunk object / triangle LFO)
    --   rate: from pitch mapping above
    --   duration: 200–800ms grains
    --   overlap: 2–4
        |
[ *~ AMPLITUDE ]
        |
[ line~ TARGET_AMP 0.0 4000 ]  -- 4s release after each onset trigger
        |
[ send~ drone-out ]
```

---

## Slow Position Drift (for continuous granular texture between onsets)

```
-- Keeps a low-level granular haze running even between onset events
-- Quieter than triggered layer — gives the drone its ambient quality

[ phasor~ 0.003 ]       -- very slow cycle (~5 min full sweep of sample)
        |
[ *~ sample_length ]    -- scale to buffer length in ms
        |
[ fluid.bufgrain~ drone-sample ]
  position: above
  rate: 1.0
  duration: 600ms
  amplitude: 0.15       -- quiet background haze
        |
[ send~ drone-out ]
```

---

## Notes

- Load multiple drone samples for variety — use a [umenu] or [coll] to select
  different samples per performance/scene
- Consider separate drone samples for different dissolution materials
  (seltzer fizz → higher-pitched drone, clay dissolution → lower/murkier drone)
- fluid.onset~ threshold will need significant tuning during Phase 2 testing —
  dissolution sounds are often quieter and more diffuse than percussive sources

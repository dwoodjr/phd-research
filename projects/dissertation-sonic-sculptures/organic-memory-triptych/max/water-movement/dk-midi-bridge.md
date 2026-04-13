# dk-midi-bridge.maxpat — Pseudocode

Translates Data Knot descriptor output into MIDI note events, quantized to the
global transport grid. Output goes to the phrase buffer — not directly to S2.

---

## Inputs / Outputs

```
INLET 1:  audio~ from hydrophone (via [receive~ hydrophone-in])
INLET 2:  transport clock messages (via [receive transport-clock])
OUTLET 1: MIDI note messages (pitch, velocity, channel) → [send phrase-buf-in]
```

---

## Analysis

```
-- dk.descriptors~ handles onset detection + all descriptors in one object.
-- Outlet 0 = list: loudness, loudness_derivative, centroid (MIDI), centroid_derivative,
--                  flatness (dB), flatness_derivative, pitch (MIDI), pitch_confidence
-- Outlet 2 = trigger~ signal (onset-aligned)

-- NOTE: Use a SEPARATE instance of dk.descriptors~ from dk-drone
-- (each analysis instance should be independent to avoid shared state)

[ receive~ hydrophone-in ]
        |
[ dk.descriptors~ ]
  @input 2          -- contact mic mode
  @sensitivity 45   -- slightly less sensitive than drone (fewer false triggers into MIDI)
  @floor -58
  @lockout 150      -- longer lockout than drone — avoids flooding phrase buffer
        |
        ├── outlet 0: descriptor list → [unpack 0. 0. 0. 0. 0. 0. 0. 0.]
        |     index 0: loudness (dB)
        |     index 2: centroid (MIDI pitch, 0–127)
        |     index 4: flatness (dB — lower = more tonal, higher = more noise-like)
        |     index 6: pitch (MIDI pitch, 0–127)
        |     index 7: pitch_confidence (0.0–1.0)
        |
        └── outlet 2: trigger~ → onset detection (convert to bang with [edge~])
```

---

## Confidence + Flatness Gate

```
-- pitch_confidence (index 7): reject low confidence onsets
-- flatness (index 4, in dB): more negative = more tonal (e.g. -60dB = very tonal)
--   flatness near 0dB = white noise; flatness around -40 to -60dB = tonal content

-- NOTE: dk.descriptors~ also supports [inputfilter] message for built-in filtering:
-- Example: [inputfilter pitch_confidence > 0.6 and flatness < -20]
-- This is cleaner than manual gating — use it to gate onsets within the object itself

[ message: inputfilter pitch_confidence > 0.6 and flatness < -20 ]
    → [ dk.descriptors~ ]

-- With inputfilter set, outlet 2 trigger~ only fires when conditions are met.
-- No separate gate logic needed — the filter is built in.

-- For manual gate (alternative if inputfilter is too aggressive):
[ unpack ] pitch_confidence (index 7)
        |
[ > 0.6 ]
        |
QUALITY_PASS → [ gate 1 ] ← onset bang from [edge~] on outlet 2
```

---

## Transport Quantization

```
-- Convert trigger~ to bang, then quantize to transport grid

[ dk.descriptors~ ] outlet 2 (trigger~)
        |
[ edge~ ]   -- converts trigger signal to bang on rising edge
        |
ONSET BANG
        |
[ t b b ]
    |       |
[ set 1 ]  [ qmetro 1n ]   -- quantize to nearest quarter note
    |       |               -- 2n for half-note grid (more spacious feel)
    └──→ arm qmetro
            |
        QUANTIZED BANG
            |
        [ random 40 ]       -- 0–40ms humanization jitter
            |
        [ delay ]
            |
        HUMANIZED QUANTIZED BANG → MIDI note builder
```

---

## Descriptor → MIDI Mapping

```
-- All values stored on onset, read on humanized quantized bang

-- PITCH: Use centroid (index 2) — already in MIDI pitch format
[ unpack ] outlet 2 → CENTROID_MIDI
        |
[ clip 36 84 ]          -- constrain to C2–C6 range
        |
[ round ]
        |
[ snapshot ] ← triggered by HUMANIZED QUANTIZED BANG (use [snapshot], not [snapshot~])
        |
MIDI_PITCH value

-- VELOCITY: From loudness (index 0, in dB)
[ unpack ] outlet 0 → LOUDNESS_DB
        |
[ scale -45 -6 30 110 ]    -- map dB range → velocity 30–110
        |
[ clip 1 127 ]
        |
[ int ] ← snapshot on HUMANIZED QUANTIZED BANG
        |
MIDI_VELOCITY value

-- CHANNEL: Route by pitch register to different S2 instrument groups
MIDI_PITCH value
        |
[ sel ]  -- use [if] or [route] for range matching:
[ if $i1 < 48 then 3 ]              -- low  → ch 3 (Piano/Vibraphone)
[ if $i1 >= 48 && $i1 < 66 then 2 ] -- mid  → ch 2 (Woodwind)
[ if $i1 >= 66 then 1 ]             -- high → ch 1 (Strings)
        |
MIDI_CHANNEL value
```

---

## Note Construction & Output

```
HUMANIZED QUANTIZED BANG
        |
[ pack MIDI_PITCH MIDI_VELOCITY MIDI_CHANNEL ]
        |
[ makenote MIDI_PITCH MIDI_VELOCITY 500 ]   -- fixed 500ms note duration
        |                                     -- tune this per feel
        |  note-on                note-off
        |      |                      |
        └──→ [ send phrase-buf-in ]   └──→ [ send phrase-buf-in ]

-- Note: phrase-buffer handles both note-on and note-off messages
-- Duration here is a rough default — phrase buffer may override timing
```

---

## Visual Monitoring (for testing)

```
-- During Phase 3 testing, add these before removing for performance:

MIDI output → [ midiparse ] → [ display ] for pitch/vel/ch readout
MIDI_PITCH  → [ number box ]
MIDI_VEL    → [ number box ]
MIDI_CH     → [ number box ]
ONSET BANG  → [ button ] flash indicator
QUALITY GATE → [ led ] green/red pass/fail indicator
```

---

## Notes

- The centroid → MIDI pitch mapping is a first approximation.
  Tune the [scale] range during Phase 3 testing — dissolution sounds often
  cluster in specific frequency bands depending on your container material.
- Consider adding a [drunk] or [drunk]-like offset to the MIDI pitch to introduce
  slight melodic variation even when centroid stays stable.
- The 3-channel routing (by register) is a simple first approach — could be
  replaced by a fluid.mlpclassifier trained on your specific dissolution sounds
  once you have enough recorded material.

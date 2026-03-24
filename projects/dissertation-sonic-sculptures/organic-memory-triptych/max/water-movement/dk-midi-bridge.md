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
[ receive~ hydrophone-in ]
        |
        ├── [ fluid.onset~ ]          -- onset detection
        |     threshold: 0.5
        |     mingap: 150ms           -- slightly longer than drone to avoid flooding
        |     |
        |     └── ONSET BANG
        |
        ├── [ fluid.pitch~ ]          -- pitch estimation
        |     numframes: 2048
        |     |
        |     ├── Hz value
        |     └── confidence
        |
        ├── [ fluid.loudness~ ]       -- dynamics
        |     |
        |     └── dB value
        |
        └── [ fluid.spectralshape~ ]  -- timbre
              numframes: 2048
              |
              ├── outlet 0: centroid (Hz)    -- maps to pitch register
              └── outlet 3: flatness (0–1)   -- tonal vs. noise quality
```

---

## Confidence + Flatness Gate

```
-- Only pass onsets that have some pitch content (not pure noise bursts)
-- Spectral flatness near 1.0 = white noise, near 0.0 = tonal

[ fluid.pitch~ ] confidence     [ fluid.spectralshape~ ] flatness
        |                                   |
[ > 0.6 ]                          [ < 0.7 ]   -- reject highly flat (noisy) signals
        |                                   |
        └──────── [ && ] ───────────────────┘
                    |
             QUALITY GATE (1 = pass, 0 = reject)
                    |
             [ gate 1 ] ← ONSET BANG
                    |
             GATED ONSET BANG → quantization step
```

---

## Transport Quantization

```
-- Arm a metro on onset, fire on next beat grid point

GATED ONSET BANG
        |
[ t b b ]
    |       |
[ set 1 ]  [ qmetro 1n ]   -- quantize to nearest quarter note
    |       |               -- change to 2n for half-note grid (more spacious)
    └──→ arm qmetro
            |
        QUANTIZED BANG (fires on next beat boundary)
            |
        -- Small humanization offset:
        [ random 40 ]        -- 0–40ms random delay
            |
        [ delay ]
            |
        HUMANIZED QUANTIZED BANG → MIDI note builder
```

---

## Descriptor → MIDI Mapping

```
-- All mappings run in parallel, values stored and read on quantized bang

-- PITCH: Use spectral centroid as register indicator
[ fluid.spectralshape~ ] centroid Hz
        |
[ scale 200 6000 36 84 ]   -- map 200Hz–6kHz → MIDI C2–C6
        |
[ round ]                  -- to nearest integer
        |
[ clip 36 84 ]
        |
[ snapshot~ ] ← triggered by HUMANIZED QUANTIZED BANG
        |
MIDI_PITCH value

-- VELOCITY: From loudness
[ fluid.loudness~ ] dB
        |
[ scale -45 -6 30 110 ]    -- map dB range → velocity 30–110
        |
[ clip 1 127 ]
        |
[ snapshot~ ] ← triggered by same bang
        |
MIDI_VELOCITY value

-- CHANNEL: From centroid range (routes to different instrument groups)
MIDI_PITCH value
        |
[ if $i1 < 48 then 3 ]     -- low register  → ch 3 (chord/bass player)
[ if $i1 >= 48 and $i1 < 66 then 2 ]  -- mid → ch 2 (woodwind player)
[ if $i1 >= 66 then 1 ]    -- high register → ch 1 (strings player)
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

# Water Movement — Signal Chain

Organic Memory Triptych | Movement II

---

## Overview

This folder contains the Max patcher pseudocode and documentation for the Water Movement signal chain. The movement uses a live hydrophone/dissolution container as its primary input, routing audio through Data Knot (FluCoMa-based) for onset detection and descriptor analysis, then into a phrase-aware buffer before Somax2 improvises the motif across multiple VST instrument groups.

The drone/ambient texture layer is handled entirely by Data Knot, bypassing S2 for direct, low-latency response to dissolution events.

---

## Signal Chain Diagram

```
HYDROPHONE (live audio in)
        │
        ▼
[ DATA KNOT ]
  fluid.onset~  +  fluid.pitch~  +  fluid.loudness~  +  fluid.spectralshape~
        │
        ├─────────────────────────────────────────────────────────────┐
        │                                                             │
        ▼                                                             ▼
[ dk-drone.maxpat ]                                    [ dk-midi-bridge.maxpat ]
  Granular/sample playback                               Descriptors → MIDI notes
  Direct response to onsets                              Quantized to global transport
  (no S2 involvement)                                             │
        │                                                           ▼
        │                                               [ phrase-buffer.maxpat ]
        │                                                 Accumulate MIDI notes
        │                                                 Detect phrase boundary
        │                                                 Flush complete phrase
        │                                                           │
        │                                                           ▼
        │                                               [ s2-players.maxpat ]
        │                                                 3x S2 MIDI players
        │                                                 Inter-agent influence
        │                                                 MIDI out → VSTs
        │                                                           │
        └───────────────────────────────────────────────────────────┘
                                    │
                              [ MIXER / OUT ]
                           Spatial audio / DAW send
```

**Global transport** (60 BPM, 4/4, breathing 54–66 BPM) runs as temporal spine throughout.

---

## Files in This Folder

| File | Description |
|---|---|
| `water-movement-main.md` | Master patch — transport, busses, subpatch loading, master gain/mix |
| `dk-drone.md` | Data Knot drone layer — onset → granular playback of drone samples |
| `dk-midi-bridge.md` | Descriptor → MIDI translation with transport-quantized onset timing |
| `phrase-buffer.md` | Phrase accumulator — collects MIDI notes, detects phrase boundary, flushes to S2 |
| `s2-players.md` | Somax2 multi-player setup — MIDI corpus, inter-agent routing, VST output |

---

## Key Design Decisions

- **S2 is call-and-response only** — it does not react to individual onsets. It receives complete phrases from the phrase buffer and responds with its own improvised phrase before waiting for the next input.
- **Data Knot owns the drone layer** — DK responds directly and immediately to dissolution events without S2 mediation. This keeps the textural/ambient layer tight to the physical event.
- **Global transport is the temporal spine** — all onset triggers are quantized to the transport grid before downstream processing. S2 tempo is bounded to adagio range (45–75 BPM).
- **Motif corpus is pre-recorded** — S2 navigates MIDI files of the water motif recorded with target VST instruments. Corpus is organized by instrument group (strings / woodwinds / chords).

---

## Instrument Groups (Test Configuration)

- **Player 1 — Strings** (sustained, lyrical) — receives from phrase buffer + influences Player 2
- **Player 2 — Woodwinds/Flute** (melodic, breathy) — receives from Player 1, influences Player 3
- **Player 3 — Piano/Vibraphone** (chordal anchor) — receives from Player 2, optionally feeds back to Player 1

---

## Tuning Reference

| Parameter | Default | Range | Notes |
|---|---|---|---|
| Transport BPM | 60 | 54–66 | Breathing sweep via line object |
| DK onset threshold | 0.5 | 0.3–0.8 | Tune to dissolution material |
| Pitch confidence filter | 0.7 | 0.5–0.9 | Suppress noise hits |
| Phrase silence gap | 600ms | 400–1200ms | Main phrase boundary trigger |
| Min notes per phrase | 2 | 1–4 | Ignore stray single onsets |
| Note flush spacing | 50ms | 20–100ms | Speed S2 sees incoming phrase |
| S2 tempo_min / max | 45 / 75 | ±10 BPM | Rubato range |
| S2 reactive_factor | 0.35 | 0.2–0.6 | Lower = more phrase-committed |

---

## Build Order

1. `water-movement-main` — transport + busses first
2. `dk-drone` — test with recorded audio before live hydrophone
3. `dk-midi-bridge` — verify MIDI output in monitor before connecting downstream
4. `phrase-buffer` — test standalone with MIDI keyboard
5. `s2-players` — load corpus, test single player before adding inter-agent routing
6. Full integration — layer by layer, recorded audio first, then live

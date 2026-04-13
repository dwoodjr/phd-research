# s2-players.maxpat — Pseudocode

Somax2 multi-player subpatch. Receives complete phrases from phrase-buffer,
routes them through three inter-influencing Somax2 players, and sends MIDI
output to three VST instrument groups.

This patch embodies the call-and-response logic of the water movement: S2
only ever responds to complete dissolved phrases, not individual onset events.
The three players are not independent — each one hears and is shaped by the
others, enacting a kind of dissolved coral where each voice partially becomes
the others over time.

---

## Inputs / Outputs

```
INLET 1:  MIDI note messages (pitch vel ch) via [receive s2-influence-in]
          — complete phrases flushed from phrase-buffer
OUTLET 1: MIDI out Player 1 (Strings)      → [send s2-midi-out-1]
OUTLET 2: MIDI out Player 2 (Woodwind)     → [send s2-midi-out-2]
OUTLET 3: MIDI out Player 3 (Piano/Vib)    → [send s2-midi-out-3]
```

---

## Architecture Overview

```
[ receive s2-influence-in ]   ← complete phrase from phrase-buffer
            │
            ▼
  [ INFLUENCE ROUTER ]
    strips channel, rebroadcasts pitch+vel as influence to all 3 players
            │
            ├──────────────────────────────────────────┐
            ▼                                          │
     [ S2 PLAYER 1 ]                                  │
       Strings corpus                                  │
       Responds to: external influence (phrase-buf)    │
       Also influenced by: Player 3 feedback (opt.)   │
            │                                          │
            ├── MIDI out → [send s2-midi-out-1]        │
            │                                          │
            └── influence tap ──────────────────────▶  │
                                                 [ S2 PLAYER 2 ]
                                                   Woodwind corpus
                                                   Responds to: Player 1 output
                                                        │
                                                        ├── MIDI out → [send s2-midi-out-2]
                                                        │
                                                        └── influence tap ──────────────────▶
                                                                                    [ S2 PLAYER 3 ]
                                                                                      Piano/Vib corpus
                                                                                      Responds to: Player 2 output
                                                                                           │
                                                                                           ├── MIDI out → [send s2-midi-out-3]
                                                                                           │
                                                                                           └── (optional feedback → Player 1)
```

---

## Somax2 Server Startup

```
-- Somax2 uses somax.server to manage the Python backend.
-- Send [initialize] to start the server before any player activity.

[ loadbang ]
    │
[ delay 500 ]      -- give Max audio engine time to settle
    │
[ message: initialize ]
    │
[ somax.server ]   -- Somax2 server object
                   -- manages all players, corpus paths, and tempo

-- Set corpus root path (where .pickle/.gz corpus files live):
[ message: corpuspath /path/to/your/corpus/folder ]
    │
[ somax.server ]

-- Set server tempo (S2 will drift within this):
[ message: tempo 60 ]
    │
[ somax.server ]

-- Visual indicator: somax.server has a built-in UI — use it during dev
-- On session end:
[ message: terminate ] → [ somax.server ]

-- NOTE: somax2.maxpat (in tools/somax2/) shows the full server UI.
-- For this patch, we build a lean version using just the objects we need.
```

---

## Corpus Building — Before First Run

```
-- Corpora must be built from MIDI files BEFORE first playback.
-- Use somax.midicorpusbuilder to build .pickle corpus files.
-- Do this once per instrument group, then the .pickle files are reused.

[ somax.midicorpusbuilder ]
  -- Open the builder UI, point at a folder of MIDI files
  -- Name the corpus (e.g. "water-strings", "water-woodwinds", "water-chords")
  -- Build → saves .pickle file to corpuspath

-- Recommended corpus folder structure:
--   corpus/water-movement/
--     strings/       → MIDI files for Player 1 (sustained, lyrical)
--     woodwinds/     → MIDI files for Player 2 (melodic, breathy)
--     chords/        → MIDI files for Player 3 (chordal anchor, vibraphone)
--
-- Motif cell (tri-pa-let | dah dah dah da daaa) should appear in
-- multiple harmonic/rhythmic contexts across corpus MIDI files.
```

---

## Player Setup — Three Players

```
-- Each player is a somax.player object with a unique name.
-- Players register automatically with somax.server on creation.

[ somax.player ]   -- Player 1, name: p1-strings
[ somax.player ]   -- Player 2, name: p2-woodwind
[ somax.player ]   -- Player 3, name: p3-chords

-- Load corpus into each player (after server is initialized):
[ message: corpus water-strings ]  → [ somax.player p1 ]
[ message: corpus water-woodwinds ]→ [ somax.player p2 ]
[ message: corpus water-chords ]   → [ somax.player p3 ]

-- Set reactive mode (respond to influence, not free-running):
[ message: mode reactive ]   → all three players

-- Set note duration to Hold (sustain until next trigger):
[ message: mididurations Hold ] → all three players

-- Set output channel per player:
[ message: midioutput channel 1 ] → [ somax.player p1 ]   -- Strings VST
[ message: midioutput channel 2 ] → [ somax.player p2 ]   -- Woodwind VST
[ message: midioutput channel 3 ] → [ somax.player p3 ]   -- Piano/Vib VST
```

---

## Player Configuration — Shared Parameters

```
-- continuity: balance between corpus continuation vs. jumping
-- Higher = more phrase-committed, fewer jumps (good for water — slow chemical time)
[ message: continuity 1.5 ]   → all players   -- default 1.0, slightly higher here

-- quality: minimum match score to play anything
[ message: quality 0.01 ]     → all players   -- low threshold = play even weak matches

-- Expose as number boxes for live tuning during development
```

---

## Influence Router — Phrase-Buffer → Player 1

```
-- somax.midiinfluencer is the object that takes MIDI input and influences a player.
-- Route phrase-buffer MIDI output through a midiinfluencer into Player 1.

[ receive s2-influence-in ]    -- complete phrase from phrase-buffer
        │
[ somax.midiinfluencer ]       -- MIDI influencer targeting Player 1
  -- Connect this influencer to Player 1 in the somax.server routing matrix
  -- (in the server UI: set source for p1 to this influencer)
  -- Or use message: [router 1 source <influencer-name>] → somax.server

-- The midiinfluencer handles onset detection from MIDI note-ons automatically.
-- It segments the incoming phrase and sends influence onset + pitch + chroma to Player 1.

-- midiinfluencer parameters:
[ message: midiinfluencer onsetlimit 200 ]   -- min ms between influence onsets
                                              -- prevents flooding from fast phrases
[ message: midiinfluencer chordthreshold 80 ]-- ms window for chord grouping
```

---

## Player 1 — Strings (Sustained, Lyrical)

```
[ somax.player ]   (named p1-strings in server)
        │
        ├── MIDI output via somax.midirenderer
        │       │
        │   [ somax.midirenderer ]
        │     (connected to p1-strings in server routing)
        │       │
        │   MIDI notes out → ch 1 → Strings VST
        │       │
        │   [ send s2-midi-out-1 ]   -- to master mix bus / DAW
        │
        └── influence tap → Player 2
                │
         -- Tap MIDI output from midirenderer (note-on only):
         [ midiparse ] note-on only
                │
         [ somax.midiinfluencer ]   (influencer for p2-woodwind)
         -- This influencer is connected to p2-woodwind in server routing
```

---

## Player 2 — Woodwind / Flute (Melodic, Breathy)

```
[ somax.player ]   (named p2-woodwind)
-- Receives influence from: midiinfluencer fed by p1-strings output
        │
        ├── MIDI output via somax.midirenderer
        │       │
        │   MIDI notes out → ch 2 → Woodwind VST
        │       │
        │   [ send s2-midi-out-2 ]
        │
        └── influence tap → Player 3
                │
         [ somax.midiinfluencer ]   (influencer for p3-chords)
```

---

## Player 3 — Piano / Vibraphone (Chordal Anchor)

```
[ somax.player ]   (named p3-chords)
-- Receives influence from: midiinfluencer fed by p2-woodwind output
        │
        ├── MIDI output via somax.midirenderer
        │       │
        │   MIDI notes out → ch 3 → Piano/Vib VST
        │       │
        │   [ send s2-midi-out-3 ]
        │
        └── influence tap (OPTIONAL FEEDBACK to Player 1)
                │
         [ toggle ] FEEDBACK_ENABLE   -- off by default
                │
         [ gate 1 ] ← FEEDBACK_ENABLE
                │
         [ somax.midiinfluencer ]   (second influencer for p1-strings)
         -- In server routing: add this as a second source for p1-strings
         -- Keep its weight low via router chroma / pitch settings
```

---

## Call-and-Response Timing

```
-- S2 does not respond to each note in real time.
-- It holds its response until it has processed the full incoming phrase,
-- then generates a complete response phrase at its own tempo.
-- This is governed by reactive_factor + queue_length parameters.

-- Timeline of a typical event:
--
--   0ms     Dissolution onset detected (dk-midi-bridge)
--   ~50ms   Quantized to transport grid
--   ~600ms+ Silence gap triggers phrase-buffer flush
--   ~600ms+ S2 receives complete phrase (3–6 notes, spaced 50ms)
--   ~800ms  S2 finishes processing phrase, selects response from corpus
--   ~1000ms Player 1 begins outputting response phrase
--   ~1200ms Player 1 output reaches Player 2 as influence
--   ~1600ms Player 2 begins responding to Player 1
--   ...and so on down the chain

-- This cascade is intentional — the response unfolds across 2–4 seconds,
-- matching the "chemical" tempo of the movement (minutes per cycle).
```

---

## Global Controls & Bypass

```
[ toggle ] S2_ENABLE
    │
[ gate 1 ] ← gates all three somax.player objects
    │
-- When S2_ENABLE = 0: players are paused, corpus held in memory.
-- When S2_ENABLE = 1: players resume, reactive to incoming influence.

[ button ] ALL_NOTES_OFF
    │
[ midiout ] noteoff 0 vel 0 on ch 1, 2, 3   -- panic for all VST channels

[ toggle ] FEEDBACK_ENABLE   -- enables P3 → P1 feedback loop (see Player 3)

[ number box ] GLOBAL_INFLUENCE_SCALE   -- 0.0–1.0 attenuator on all influence weights
  default: 1.0
  use: scale back S2's sensitivity to incoming phrases during dense dissolution phases

[ number box ] NOTE_DURATION_SCALE   -- multiplier on all makenote durations
  default: 1.0   -- range: 0.5–3.0
  use: slow all players to more geological time in performance
```

---

## Inter-Agent Influence Weights Summary

```
| Connection          | Object              | Default Weight | Range    | Notes                          |
|---------------------|---------------------|----------------|----------|--------------------------------|
| phrase-buf → P1     | somax.influence p1  | 1.0            | 0.5–1.0  | Primary material input         |
| P1 output → P2      | somax.influence p2  | 0.7            | 0.3–1.0  | Strong — P2 responds to P1     |
| P2 output → P3      | somax.influence p3  | 0.6            | 0.3–1.0  | Moderate — P3 anchors P2       |
| P3 output → P1      | somax.influence p1  | 0.3            | 0.1–0.5  | Weak feedback — off by default |
```

---

## Exposed Parameters (UI)

```
[ toggle ]      SERVER_START / STOP     -- start/stop Somax2 Python server
[ led x3 ]     CORPUS LOADED P1/P2/P3  -- green when corpus ready
[ toggle ]      S2_ENABLE               -- pause/resume all players
[ number box ]  TEMPO_MIN               default: 45
[ number box ]  TEMPO_MAX               default: 75
[ number box ]  REACTIVE_FACTOR         default: 0.35
[ number box ]  INF_WEIGHT_P1_P2        default: 0.7
[ number box ]  INF_WEIGHT_P2_P3        default: 0.6
[ number box ]  INF_WEIGHT_P3_P1        default: 0.3  (feedback, if enabled)
[ toggle ]      FEEDBACK_ENABLE         default: off
[ number box ]  NOTE_DUR_SCALE          default: 1.0
[ number box ]  GLOBAL_INF_SCALE        default: 1.0
[ button ]      ALL_NOTES_OFF           -- panic
[ button ]      RELOAD_CORPUS           -- hot-reload all three corpora
```

---

## Debug / Visual Monitoring

```
-- During development, add before removing for performance:

[ somax.player p1 ] MIDI out → [ midiparse ] → [ number box ] P1 pitch
[ somax.player p2 ] MIDI out → [ midiparse ] → [ number box ] P2 pitch
[ somax.player p3 ] MIDI out → [ midiparse ] → [ number box ] P3 pitch

[ somax.player p1 ] state outlet → [ message box ]   -- "playing" / "waiting"
[ somax.player p2 ] state outlet → [ message box ]
[ somax.player p3 ] state outlet → [ message box ]

-- Route all influence inputs to [button] flash indicators
-- to confirm phrase-buffer → S2 communication is live
```

---

## Notes

- Somax2 corpus files should be MIDI recordings made with the actual target VST
  loaded — S2 will navigate these files tonally, so the corpus timbre should
  match the performance timbre exactly.
- Record corpus MIDI files that contain the motif cell (tri-pa-let | dah dah dah
  da daaa) in multiple registers, tempos, and harmonic contexts so S2 has rich
  material to draw from when dissolution sounds converge on the motif.
- The inter-agent influence chain (P1 → P2 → P3) enacts the "Fugitive Speculation"
  ST domain: each player speculates on the other's dissolved material, refusing
  to resolve into a single voice. The optional feedback loop (P3 → P1) is the
  patch's most speculative gesture — use sparingly.
- If Somax2 server startup latency is a problem in performance, pre-launch the
  Python server from terminal before opening the Max patch.
- Somax2's internal tempo is bounded (45–75 BPM) but floats within that range.
  Combined with the global transport breathing (54–66 BPM), you get a slow
  polyrhythmic texture between the drone layer (transport-locked) and the S2
  layer (tempo-drifting) — this is intentional and desirable.

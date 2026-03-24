# phrase-buffer.maxpat — Pseudocode

Phrase accumulator. Collects incoming MIDI notes from dk-midi-bridge, detects
phrase boundaries, and flushes complete phrases to S2 as coherent batches.

This is the key component that prevents S2 from reacting note-by-note.
S2 only ever receives complete phrases — never individual onset events.

---

## Inputs / Outputs

```
INLET 1:  MIDI note messages (pitch vel ch) via [receive phrase-buf-in]
INLET 2:  transport clock messages via [receive transport-clock]
OUTLET 1: flushed MIDI phrases → [send s2-influence-in]
```

---

## Data Structure

```
-- [coll] stores accumulated notes as indexed list
-- Format: index → pitch velocity channel timestamp

[ coll phrase-notes ]   -- cleared on each flush
[ counter ]             -- note index, reset on flush
[ timer ]               -- silence gap timer, reset on each new note
[ int ]                 -- current note count in buffer
```

---

## Note Accumulation

```
[ receive phrase-buf-in ]
        |
[ midiparse ]      -- separates note-on, note-off, channel
        |
   note-on only (velocity > 0)
        |
        ├── [ counter ] → INDEX
        |
        ├── [ pack pitch velocity channel ] → store in [coll] at INDEX
        |
        ├── [ int ] increment NOTE_COUNT
        |
        └── [ timer reset ]    -- restart silence gap timer on every new note
                                -- (timer counts up from last note received)
```

---

## Phrase Boundary Detection

### Method A — Silence Gap (primary)

```
[ timer ]   -- running since last note received
        |
[ > SILENCE_THRESHOLD ]   -- SILENCE_THRESHOLD default: 600ms
        |                    -- expose as [number box] parameter
[ select 1 ]
        |
    SILENCE BOUNDARY BANG → flush trigger (if NOTE_COUNT >= MIN_NOTES)
```

### Method B — Bar Boundary (alternative / additional)

```
[ receive transport-clock ]
        |
[ transport ] → bar change message
        |
[ select bar ]   -- fires on every new bar
        |
BAR BOUNDARY BANG → flush trigger (if NOTE_COUNT >= MIN_NOTES)

-- Use Method A OR Method B, or combine:
-- Method A for organic phrase detection
-- Method B as a fallback if silence never comes (dense dissolution)
-- [ || ] to combine both into a single flush trigger
```

---

## Minimum Notes Gate

```
SILENCE/BAR BOUNDARY BANG
        |
[ int NOTE_COUNT ]
        |
[ >= MIN_NOTES ]   -- MIN_NOTES default: 2 (reject single stray onsets)
        |            -- expose as [number box] parameter
[ select 1 ]
        |
    VALID PHRASE BANG → flush sequence
```

---

## Flush Sequence

```
-- Reads all stored notes from [coll] and sends them in sequence
-- with small delay between notes so S2 sees a flowing phrase

VALID PHRASE BANG
        |
[ int 0 ] → INDEX_START
        |
[ uzi NOTE_COUNT ]   -- fires NOTE_COUNT bangs in sequence
        |
[ i ] → CURRENT_INDEX
        |
[ coll phrase-notes ] → retrieve note at CURRENT_INDEX
        |                 returns: pitch velocity channel
        |
[ delay FLUSH_SPACING * CURRENT_INDEX ]
  FLUSH_SPACING default: 50ms   -- expose as parameter
        |
[ pack pitch velocity channel ]
        |
[ send s2-influence-in ]   -- S2 receives notes spaced 50ms apart

-- AFTER FLUSH:
VALID PHRASE BANG (after uzi completes)
        |
[ coll phrase-notes clear ]   -- empty the buffer
[ counter reset ]              -- reset note index
[ int 0 ]                      -- reset note count
[ led flash ]                  -- visual confirmation
```

---

## Exposed Parameters (UI)

```
[ number box ] SILENCE_THRESHOLD   default: 600   range: 200–2000 (ms)
[ number box ] MIN_NOTES           default: 2     range: 1–8
[ number box ] FLUSH_SPACING       default: 50    range: 10–200 (ms)
[ toggle ]     USE_BAR_BOUNDARY    default: 0     (enable bar-boundary method)
[ toggle ]     BYPASS              (pass all notes directly through, skipping buffer — for testing)
[ button ]     MANUAL FLUSH        (force flush on demand — useful in performance)
[ number box ] BUFFER_SIZE display (read-only, shows current note count)
```

---

## Bypass Mode (for testing)

```
BYPASS toggle ON:
        |
[ receive phrase-buf-in ] → [ send s2-influence-in ]   -- straight through

-- Use this during Phase 3 (MIDI bridge testing) to confirm S2 receives notes
-- before testing the phrase buffer logic in isolation
```

---

## Debug / Visual Monitoring

```
[ coll phrase-notes ] → dump → display current buffer contents
[ timer ] → [number box] current silence gap (ms)
[ int NOTE_COUNT ] → [number box] notes accumulated
FLUSH BANG → [button] flash on every phrase send
```

---

## Notes

- The 600ms silence threshold is a starting point calibrated to human speech/music.
  Dissolution events may produce dense bursts followed by longer silences —
  you may need to increase this to 800–1000ms to capture full fizz bursts as phrases.
- If the buffer never flushes during dense activity (seltzer peak), the bar-boundary
  fallback ensures S2 still receives something every 1–2 bars.
- Consider adding a MAX_BUFFER_SIZE limit (e.g., 16 notes) — if NOTE_COUNT exceeds
  this, force a flush regardless of silence, to prevent S2 from receiving an
  overwhelming 30-note phrase.

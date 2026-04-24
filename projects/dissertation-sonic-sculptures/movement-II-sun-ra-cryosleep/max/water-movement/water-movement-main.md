# water-movement-main.maxpat — Pseudocode

Master patch. Loads all subpatches, runs global transport, exposes master controls.

---

## Transport & Tempo

```
[ toggle: START/STOP ]
    |
[ transport 60 4 4 ]   -- global clock, 4/4 at 60 BPM
    |
    ├── [ send transport-clock ]   -- broadcast to all subpatches
    |
    └── [ line 60 54 66 120000 ]   -- breathing BPM sweep over ~2 mins
            |                         (oscillates slowly, gives organic feel)
        [ transport BPM inlet ]

-- Optionally add [drunk] or [sin~] based slow LFO for even more organic drift:
-- [ phasor~ 0.001 ] → [ *~ 6 ] → [ +~ 60 ] → transport tempo inlet
```

---

## Named Send/Receive Busses

```
-- All inter-subpatch communication uses send/receive by name
-- No direct patchcord connections between subpatches

[send drone-out]          -- DK drone audio output → mixer
[send phrase-buf-in]      -- quantized MIDI notes → phrase buffer
[send s2-influence-in]    -- flushed phrase → S2 influencer
[send s2-midi-out-1]      -- S2 Player 1 MIDI → strings VST
[send s2-midi-out-2]      -- S2 Player 2 MIDI → woodwind VST
[send s2-midi-out-3]      -- S2 Player 3 MIDI → chord/piano VST
[send transport-clock]    -- bar/beat messages → phrase buffer boundary
```

---

## Subpatch Loading

```
[ p dk-drone ]         -- Data Knot drone layer
[ p dk-midi-bridge ]   -- descriptor → MIDI
[ p phrase-buffer ]    -- phrase accumulator
[ p s2-players ]       -- Somax2 multi-player

-- Each loaded as poly~ or bpatcher with named args if needed
-- Route hydrophone audio input to both dk-drone and dk-midi-bridge inlets
```

---

## Audio Input Routing

```
[ adc~ 1 ]   -- hydrophone on interface channel 1
    |
    ├── [ send~ hydrophone-in ]   -- to dk-drone (audio)
    └── [ send~ hydrophone-in ]   -- to dk-midi-bridge (analysis only)

-- Use [gain~] before adc~ send for input trim
-- Add [meter~] for visual level monitoring
```

---

## Master Mix / Output

```
[ receive~ drone-out ]    -- DK granular drone
[ receive~ s2-audio-mix ] -- S2 VST returns (if routed back into Max)
    |
[ *~ master-gain ]        -- master fader (0.0–1.0, default 0.8)
    |
[ dac~ 1 2 ]   -- or send to DAW via Rewire / virtual routing
```

---

## Master Controls (UI)

```
[ toggle ]     START / STOP transport
[ number~ ]    Current BPM display (reads from transport)
[ slider ]     Master gain
[ toggle ]     Drone layer enable/disable
[ toggle ]     S2 layer enable/disable
[ button ]     Manual phrase flush (for performance use — bypass phrase buffer)
[ button ]     Panic / all notes off → sends to all S2 MIDI channels
```

---

## Panic / Cleanup

```
[ button: PANIC ]
    |
    ├── [ midiout ] noteoff 0 on all channels (ch 1–16, all pitches)
    ├── [ message: stop ] → transport
    └── [ message: clear ] → phrase-buffer receive
```

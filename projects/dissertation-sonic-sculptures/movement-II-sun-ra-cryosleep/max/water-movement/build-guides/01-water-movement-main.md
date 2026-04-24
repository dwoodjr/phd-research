# Build Guide 01 — water-movement-main.maxpat

*Organic Memory Triptych | Movement II*
*Build this first. Everything else loads as subpatches inside this patch.*

---

## What This Patch Does

The master patch. It runs the global transport, creates the named send/receive buses that all subpatches use to communicate, routes the hydrophone audio input, and provides a master mix output and control panel. No audio analysis happens here — this is pure infrastructure.

Build order follows the signal chain: transport → buses → audio in → subpatches → master out → UI controls.

---

## Before You Start

- Open Max 9
- New Patch (`Cmd+N` / `Ctrl+N`)
- Save immediately as `water-movement-main.maxpat` in:
  `projects/dissertation-sonic-sculptures/organic-memory-triptych/max/water-movement/`
- Keep the patch in **unlocked mode** throughout building (`Cmd+E` toggles lock/unlock)

---

## Section 1 — Global Transport

These objects form the temporal spine. Build top-to-bottom in the patch, leaving space below for everything else.

### Objects to create:

| Object text to type | Notes |
|---|---|
| `toggle` | START/STOP button for transport |
| `transport` | Master clock — no arguments needed |
| `number~` | BPM display — shows current transport tempo |
| `line 60 54 66 120000` | Breathing BPM sweep: drifts 54↔66 over 2 min |
| `send transport-clock` | Broadcasts bar/beat to phrase-buffer |

### Connections:

1. `toggle` outlet 0 → `transport` inlet 0 (start/stop)
2. `transport` tempo outlet → `number~` inlet 0 (display only)
3. `line` outlet 0 → `transport` inlet 1 (tempo control inlet — right inlet)
4. `transport` bar/beat outlet → `send transport-clock` inlet 0

### Parameters to set via Inspector:

- `transport`: leave defaults (60 BPM, 4/4 will be set by the line object)
- `line`: the arguments are already in the object text — no inspector changes needed

### Optional — organic tempo drift (add after basic test):

| Object | Notes |
|---|---|
| `phasor~ 0.00083` | Very slow LFO — one full cycle ≈ 20 min |
| `*~ 6.` | Scales to ±6 BPM range |
| `+~ 60.` | Centers on 60 BPM |
| `snapshot~ 100` | Converts signal to control rate (fires every 100ms) |

Connect: `phasor~` → `*~ 6.` → `+~ 60.` → `snapshot~ 100` → `transport` tempo inlet.
*Use this as an alternative to the `line` object — not both simultaneously.*

---

## Section 2 — Named Send/Receive Buses

These are just `send` and `receive` objects — no real connections needed between them yet. They define the communication backbone that subpatches will hook into.

Create these objects, place them clearly labeled in a row so you can see all buses at a glance:

| Object text | Role |
|---|---|
| `send~ hydrophone-in` | Audio to dk-drone and dk-midi-bridge |
| `receive~ drone-out` | Drone audio back from dk-drone |
| `receive~ s2-audio-mix` | (Future) S2 VST audio returns |
| `send phrase-buf-in` | Quantized MIDI notes → phrase-buffer |
| `send s2-influence-in` | Flushed phrase → S2 players |
| `send s2-midi-out-1` | S2 Player 1 MIDI → Strings VST |
| `send s2-midi-out-2` | S2 Player 2 MIDI → Woodwind VST |
| `send s2-midi-out-3` | S2 Player 3 MIDI → Piano/Vib VST |
| `send transport-clock` | Beat messages → phrase-buffer (built in Section 1) |

*No connections between these yet — they're reference objects so you can verify names are correct.*

---

## Section 3 — Audio Input Routing

### Objects:

| Object text | Notes |
|---|---|
| `adc~ 1` | Hydrophone on interface channel 1 |
| `gain~` | Input trim (place between adc~ and sends) |
| `meter~` | Visual level monitor |
| `send~ hydrophone-in` | Sends audio to both analysis subpatches |
| `send~ hydrophone-in` | Second copy — same name is fine, both receive |

### Connections:

1. `adc~` outlet 0 → `gain~` inlet 0
2. `gain~` outlet 0 → `meter~` inlet 0 (monitoring)
3. `gain~` outlet 0 → first `send~ hydrophone-in` inlet 0
4. *The second send~ hydrophone-in can be connected to the same gain~ outlet — in Max, one outlet can connect to multiple inlets*

**Note on input mode:** When you have a hydrophone connected, set `adc~` to the correct channel for your Steinberg UR22C (channel 1 = left input). During development without the hydrophone, you can use a test signal: replace `adc~` with `cycle~ 200` (a 200Hz sine wave) to simulate a tonal input.

---

## Section 4 — Subpatch Loading

These four objects load the four subpatches. They'll show as empty subpatcher boxes until you build the actual files.

### Objects:

| Object text | Notes |
|---|---|
| `p dk-drone` | Data Knot drone layer |
| `p dk-midi-bridge` | Descriptor → MIDI translation |
| `p phrase-buffer` | Phrase accumulator |
| `p s2-players` | Somax2 multi-player |

### About the `p` objects:

When you type `p dk-drone`, Max creates a subpatcher object that looks for `dk-drone.maxpat` in the same folder. If the file doesn't exist yet, it creates an empty subpatch. You'll fill in each one as you build from the guide.

*No inlet/outlet connections needed at the main patcher level — all inter-subpatch communication uses the named sends/receives from Section 2.*

---

## Section 5 — Master Mix / Output

### Objects:

| Object text | Notes |
|---|---|
| `receive~ drone-out` | DK granular drone audio |
| `receive~ s2-audio-mix` | Placeholder for future VST audio returns |
| `gain~` | Master gain fader (default: set to 0.8 via inspector) |
| `dac~ 1 2` | Stereo output to audio interface |

### Connections:

1. `receive~ drone-out` outlet 0 → `gain~` inlet 0
2. `receive~ s2-audio-mix` outlet 0 → `gain~` inlet 0 (second connection to same inlet mixes automatically)
3. `gain~` outlet 0 → `dac~ 1 2` inlet 0 (left)
4. `gain~` outlet 0 → `dac~ 1 2` inlet 1 (right)

---

## Section 6 — UI Controls Panel

Group these visually in a corner of the patch. These are the performance and development controls.

| Object text | Label / Purpose |
|---|---|
| `toggle` | START / STOP (already built in Section 1 — add a comment label) |
| `number~` | Current BPM display (already in Section 1) |
| `gain~` | Master output gain (already in Section 5) |
| `toggle` | Drone layer enable/disable |
| `toggle` | S2 layer enable/disable |
| `button` | Manual phrase flush (connects to `send phrase-buf-in` later) |
| `button` | PANIC — all notes off |

### Panic connections:

Create a `button` labeled PANIC, then:

1. `button` → `midiout` with a `makenote 0 0 0` for all channels (or use a for-loop approach with `uzi 16`)
2. `button` → `message: stop` → `transport`
3. `button` → `message: clear` → `send phrase-buf-in`

**Simple panic approach:** `button` → `[midiflush]` → `midiout` (Max's built-in `midiflush` sends all-notes-off on all channels)

---

## Testing This Patch

Before building any subpatches, test the main patch alone:

1. **Transport test:** Click the START toggle. Open the Max console (`Cmd+Shift+M`). Check that transport is running. Watch the BPM display drift slowly (if you added the breathing LFO).

2. **Audio input test:** Make sure your audio interface is selected in Max's DSP settings (`Cmd+Shift+P`). Enable DSP (`toggle` next to "Audio On"). Speak into your mic or tap the hydrophone input — you should see the `meter~` respond.

3. **Send/receive test:** Option-click a `send` object to see its connections, confirming the bus names match.

4. **No audio errors:** Open the Max console and confirm no "no object named" errors after loading.

---

## Notes for Future Reference

- The `p` subpatcher objects (Section 4) will show empty until you build each subpatch — this is expected.
- When connecting VST plugins for S2 output, you'll revisit Section 5 to add additional `receive~` objects or DAW routing.
- The breathing tempo LFO and the `line` object are alternatives — don't use both simultaneously. Start with `line` for simplicity, switch to the LFO approach once the full signal chain is running.
- `input 2` mode on `dk.descriptors~` adds a 2kHz bandpass filter. For hydrophone, start with `input 0` (unfiltered) and switch to `input 2` if you're getting too many false triggers from low-frequency water movement noise.

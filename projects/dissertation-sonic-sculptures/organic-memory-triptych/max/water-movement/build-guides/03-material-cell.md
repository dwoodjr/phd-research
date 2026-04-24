# Build Guide 03 — material-cell.maxpat

*Organic Memory Triptych | Movement II*
*Build this third, after dk-drone and dk-midi-bridge are functional.*

---

## What This Patch Does

The compositional engine. It receives dissolution onset data from `dk.descriptors~` and constructs a **rhythmic-melodic cell** — a data structure that carries both the rhythmic identity (inter-onset intervals) and the pitch identity (spectral peak frequencies) of each dissolution event simultaneously.

This cell is the single musical object that all voices in the system share. Every instrument group receives the same cell and interprets it through its own register and timbre. No voice leads; all say the same thing in their own body. This is the Eastman accumulation logic: the cell circulates, voices are added one by one, the weight builds, then thins, then arrives again.

The patch does five things:
1. Tracks inter-onset intervals to derive a rhythmic grid from the material itself
2. Extracts spectral peak frequencies from the dissolution sound at each onset
3. Packages rhythm + pitch as a single cell in a `dict`
4. Manages a **voice count** that accumulates and decays based on dissolution activity
5. Distributes the cell to all active voices via named send buses

No audio output from this patch. It is pure compositional infrastructure.

---

## Before You Start

- `dk-drone.maxpat` and `dk-midi-bridge.maxpat` must already exist (even if empty)
- You will need the `material-cell` subpatch loaded in `water-movement-main.maxpat` — add `p material-cell` to Section 4 of the main patch build guide
- Add a new send bus to the main patch Section 2: `send cell-out` — this is how the cell reaches all voices
- Save this file as `material-cell.maxpat` in:
  `projects/dissertation-sonic-sculptures/organic-memory-triptych/max/water-movement/`

---

## Architecture Overview

```
[receive~ hydrophone-in]
        |
        ├──→ [dk.descriptors~]     ← onset detection + pitch confidence gate
        |           |
        |     ONSET BANG + pitch MIDI + loudness
        |
        ├──→ [pfft~ spectral-peaks 2048 4]   ← parallel FFT analysis
        |           |
        |     peak frequencies (Hz) → MIDI floats
        |
        ↓
[INTERVAL TRACKER]    ← measures time between onsets → rhythmic cell
        |
[CELL BUILDER]        ← packages rhythm + pitches into dict
        |
[VOICE ACCUMULATOR]   ← counts active voices, manages add/drop
        |
[CELL DISTRIBUTOR]    ← sends cell to each active voice via send buses
```

---

## Section 1 — Audio Input

| Object text | Notes |
|---|---|
| `receive~ hydrophone-in` | Same named bus as dk-drone and dk-midi-bridge |

This is your only audio source. Its outlet 0 feeds both the `dk.descriptors~` analysis (Section 2) and the `pfft~` spectral analysis (Section 3) in parallel.

---

## Section 2 — Onset Detection (dk.descriptors~ instance)

This is a **third independent instance** of `dk.descriptors~`. Do not share with dk-drone or dk-midi-bridge — each analysis instance must be independent to avoid shared state.

### Object:

Type exactly: `dk.descriptors~ @input 0 @sensitivity 40 @floor -58 @lockout 200`

**Attribute notes for material-cell context:**
- `@sensitivity 40` — slightly lower than dk-drone; we want only meaningful dissolution events, not every micro-fizz, because each onset here will potentially add a voice
- `@lockout 200` — longer than dk-drone; prevents the voice accumulator from being flooded by dense bursts

### Connection:
`receive~ hydrophone-in` outlet 0 → `dk.descriptors~` inlet 0

### Unpack the descriptor list:

| Object text | Notes |
|---|---|
| `unpack 0. 0. 0. 0. 0. 0. 0. 0.` | 8 float zeros |

Connect `dk.descriptors~` outlet 0 → `unpack` inlet 0.

### Outlets you will use from unpack:

| unpack outlet | Descriptor | Use here |
|---|---|---|
| 0 | loudness (dB) | Voice amplitude scaling |
| 6 | pitch (MIDI) | Primary pitch for cell |
| 7 | pitch_confidence | Confidence gate |

### Onset trigger to bang:

| Object text | Notes |
|---|---|
| `edge~` | Converts trigger signal to bang on rising edge |
| `> 0.5` | Confidence threshold — lower than dk-midi-bridge; dissolution pitch is often diffuse |
| `gate 1` | Passes bang only when confidence passes |

Connections:
1. `dk.descriptors~` outlet 2 (trigger~) → `edge~` inlet 0
2. `edge~` outlet 0 → `gate 1` inlet 0
3. `unpack` outlet 7 (pitch_confidence) → `> 0.5` inlet 0
4. `> 0.5` outlet 0 → `gate 1` inlet 1

`gate 1` outlet 0 = **ONSET BANG** — this feeds Sections 4, 5, and 6.

---

## Section 3 — Spectral Peak Extraction (pfft~)

This extracts the top 3 peak frequencies from the dissolution sound at each onset. These become the pitch content of the cell.

**Important:** `pfft~` requires a separate subpatcher file for its internal FFT processing. You will create a small helper patch called `spectral-peaks-fft.maxpat` alongside `material-cell.maxpat`. Instructions for that helper patch are in the appendix at the bottom of this guide.

### Object:

`pfft~ spectral-peaks-fft 2048 4`

Arguments:
- `spectral-peaks-fft` — name of the subpatcher file containing the FFT processing
- `2048` — FFT size (frequency resolution ≈ 21Hz per bin at 44.1kHz — sufficient for dissolution pitch content)
- `4` — overlap factor (4x overlap = smoother spectral tracking)

### Connection:
`receive~ hydrophone-in` outlet 0 → `pfft~` inlet 0

### pfft~ outlets:

The `spectral-peaks-fft` subpatch (see Appendix) will output three peak frequencies in Hz on its outlets. These arrive at `pfft~` outlets 0, 1, 2 respectively.

| pfft~ outlet | Content |
|---|---|
| 0 | Peak 1 frequency (Hz) — highest magnitude |
| 1 | Peak 2 frequency (Hz) |
| 2 | Peak 3 frequency (Hz) |

### Hz to MIDI conversion:

For each of the three outlets, create this chain:

| Object text | Notes |
|---|---|
| `ftom` | Converts Hz to MIDI float (fractional MIDI = microtonal) |
| `clip 24. 96.` | Constrains to C1–C7 — safe range for all instrument groups |
| `round` | Round to nearest semitone (use integer MIDI for now; microtonal option in Notes) |

Label the three resulting values: **PEAK_PITCH_1**, **PEAK_PITCH_2**, **PEAK_PITCH_3**

### Snapshot on onset:

The `pfft~` runs continuously, but you only want to capture spectral peaks at the moment of an onset — not at random times. Use `snapshot~` objects gated by ONSET BANG.

For each of the three peak outlets:

| Object text | Notes |
|---|---|
| `snapshot~ 0` | Captures the current signal value when it receives a bang |

Connect:
- Each `pfft~` outlet (after `ftom` and `clip`) → `snapshot~` inlet 0 (signal inlet)
- ONSET BANG → each `snapshot~` inlet 1 (bang inlet — triggers the snapshot)

After the snapshot, the three values are control-rate and can feed the cell builder.

---

## Section 4 — Interval Tracker

Measures the time between consecutive onset bangs. This becomes the rhythmic identity of the cell — the material's own pulse.

### Objects:

| Object text | Notes |
|---|---|
| `timer` | Measures elapsed time between bangs in ms |
| `clip 80. 4000.` | Constrains interval: 80ms minimum (≈ 750 BPM cap), 4000ms maximum (very slow material) |
| `f` | Float store — holds the last valid interval |

### Connections:

1. ONSET BANG → `timer` inlet 0 (bang resets and reads timer simultaneously)
   - `timer` outlet 0 fires the elapsed ms since last bang
2. `timer` outlet 0 → `clip 80. 4000.` inlet 0
3. `clip` outlet 0 → `f` inlet 0 (store interval)
4. `f` outlet 0 = **INTERVAL_MS** — feeds the cell builder and the voice metro

### Expose as parameter:
Add `number` boxes on both clip inlets so you can tune the interval floor and ceiling during development. Label them "MIN INTERVAL (ms)" and "MAX INTERVAL (ms)".

### Derived metro:

This metro runs at the material's own pulse — the rhythmic grid the dissolution itself is setting.

| Object text | Notes |
|---|---|
| `metro 500` | Starts with default 500ms; INTERVAL_MS will override this |
| `toggle` | METRO ENABLE — off by default, turns on when voice count > 0 |

Connections:
1. INTERVAL_MS → `metro` inlet 1 (period inlet — right inlet in Max)
2. METRO ENABLE toggle outlet → `metro` inlet 0 (start/stop)
3. `metro` outlet 0 = **CELL TICK** — the material's pulse, used in Section 6

---

## Section 5 — Cell Builder

Packages the rhythm interval and the three spectral pitches into a single `dict` object on each onset bang. This dict is the cell.

### Object:

| Object text | Notes |
|---|---|
| `dict cell` | Named dict — stores the current cell |

### On each ONSET BANG, write to the dict:

Use `dict` message syntax to set keys. The messages to send to `dict cell` are:

```
set rhythm INTERVAL_MS
set pitch_1 PEAK_PITCH_1
set pitch_2 PEAK_PITCH_2
set pitch_3 PEAK_PITCH_3
set loudness LOUDNESS_DB
```

To build this in Max:

| Object text | Notes |
|---|---|
| `prepend set rhythm` | Prepends the key name so the float becomes a set message |
| `prepend set pitch_1` | Same pattern for each key |
| `prepend set pitch_2` | |
| `prepend set pitch_3` | |
| `prepend set loudness` | |

### Connections:

For each descriptor value:
1. INTERVAL_MS → `prepend set rhythm` inlet 0 → `dict cell` inlet 0
2. PEAK_PITCH_1 (from snapshot~) → `prepend set pitch_1` → `dict cell` inlet 0
3. PEAK_PITCH_2 → `prepend set pitch_2` → `dict cell` inlet 0
4. PEAK_PITCH_3 → `prepend set pitch_3` → `dict cell` inlet 0
5. `unpack` outlet 0 (loudness) → `prepend set loudness` → `dict cell` inlet 0

All five prepend objects connect to the same `dict cell` inlet — Max queues them in order.

### Cell complete signal:

After all keys are written, send a bang to signal the cell is ready. Use a `defer` to ensure all dict writes have completed before the bang fires:

| Object text | Notes |
|---|---|
| `defer` | Defers bang to next scheduler cycle — ensures dict writes settle first |

Connect:
- ONSET BANG → `defer` inlet 0
- `defer` outlet 0 = **CELL READY BANG** — feeds the voice accumulator and distributor

---

## Section 6 — Voice Accumulator

Manages how many voices are currently interpreting the cell. Voices accumulate with activity and decay with silence — the Eastman logic.

### Parameters to expose as number boxes:

| Parameter | Default | Range | Notes |
|---|---|---|---|
| MAX_VOICES | 5 | 2–8 | Total instrument groups available |
| DECAY_TIME | 8000 | 2000–30000 ms | Silence before a voice drops (ms) |

### Objects:

| Object text | Notes |
|---|---|
| `counter 0 5` | Counts active voices: min 0, max = MAX_VOICES |
| `timer` | Silence timer — measures ms since last CELL READY BANG |
| `metro 500` | Polls silence timer every 500ms to check for decay |
| `>= DECAY_TIME` | Fires when silence exceeds decay threshold |
| `select 1` | Converts the >= comparison to a bang |

### Accumulation (voice add):

On each CELL READY BANG:
1. CELL READY BANG → `counter` inlet 0 (increment) — adds one voice up to MAX_VOICES
2. CELL READY BANG → `timer` reset (inlet 1 — right inlet resets timer)

### Decay (voice drop):

1. `metro 500` outlet 0 → poll `timer` (bang timer's left inlet to read current elapsed ms)
2. `timer` outlet 0 → `>= DECAY_TIME` inlet 0
3. `>= DECAY_TIME` → `select 1` → bang when silence threshold crossed
4. That bang → `counter` inlet 1 (decrement — right inlet decrements the counter)
5. Same bang → reset `timer` (so it doesn't fire again immediately)

### Voice count output:

`counter` outlet 0 = **VOICE_COUNT** — an integer 0 through MAX_VOICES.

Connect VOICE_COUNT to:
- The METRO ENABLE toggle (Section 4): `VOICE_COUNT > 0` → toggle → enables/disables the interval metro
- Section 7 (distributor): determines which voices receive the cell

### Visual monitor:
Add a `number` box on VOICE_COUNT. Add a `multislider` (MAX_VOICES slots, toggle mode) to give a visual bar of active voices — send VOICE_COUNT to a `uzi` that sets the appropriate slots.

---

## Section 7 — Cell Distributor

On each CELL TICK (the derived metro pulse from Section 4), distributes the current cell dict to each active voice via named send buses — one bus per voice.

### Voice send buses:

Add these to the main patch Section 2 bus list:

| Send object | Role |
|---|---|
| `send cell-voice-1` | Voice 1 — lowest register (drone/bass) |
| `send cell-voice-2` | Voice 2 — mid-low (cello/low strings) |
| `send cell-voice-3` | Voice 3 — mid (woodwind/vibraphone) |
| `send cell-voice-4` | Voice 4 — mid-high (upper strings) |
| `send cell-voice-5` | Voice 5 — high (sparse/floating — last to enter, first to leave) |

### Distribution logic:

On CELL TICK:
1. Read VOICE_COUNT
2. Send the cell dict to voices 1 through VOICE_COUNT only — silence voices above the count

To route selectively by count, use a `sel` chain or `gate` objects gated by comparators:

For each voice N (1 through MAX_VOICES):

| Object text | Notes |
|---|---|
| `>= N` | True when VOICE_COUNT >= N |
| `gate 1` | Passes CELL TICK only when voice is active |

Connections for each voice:
1. VOICE_COUNT → `>= N` inlet 0
2. `>= N` outlet 0 → `gate 1` inlet 1
3. CELL TICK → `gate 1` inlet 0
4. `gate 1` outlet 0 → trigger dict send: read `dict cell` and send to `send cell-voice-N`

To send the dict on a bang: bang → `dict cell` outlet 0 (dump) will output all key/value pairs. Alternatively, use `dict.get` objects for specific keys — the receiving voice patches will use `receive cell-voice-N` and then `dict.get` to read what they need.

---

## Section 8 — The "Johnny" Surface Logic

When VOICE_COUNT reaches MAX_VOICES, a designated voice (Voice 3 — vibraphone/piano, the most legible timbre) receives a special pitch override: the latent melody fragment surfaces instead of the spectral pitch data.

This melody fragment is a **fixed sequence** you compose once. It is the thing the material has been saying all along, finally heard clearly.

### Objects:

| Object text | Notes |
|---|---|
| `coll johnny-melody` | Stores the melody fragment as indexed pitch/duration pairs |
| `counter 0 N` | Steps through the melody — N = number of notes in fragment |
| `== MAX_VOICES` | True only when voice count is at maximum |
| `gate 1` | Opens the melody path only at maximum accumulation |

### Populating the melody:

Double-click `coll johnny-melody` to open its editor. Enter your melody fragment manually:

```
0, 60 1000;      ← MIDI pitch, duration ms
1, 62 800;
2, 65 1200;
... etc.
```

The pitches and durations are your compositional decision. This is the only moment in the entire system where you are composing in the traditional sense — everything else the material composes. This fragment should feel like recognition when it surfaces.

### Connections:

1. VOICE_COUNT → `== MAX_VOICES` inlet 0
2. `== MAX_VOICES` outlet 0 → `gate 1` inlet 1
3. CELL TICK → `gate 1` inlet 0
4. `gate 1` outlet 0 → `counter` (step through melody)
5. `counter` outlet 0 → `coll johnny-melody` inlet 0 (retrieve note at index)
6. `coll` output → `send cell-voice-3` (override Voice 3 with melody pitch)

**Important:** The melody surface overrides Voice 3's normal cell interpretation. When VOICE_COUNT drops below MAX_VOICES, `gate 1` closes and Voice 3 returns to spectral pitch data. The melody sinks back under.

---

## Section 9 — Monitor / Debug Panel

| Object text | Purpose |
|---|---|
| `number` on VOICE_COUNT | Watch voice accumulation in real time |
| `number` on INTERVAL_MS | Watch derived rhythmic interval |
| `number` on PEAK_PITCH_1/2/3 | Watch spectral pitches captured at each onset |
| `button` on CELL READY BANG | Flashes on each cell construction |
| `button` on CELL TICK | Flashes on each metro pulse (material's rhythm) |
| `message` on `dict cell` dump | Read current cell contents — connect button to dict inlet 0 to dump |
| `led` on `== MAX_VOICES` | Lights when "Johnny" surface is active |

---

## Testing This Patch

**Test 1 — Onset detection:**
Use `sfplay~` with a dissolution recording from the `organic-memory/media/` folder as test input instead of live hydrophone. Connect it to `receive~ hydrophone-in` temporarily. CELL READY BANG button should flash on each dissolution event.

**Test 2 — Interval tracking:**
Play a dissolution recording with distinct events. Watch INTERVAL_MS — it should update on each onset. If it reads 0 or clips at 4000, check the `timer` connections.

**Test 3 — Spectral peaks:**
On each onset, PEAK_PITCH_1/2/3 should show different MIDI values reflecting the frequencies in the dissolution sound. If all three read the same value or 0, check the `pfft~` and `snapshot~` connections.

**Test 4 — Voice accumulation:**
With audio running, VOICE_COUNT should climb toward MAX_VOICES with sustained dissolution activity. Stop the audio — after DECAY_TIME ms, VOICE_COUNT should decrement. If it never increments, check the counter connections. If it never decrements, check the silence timer and metro poll.

**Test 5 — Cell distribution:**
Add temporary `receive cell-voice-1` objects in the patch and connect them to `message` boxes. On CELL TICK, each active voice receive should output the current cell dict content. Confirm it contains rhythm, pitch_1/2/3, and loudness keys.

**Test 6 — Johnny surface:**
Manually set VOICE_COUNT to MAX_VOICES using a `number` box connected to the counter set inlet. Confirm the `led` lights and Voice 3 receives melody pitches instead of spectral pitches.

---

## Tuning Reference

| Parameter | Default | Direction to tune |
|---|---|---|
| `@sensitivity` | 40 | Lower if too many false onsets trigger voice adds |
| `@lockout` | 200ms | Raise if dense fizzing floods the accumulator |
| MAX_VOICES | 5 | Match your actual instrument group count |
| DECAY_TIME | 8000ms | Raise for slower, more geological accumulation/decay |
| INTERVAL_MS clip floor | 80ms | Raise if rapid onsets produce incoherent rhythm |
| INTERVAL_MS clip ceiling | 4000ms | Lower if material is too slow to produce a coherent grid |

---

## Notes

- The cell dict is overwritten on every onset. Voices receive whatever the material last said when the CELL TICK fires. This means the cell is always current — it is not a stored phrase but a living snapshot.
- The three spectral pitches are not a chord in the Western sense. They are three simultaneous truths about what the material is. Each voice decides what to do with them based on its register filter (built in the voice patches — see Build Guide 04).
- The "Johnny" melody is the only composed element in the entire system. Everything else is derived. Treat it with proportional care.
- If `pfft~` spectral peaks produce unstable readings (jumping wildly between onsets), add a `slide` object after each `snapshot~` to smooth the values: `slide 10 1` (slow attack, fast release) on each peak output.
- Microtonal option: skip `round` after `ftom` and pass the fractional MIDI float directly. The voice patches can then use `mtof` and drive `cycle~` oscillators directly — bypassing the MIDI note grid entirely. This is the Ra move. Discuss with yourself whether you want this before building the voice patches.

---

## Appendix — spectral-peaks-fft.maxpat (the pfft~ helper patch)

This is the internal FFT subpatcher that `pfft~` loads. Create a new patch and save it as `spectral-peaks-fft.maxpat` in the same folder as `material-cell.maxpat`.

Inside `spectral-peaks-fft.maxpat`, build the following:

### Objects:

| Object text | Notes |
|---|---|
| `fftin~ 1` | Receives FFT frames from the host pfft~ (argument 1 = first inlet) |
| `cartopol~` | Converts real/imaginary to magnitude/phase |
| `peakamp~` | **(see note below)** |
| `out~ 1` | First peak frequency output |
| `out~ 2` | Second peak frequency output |
| `out~ 3` | Third peak frequency output |

**Note on peak picking in Max's pfft~ environment:**

Max does not have a single built-in object for multi-peak spectral detection inside `pfft~`. The practical approach depends on what packages you have installed:

**Option A — If you have Mubu (IRCAM):**
Use `mubu.process` with `spectralpeaks` descriptor outside the pfft~ — Mubu operates on audio signals directly. This is simpler and avoids the pfft~ subpatch entirely. Replace the entire Section 3 pfft~ approach with:
`mubu.process~ @process spectralpeaks @numpeaks 3`
Connected to `receive~ hydrophone-in` outlet 0. Its outputs give you peak frequencies directly in Hz. Check if Mubu is installed: in Max, open File → Show Package Manager and search "mubu".

**Option B — Native Max pfft~ with magnitude threshold:**
Inside `spectral-peaks-fft.maxpat`:
1. `fftin~ 1` → `cartopol~` → magnitude signal on outlet 0
2. `magnitude` → `peakamp~` (finds single peak bin) → outputs bin index + magnitude
3. Use three `peakamp~` instances with different frequency range arguments to isolate three spectral regions: low (100–500Hz), mid (500–2000Hz), high (2000–8000Hz)
4. Each `peakamp~` outlet → `out~ N`

`peakamp~` arguments: `peakamp~ low_bin high_bin` where bins = frequency / (samplerate / FFT_size). At 44.1kHz and 2048 FFT: 1 bin ≈ 21.5Hz. So:
- Low region 100–500Hz: bins 5–23 → `peakamp~ 5 23`
- Mid region 500–2000Hz: bins 23–93 → `peakamp~ 23 93`
- High region 2000–8000Hz: bins 93–372 → `peakamp~ 93 372`

Output each `peakamp~` frequency outlet (outlet 0) to `out~ 1`, `out~ 2`, `out~ 3`.

**Recommendation:** Check for Mubu first. If present, use Option A and skip the pfft~ subpatch entirely — it is significantly simpler.

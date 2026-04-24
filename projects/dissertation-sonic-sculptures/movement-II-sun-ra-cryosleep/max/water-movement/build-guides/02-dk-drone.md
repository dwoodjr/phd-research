# Build Guide 02 — dk-drone.maxpat (Revised)

*Organic Memory Triptych | Movement II*
*Build this second. This is a subpatch loaded inside water-movement-main.*

---

## What This Patch Does (Revised)

The drone layer. The drone is no longer a pre-loaded sample. It is the dissolution
material itself — captured live, held, transformed, and reflected back as three
simultaneous layers:

- **Live capture layer** — a rolling buffer that records the hydrophone signal
  continuously. On each detected onset, a window of that captured audio is frozen
  into a second buffer and played back at very slow speed. The drone is always the
  last dissolved thing, held in suspension. When a new artifact goes in, the drone
  updates. Between artifacts, it holds. This is the cryosleep logic made sonic.

- **Spectral freeze layer** — a `pfft~`-based spectral freeze that captures a
  snapshot of the dissolution spectrum at each onset and sustains it indefinitely
  as a static harmonic field. The material's frequencies are frozen in time. This
  is the ambient presence between onset events — not a haze of someone else's
  recording, but the dissolution's own spectrum, held.

- **Subharmonic layer** — pure sine oscillators tuned to octave-divisions below
  the detected pitch. If the dissolution resonates at 440Hz, the subharmonic layer
  speaks at 220, 110, 55. The material's shadow. Frequencies it implies but does
  not produce. This is the Ra move: finding the cosmology underneath the physics.

No pre-loaded samples. No external sonic identity. Everything the drone says
comes from what the water is doing right now.

---

## Before You Start

- Remove the existing `buffer~ drone-sample` objects and all associated `groove~`
  objects from the current dk-drone patch if already built. Keep the `dk.descriptors~`
  analysis chain (Sections 3–5) — that architecture is unchanged.
- No sample files needed. The patch generates its own audio material from the
  hydrophone signal.
- You will need a working `receive~ hydrophone-in` signal — use `sfplay~` with a
  dissolution recording for development testing, as before.

---

## Architecture Overview

```
[receive~ hydrophone-in]
        |
        ├──→ [LIVE CAPTURE BUFFER]     ← rolling record into buffer~
        |           |
        |     on onset: freeze window → slow playback groove~
        |
        ├──→ [dk.descriptors~]         ← onset + pitch + loudness (unchanged)
        |           |
        |     ONSET BANG, PITCH MIDI, LOUDNESS DB
        |
        ├──→ [SPECTRAL FREEZE]         ← pfft~ snapshot on onset, sustained output
        |           |
        |     frozen harmonic field~
        |
        └──→ [SUBHARMONIC BANK]        ← cycle~ oscillators at sub-octaves of pitch
                    |
              subharmonic tones~

All three → amplitude shaping → [send~ drone-out]
```

---

## Section 1 — Audio Input

| Object text | Notes |
|---|---|
| `receive~ hydrophone-in` | Gets hydrophone audio from the main patch bus |

Outlet 0 feeds all four downstream sections in parallel. No connections
needed between them — each section taps the same audio source independently.

---

## Section 2 — dk.descriptors~ Analysis (Unchanged from original)

This section is identical to the original guide. Reproduce it exactly.

Type exactly: `dk.descriptors~ @input 0 @sensitivity 50 @floor -60 @lockout 100`

Connect `receive~ hydrophone-in` outlet 0 → `dk.descriptors~` inlet 0.

### Unpack descriptor list:

`unpack 0. 0. 0. 0. 0. 0. 0. 0.`

| unpack outlet | Descriptor | Used by |
|---|---|---|
| 0 | loudness (dB) | Amplitude shaping — all three layers |
| 2 | centroid (MIDI) | Subharmonic bank reference pitch (secondary) |
| 6 | pitch (MIDI) | Subharmonic bank primary pitch |
| 7 | pitch_confidence | Confidence gate |

### Confidence gate (Onset → Bang) — unchanged:

| Object text | Notes |
|---|---|
| `edge~` | Converts trigger~ to bang |
| `> 0.5` | Confidence threshold — lower than original (0.6); dissolution pitch is diffuse |
| `gate 1` | Passes bang only when confidence passes |

Connections:
1. `dk.descriptors~` outlet 2 → `edge~` → `gate 1` inlet 0
2. `unpack` outlet 7 → `> 0.5` → `gate 1` inlet 1
3. `gate 1` outlet 0 = **ONSET BANG**

Expose confidence threshold as a `float` number box. Label "CONF THRESHOLD".

---

## Section 3 — Live Capture Buffer

Records the hydrophone signal continuously into a rolling buffer. On each onset,
freezes a short window of that recording and begins playing it back at very slow
rate. Between onsets, the last frozen window continues playing. The drone is
always the material's own recent past.

### Objects:

| Object text | Notes |
|---|---|
| `buffer~ capture-live 10000` | 10-second rolling capture buffer (10000ms) |
| `buffer~ capture-freeze 10000` | Second buffer — receives frozen windows |
| `record~ capture-live` | Continuously records hydrophone into the live buffer |
| `groove~ capture-freeze 1` | Plays back frozen material, loop on |

### Recording setup:

| Object text | Notes |
|---|---|
| `toggle` | RECORD ENABLE — on by default via loadbang |
| `loadbang` | Sends 1 to toggle on patch load — recording starts immediately |

Connections:
1. `loadbang` → `toggle` inlet 0 → set to 1 on load
2. `toggle` outlet 0 → `record~ capture-live` inlet 0 (start/stop recording)
3. `receive~ hydrophone-in` outlet 0 → `record~ capture-live` inlet 1 (audio inlet)

`record~` runs continuously. The 10-second buffer fills and wraps — the most
recent 10 seconds of dissolution is always available.

### Freeze on onset:

On each ONSET BANG, copy a window from the live capture buffer into the freeze
buffer. The window size sets how much material gets frozen — shorter = a single
event, longer = a phrase of dissolution.

| Object text | Notes |
|---|---|
| `number box` | FREEZE_WINDOW_MS — default 3000 (3 seconds). Range 500–8000ms. |
| `peek~ capture-live` | Reads samples from the live buffer at arbitrary position |
| `poke~ capture-freeze` | Writes samples into the freeze buffer |
| `counter` | Steps through sample positions during copy |

**Note on buffer-to-buffer copy in Max:** Direct sample-by-sample copying with
`peek~`/`poke~` inside `pfft~` or a signal loop is complex. The practical approach
depends on your Max version and available objects:

**Option A — Use `buffer~` `copyto` message (simplest):**

Max's `buffer~` object accepts a `copyto` message that copies content between
buffers directly:

`message: copyto capture-freeze 0 0 FREEZE_WINDOW_MS`

This message, sent to `buffer~ capture-live`, copies FREEZE_WINDOW_MS of content
from the live buffer (starting at position 0ms) to capture-freeze (starting at 0ms).

On ONSET BANG:
1. ONSET BANG → `message: copyto capture-freeze 0 0 FREEZE_WINDOW_MS` → `buffer~ capture-live`

This triggers the copy. After copy completes, `groove~ capture-freeze` is already
playing the updated material.

**Option B — Record~ / Playback~ pair (more flexible):**

Instead of copying buffers, use a second `record~` controlled by a short triggered
recording burst:

| Object text | Notes |
|---|---|
| `record~ capture-freeze` | Second record object targeting freeze buffer |
| `delay FREEZE_WINDOW_MS` | Stops the freeze recording after the window |

On ONSET BANG:
1. ONSET BANG → `message: 1` → `record~ capture-freeze` inlet 0 (start recording)
2. ONSET BANG → `delay FREEZE_WINDOW_MS` → `message: 0` → `record~ capture-freeze` (stop)
3. `receive~ hydrophone-in` outlet 0 → `record~ capture-freeze` inlet 1 (same audio source)

This captures exactly FREEZE_WINDOW_MS of live material into the freeze buffer
starting from the onset moment. After the delay fires, freeze recording stops and
`groove~` continues looping what was captured.

**Recommendation:** Try Option A first — it is simpler. If `copyto` is not
available in your Max version, use Option B.

### Freeze playback:

| Object text | Notes |
|---|---|
| `groove~ capture-freeze 1` | Loops the frozen material continuously |
| `sig~ 0.08` | Very slow playback rate — material stretched to ~12x length |
| `*~` | Amplitude from envelope (Section 6) |

Connections:
1. `sig~ 0.08` outlet 0 → `groove~ capture-freeze` inlet 0 (rate)
2. `groove~ capture-freeze` outlet 0 → `*~` inlet 0
3. Amplitude envelope (Section 6, CAPTURE_ENV) → `*~` inlet 1
4. `*~` outlet 0 → **CAPTURE_AUDIO** (feeds master sum in Section 7)

### Expose as parameters:

| Parameter | Object | Default | Range |
|---|---|---|---|
| FREEZE_WINDOW_MS | number box | 3000 | 500–8000ms |
| Playback rate | float box → `sig~` | 0.08 | 0.03–0.3 |
| RECORD ENABLE | toggle | 1 (on) | — |

---

## Section 4 — Spectral Freeze Layer

Captures a snapshot of the dissolution spectrum at each onset and sustains it
as a static harmonic field until the next onset replaces it. The frozen spectrum
is the material's frequency portrait — not playback, but resonance held still.

This uses `pfft~` with a freeze subpatcher. You will create a helper file
`drone-freeze-fft.maxpat` alongside `dk-drone.maxpat`.

### Main patch object:

`pfft~ drone-freeze-fft 4096 4`

- `drone-freeze-fft` — name of the helper subpatch
- `4096` — FFT size (good frequency resolution for dissolution content)
- `4` — 4x overlap for smooth spectral output

### Connection:
`receive~ hydrophone-in` outlet 0 → `pfft~` inlet 0

ONSET BANG → `pfft~` inlet 1 (freeze trigger — see helper patch below)

### Helper patch — drone-freeze-fft.maxpat:

Create a new patch, save as `drone-freeze-fft.maxpat` in the same folder.

Inside `drone-freeze-fft.maxpat`, build the following:

**Objects:**

| Object text | Notes |
|---|---|
| `fftin~ 1` | Receives FFT frames from host pfft~ |
| `cartopol~` | Converts real/imaginary → magnitude + phase |
| `in 2` | Receives the freeze trigger bang (second pfft~ inlet) |
| `snapshot~` | Captures current magnitude frame when trigger fires |
| `*~` | Multiplies live magnitude by freeze state |
| `poltocar~` | Converts magnitude + phase back to real/imaginary |
| `fftout~ 1` | Sends processed FFT frames back to host |

**Freeze logic:**

The freeze works by replacing the live magnitude spectrum with a captured
snapshot when triggered, then holding that snapshot until the next trigger.

Two states:
- **Live (unfrozen):** magnitude flows through unmodified — `*~ 1.`
- **Frozen:** snapshot magnitude replaces live magnitude — `*~ 0.` on live, snapshot held

| Object text | Notes |
|---|---|
| `selector~ 2 1` | Switches between live and frozen signal paths |
| `toggle` | FREEZE STATE — 0 = live, 1 = frozen |

**Simple freeze implementation:**

Use a `latch~` object — it samples and holds a signal when triggered:

1. `fftin~ 1` → `cartopol~` → magnitude outlet (outlet 0)
2. Magnitude → `latch~` inlet 0 (signal to latch)
3. `in 2` → `latch~` inlet 1 (bang triggers latch — holds current magnitude frame)
4. `latch~` outlet 0 = frozen magnitude (holds last triggered frame)
5. Frozen magnitude + original phase from `cartopol~` outlet 1 → `poltocar~`
6. `poltocar~` → `fftout~ 1`

**Note on latch~ in pfft~:** `latch~` inside `pfft~` operates on spectral frames,
not audio samples. Each time the freeze bang arrives, it locks the current FFT
magnitude frame. The phase continues to evolve (from the live signal), which
prevents the frozen spectrum from sounding completely static — it will breathe
slightly. This is correct behavior and desirable: a perfectly static spectrum
sounds artificial; a frozen magnitude with evolving phase sounds like a sustained
resonance. This is the cryosleep quality you want.

### Back in the main patch, pfft~ output:

`pfft~` outlet 0 → **SPECTRAL_FREEZE_AUDIO**

Add amplitude control:

| Object text | Notes |
|---|---|
| `*~` | Amplitude from envelope (Section 6, FREEZE_ENV) |
| `*~ 0.6` | Fixed level trim — freeze layer should be present but not dominant |

`pfft~` outlet 0 → `*~ 0.6` → FREEZE_ENV `*~` → **SPECTRAL_FREEZE_OUT**

Expose `0.6` as a `float` number box. Label "FREEZE LEVEL".

---

## Section 5 — Subharmonic Layer

Pure sine oscillators tuned to octave subdivisions below the detected pitch.
These are the frequencies the dissolution implies but does not produce — the
harmonic shadow of the material. The lower the subharmonic, the more
gravitational it is. This layer gives the drone its sense of mass and depth.

### Subharmonic series:

Given a detected pitch P (in Hz), the subharmonic series is:
- Sub 1: P / 2 (one octave below)
- Sub 2: P / 4 (two octaves below)
- Sub 3: P / 8 (three octaves below)

In MIDI terms: pitch MIDI - 12, pitch MIDI - 24, pitch MIDI - 36.

### Pitch source:

Use `unpack` outlet 6 (pitch MIDI) as the fundamental. On each ONSET BANG,
snapshot the current pitch value and update the subharmonic oscillators.

| Object text | Notes |
|---|---|
| `snapshot` | Captures pitch MIDI on ONSET BANG |
| `- 12` | Sub 1: one octave below |
| `- 24` | Sub 2: two octaves below |
| `- 36` | Sub 3: three octaves below |
| `clip 12 60` | Constrain to C0–C4 — subharmonics live in the sub-bass |

**Connections for each sub:**
1. ONSET BANG → `snapshot` inlet 1
2. `unpack` outlet 6 → `snapshot` inlet 0
3. `snapshot` outlet 0 → `- 12` → `clip 12 60` → **SUB1_MIDI**
4. Same chain with `- 24` → **SUB2_MIDI**
5. Same chain with `- 36` → **SUB3_MIDI**

### Oscillator bank:

One `cycle~` per subharmonic. Each is a pure sine — no harmonic complexity
in the individual oscillator. The complexity arises from the three frequencies
beating against each other and against the spectral freeze layer above them.

| Object text | Notes |
|---|---|
| `mtof` | Converts MIDI to Hz |
| `sig~` | Upsample to audio rate |
| `cycle~ 0.` | Pure sine oscillator |
| `*~` | Amplitude from envelope (Section 6, SUB_ENV) |

For each subharmonic (build three times):
1. **SUB_N_MIDI** → `mtof` → `sig~` → `cycle~` inlet 0
2. `cycle~` outlet 0 → `*~` inlet 0
3. SUB_ENV (from Section 6) → `*~` inlet 1

**Per-sub level trim:**

Add individual amplitude trims before the envelope multiplier so you can
balance the three subharmonics against each other:

| Sub | Fixed trim | Rationale |
|---|---|---|
| Sub 1 (÷2) | `*~ 0.5` | Prominent — one octave is the closest shadow |
| Sub 2 (÷4) | `*~ 0.3` | Present but receding |
| Sub 3 (÷8) | `*~ 0.15` | Barely present — felt more than heard |

Expose each trim as a `float` number box for live tuning.

### Sum:

Three `*~` outputs → two `+~` objects (chain) → **SUB_AUDIO_SUM**

---

## Section 6 — Amplitude Envelopes

Three independent `line~` envelopes, one per layer. Each responds to ONSET BANG
and loudness data but with different timing characters that define how each layer
relates to dissolution events.

### Shared loudness scaling:

One loudness → amplitude mapping, shared by all three envelopes:

`unpack` outlet 0 (loudness dB) → `scale -50. -6. 0.1 0.75` → `clip 0. 1.` → `f` (AMP_TARGET)

### Envelope 1 — CAPTURE_ENV (live capture layer):

| Parameter | Value | Notes |
|---|---|---|
| Attack | 4000ms | Slow — the captured material arrives as if it was always there |
| Release | 12000ms | Very slow — the last thing dissolved fades over 12 seconds |

On ONSET BANG:
1. ONSET BANG → `t b f` → read AMP_TARGET
2. `t b f` outlet 1 → `prepend 4000` → `line~ CAPTURE_LINE`
3. `t b f` outlet 0 → `delay 6000` → `message: 0. 12000` → `line~ CAPTURE_LINE`

`line~ CAPTURE_LINE` outlet 0 = **CAPTURE_ENV**

### Envelope 2 — FREEZE_ENV (spectral freeze layer):

| Parameter | Value | Notes |
|---|---|---|
| Attack | 6000ms | Very slow — the frozen spectrum materializes gradually |
| Release | 20000ms | Extremely slow — the spectrum dissipates over 20 seconds |

This is the most persistent layer. Once a spectrum is frozen, it should remain
audible far longer than the original event. The material's frequency portrait
outlasts the material.

On ONSET BANG:
1. ONSET BANG → `t b f` → read AMP_TARGET
2. `t b f` outlet 1 → `prepend 6000` → `line~ FREEZE_LINE`
3. `t b f` outlet 0 → `delay 10000` → `message: 0. 20000` → `line~ FREEZE_LINE`

`line~ FREEZE_LINE` outlet 0 = **FREEZE_ENV**

### Envelope 3 — SUB_ENV (subharmonic layer):

| Parameter | Value | Notes |
|---|---|---|
| Attack | 8000ms | Slowest — subharmonics are geological, not event-driven |
| Release | 30000ms | Half-minute decay — the shadow outlasts everything |

The subharmonics should feel like they precede the dissolution and outlast it.
They are not responses to events; they are the permanent resonance of the space,
excited by each event and slowly settling.

On ONSET BANG:
1. ONSET BANG → `t b f` → read AMP_TARGET
2. `t b f` outlet 1 → `prepend 8000` → `line~ SUB_LINE`
3. `t b f` outlet 0 → `delay 15000` → `message: 0. 30000` → `line~ SUB_LINE`

`line~ SUB_LINE` outlet 0 = **SUB_ENV**

**Expose all attack and release times as number boxes.** These will need
significant tuning once you have real hydrophone material. The above values are
starting estimates for slow dissolution (wax, salt). Fast dissolution (effervescent
tablets) may require attack times of 1000–2000ms and release times of 5000–8000ms.

---

## Section 7 — Master Sum and Output

All three layers sum to a single stereo-compatible mono output sent to the
existing drone-out bus.

### Objects:

| Object text | Notes |
|---|---|
| `+~` | Sum capture + freeze audio |
| `+~` | Sum previous + sub audio |
| `*~ 0.7` | Master drone level trim |
| `clip~ -1. 1.` | Safety limiter — three layers summing can clip |
| `send~ drone-out` | Named bus — same as original |

### Connections:

1. **SPECTRAL_FREEZE_OUT** → first `+~` inlet 0
2. **CAPTURE_AUDIO** → first `+~` inlet 1
3. First `+~` outlet 0 → second `+~` inlet 0
4. **SUB_AUDIO_SUM** → second `+~` inlet 1
5. Second `+~` outlet 0 → `*~ 0.7` inlet 0
6. `*~ 0.7` outlet 0 → `clip~` inlet 0
7. `clip~` outlet 0 → `send~ drone-out`

Expose `0.7` as a `float` number box. Label "DRONE MASTER LEVEL".

Add a `meter~` on `clip~` outlet to watch overall level during development.

---

## Section 8 — Monitor / Debug Panel

| Object text | Purpose |
|---|---|
| `number` on unpack outlet 0 | Loudness dB — watch AMP_TARGET respond |
| `number` on unpack outlet 6 | Pitch MIDI — watch subharmonic source |
| `number` on unpack outlet 7 | Pitch confidence — confirm gate is passing |
| `button` on ONSET BANG | Flash on each onset |
| `meter~` on receive~ outlet | Input level from hydrophone |
| `meter~` on CAPTURE_AUDIO | Live capture layer level |
| `meter~` on SPECTRAL_FREEZE_OUT | Freeze layer level |
| `meter~` on SUB_AUDIO_SUM | Subharmonic layer level |
| `meter~` on clip~ outlet | Master drone output — watch for clipping |
| `scope~` on CAPTURE_ENV line~ | Capture envelope shape |
| `scope~` on FREEZE_ENV line~ | Freeze envelope shape |
| `scope~` on SUB_ENV line~ | Sub envelope shape |
| `toggle` | Manual freeze trigger — bypasses onset gate, useful for testing |

---

## Testing This Patch

Work through layers in isolation before combining them.

**Test 1 — Onset detection:**
Same as original guide. Play a dissolution recording via `sfplay~`. ONSET BANG
button should flash on dissolution events. If too many false triggers, raise
`@floor` or lower `@sensitivity`.

**Test 2 — Live capture and freeze:**
With a dissolution recording playing, watch the `groove~ capture-freeze` output
on a `meter~`. On the first onset, the freeze buffer should be populated and
`groove~` should begin producing audio. If silent: confirm Option A or B copy
mechanism is connected correctly. Double-click `buffer~ capture-freeze` to see
its waveform — should show captured audio content after the first onset.

**Test 3 — Spectral freeze:**
Without any dissolution audio (silence), manually click the freeze trigger toggle.
Then play a short dissolution burst and click freeze again. You should hear the
spectrum of that burst held continuously even after the playback stops. If you
hear only silence or crackling: check `latch~` connections and `pfft~` inlet 1
routing inside `drone-freeze-fft.maxpat`.

**Test 4 — Subharmonic oscillators:**
Manually set a MIDI pitch value (try 60 — middle C) into the `snapshot` input.
You should hear three sine tones at C4, C3, and C2 (60, 48, 36). Use a spectrum
analyzer (Max's `spectroscope~` or Friture on your system audio) to confirm the
three frequencies are present. If only one or two tones are audible, check the
`mtof` → `sig~` → `cycle~` chains for each subharmonic.

**Test 5 — Envelope timing:**
With a dissolution recording, watch all three `scope~` displays simultaneously.
On each onset: CAPTURE_ENV should begin a slow rise (4000ms), FREEZE_ENV should
begin a slower rise (6000ms), SUB_ENV should begin the slowest (8000ms). After
the burst, releases should extend well beyond the event — 12, 20, and 30 seconds
respectively. This timing produces the layered dissolve quality: capture fades
first, then freeze, then the subharmonics last (they outlast everything).

**Test 6 — Full sum:**
All three layers running together. The master drone should feel dense but not
aggressive. If it clips (meter~ red): lower DRONE MASTER LEVEL or individual
layer trim values. If it sounds thin: lower the confidence threshold or raise
@sensitivity so more onsets trigger the envelopes.

**Test 7 — Two artifacts in sequence:**
Put in a fast-dissolving artifact (effervescent tablet recording), wait for it
to complete, then a slow one (wax or salt). Confirm: the drone updates its
frozen spectrum with the new artifact's frequencies while the previous freeze
layer is still decaying. You should hear two frozen spectra overlapping briefly
before the earlier one fully releases. This is the accumulation texture — the
room fills slowly with the ghosts of dissolved things.

---

## Tuning Reference

| Parameter | Default | Direction for dissolution |
|---|---|---|
| `@sensitivity` | 50 | Lower to 25–35 for diffuse fizzing |
| `@floor` | -60 | Raise to -50 if background fizzing floods onset detection |
| `@lockout` | 100ms | Raise to 200–400ms for dense bursts |
| Confidence threshold | 0.5 | Lower to 0.35–0.4 if dissolution pitch is highly diffuse |
| FREEZE_WINDOW_MS | 3000ms | Shorter (1000ms) for single-event capture; longer (6000ms) for phrase |
| Capture playback rate | 0.08 | Lower (0.04) for more extreme stretch; raise (0.2) for faster cycling |
| Capture attack | 4000ms | Lower for fast-dissolving materials; raise for geological pace |
| Freeze attack | 6000ms | Raise further for very slow, glacial spectrum materialization |
| Sub attack | 8000ms | Keep long — subharmonics should feel inevitable, not triggered |
| Sub release | 30000ms | Rarely need to lower this; the longer the better |
| DRONE MASTER LEVEL | 0.7 | Lower if drone overwhelms the voice patches in the full system |

---

## Notes

- The three layers have deliberately different temporal characters. The live
  capture responds most quickly (it is the most event-coupled). The spectral
  freeze is slower — it is the event's harmonic portrait, not the event itself.
  The subharmonics are slowest — they are the room's response to the material,
  not the material's response to anything. Together they produce a layered sense
  of time: immediate, recent, and geological all present simultaneously.

- The spectral freeze layer will update on every onset. If dissolution is dense
  (many onsets per second), the frozen spectrum will update rapidly and may feel
  unstable. Raise `@lockout` to 300–500ms in dense dissolution contexts to force
  the freeze to hold longer between updates.

- The subharmonic frequencies update on each ONSET BANG. If the detected pitch
  jumps erratically between onsets (common with dissolution sounds), the
  subharmonics will jump too. Add a `slide` object after the `snapshot` output
  to smooth pitch transitions: `slide 50 5` (slow upward glide, fast downward)
  gives a portamento quality as the subharmonics shift — more musical, less
  mechanical.

- This patch generates no audio of its own in silence. Without incoming hydrophone
  signal producing onsets, all three envelopes remain at 0 (or decaying toward 0).
  This is correct. The drone exists only because the dissolution exists. In true
  silence between artifacts, the drone dissolves away. When the next artifact
  enters the water, the drone re-emerges. This is the cryosleep breath — present
  only in passage, absent in stillness.

- The `clip~ -1. 1.` safety limiter at the output is essential. Three layered
  audio sources with long release tails can accumulate above 0dB during dense
  dissolution sessions. Never remove this limiter for performance.

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

- Remove the existing `buffer~ drone-sample` objects and any `groove~` objects
  from the current dk-drone patch if already built. `groove~` is not used in
  this revised patch — `play~` and `record~` replace it throughout. Keep the
  `dk.descriptors~` analysis chain (Sections 3–5) — that architecture is unchanged.
- No sample files needed. The patch generates its own audio material from the
  hydrophone signal.
- You will need a working `receive~ hydrophone-in` signal — use `sfplay~` with a
  dissolution recording for development testing, as before.

---

## Architecture Overview

```
[receive~ hydrophone-in]
        |
        ├──→ [LIVE CAPTURE BUFFER]     ← rolling record~ into buffer~
        |           |
        |     on onset: freeze window → play~ triggered playback
        |     between onsets: metro-retriggered play~ for haze
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

Records the hydrophone signal continuously into a rolling buffer. Two playback
sub-layers run from this section:

- **Freeze playback** — on each onset, a second `record~` captures a window of
  live audio into a freeze buffer, then `play~` is triggered to play it back once.
  Each new onset replaces the freeze with fresh material.
- **Background haze** — a `metro` continuously retriggers `play~` on the live
  buffer at a slow interval, creating overlapping layered playback of the most
  recent captured material.

`groove~` is not used here. `play~` is the correct object for buffer playback
when the buffer is written to by `record~` — `groove~` is designed for
file-loaded static buffers and does not behave correctly with live-written content.

### Objects:

| Object text | Notes |
|---|---|
| `buffer~ capture-live 10000` | 10-second rolling capture buffer (10000ms) |
| `buffer~ capture-freeze 10000` | Freeze buffer — receives onset window captures |
| `record~ capture-live` | Continuously records hydrophone into live buffer |
| `record~ capture-freeze` | Triggered — captures onset window into freeze buffer |
| `play~ capture-freeze` | Triggered playback of freeze buffer — one shot per onset |
| `play~ capture-live` | Haze playback — retriggered by metro |

### Recording setup — continuous capture:

| Object text | Notes |
|---|---|
| `toggle` | RECORD ENABLE — on by default via loadbang |
| `loadbang` | Sends 1 to toggle on patch load |

Connections:
1. `loadbang` → `toggle` → set to 1 on load
2. `toggle` outlet 0 → `record~ capture-live` inlet 0 (start/stop)
3. `receive~ hydrophone-in` outlet 0 → `record~ capture-live` inlet 1 (audio)

`record~` runs continuously. The 10-second buffer wraps — the most recent
10 seconds of dissolution is always available.

### Freeze capture on onset:

On each ONSET BANG, start a brief `record~` burst into `capture-freeze`, then
stop it after FREEZE_WINDOW_MS. This writes the live dissolution moment into
the freeze buffer.

| Object text | Notes |
|---|---|
| `number box` | FREEZE_WINDOW_MS — default 3000ms. Range 500–8000ms. |
| `record~ capture-freeze` | Triggered freeze recorder |
| `delay` | Stops freeze recording after window elapses |

Connections:
1. ONSET BANG → `record~ capture-freeze` inlet 0 with message `1` (start)
2. ONSET BANG → `delay FREEZE_WINDOW_MS` → `record~ capture-freeze` inlet 0
   with message `0` (stop after window)
3. `receive~ hydrophone-in` outlet 0 → `record~ capture-freeze` inlet 1 (audio)

To send the `1` and `0` messages: use two `message` objects (`message: 1` and
`message: 0`), both connected to `record~ capture-freeze` inlet 0. ONSET BANG
triggers the `1` message directly and triggers the `delay` which fires the `0`
message after FREEZE_WINDOW_MS.

### Freeze playback — play~ triggered:

After each freeze capture, trigger `play~` to play back what was just written.
Use a `delay` slightly longer than FREEZE_WINDOW_MS to ensure recording is
complete before playback starts.

| Object text | Notes |
|---|---|
| `play~ capture-freeze` | One-shot playback of freeze buffer |
| `delay` | Waits for freeze recording to complete before triggering play~ |

Connections:
1. ONSET BANG → `delay FREEZE_WINDOW_MS + 50` → `play~ capture-freeze` inlet 0
   (bang triggers playback — add 50ms margin over the record window)
2. `play~ capture-freeze` outlet 0 → `*~` inlet 0
3. Amplitude envelope (Section 6, CAPTURE_ENV) → `*~` inlet 1
4. `*~` outlet 0 → **CAPTURE_AUDIO** (feeds master sum in Section 7)

`play~` plays the buffer once from start to end and stops. Each new ONSET BANG
replaces the freeze buffer and retriggers playback. Between onsets, the last
frozen moment plays once and then the haze layer takes over.

### Background haze — metro-retriggered play~:

A `metro` continuously retriggers `play~ capture-live` so the live buffer plays
back in overlapping loops, creating the persistent ambient texture between onsets.
The metro period should be slightly shorter than the buffer length so each new
play~ starts before the previous one ends.

| Object text | Notes |
|---|---|
| `metro 8000` | Retrigger interval — default 8000ms (8 sec). Tune to taste. |
| `toggle` | HAZE ENABLE — on by default via loadbang |
| `play~ capture-live` | Haze playback — plays live buffer on each metro tick |
| `*~ 0.15` | Fixed quiet level — haze should sit well below freeze layer |

Connections:
1. `loadbang` → HAZE ENABLE toggle → set to 1 on load
2. HAZE ENABLE toggle → `metro 8000` inlet 0 (start/stop metro)
3. `metro 8000` outlet 0 → `play~ capture-live` inlet 0 (bang triggers playback)
4. `play~ capture-live` outlet 0 → `*~ 0.15` inlet 0
5. `*~ 0.15` outlet 0 → **HAZE_AUDIO** (feeds master sum in Section 7)

**Note on metro period:** Set the metro period to match your sense of the
dissolution pace. 8000ms means the haze layer cycles roughly every 8 seconds.
During dense dissolution, you may want to shorten this (4000–5000ms) so the
haze keeps up with rapid material changes. During very slow dissolution (wax,
plaster) you may want to lengthen it (12000–15000ms).

### Expose as parameters:

| Parameter | Object | Default | Range |
|---|---|---|---|
| FREEZE_WINDOW_MS | number box | 3000 | 500–8000ms |
| Haze metro period | number box → metro | 8000 | 2000–15000ms |
| Haze level | float box → `*~ 0.15` | 0.15 | 0.05–0.35 |
| RECORD ENABLE | toggle | 1 (on) | — |
| HAZE ENABLE | toggle | 1 (on) | — |

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
| `+~` | Sum freeze + capture audio |
| `+~` | Sum previous + haze audio |
| `+~` | Sum previous + sub audio |
| `*~ 0.7` | Master drone level trim |
| `clip~ -1. 1.` | Safety limiter — three layers summing can clip |
| `send~ drone-out` | Named bus — same as original |

### Connections:

1. **SPECTRAL_FREEZE_OUT** → first `+~` inlet 0
2. **CAPTURE_AUDIO** → first `+~` inlet 1
3. First `+~` outlet 0 → second `+~` inlet 0
4. **HAZE_AUDIO** → second `+~` inlet 1
5. Second `+~` outlet 0 → third `+~` inlet 0
6. **SUB_AUDIO_SUM** → third `+~` inlet 1
7. Third `+~` outlet 0 → `*~ 0.7` inlet 0
8. `*~ 0.7` outlet 0 → `clip~` inlet 0
9. `clip~` outlet 0 → `send~ drone-out`

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
With a dissolution recording playing via `sfplay~`, confirm `record~ capture-live`
is running (toggle on). Double-click `buffer~ capture-live` — you should see a
waveform building. Trigger an onset manually if needed. After the onset, double-click
`buffer~ capture-freeze` — it should show captured content. Then confirm
`play~ capture-freeze` fires and produces audio at the `meter~`. Connect
`play~ capture-freeze` outlet directly to `ezdac~` for isolation testing if needed.
If `capture-freeze` is empty: check that `record~ capture-freeze` is receiving
the ONSET BANG start message and that `receive~ hydrophone-in` is connected to
its audio inlet.

**Test 2b — Background haze:**
Enable the HAZE ENABLE toggle. The `metro` should start firing and `play~ capture-live`
should retrigger every 8 seconds. Connect `play~ capture-live` outlet directly to
`ezdac~` to confirm it produces audio independently of the freeze layer. If silent:
confirm `buffer~ capture-live` has content (from Test 2 above) and that the metro
is running.

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
| Haze metro period | 8000ms | Lower for denser overlap; raise to let each play~ instance breathe |
| Haze level | 0.15 | Raise if haze is inaudible; lower if it overwhelms the freeze layer |
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

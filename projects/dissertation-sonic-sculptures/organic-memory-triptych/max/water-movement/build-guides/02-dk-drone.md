# Build Guide 02 — dk-drone.maxpat

*Organic Memory Triptych | Movement II*
*Build this second. This is a subpatch loaded inside water-movement-main.*

---

## What This Patch Does

The drone layer. It listens to the hydrophone via the `hydrophone-in` named bus, uses `dk.descriptors~` to detect dissolution onsets and analyze pitch/loudness in real time, and drives two parallel playback streams:

- **Triggered layer** — spikes on each detected onset, modulated by the pitch and loudness of that event. This is the layer that responds directly to each bubble, dissolution pop, or chemical event.
- **Background haze** — a second `groove~` running continuously at very slow rate, very low volume. This is what gives the drone its persistent ambient quality between events.

No Somax2 involvement here. This is the fastest, most physically coupled layer in the entire signal chain.

---

## Before You Start

- In `water-movement-main.maxpat`, double-click the `p dk-drone` subpatcher box to open it
- You are now working inside the subpatch — this is where you build everything below
- **You will need a drone sample.** For development, any long sustaining sound works — a bowed string, a singing bowl recording, a pad sample, anything 5–30 seconds. Load it as `drone-sample`. The final material will be dissolution-specific recordings.

---

## Section 1 — Buffer Setup

Create these first. The buffer is the sample memory that `groove~` reads from.

| Object text | Notes |
|---|---|
| `buffer~ drone-sample` | No size argument — you'll load a file via message |
| `message: read` | Opens file dialog to load a sample into the buffer |
| `button` | Trigger the read message — click this to load a file |

### Connections:
1. `button` outlet 0 → `message: read` inlet 0
2. `message: read` outlet 0 → `buffer~ drone-sample` inlet 0

### Test:
Click the button, select any audio file. Open the `buffer~` by double-clicking it — you should see the waveform loaded. If it's empty, the file didn't load.

---

## Section 2 — Audio Input

| Object text | Notes |
|---|---|
| `receive~ hydrophone-in` | Gets hydrophone audio from the main patch bus |

No connections needed — `receive~` is self-contained. Its outlet 0 is your audio source for everything below.

---

## Section 3 — dk.descriptors~ Analysis

This single object handles onset detection, pitch, loudness, and flatness simultaneously.

### Object to create:

Type exactly: `dk.descriptors~ @input 0 @sensitivity 50 @floor -60 @lockout 100`

**Attribute notes:**
- `@input 0` — unfiltered mode. Start here. Switch to `@input 2` (contact mic bandpass) if you're getting too many false triggers from low-frequency water noise.
- `@sensitivity 50` — default nervousness (0–100%). Lower = less sensitive. Start at 50, tune down to 30–40 for quiet dissolution.
- `@floor -60` — onset ignored if signal is below this dB level. Raise to -50 if room noise is triggering false onsets.
- `@lockout 100` — minimum ms between onsets. 100ms is a good starting point for dissolution; the default 30ms is too fast.

### Connection:
`receive~ hydrophone-in` outlet 0 → `dk.descriptors~` inlet 0

### Outlets you'll use:

| Outlet | Type | What it carries |
|---|---|---|
| 0 | list | 8 descriptors (see unpack section below) |
| 2 | signal~ | Onset trigger pulse — fires on each detected onset |
| 3 | signal~ | Gate signal — high while above noise floor |

---

## Section 4 — Descriptor Unpack

`dk.descriptors~` outlet 0 fires a list of 8 values on every onset. Unpack them into named streams.

### Object:
`unpack 0. 0. 0. 0. 0. 0. 0. 0.`

*(8 float zeros — one per descriptor)*

### Connection:
`dk.descriptors~` outlet 0 → `unpack` inlet 0

### Outlet map — label each outlet with a comment object for clarity:

| unpack outlet | Descriptor | Unit |
|---|---|---|
| 0 | loudness | dB |
| 1 | loudness_derivative | dB/event |
| 2 | centroid | MIDI pitch (0–127) |
| 3 | centroid_derivative | — |
| 4 | flatness | dB (more negative = more tonal) |
| 5 | flatness_derivative | — |
| 6 | pitch | MIDI pitch (0–127) |
| 7 | pitch_confidence | 0.0–1.0 |

Add `number` boxes (not `number~`) on outlets 0, 2, 6, 7 during development so you can see values as dissolution events happen.

---

## Section 5 — Confidence Gate (Onset → Bang)

Converts the onset trigger signal to a bang, gated by pitch confidence so noise-only hits are rejected.

### Objects:

| Object text | Notes |
|---|---|
| `edge~` | Converts rising edge of trigger signal to a bang |
| `> 0.6` | Confidence threshold comparator |
| `gate 1` | Passes the bang only when confidence passes |

### Connections:
1. `dk.descriptors~` outlet 2 (trigger~) → `edge~` inlet 0
2. `edge~` outlet 0 (rising edge bang) → `gate 1` right inlet (control inlet)
3. `unpack` outlet 7 (pitch_confidence) → `> 0.6` inlet 0
4. `> 0.6` outlet 0 → `gate 1` inlet 1 (the gate toggle)
5. `gate 1` outlet 0 → **ONSET BANG** (this feeds Sections 7 and 8)

**Note on gate 1 inlet order:** In Max, `gate` has the gate toggle on its *right* inlet (inlet 1) and the signal to pass on its *left* inlet (inlet 0). Make sure the bang goes to inlet 0, and the confidence pass (0 or 1) goes to inlet 1.

### Expose as parameter:
Add a `float` number box connected to `> 0.6` left inlet so you can tune the threshold from 0.5–0.9 during testing. Label it "CONF THRESHOLD".

---

## Section 6 — Pitch → Playback Rate

Maps the detected pitch to a `groove~` playback rate. A perfect match between incoming pitch and sample root pitch = rate 1.0. Higher pitch = faster rate. Lower pitch = slower rate.

### Objects:

| Object text | Notes |
|---|---|
| `- 45` | Subtract drone sample's root MIDI note. 45 = A2. Change to match your sample. |
| `/ 12.` | Convert semitone offset to octaves |
| `pow 2.` | 2^octaves = playback rate ratio |
| `clip 0.5 2.0` | Limit to ±1 octave — prevents extreme speeds |
| `sig~` | Upsample control-rate float to audio-rate signal for groove~ inlet |

### Connections (chained top to bottom):
1. `unpack` outlet 6 (pitch MIDI) → `- 45` inlet 0
2. `- 45` outlet 0 → `/ 12.` inlet 0
3. `/ 12.` outlet 0 → `pow 2.` inlet 0 (left inlet = base, use `2.` as right inlet via `loadbang` → `2.` → `pow 2.` right inlet — or just use `expr pow(2., $f1)` as a single object instead)
4. `pow 2.` outlet 0 → `clip 0.5 2.0` inlet 0
5. `clip 0.5 2.0` outlet 0 → `sig~` inlet 0
6. `sig~` outlet 0 → **PLAYBACK_RATE** (feeds groove~ inlet 0 in Section 8)

**Simpler alternative using expr:**
Replace `- 45`, `/ 12.`, `pow 2.` with a single object:
`expr pow(2., ($f1 - 45.) / 12.)`
Connect `unpack` outlet 6 → `expr` inlet 0, then `expr` → `clip 0.5 2.0` → `sig~`.

---

## Section 7 — Loudness → Amplitude Envelope

Maps dissolution loudness to a target amplitude, then builds an attack/release envelope on each onset bang.

### Objects:

| Object text | Notes |
|---|---|
| `scale -40. -6. 0.1 0.9` | Maps dB range to amplitude 0.1–0.9 |
| `clip 0. 1.` | Safety clip |
| `f` | Float store — holds current amplitude target |
| `line~` | Smooth amplitude envelope (attack + release) |

### Connections:
1. `unpack` outlet 0 (loudness dB) → `scale -40. -6. 0.1 0.9` inlet 0
2. `scale` outlet 0 → `clip 0. 1.` inlet 0
3. `clip` outlet 0 → `f` inlet 0 (stores current amplitude)

**Envelope triggering on each onset bang:**

On each ONSET BANG (from Section 5 gate):
- First output target amplitude + attack ramp
- Then schedule release after ~3 seconds

| Object text | Notes |
|---|---|
| `t b f` | On bang: output a bang then output the stored float |
| `prepend` | Builds `target ramp_time` list for line~ |
| `message: 0. 4000` | Release message — ramp to silence over 4 seconds |
| `delay 3000` | Fires release 3 seconds after onset |

### Connections for envelope trigger:
1. ONSET BANG → `t b f` inlet 0
2. `t b f` outlet 1 (float) → `prepend 2000` inlet 0 → makes list `[amp 2000]` → `line~` inlet 0
   *(This ramps line~ to the current amplitude over 2000ms — attack)*
3. `t b f` outlet 0 (bang) → `delay 3000` inlet 0
4. `delay 3000` outlet 0 → `message: 0. 4000` outlet 0 → `line~` inlet 0
   *(This ramps line~ back to 0 over 4000ms — release)*

**Expose as parameters:**
- Attack time: replace `2000` in `prepend 2000` with a `number box` (range 500–5000ms)
- Release time: replace `4000` in `message: 0. 4000` with a `number box`
- Amplitude floor: replace `0.1` in `scale` with a `float` box

---

## Section 8 — Triggered Playback Layer (groove~)

The onset-responding playback. Loops the drone sample, modulated by pitch rate and loudness envelope.

### Objects:

| Object text | Notes |
|---|---|
| `groove~ drone-sample 1` | Arg: buffer name + 1 (loop mode on) |
| `*~` | Multiply groove~ output by amplitude envelope |

### Connections:
1. PLAYBACK_RATE (sig~ from Section 6) → `groove~` inlet 0 (rate inlet)
2. `groove~` outlet 0 → `*~` inlet 0
3. `line~` outlet 0 (from Section 7) → `*~` inlet 1
4. `*~` outlet 0 → `send~ drone-out` (add this send at the end)

**Note:** `groove~` starts playing as soon as DSP is on. The amplitude envelope (`line~`) starts at 0, so you won't hear it until the first onset bang triggers the attack ramp. This is the correct behavior.

---

## Section 9 — Background Haze Layer

A second, independent `groove~` running continuously at quiet, slow rate. This is the ambient presence between onset events.

### Objects:

| Object text | Notes |
|---|---|
| `groove~ drone-sample 1` | Second instance, same buffer, loop on |
| `sig~ 0.2` | Slow playback rate — 1/5 normal speed |
| `*~ 0.12` | Quiet fixed amplitude — background haze level |

### Connections:
1. `sig~ 0.2` outlet 0 → second `groove~` inlet 0
2. Second `groove~` outlet 0 → `*~ 0.12` inlet 0
3. `*~ 0.12` outlet 0 → `send~ drone-out`

**Expose as parameter:** Add a `float` number box (range 0.05–0.25) connected to `*~ 0.12` left inlet to tune haze level. Label "HAZE LEVEL".

*Both the triggered layer and haze layer connect to the same `send~ drone-out`. Max sums them automatically.*

---

## Section 10 — Monitor / Debug Panel

Add these during development. You can hide or remove them for performance, but they're essential for tuning.

| Object text | Purpose |
|---|---|
| `number` on unpack outlet 0 | Watch loudness dB in real time |
| `number` on unpack outlet 6 | Watch detected pitch (MIDI) |
| `number` on unpack outlet 7 | Watch pitch_confidence |
| `button` on ONSET BANG | Flashes on every detected onset |
| `meter~` on `receive~ hydrophone-in` outlet | Input level |
| `meter~` on `*~` outlet (triggered layer) | Output level |
| `scope~` on `line~` outlet | Watch envelope shape |
| `number` on `sig~` / clip outlet | Watch playback rate value |

---

## Testing This Patch

Work through these in order — each test confirms a layer before adding the next.

**Test 1 — Buffer loaded:**
Click the read button, load a sample. Double-click `buffer~ drone-sample` to see the waveform. Should show audio content.

**Test 2 — Background haze:**
Turn on DSP in main patch. You should immediately hear quiet, slow drone audio. If silent: check that the buffer is loaded and `sig~ 0.2` is connected to the second `groove~` rate inlet.

**Test 3 — Onset detection (without live hydrophone):**
Temporarily replace `receive~ hydrophone-in` with `adc~ 1` and speak into a microphone, or connect a test signal. Watch the `button` flash on the monitor panel — you should see it flashing on audio events. If nothing fires: lower `@floor` or increase `@sensitivity`.

**Test 4 — Triggered layer responding:**
Make a sharp sound. You should hear the triggered drone layer spike in volume and pitch-shift, then fade out over ~4 seconds. Watch the `scope~` on `line~` to confirm the attack/release envelope shape.

**Test 5 — Pitch tracking:**
Try sounds at different pitches (hum low vs. high, or use test tones at different frequencies). Watch the pitch MIDI number box — should move with your pitch. Watch the playback rate number box — should go above 1.0 for higher pitches, below 1.0 for lower.

**Test 6 — Confidence gate:**
Make a pure noise sound (rub fingers near mic, or blow air). The onset button should flash but the triggered layer should not respond (confidence too low). Compare to a pitched hum — the triggered layer should fire. If noise is triggering playback, raise the confidence threshold number box.

---

## Tuning Reference for Dissolution Sounds

When you have actual hydrophone material, expect to tune these values significantly:

| Parameter | Default | Expected adjustment for dissolution |
|---|---|---|
| `@sensitivity` | 50 | 25–40 — dissolution sounds are diffuse, not sharp |
| `@floor` | -60 | -50 to -55 — raise if fizzing background triggers constantly |
| `@lockout` | 100ms | 150–300ms — dissolution bursts can be dense |
| Attack time | 2000ms | 1000–3000ms — longer = smoother response |
| Release time | 4000ms | 3000–8000ms — longer = more sustained, reverberant tail |
| Confidence threshold | 0.6 | 0.4–0.5 — dissolution may have low but real pitch content |
| Haze level | 0.12 | 0.08–0.20 — to taste for ambient presence |

---

## Notes

- The two `groove~` instances share the same `buffer~ drone-sample`. This is fine — multiple `groove~` objects can read from the same buffer simultaneously.
- For performance, consider loading 2–3 different drone samples (different dissolution materials) and switching between them with a `umenu` → `message: replace` → `buffer~`.
- The pitch → rate mapping assumes your drone sample is tuned to A2 (MIDI 45). If your sample is tuned differently, change the `- 45` (or the number in the `expr` version) to match your sample's root MIDI note.
- Don't worry about the `send~ drone-out` summing from two sources — Max handles multi-source sends without clipping as long as individual levels are reasonable.

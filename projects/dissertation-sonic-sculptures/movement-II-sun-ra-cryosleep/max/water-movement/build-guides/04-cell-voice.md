# Build Guide 04 — cell-voice-N.maxpat (Five Instances)

*Organic Memory Triptych | Movement II*
*Build this fourth, after material-cell.maxpat is functional and passing cell dicts.*

---

## What This Patch Does

The voice patches are the instrument group layer. Each one receives the cell dict
broadcast from `material-cell` on its named bus, interprets the cell through its
own register filter and timbral logic, and produces either:

- **Audio output** — via `cycle~` oscillator bank (drone/harmonic field voices)
- **MIDI output** — via `makenote` → `midiout` or → existing S2 VST routing

You build **five instances** of this patch, one per voice. They share identical
internal architecture but differ in four parameters set at the top of each patch:
register range, timbre character, oscillator count, and which audio/MIDI bus they
send to.

The accumulation logic lives in `material-cell` — these patches don't know or care
how many voices are active. They simply respond to whatever arrives on their bus.
When `material-cell` stops sending (voice count drops below their number), they
fall silent naturally as their envelope decays.

---

## Before You Start

- `material-cell.maxpat` must be built and tested (Guide 03 complete)
- Confirm `cell-voice-1` through `cell-voice-5` send buses exist in the main patch
- Add five `p` objects to `water-movement-main.maxpat` Section 4:
  `p cell-voice-1` through `p cell-voice-5`
- Add five new audio send buses to the main patch Section 2:
  `send~ voice-audio-1` through `send~ voice-audio-5`
- Add corresponding receives to the master mix Section 5:
  `receive~ voice-audio-1` through `receive~ voice-audio-5`
  → all feed the master `gain~` alongside `receive~ drone-out`

Save the five files as:
`cell-voice-1.maxpat` through `cell-voice-5.maxpat`
All in the same folder as `material-cell.maxpat`.

---

## Voice Identity Table

Build each instance with these parameters. Set them at the top of each patch using
`int` or `float` number boxes with `loadbang` → `set N` to initialize on patch load.

| Voice | Register (MIDI) | Character | Oscillators | Enters | Exits | Audio bus |
|---|---|---|---|---|---|---|
| 1 | 24–48 (C1–C3) | Sub-bass drone — the weight of the hold | 2 | First | Last | `voice-audio-1` |
| 2 | 36–60 (C2–C4) | Bass/cello — the body of the vessel | 3 | Second | Fourth | `voice-audio-2` |
| 3 | 52–72 (E3–C5) | Vibraphone/piano — most legible, "Johnny" voice | 3 | Third | Third | `voice-audio-3` + MIDI |
| 4 | 60–84 (C4–C6) | Upper strings — thin, ascending | 4 | Fourth | Second | `voice-audio-4` |
| 5 | 72–96 (C5–C7) | Flute/overtone — barely there, first to dissolve | 2 | Last | First | `voice-audio-5` |

**Spatialization note:** Voice 1 → left/low in your speaker/output matrix.
Voice 5 → right/high. This enacts the vertical spatialization described in
the context brief: heavy frequencies settle, light ones float. Map output
channels accordingly when you route to your interface.

---

## Architecture Overview (one instance)

```
[receive cell-voice-N]        ← cell dict arrives from material-cell on CELL TICK
        |
[DICT READER]                 ← extracts rhythm, pitch_1/2/3, loudness from dict
        |
        ├──→ [REGISTER FILTER]     ← selects which pitches fall in this voice's range
        |           |
        |    ACTIVE PITCHES (0–3 pitches, or transposed into range)
        |
        ├──→ [RHYTHM INTERPRETER]  ← converts interval_ms to note timing
        |           |
        |    NOTE TRIGGER SEQUENCE
        |
        ↓
[OSCILLATOR BANK]             ← cycle~ per active pitch, amplitude envelope per note
        |
[AMPLITUDE SHAPER]            ← Eastman insistence: slow attack, very slow release
        |
[send~ voice-audio-N]         ← to master mix
```

For Voice 3 only, an additional MIDI path runs in parallel:
```
ACTIVE PITCHES → [makenote] → [midiout] → Vibraphone/Piano VST (ch 3)
```

---

## Section 1 — Cell Receipt and Dict Reading

### Objects:

| Object text | Notes |
|---|---|
| `receive cell-voice-N` | Replace N with voice number — this is the cell bus |
| `dict.get rhythm` | Extracts rhythm value (interval ms) from incoming dict |
| `dict.get pitch_1` | Extracts first spectral pitch |
| `dict.get pitch_2` | Extracts second spectral pitch |
| `dict.get pitch_3` | Extracts third spectral pitch |
| `dict.get loudness` | Extracts loudness (dB) |

### Connections:

`receive cell-voice-N` outlet 0 fires the dict object on each CELL TICK.

In Max 9, a `dict` object arriving at a `dict.get` inlet automatically triggers
output. Connect:

1. `receive cell-voice-N` outlet 0 → `dict.get rhythm` inlet 0
2. `receive cell-voice-N` outlet 0 → `dict.get pitch_1` inlet 0
3. `receive cell-voice-N` outlet 0 → `dict.get pitch_2` inlet 0
4. `receive cell-voice-N` outlet 0 → `dict.get pitch_3` inlet 0
5. `receive cell-voice-N` outlet 0 → `dict.get loudness` inlet 0

Each `dict.get` fires its value independently on receipt. Label the outputs:
**RHYTHM_MS**, **RAW_PITCH_1**, **RAW_PITCH_2**, **RAW_PITCH_3**, **LOUDNESS_DB**

**Note on dict routing in Max:** `receive` outputs a dict reference, not the
dict contents directly. If `dict.get` does not trigger automatically, add a
`dict` object between `receive` and the `dict.get` objects: the receive output
goes to `dict` inlet 0, and the `dict.get` objects connect to `dict` outlet 0.
Test this carefully — dict routing behavior varies by Max version.

---

## Section 2 — Register Filter

Determines which of the three incoming pitches fall within this voice's register,
and transposes any out-of-range pitches into range by octave displacement.

This is the voice's primary identity. Voice 1 only speaks low. Voice 5 only speaks
high. The same cell arrives at all five; each one hears a different part of it.

### Parameters (set via loadbang for each instance):

| Object text | Notes |
|---|---|
| `int REGISTER_LOW` | Low MIDI boundary — see Voice Identity Table |
| `int REGISTER_HIGH` | High MIDI boundary |

### For each of the three raw pitches (build this chain three times):

| Object text | Notes |
|---|---|
| `f` | Float store — holds incoming pitch |
| `>= REGISTER_LOW` | True if pitch is within or above low bound |
| `<= REGISTER_HIGH` | True if pitch is within or below high bound |
| `&& 1` | True only if both conditions met (pitch is in range) |
| `gate 1` | Passes pitch only when in range |

**Connections for each pitch (example for RAW_PITCH_1):**
1. RAW_PITCH_1 → `f` inlet 0 (store the value)
2. RAW_PITCH_1 → `>= REGISTER_LOW` inlet 0
3. RAW_PITCH_1 → `<= REGISTER_HIGH` inlet 0
4. `>= REGISTER_LOW` outlet 0 → `&&` inlet 0
5. `<= REGISTER_HIGH` outlet 0 → `&&` inlet 1
6. `&&` outlet 0 → `gate 1` inlet 1 (gate control)
7. `f` outlet 0 → `gate 1` inlet 0 (signal to pass)
8. `gate 1` outlet 0 = **IN_RANGE_PITCH_1**

### Octave transposition fallback:

If a pitch is out of range, transpose it into range rather than discard it.
The material's pitches should always be heard — just spoken at the right register.

For each pitch, after the gate:

| Object text | Notes |
|---|---|
| `select 0` | Fires when gate outputs 0 (pitch out of range) |
| `f` | Holds the raw pitch for transposition |
| `% 12` | Pitch class (strips octave) |
| `+ REGISTER_LOW` | Places pitch class at bottom of register |
| `clip REGISTER_LOW REGISTER_HIGH` | Safety clip |

**Connections:**
1. `&&` outlet 0 → `select 0` inlet 0
2. `select 0` outlet 0 (bang when out of range) → bang `f` (read stored raw pitch)
3. `f` outlet 0 → `% 12` → `+ REGISTER_LOW` → `clip` → **TRANSPOSED_PITCH_1**

Merge **IN_RANGE_PITCH_1** and **TRANSPOSED_PITCH_1** with a `||`-style merge:
Use `route` or simply allow both to flow — only one fires per onset since the
gate passes OR the fallback fires, never both.

Final output for each: **ACTIVE_PITCH_1**, **ACTIVE_PITCH_2**, **ACTIVE_PITCH_3**

---

## Section 3 — Rhythm Interpreter

Converts RHYTHM_MS (the inter-onset interval from the material) into a timed
note trigger sequence. The voice plays its pitches at the material's own pulse —
not the global transport, not a composed meter.

This is the cell's rhythmic identity becoming the voice's rhythmic behavior.
In the Eastman sense: every voice says the same rhythmic thing. The polyphony
arises from register and timbre difference, not rhythmic difference.

### Objects:

| Object text | Notes |
|---|---|
| `metro 500` | Interval metro — period set by RHYTHM_MS |
| `toggle` | VOICE ACTIVE toggle — enables metro |
| `counter 0 2` | Steps through the three active pitches (0, 1, 2) |
| `sel 0 1 2` | Routes counter output to trigger each pitch oscillator |

### Connections:

1. RHYTHM_MS → `metro` inlet 1 (period — right inlet)
2. VOICE ACTIVE toggle outlet → `metro` inlet 0 (start/stop)
3. `metro` outlet 0 → `counter` inlet 0 (increment on each tick)
4. `counter` outlet 0 → `sel 0 1 2` inlet 0
5. `sel` outlet 0 = TRIGGER_PITCH_1
6. `sel` outlet 1 = TRIGGER_PITCH_2
7. `sel` outlet 2 = TRIGGER_PITCH_3

**Voice activation:** The voice should be active whenever it is receiving cells
from material-cell. Use `receive cell-voice-N` — when VOICE_COUNT drops below N,
no more cells arrive. Detect this with a silence timeout:

| Object text | Notes |
|---|---|
| `timer` | Starts counting when last cell was received |
| `metro 200` | Polls timer every 200ms |
| `> 3000` | If no cell for 3 seconds, deactivate |
| `select 1` | Bang when silence threshold crossed |

Connections:
1. `receive cell-voice-N` → `timer` reset (right inlet) on each receipt
2. `metro 200` → poll `timer` → `> 3000` → `select 1` → deactivate VOICE ACTIVE toggle

When VOICE ACTIVE goes to 0, the metro stops but the oscillator bank remains
alive — it decays naturally through the amplitude envelope (Section 5).
This is intentional. The voice doesn't cut off; it fades. Silence is gradual.

---

## Section 4 — Oscillator Bank

One `cycle~` oscillator per active pitch, up to three per voice. Each oscillator
runs continuously at its assigned pitch frequency. The amplitude envelope
(Section 5) controls whether it is heard.

### For each pitch slot (build three times):

| Object text | Notes |
|---|---|
| `mtof` | Converts MIDI float to Hz |
| `sig~` | Upsample control-rate Hz to audio-rate signal |
| `cycle~ 0.` | Oscillator — frequency set by sig~ |
| `*~` | Amplitude multiplier — envelope connects here |

**Connections for pitch slot 1:**
1. ACTIVE_PITCH_1 → `mtof` inlet 0
2. `mtof` outlet 0 → `sig~` inlet 0
3. `sig~` outlet 0 → `cycle~` inlet 0 (frequency inlet)
4. `cycle~` outlet 0 → `*~` inlet 0
5. Amplitude envelope (from Section 5) → `*~` inlet 1

**Pitch slot trigger connection (from Section 3):**
TRIGGER_PITCH_1 → bang `mtof` to update frequency when pitch changes.
Use `snapshot` (not `snapshot~`) to read ACTIVE_PITCH_1 on the trigger bang,
then pass to `mtof`.

**Alternative approach — `snapshot` on trigger:**
1. TRIGGER_PITCH_1 bang → `snapshot` inlet 1 (bang triggers read)
2. ACTIVE_PITCH_1 float → `snapshot` inlet 0 (value to read)
3. `snapshot` outlet 0 → `mtof` → `sig~` → `cycle~`

This ensures the oscillator updates its frequency only when the rhythm
interpreter fires that pitch slot — not on every cell receipt.

### Summing:

All three `*~` outputs → `+~` chain → **VOICE_AUDIO_SUM**

`*~_1` outlet → `+~` inlet 0
`*~_2` outlet → `+~` inlet 1
First `+~` outlet → second `+~` inlet 0
`*~_3` outlet → second `+~` inlet 1
Second `+~` outlet = **VOICE_AUDIO_SUM**

---

## Section 5 — Amplitude Shaper (Eastman Insistence)

This is the most compositionally significant section. The amplitude behavior
defines the Eastman character: slow attack (the voice arrives as if it was always
there), very slow release (it does not leave, it dissolves).

No sharp attacks. No percussive transients. The voice *insists* — it accumulates
presence rather than announcing itself.

### Objects:

| Object text | Notes |
|---|---|
| `line~` | Smooth amplitude ramp — all envelope gestures go through here |
| `scale -50. -6. 0.05 0.7` | Maps loudness dB to amplitude 0.05–0.7 |
| `clip 0. 1.` | Safety |
| `f` | Holds current amplitude target |

### Parameters — set differently per voice:

| Voice | Attack (ms) | Sustain amp | Release (ms) | Character |
|---|---|---|---|---|
| 1 | 8000 | 0.6 | 20000 | Arrives slowly, stays forever |
| 2 | 5000 | 0.5 | 12000 | Body — present but not dominant |
| 3 | 3000 | 0.45 | 8000 | Most responsive — "Johnny" voice |
| 4 | 2000 | 0.3 | 6000 | Lighter — enters faster, fades sooner |
| 5 | 1000 | 0.2 | 3000 | Quickest — barely materializes |

Expose all three as number boxes so you can tune during development.

### On TRIGGER (any of the three rhythm triggers fires):

1. TRIGGER bang → `t b f` → read stored amplitude target
2. `t b f` outlet 1 (float) → `prepend ATTACK_MS` → list [amp attack_ms] → `line~`
   *(This is the attack ramp — voice rises to target over ATTACK_MS)*
3. `t b f` outlet 0 (bang) → `delay SUSTAIN_MS` → `message: 0. RELEASE_MS` → `line~`
   *(After sustain, begin release to silence over RELEASE_MS)*

**Loudness → amplitude target:**
LOUDNESS_DB → `scale -50. -6. 0.05 0.7` → `clip` → `f` (store target)
This updates the amplitude target on each cell receipt, so louder dissolution =
louder voice. The next trigger picks up the new target.

### Deactivation release:

When VOICE ACTIVE goes to 0 (silence timeout from Section 3):
VOICE ACTIVE = 0 → `select 0` → `message: 0. RELEASE_MS` → `line~`

This begins the final release. The voice dissolves out of the texture exactly
as the material dissolved out of activity. The dissolution and the voice are
synchronized in their ending.

### Connection to oscillator bank:

`line~` outlet 0 → each `*~` inlet 1 in Section 4 (amplitude multiplier)

---

## Section 6 — MIDI Path (Voice 3 Only)

Voice 3 (vibraphone/piano) outputs MIDI in parallel to its audio oscillators.
This allows a real VST instrument to speak the cell alongside the synthesis layer —
the most legible timbre in the texture, and the "Johnny" surface voice.

### Objects:

| Object text | Notes |
|---|---|
| `makenote` | Generates note-on / note-off pairs |
| `midiout` | Sends to MIDI output — set to match your VST channel (ch 3) |

**For each trigger (TRIGGER_PITCH_1/2/3):**

1. TRIGGER bang → `snapshot` → read ACTIVE_PITCH_N → MIDI pitch
2. LOUDNESS_DB → `scale -50. -6. 40 100` → `clip 1 127` → MIDI velocity
3. `makenote MIDI_PITCH MIDI_VELOCITY 2000` (2000ms note duration — tune to taste)
4. `makenote` outlet 0 (note-on) → `midiout` channel 3
5. `makenote` outlet 1 (note-off) → `midiout` channel 3

**Alternatively**, route through the existing S2 infrastructure:
MIDI output → `send s2-midi-out-3` bus → your existing VST routing in the main patch.
This is cleaner for performance — everything goes through one MIDI output path.
Use this approach if Voice 3 VST is already configured as S2 Player 3's instrument.

### "Johnny" override (from material-cell Section 8):

When material-cell activates the "Johnny" surface, it sends melody pitches
directly on `cell-voice-3` bus, overriding the spectral pitch data.
No special handling needed here — Voice 3 receives whatever arrives on its bus.
The override happens upstream in material-cell. This patch just plays what it gets.

---

## Section 7 — Audio Output

| Object text | Notes |
|---|---|
| `*~ VOICE_LEVEL` | Final level trim per voice |
| `send~ voice-audio-N` | Named audio bus — replace N with voice number |

**VOICE_LEVEL defaults per voice:**

| Voice | Default level | Notes |
|---|---|---|
| 1 | 0.8 | Full weight — always the loudest |
| 2 | 0.65 | Present but below Voice 1 |
| 3 | 0.5 | Legible without dominating |
| 4 | 0.4 | Lighter presence |
| 5 | 0.25 | Barely materialized |

Expose each as a `float` number box for live performance tuning.

Connections:
1. **VOICE_AUDIO_SUM** (from Section 4) → `*~ VOICE_LEVEL` inlet 0
2. `*~` outlet 0 → `send~ voice-audio-N` inlet 0

---

## Section 8 — Monitor / Debug Panel

| Object text | Purpose |
|---|---|
| `number` on RHYTHM_MS | Confirm cell rhythm arriving |
| `number` on ACTIVE_PITCH_1/2/3 | Watch pitches after register filtering |
| `button` on each TRIGGER | Flash on each rhythm tick for each pitch slot |
| `scope~` on `line~` outlet | Watch amplitude envelope shape |
| `meter~` on `send~ voice-audio-N` outlet | Output level |
| `toggle` display on VOICE ACTIVE | Is this voice currently live? |
| `number` on LOUDNESS_DB | Watch loudness from cell |

---

## Testing — Work Through All Five Together

Build Voice 1 completely first. Test it alone before building Voices 2–5.
Once Voice 1 is confirmed working, duplicate the patch and change the four
identity parameters (register bounds, attack, sustain amplitude, release,
voice level) for each subsequent voice.

**Test 1 — Cell receipt:**
With `material-cell` running and a dissolution recording playing, open Voice 1.
Watch RHYTHM_MS and ACTIVE_PITCH_1 — they should update on each CELL TICK.
If nothing arrives: confirm `cell-voice-1` send/receive names match exactly.

**Test 2 — Register filter:**
Send a test cell dict manually using a `dict` object and `send cell-voice-1`.
Set pitch_1 to values inside and outside Voice 1's range (24–48).
Confirm: in-range pitches pass through, out-of-range pitches are transposed
to within the range (not silenced).

**Test 3 — Rhythm and oscillators:**
Enable the VOICE ACTIVE toggle manually. The metro should start and cycle through
the three pitch slots. Confirm you hear three different frequencies alternating
at the material's interval. Confirm the amplitude envelope is shaping each event.

**Test 4 — Amplitude envelope:**
Watch the `scope~` on `line~`. Each trigger should show a slow attack ramp up,
sustain plateau, then slow release. No sharp transients — if you see vertical
spikes, the attack time parameter is not connected correctly.

**Test 5 — Deactivation decay:**
Stop the dissolution recording. After 3 seconds (the silence timeout), VOICE ACTIVE
should go to 0 and the amplitude should begin a slow release. The voice should
fade out over RELEASE_MS milliseconds. Confirm it reaches 0 and stays there.

**Test 6 — Full five-voice accumulation:**
Run all five voice patches simultaneously with `material-cell`. Start a dissolution
recording. Watch VOICE_COUNT in material-cell climb from 1 to 5. Confirm:
- Voice 1 enters first (lowest, heaviest)
- Voices 2–5 layer in progressively
- Each voice has a distinct register — no two saying the same pitches at the same octave
- When activity stops, voices drop in reverse order: Voice 5 first, Voice 1 last

**Test 7 — Voice 3 MIDI:**
Confirm Voice 3's MIDI output reaches the vibraphone/piano VST.
Open Max's MIDI monitor or your DAW MIDI input — you should see note events
on channel 3 timed to Voice 3's rhythm triggers.

---

## Tuning Reference

| Parameter | Default | Direction |
|---|---|---|
| Silence timeout | 3000ms | Raise if voices drop out during slow dissolution |
| REGISTER bounds | See table | Narrow the range if voices overlap too much |
| Attack time | Voice-dependent | Raise all for more glacial, geological accumulation |
| Release time | Voice-dependent | Raise all for longer dissolution tails |
| VOICE_LEVEL | Voice-dependent | Lower Voices 4–5 if high register dominates |
| `scale` for loudness→amp | -50 to -6 | Adjust low end if dissolution is very quiet |

---

## Notes

- All five voice patches share the same internal architecture. The only differences
  are the four identity parameters at the top: register bounds, amplitude envelope
  times, voice level, and the audio/MIDI bus numbers. Keep this in mind when
  debugging — a problem in one voice likely affects all five.

- The oscillator bank uses pure sine waves (`cycle~`). This is intentional — the
  timbre complexity comes from the *combination* of voices at different registers,
  not from individual voice complexity. A sine wave in Voice 1 plus a sine wave
  in Voice 3 produces beating, difference tones, and harmonic interference that
  feels rich without any single voice being harmonically dense. This is the spectral
  music approach: simplicity at the component level, complexity at the system level.

- If you want more timbral character in individual voices, replace `cycle~` with
  `rect~` (sawtooth) for Voices 1–2, and keep `cycle~` for Voices 4–5. Voice 3
  (vibraphone timbre) should stay sine or near-sine to preserve legibility for
  the "Johnny" surface moment.

- The five voice patches and `material-cell` together replace the need for Somax2
  in a performance. Somax2 can still run alongside as an additional layer — if
  present, S2 players receive their influence from `phrase-buffer` as before, and
  their audio mixes in at the master level. But the composition is now complete
  and self-contained without S2. This is the design intention: S2 is additive,
  not load-bearing.

- Spatialization is not built into these patches — it is handled at the output
  routing stage. When you route `voice-audio-1` through `voice-audio-5` to your
  interface outputs, assign them to the speaker positions that enact the vertical
  spatial logic: Voice 1 to the lowest/heaviest position, Voice 5 to the
  highest/lightest. The composition and the physical space should agree.

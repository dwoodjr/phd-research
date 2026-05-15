# Max Patch Summary

_Files: dk-drone-alt.maxpat, dk-drone.maxpat, somax-8-player-test.maxpat, water-movement-main.maxpat_

## `dk-drone-alt.maxpat`

### Audio Sources
- `buffer~ drone_1-sample`
- `buffer~ drone_2-sample`
- `groove~ drone_1-sample 1`
- `groove~ drone_2-sample 1`
- `sig~`

### Signal Chains (audio-rate)
- `groove~ drone_1-sample 1` → `*~` → `+~` → `+~` → `send~ drone-out`
- `groove~ drone_2-sample 1` → `*~ 0.5` → `+~` → `+~` → `send~ drone-out`
- `receive~ hydrophone-in` → `gate~` → `svf~` → `az.equalizr~` → `*~ 25` → `+~` → `send~ drone-out`
- `receive~ hydrophone-in` → `gate~` → `svf~` → `az.equalizr~` → `*~ 50` → `dk.descriptors~ @input 0 @sensitivity 100 @floor -500 @lockout 100`
- `sig~` → `groove~ drone_1-sample 1` → `*~` → `+~` → `+~` → `send~ drone-out`
- `sig~` → `groove~ drone_2-sample 1` → `*~ 0.5` → `+~` → `+~` → `send~ drone-out`

### Audio Buses (`send~` / `receive~`)
- **← hydrophone-in**: `receive~ hydrophone-in`
- **→ drone-out**: `send~ drone-out`

### UI Controls
- `AMPLITUDE ENV`
- `CONFIDENCE THRESHOLD`
- `MIDI Pitch (0-127)`
- `ONSET_BANG`
- `button`
- `centroid (MIDI Pitch 0 -127)`
- `centroid_derivative`
- `flatness (dB)`
- `flatness_derivative`
- `flonum`
- `loudness`
- `loudness_derivative`
- `number`
- `number~`
- `pitch_confidence (0.0-1.0)`
- `playlist~`
- `spectroscope~`
- `toggle`

### Messages / Parameters
- `$1 10000`
- `0`
- `0.`
- `0. 20000`
- `0.273964 10000`
- `1`
- `1.`
- `1. 10000`
- `2`
- `loop 1`
- `read`
- `store 1`
- `store 2`

### Control / Logic Objects
- `> 0.45`
- `clip 0. 1.`
- `clip 0.5 2.`
- `expr pow(2.\, ($f1 - 45.) / 12.)`
- `ftom`
- `gate 1`
- `loadbang`
- `onebang`
- `pattr drone-eq`
- `pattrstorage drone_ex @savemode 0`
- `scale -40. -6. 0.1 0.9`
- `unpack 0. 0. 0. 0. 0. 0. 0. 0.`

## `dk-drone.maxpat`

### Audio Sources
- `buffer~ drone-sample`

### Signal Chains (audio-rate)
- `receive~ hydrophone-in` → `gate~` → `svf~` → `az.equalizr~` → `*~ 50` → `dac~`
- `receive~ hydrophone-in` → `gate~` → `svf~` → `az.equalizr~` → `*~ 50` → `dk.descriptors~ @input 0 @sensitivity 50 @floor -60 @lockout 100`

### Audio Sinks
- `dac~`

### Audio Buses (`send~` / `receive~`)
- **← hydrophone-in**: `receive~ hydrophone-in`

### UI Controls
- `MIDI Pitch (0-127)`
- `button`
- `centroid (MIDI Pitch 0 -127)`
- `centroid_derivative`
- `flatness (dB)`
- `flatness_derivative`
- `flonum`
- `loudness`
- `loudness_derivative`
- `pitch_confidence (0.0-1.0)`
- `playlist~`
- `spectroscope~`
- `toggle`

### Messages / Parameters
- `read`

### Control / Logic Objects
- `ftom`
- `unpack 0. 0. 0. 0. 0. 0. 0. 0.`

## `somax-8-player-test.maxpat`

### Subpatchers
- `bpatcher`
- `p save_preset`

### Messages / Parameters
- `Load Preset`
- `Save Preset`

## `water-movement-main.maxpat`

### Audio Sources
- `adc~ 1`
- `cycle~ 0.00083`
- `sig~`

### Subpatchers
- `p dk-drone`
- `p dk-midi-bridge`
- `p phrase-buffer`
- `p s2-players`

### Signal Chains (audio-rate)
- `adc~ 1` → `HYDROPHONE INPUT VOLUME` → `meter~`
- `adc~ 1` → `HYDROPHONE INPUT VOLUME` → `send~ hydrophone-in`
- `cycle~ 0.00083` → `*~ 6.` → `+~ 60.` → `snapshot~ 100`
- `receive~ drone-out` → `MASTER MIX` → `dac~ 1 2`
- `receive~ s2-audio-mix` → `MASTER MIX` → `dac~ 1 2`

### Audio Sinks
- `dac~ 1 2`
- `meter~`

### Audio Buses (`send~` / `receive~`)
- **← drone-out**: `receive~ drone-out`
- **← s2-audio-mix**: `receive~ s2-audio-mix`
- **→ hydrophone-in**: `send~ hydrophone-in`

### Control Buses (`send` / `receive`)
- **→ phrase-buf-in**: `send phrase-buf-in`
- **→ s2-influence-in**: `send s2-influence-in`
- **→ s2-midi-out-1**: `send s2-midi-out-1`
- **→ s2-midi-out-2**: `send s2-midi-out-2`
- **→ s2-midi-out-3**: `send s2-midi-out-3`
- **→ transport-clock**: `send transport-clock`

### UI Controls
- `PANIC`
- `Phrase Flush`
- `Start`
- `Stop`
- `button`
- `number~`
- `toggle`

### Messages / Parameters
- `0.365962`
- `1`
- `1.683544`
- `153.52153`
- `21.3125`
- `bang`
- `tempo $1`
- `tempo 60.913079`
- `timesig 4 4`

### Control / Logic Objects
- `OSC-route /sensors/tds`
- `OSC-route /sensors/tds_v`
- `OSC-route /sensors/temperature`
- `OSC-route /sensors/turbidity`
- `metro 4n @active 1`
- `transport`
- `udpreceive 8000`

## Cross-File Named Bus Map

Resolved `send~`/`receive~` and `send`/`receive` pairs across all input files.

### `drone-out`
**Sends from:**
  - `send~ drone-out` in `dk-drone-alt.maxpat`
**Received by:**
  - `receive~ drone-out` in `water-movement-main.maxpat`

### `hydrophone-in`
**Sends from:**
  - `send~ hydrophone-in` in `water-movement-main.maxpat`
**Received by:**
  - `receive~ hydrophone-in` in `dk-drone-alt.maxpat`
  - `receive~ hydrophone-in` in `dk-drone.maxpat`

### `phrase-buf-in`
**Sends from:**
  - `send phrase-buf-in` in `water-movement-main.maxpat`
  ⚠️ _No matching receive — possible dead end_

### `s2-audio-mix`
**Received by:**
  - `receive~ s2-audio-mix` in `water-movement-main.maxpat`
  ⚠️ _No matching send — possible missing source_

### `s2-influence-in`
**Sends from:**
  - `send s2-influence-in` in `water-movement-main.maxpat`
  ⚠️ _No matching receive — possible dead end_

### `s2-midi-out-1`
**Sends from:**
  - `send s2-midi-out-1` in `water-movement-main.maxpat`
  ⚠️ _No matching receive — possible dead end_

### `s2-midi-out-2`
**Sends from:**
  - `send s2-midi-out-2` in `water-movement-main.maxpat`
  ⚠️ _No matching receive — possible dead end_

### `s2-midi-out-3`
**Sends from:**
  - `send s2-midi-out-3` in `water-movement-main.maxpat`
  ⚠️ _No matching receive — possible dead end_

### `transport-clock`
**Sends from:**
  - `send transport-clock` in `water-movement-main.maxpat`
  ⚠️ _No matching receive — possible dead end_

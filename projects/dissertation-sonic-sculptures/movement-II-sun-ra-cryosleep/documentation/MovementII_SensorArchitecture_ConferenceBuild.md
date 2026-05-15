# Movement II — Sun Ra Cryosleep
## Sensor Integration Architecture: Conference Build
### Freenove ESP32-S3 WROOM + MicroPython

*Document type: Technical documentation — critical making process*
*Context: SfNC (June 2, Philadelphia) + UCR Co-Creativity (June 5–6, Riverside) conference builds*
*Hardware: Laptop + ESP32-S3 + Grove sensors + UR22C (conference); Pi 5 + Bela Gem Stereo (final install)*

---

## Conceptual Frame

The sensor suite for Movement II enacts a form of *water memory* — the sculpture reads the chemical and thermal signature of water as a living archive of industrial contact. Turbidity (particulate suspension), TDS (dissolved solids / conductivity), and temperature are not merely environmental data points but a kind of spectral testimony: what the water has passed through, what it carries, what it cannot release. The DC motors and piezoelectric pickups translate that testimony into physical vibration and acoustic gesture, materializing the refusal to sleep that animates Sun Ra's cosmological imagination.

The ESP32-S3 functions here not as a neutral transducer but as a *fugitive processor* — reading conditions, making decisions, generating sound behavior that is semi-autonomous and responsive to the water's own chemistry.

---

## Hardware Inventory

| Component | Model | Interface | Role |
|---|---|---|---|
| Microcontroller | Freenove ESP32-S3 WROOM | — | Central processor, WiFi/OSC |
| Turbidity sensor | DFRobot Turbidity V1.0 | Analog (0–4.5V) | Water clarity / particulate load |
| TDS sensor | Gikfun TDS V1.0 | Analog (0–2.3V) | Dissolved solids / conductivity |
| Temperature sensor | Waterproof DS18B20 | 1-Wire (digital) | Thermal memory of water |
| Motor driver | DRV8833 dual H-bridge | PWM (4 pins) | DC motor speed / direction control |
| DC motors | Generic cordless (x2) | Via DRV8833 | Physical actuation / vibration |
| Contact mic | Piezoelectric disk (x1–2) | Analog | Vibration / acoustic pickup |
| Audio interface | UR22C | USB | Audio out to Max/MSP on laptop |

---

## Pin Assignment (Freenove ESP32-S3 WROOM Breakout)

```
GPIO 1  — Turbidity sensor analog in      (ADC1_CH0)
GPIO 2  — TDS sensor analog in            (ADC1_CH1)
GPIO 3  — Piezoelectric disk 1 analog in  (ADC1_CH2)
GPIO 4  — Piezoelectric disk 2 analog in  (ADC1_CH3)
GPIO 5  — DS18B20 data (1-Wire)           + 4.7kΩ pullup to 3.3V

GPIO 38 — DRV8833 IN1 (Motor A PWM)
GPIO 39 — DRV8833 IN2 (Motor A direction)
GPIO 40 — DRV8833 IN3 (Motor B PWM)
GPIO 41 — DRV8833 IN4 (Motor B direction)

3.3V    — Sensor VCC (turbidity, TDS, DS18B20, piezo voltage divider)
GND     — Common ground
```

> **Note on ADC on ESP32-S3:** ADC2 pins are shared with WiFi and unreliable when WiFi is active. All analog sensors are assigned to ADC1 pins. If OSC over WiFi is used, keep all sensor reads on ADC1.

---

## Sensor Behavior & Signal Ranges

### DFRobot Turbidity V1.0
- **Output:** Analog voltage, ~4.5V (clean) → ~2.5V (turbid/opaque)
- **Power:** 5V recommended, but 3.3V works with reduced range — test both
- **Interpretation:** Inverted — lower voltage = higher turbidity = more particulate = "denser" water memory
- **Sculptural mapping:** Drive motor speed and resonance density of granular/spectral processing in Max

### Gikfun TDS V1.0
- **Output:** Analog voltage 0–2.3V (maps to 0–1000 ppm TDS)
- **Power:** 3.3V–5V
- **Formula:** `TDS_ppm = (voltage / Vref * 1000) * compensation_factor`
- **Temperature compensation:** TDS readings shift with temperature; use DS18B20 reading to apply correction (see firmware)
- **Sculptural mapping:** Drive harmonic content, filter cutoff, or "contamination index" parameter in Max

### Waterproof DS18B20
- **Interface:** 1-Wire digital, single GPIO with 4.7kΩ pullup resistor to 3.3V
- **Range:** -55°C to +125°C, ±0.5°C accuracy
- **Resolution:** 12-bit (configurable)
- **Sculptural mapping:** Slow-moving thermal parameter; drive reverb decay, playback speed of water corpus, or long-arc modulation

### Piezoelectric Disk(s)
- **Output:** AC voltage spikes on physical contact/vibration (requires voltage divider to stay in ADC range)
- **Circuit:** 1MΩ resistor to GND + 100kΩ series resistor on signal line recommended
- **Use:** As contact mic pickup for motor vibration feedback, or as gestural input (tap, strike)
- **Sculptural mapping:** Transient detection → trigger events in Max, or raw signal → audio texture

### DRV8833 + DC Motors
- **Control:** 4 PWM signals (IN1–IN4) via ESP32 hardware PWM
- **Speed:** PWM duty cycle (0–100%)
- **Direction:** One pin HIGH / other LOW for forward; reversed for backward; both HIGH = brake; both LOW = coast
- **Power:** Motors need separate 5V supply — do NOT power from ESP32 3.3V pin
- **Sculptural mapping:** Motor speed responds to turbidity / TDS thresholds; motors create physical vibration that piezo pickups can re-read (feedback loop)

---

## Signal Flow Architecture

```
WATER
  │
  ├─ Turbidity ──→ ADC read ──→ normalize 0.0–1.0 ──→ [motor_A_speed]
  │                                                  └→ OSC /turbidity → Max
  │
  ├─ TDS ────────→ ADC read ──→ temp-compensate ───→ [harmonic_index]
  │                                                  └→ OSC /tds → Max
  │
  ├─ Temperature → 1-Wire ───→ float °C ──────────→ [reverb_decay]
  │                                                  └→ OSC /temperature → Max
  │
  └─ Piezo ──────→ ADC read ──→ threshold detect ──→ [trigger_event]
                                                     └→ OSC /piezo → Max

Max/MSP (laptop)
  ├─ Receives OSC bundle over WiFi (UDP, port 8000)
  ├─ Maps values to granular synthesis, spectral processing, corpus playback
  └─ Audio out → UR22C → speakers

ESP32 Local Behavior (autonomous, no Max dependency)
  ├─ Motor A speed ← turbidity reading
  ├─ Motor B speed ← TDS reading
  └─ Piezo feedback loop ← motor vibration re-read
```

---

## OSC Message Schema

All messages sent as UDP OSC bundle to laptop IP, port 8000.

```
/sensors/turbidity    f    [0.0–1.0, normalized, inverted]
/sensors/tds          f    [0.0–1000.0, ppm]
/sensors/temperature  f    [celsius, float]
/sensors/piezo1       f    [0.0–1.0, amplitude envelope]
/sensors/piezo2       f    [0.0–1.0, amplitude envelope]
/motors/a_speed       f    [0.0–1.0, current duty cycle]
/motors/b_speed       f    [0.0–1.0, current duty cycle]
```

Send rate: 20Hz (every 50ms). Temperature reads are slower (DS18B20 conversion time ~750ms at 12-bit); interpolate between reads.

---

## Feedback Loop — The Re-Reading

The most conceptually resonant element of this architecture is the *feedback loop*: the DC motors create physical vibration in the water or sculpture body; the piezoelectric disks pick up that vibration as acoustic signal; that signal is fed back into Max and also used to modulate motor behavior. The water reads the machine; the machine reads the water; the water reads itself. This recursive sensing enacts Sun Ra's cosmological logic — the archive is not static but perpetually regenerating.

For the conference build: begin with a simple open loop (sensors → motors) and add the piezo feedback layer once basic readings are stable.

---

## Conference Build Notes

- **Power:** Bring a powered USB hub or small bench supply for motor power (separate from ESP32)
- **WiFi:** Set ESP32 to connect to laptop hotspot; hardcode IP in firmware config
- **Latency:** 20Hz OSC is smooth enough for sculptural response; do not push beyond 50Hz with all sensors active
- **Failsafe:** ESP32 should run motor behavior autonomously even if WiFi/Max connection drops
- **Calibration:** TDS and turbidity will need site-specific calibration against known water samples — bring distilled water as baseline

---

*Last updated: 2026-04-26*
*Build context: Conference prototype — Freenove ESP32-S3 WROOM + MicroPython*

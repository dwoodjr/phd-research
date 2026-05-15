# config.py — Movement II: Sun Ra Cryosleep
# TEMPLATE — copy to config.py and fill in venue-specific values before deploying.
# config.py is gitignored (contains credentials). This template is committed instead.

# ─── WiFi ─────────────────────────────────────────────────────────────────────
WIFI_SSID     = "YOUR_SSID"
WIFI_PASSWORD = "YOUR_PASSWORD"

# ─── OSC Target (laptop IP on the same network/hotspot) ───────────────────────
OSC_HOST = "192.168.x.x"   # update to laptop IP — check with ipconfig/ifconfig
OSC_PORT = 8000

# ─── GPIO Pin Assignments ─────────────────────────────────────────────────────
PIN_TURBIDITY   = 1    # ADC1_CH0 — DFRobot Turbidity analog out
PIN_TDS         = 2    # ADC1_CH1 — Gikfun TDS analog out
PIN_PIEZO_1     = 3    # ADC1_CH2 — Piezoelectric disk 1
PIN_PIEZO_2     = 4    # ADC1_CH3 — Piezoelectric disk 2
PIN_ONEWIRE     = 5    # 1-Wire data — DS18B20 temp sensor

PIN_MOTOR_A_IN1 = 38   # DRV8833 IN1 — Motor A PWM
PIN_MOTOR_A_IN2 = 39   # DRV8833 IN2 — Motor A direction
PIN_MOTOR_B_IN3 = 40   # DRV8833 IN3 — Motor B PWM
PIN_MOTOR_B_IN4 = 41   # DRV8833 IN4 — Motor B direction

# ─── ADC Reference Voltage ────────────────────────────────────────────────────
ADC_VREF = 3.3

# ─── Sensor Calibration ───────────────────────────────────────────────────────
TURBIDITY_CLEAN_V  = 3.2   # Voltage in clean/distilled water
TURBIDITY_TURBID_V = 1.8   # Voltage in turbid/opaque water
TDS_OFFSET = 0.0

# ─── Motor Behavior ───────────────────────────────────────────────────────────
MOTOR_MIN_DUTY = 0.15
MOTOR_MAX_DUTY = 0.90

# ─── Timing ──────────────────────────────────────────────────────────────────
SENSOR_POLL_MS   = 50
TEMP_POLL_MS     = 1000
OSC_SEND_MS      = 50

# ─── Piezo Threshold ──────────────────────────────────────────────────────────
PIEZO_TRIGGER_THRESHOLD = 0.15

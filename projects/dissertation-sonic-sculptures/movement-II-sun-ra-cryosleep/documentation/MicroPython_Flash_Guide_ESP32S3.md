# Flashing MicroPython to Freenove ESP32-S3 WROOM
## Conference Build Setup Guide

*Movement II: Sun Ra Cryosleep*

---

## Prerequisites

Install esptool globally (works across all IDEs):
```bash
pip install esptool
```

Check it works:
```bash
esptool.py version
```

---

## Step 1 — Download MicroPython Firmware

Go to: **https://micropython.org/download/ESP32_GENERIC_S3/**

Download the latest stable `.bin` file. As of 2026 it will be something like:
`ESP32_GENERIC_S3-20240602-v1.23.0.bin`

> Do NOT download a CircuitPython `.uf2` — that's a different ecosystem requiring TinyUF2 first.

---

## Step 2 — Enter ROM Bootloader Mode

This is the critical step. On the Freenove breakout board:

1. Hold down the **BOOT** button (labeled `IO0` or `BOOT` on the board)
2. While holding BOOT, press and release **RESET** (or plug in USB while holding BOOT)
3. Release BOOT after ~1 second

The board will appear on your computer as a serial port but will NOT mount as a drive — that's correct.

**Find your port:**
- Windows: Device Manager → Ports (COM & LPT) → look for `USB-SERIAL CH340` or `CP210x`
- Mac: `ls /dev/cu.*` in terminal
- Linux: `ls /dev/ttyUSB*` or `/dev/ttyACM*`

---

## Step 3 — Erase Flash

Always erase before flashing a new runtime to avoid conflicts:

```bash
# Replace COM3 / /dev/ttyUSB0 with your actual port
esptool.py --chip esp32s3 --port COM3 erase_flash
```

---

## Step 4 — Flash MicroPython

```bash
esptool.py --chip esp32s3 --port COM3 \
  write_flash -z 0x0 ESP32_GENERIC_S3-20240602-v1.23.0.bin
```

You should see a progress bar. When done, press RESET (without holding BOOT) to boot into MicroPython.

---

## Step 5 — Verify MicroPython is Running

Open a serial terminal at 115200 baud (any of these work):
- **VS Code**: Serial Monitor extension
- **Arduino IDE**: Serial Monitor
- **PuTTY / screen**: `screen /dev/ttyUSB0 115200`

Press Enter. You should see the MicroPython REPL:
```
>>>
```

Type `import sys; sys.implementation` and press Enter. You should see:
```python
(name='micropython', version=(1, 23, 0), ...)
```

---

## Step 6 — IDE Setup

### Option A: VS Code (recommended for this project)

1. Install the **Pymakr** extension (by Pycom) OR **MicroPico** extension
2. Or use the **RT-Thread MicroPython** extension — search "MicroPython" in extensions
3. Connect to the board's serial port in the extension
4. You can then run files directly or sync the whole `src/` folder to the board

> The VS Code workflow: edit in VS Code, use the extension's "Upload" or "Run" button, check output in the terminal panel. Very clean for iterative development.

### Option B: MicroPython Studio (if you prefer a dedicated IDE)

MicroPython Studio (standalone app) has a built-in file browser for the board's filesystem and a REPL panel. Connect via serial port, then drag files from your computer onto the board's filesystem panel.

### Option C: Thonny (fallback — simple but effective)

Thonny auto-detects MicroPython boards. Go to Tools → Options → Interpreter → select "MicroPython (ESP32)" and your port. The bottom panel becomes the REPL; use Run → Run current script to push and execute.

---

## Step 7 — Upload the Firmware Files

The files to push to the board's root filesystem (`/`):

```
src/config.py    → /config.py
src/sensors.py   → /sensors.py
src/motors.py    → /motors.py
src/osc.py       → /osc.py
src/main.py      → /main.py
```

**Before uploading:** Edit `config.py` and set:
- `WIFI_SSID` — your laptop hotspot name
- `WIFI_PASSWORD` — hotspot password
- `OSC_HOST` — your laptop's IP on the hotspot (check with `ipconfig` / `ifconfig`)

**Boot behavior:** MicroPython automatically runs `main.py` on startup. To prevent autorun during development, rename it `main_run.py` and import it manually from the REPL.

---

## Step 8 — Test Sensor Reads (REPL first)

Before running the full main.py, test each sensor module from the REPL:

```python
# Test turbidity
import sensors
turb, v = sensors.read_turbidity()
print(f"Turbidity: {turb:.3f}, Voltage: {v:.2f}V")

# Test TDS
tds, v = sensors.read_tds()
print(f"TDS: {tds:.1f} ppm, Voltage: {v:.2f}V")

# Test temperature
sensors.request_temp()
import time; time.sleep(1)
temp = sensors.read_temp()
print(f"Temperature: {temp}°C")

# Test motors
import motors
motors.motor_a.set_normalized(0.3)  # 30% speed
import time; time.sleep(2)
motors.motor_a.stop()
```

---

## Troubleshooting

**Board not detected after flashing:**
Press RESET (not BOOT+RESET) after flash completes — ROM bootloader mode doesn't run MicroPython.

**`esptool` can't connect:**
- Wrong port — double-check Device Manager / `ls /dev/`
- Wrong bootloader mode — re-enter by holding BOOT then pressing RESET
- Bad USB cable — use a data cable, not charge-only

**ADC readings are noisy / wrong:**
- Normal for ESP32 ADC — the `_read_avg()` function in sensors.py averages 8 samples to smooth this
- Turbidity/TDS readings shift with power supply voltage — use USB power consistently

**DS18B20 returns `None`:**
- Check 4.7kΩ pullup resistor between DATA and 3.3V — this is required
- Check GPIO pin assignment in config.py matches physical wiring

**Motors don't move:**
- DRV8833 needs its own 5V power supply — NOT from ESP32 pins
- Check nSLEEP/EEP pin on DRV8833 is pulled HIGH (some boards require this)
- Use REPL test above to isolate whether it's a code or wiring issue

**WiFi connects but Max doesn't receive OSC:**
- Confirm laptop IP with `ipconfig` (Windows) or `ifconfig` (Mac/Linux)
- Make sure Max's `udpreceive 8000` object is running
- Check firewall isn't blocking UDP port 8000

---

*Last updated: 2026-04-26*

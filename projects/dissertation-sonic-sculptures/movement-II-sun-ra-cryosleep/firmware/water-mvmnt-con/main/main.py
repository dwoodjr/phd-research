# main.py — Movement II: Sun Ra Cryosleep
# Freenove ESP32-S3 WROOM + MicroPython
# Conference build: sensor reading, motor control, OSC to Max/MSP
#
# Sensor loop runs at 20Hz (every 50ms)
# Temperature reads at 1Hz (DS18B20 conversion time)
# OSC bundle sent every 50ms

import uasyncio as asyncio
import network
import time
import config
import sensors
import motors
from osc import OSCSender

# ─── State ────────────────────────────────────────────────────────────────────
state = {
    "turbidity":   0.0,
    "turbidity_v": 0.0,
    "tds":         0.0,
    "tds_v":       0.0,
    "temperature": 0.0,
    "piezo1":      0.0,
    "piezo2":      0.0,
    "motor_a":     0.0,
    "motor_b":     0.0,
    "wifi_ok":     False,
    "osc":         None,
}

# ─── WiFi Connection ──────────────────────────────────────────────────────────
def connect_wifi():
    wlan = network.WLAN(network.STA_IF)
    wlan.active(True)
    if not wlan.isconnected():
        print(f"Connecting to {config.WIFI_SSID}...")
        wlan.connect(config.WIFI_SSID, config.WIFI_PASSWORD)
        timeout = 15
        while not wlan.isconnected() and timeout > 0:
            time.sleep(1)
            timeout -= 1
            print(".", end="")
        print()
    if wlan.isconnected():
        print(f"WiFi connected: {wlan.ifconfig()}")
        return True
    else:
        print("WiFi failed — running in standalone motor mode")
        return False

# ─── Motor Mapping ────────────────────────────────────────────────────────────
def update_motors():
    """
    Map sensor readings to motor behavior.
    Motor A ← turbidity (how thick/opaque the water memory is)
    Motor B ← TDS normalized (how chemically dense the water is)

    This is the primary sculptural logic — adjust as the piece develops.
    """
    # Normalize TDS to 0–1 (assuming 0–500ppm as working range)
    tds_norm = min(1.0, state["tds"] / 500.0)

    motors.motor_a.set_normalized(state["turbidity"])
    motors.motor_b.set_normalized(tds_norm)

    state["motor_a"] = motors.motor_a.speed
    state["motor_b"] = motors.motor_b.speed

# ─── Async Tasks ──────────────────────────────────────────────────────────────
async def task_sensors():
    """Read analog sensors at 20Hz."""
    while True:
        turb, turb_v = sensors.read_turbidity()
        tds, tds_v   = sensors.read_tds(state["temperature"])
        p1, p2       = sensors.read_piezo()

        state["turbidity"]   = turb
        state["turbidity_v"] = turb_v
        state["tds"]         = tds
        state["tds_v"]       = tds_v
        state["piezo1"]      = p1
        state["piezo2"]      = p2

        # Piezo trigger detection
        if p1 > config.PIEZO_TRIGGER_THRESHOLD:
            print(f"[PIEZO1 TRIGGER] amplitude={p1:.3f}")
        if p2 > config.PIEZO_TRIGGER_THRESHOLD:
            print(f"[PIEZO2 TRIGGER] amplitude={p2:.3f}")

        await asyncio.sleep_ms(config.SENSOR_POLL_MS)

async def task_temperature():
    """Read DS18B20 at 1Hz with proper conversion timing."""
    while True:
        sensors.request_temp()
        await asyncio.sleep_ms(800)  # Wait for conversion
        temp = sensors.read_temp()
        if temp is not None:
            state["temperature"] = temp
        await asyncio.sleep_ms(config.TEMP_POLL_MS - 800)

async def task_motors():
    """Update motor outputs at 20Hz."""
    while True:
        update_motors()
        await asyncio.sleep_ms(config.SENSOR_POLL_MS)

async def task_osc():
    """Send OSC bundle at 20Hz if WiFi connected."""
    while True:
        if state["wifi_ok"] and state["osc"]:
            osc = state["osc"]
            # Normalize TDS for OSC (0–1 range)
            tds_norm = min(1.0, state["tds"] / 500.0)

            messages = [
                ("/sensors/turbidity",   state["turbidity_v"]),   # raw voltage 0.0–3.3V
                ("/sensors/tds",         state["tds"]),            # ppm
                ("/sensors/tds_v",       state["tds_v"]),          # raw voltage
                ("/sensors/temperature", state["temperature"]),    # celsius
                ("/sensors/piezo1",      state["piezo1"]),         # 0.0–1.0
                ("/sensors/piezo2",      state["piezo2"]),         # 0.0–1.0
                ("/motors/a_speed",      state["motor_a"]),        # 0.0–1.0
                ("/motors/b_speed",      state["motor_b"]),        # 0.0–1.0
            ]
            osc.send_bundle(messages)

        await asyncio.sleep_ms(config.OSC_SEND_MS)

async def task_heartbeat():
    """Print sensor state to serial every 2 seconds for debugging."""
    while True:
        print(
            f"[SENSORS] "
            f"turb={state['turbidity']:.3f} ({state['turbidity_v']:.2f}V) | "
            f"tds={state['tds']:.1f}ppm ({state['tds_v']:.2f}V) | "
            f"temp={state['temperature']:.1f}°C | "
            f"p1={state['piezo1']:.3f} p2={state['piezo2']:.3f} | "
            f"mA={state['motor_a']:.2f} mB={state['motor_b']:.2f}"
        )
        await asyncio.sleep_ms(2000)

# ─── Entry Point ──────────────────────────────────────────────────────────────
async def main():
    print("=== Movement II: Sun Ra Cryosleep ===")
    print("=== Freenove ESP32-S3 / MicroPython  ===")
    print("--- Ctrl-C within 3s to abort and enter REPL ---")
    await asyncio.sleep_ms(3000)

    # WiFi + OSC setup
    state["wifi_ok"] = connect_wifi()
    if state["wifi_ok"]:
        state["osc"] = OSCSender(config.OSC_HOST, config.OSC_PORT)
        print(f"OSC target: {config.OSC_HOST}:{config.OSC_PORT}")
    else:
        print("Standalone mode: motors only, no OSC")

    # Run all tasks concurrently
    await asyncio.gather(
        task_sensors(),
        task_temperature(),
        task_motors(),
        task_osc(),
        task_heartbeat(),
    )

# ─── Run ──────────────────────────────────────────────────────────────────────
try:
    asyncio.run(main())
except KeyboardInterrupt:
    motors.stop_all()
    print("Stopped.")

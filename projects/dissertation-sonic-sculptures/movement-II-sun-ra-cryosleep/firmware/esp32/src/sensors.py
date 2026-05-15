# sensors.py — Movement II: Sun Ra Cryosleep
# Sensor read helpers: turbidity, TDS, DS18B20, piezo

from machine import ADC, Pin
import onewire
import ds18x20
import config

# ─── ADC Setup ────────────────────────────────────────────────────────────────
# ESP32-S3 ADC: 12-bit (0–4095), attenuation set for full 3.3V range

def _make_adc(pin_num):
    adc = ADC(Pin(pin_num))
    adc.atten(ADC.ATTN_11DB)   # Full 0–3.3V range
    adc.width(ADC.WIDTH_12BIT)
    return adc

adc_turbidity = _make_adc(config.PIN_TURBIDITY)
adc_tds       = _make_adc(config.PIN_TDS)
adc_piezo1    = _make_adc(config.PIN_PIEZO_1)
adc_piezo2    = _make_adc(config.PIN_PIEZO_2)

# ─── DS18B20 Setup ────────────────────────────────────────────────────────────
_ow_pin  = Pin(config.PIN_ONEWIRE)
_ow_bus  = onewire.OneWire(_ow_pin)
_ds_sens = ds18x20.DS18X20(_ow_bus)
_ds_roms = _ds_sens.scan()
print(f"DS18B20 devices found: {len(_ds_roms)}")

# ─── ADC averaging (reduces ESP32 ADC noise) ──────────────────────────────────
def _read_avg(adc, samples=8):
    total = 0
    for _ in range(samples):
        total += adc.read()
    return total / samples

def _raw_to_voltage(raw):
    return (raw / 4095.0) * config.ADC_VREF

# ─── Turbidity ────────────────────────────────────────────────────────────────
def read_turbidity():
    """
    Returns normalized turbidity: 0.0 = clean, 1.0 = fully turbid.
    DFRobot V1.0: higher voltage = cleaner water (inverted).
    """
    raw = _read_avg(adc_turbidity)
    voltage = _raw_to_voltage(raw)
    # Clamp and invert: high voltage → low turbidity
    span = config.TURBIDITY_CLEAN_V - config.TURBIDITY_TURBID_V
    normalized = (config.TURBIDITY_CLEAN_V - voltage) / span
    return max(0.0, min(1.0, normalized)), voltage

# ─── TDS ──────────────────────────────────────────────────────────────────────
def read_tds(temperature_c=25.0):
    """
    Returns TDS in ppm, temperature-compensated.
    Gikfun TDS V1.0 formula from sensor documentation.
    """
    raw = _read_avg(adc_tds)
    voltage = _raw_to_voltage(raw) + config.TDS_OFFSET

    # Temperature compensation coefficient
    compensation = 1.0 + 0.02 * (temperature_c - 25.0)
    comp_voltage = voltage / compensation

    # Empirical TDS formula (Gikfun / generic TDS sensor)
    tds_ppm = (133.42 * comp_voltage**3
               - 255.86 * comp_voltage**2
               + 857.39 * comp_voltage) * 0.5

    return max(0.0, tds_ppm), voltage

# ─── Temperature (DS18B20) ────────────────────────────────────────────────────
def request_temp():
    """
    Trigger a DS18B20 conversion. Call this, wait ~800ms, then call read_temp().
    Non-blocking pattern for use with uasyncio.
    """
    if _ds_roms:
        _ds_sens.convert_temp()

def read_temp():
    """
    Read the last converted temperature. Returns celsius float, or None if no sensor.
    """
    if not _ds_roms:
        return None
    try:
        return _ds_sens.read_temp(_ds_roms[0])
    except Exception as e:
        print(f"DS18B20 read error: {e}")
        return None

# ─── Piezoelectric ────────────────────────────────────────────────────────────
def read_piezo():
    """
    Returns (piezo1_norm, piezo2_norm) — normalized 0.0–1.0.
    Piezo output is centered around mid-rail; take distance from center.
    """
    raw1 = _read_avg(adc_piezo1, samples=4)
    raw2 = _read_avg(adc_piezo2, samples=4)

    # Center at mid-scale (2048), normalize amplitude
    amplitude1 = abs(raw1 - 2048) / 2048.0
    amplitude2 = abs(raw2 - 2048) / 2048.0

    return amplitude1, amplitude2

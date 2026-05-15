# osc.py — Movement II: Sun Ra Cryosleep
# Minimal OSC UDP sender (no external library needed)
# Sends float32 messages compatible with Max/MSP udpreceive

import socket
import struct

def _pad(s):
    """Pad string to 4-byte boundary with null bytes."""
    s = s + '\x00'
    remainder = len(s) % 4
    if remainder:
        s += '\x00' * (4 - remainder)
    return s.encode('utf-8')

def _encode_float(value):
    return struct.pack('>f', float(value))

def _make_osc_message(address, value):
    """Build a single OSC message with one float32 argument."""
    addr_bytes  = _pad(address)
    type_bytes  = _pad(',f')
    value_bytes = _encode_float(value)
    return addr_bytes + type_bytes + value_bytes

def _make_osc_bundle(messages):
    """
    Bundle multiple OSC messages.
    messages: list of (address_string, float_value) tuples
    """
    bundle = b'#bundle\x00'
    bundle += struct.pack('>q', 1)  # timetag: immediate
    for addr, val in messages:
        msg = _make_osc_message(addr, val)
        bundle += struct.pack('>i', len(msg))
        bundle += msg
    return bundle

class OSCSender:
    def __init__(self, host, port):
        self.host = host
        self.port = port
        self._sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

    def send(self, address, value):
        """Send a single float OSC message."""
        try:
            msg = _make_osc_message(address, value)
            self._sock.sendto(msg, (self.host, self.port))
        except Exception as e:
            print(f"OSC send error: {e}")

    def send_bundle(self, messages):
        """
        Send bundled OSC messages atomically.
        messages: list of (address, float_value) tuples
        """
        try:
            bundle = _make_osc_bundle(messages)
            self._sock.sendto(bundle, (self.host, self.port))
        except Exception as e:
            print(f"OSC bundle error: {e}")

    def close(self):
        self._sock.close()

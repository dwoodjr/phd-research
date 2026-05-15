# patch_pinouts.py — Movement II: Sun Ra Cryosleep
# Run this script any time MicroPython Studio updates and resets pinouts.json
#
# Usage (from any terminal):
#   python patch_pinouts.py
#
# It will find the installed MPS extension and inject the Freenove board entry.

import json
import glob
import os
import sys

FREENOVE_ENTRY = {
    "freenove_esp32s3_wroom": {
        "name": "Freenove ESP32-S3 WROOM",
        "left": [
            "3V3","RST","GPIO4","GPIO5","GPIO6","GPIO7",
            "GPIO15","GPIO16","GPIO17","GPIO18","GPIO8","GPIO3",
            "GPIO46","GPIO9","GPIO10","GPIO11","GPIO12","GPIO13","GPIO14","5V"
        ],
        "right": [
            "GPIO43/TX","GPIO44/RX","GPIO1","GPIO2","GPIO42","GPIO41","GPIO40",
            "GPIO39","GPIO38","GPIO37","GPIO36","GPIO35","GPIO0/BOOT",
            "GPIO45","GPIO48/WS2812","GPIO47","GPIO21","GPIO20","GPIO19","GND"
        ]
    }
}

def find_pinouts_json():
    extensions_dir = os.path.expandvars(r"%USERPROFILE%\.vscode\extensions")
    pattern = os.path.join(extensions_dir, "niwantha33.micropython-studio-*",
                           "resource", "pinouts", "pinouts.json")
    matches = sorted(glob.glob(pattern), reverse=True)  # newest version first
    if not matches:
        print("ERROR: Could not find MicroPython Studio extension pinouts.json")
        print(f"Searched: {pattern}")
        sys.exit(1)
    return matches[0]

def patch():
    path = find_pinouts_json()
    print(f"Found: {path}")

    with open(path, "r", encoding="utf-8") as f:
        data = json.load(f)

    if "freenove_esp32s3_wroom" in data:
        print("Freenove entry already present — no changes needed.")
        return

    data.update(FREENOVE_ENTRY)

    with open(path, "w", encoding="utf-8", newline="\n") as f:
        json.dump(data, f, indent=2)

    print("Freenove ESP32-S3 WROOM entry injected successfully.")
    print("Reload VS Code window (Ctrl+Shift+P → Developer: Reload Window) to apply.")

if __name__ == "__main__":
    patch()

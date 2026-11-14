#!/usr/bin/env python3
import urllib.request
import re
import json
import os
import sys
from datetime import datetime

PIF_PATH = os.path.join(os.path.dirname(__file__), "..", "unica", "mods", "pif", "pif.json")

def get_api_key():
    req = urllib.request.Request('https://flash.android.com/', headers={'User-Agent': 'Mozilla/5.0'})
    html = urllib.request.urlopen(req, timeout=15).read().decode('utf-8', errors='ignore')
    m = re.search(r'AIzaSy[a-zA-Z0-9_\-]+', html)
    if not m:
        raise RuntimeError("Could not extract AIzaSy API key from flash.android.com")
    return m.group(0)

def fetch_latest_canary(api_key, product="bluejay_beta"):
    url = f"https://content-flashstation-pa.googleapis.com/v1/builds?product={product}&key={api_key}"
    req = urllib.request.Request(url, headers={'Referer': 'https://flash.android.com', 'User-Agent': 'Mozilla/5.0'})
    data = json.loads(urllib.request.urlopen(req, timeout=15).read().decode('utf-8'))
    builds = data.get('flashstationBuild', [])
    canaries = [b for b in builds if b.get('previewMetadata', {}).get('canary')]
    if not canaries:
        raise RuntimeError(f"No canary builds found for {product}")
    return canaries[-1]

def main():
    print("Fetching flashstation API key...")
    api_key = get_api_key()
    print(f"API key obtained: {api_key[:10]}...")

    print("Fetching latest Pixel 6a (bluejay) canary build...")
    latest = fetch_latest_canary(api_key, "bluejay_beta")

    candidate = latest.get("releaseCandidateName")
    build_id = latest.get("buildId")
    pm = latest.get("previewMetadata", {})
    canary_id = pm.get("id", "")

    m = re.search(r'canary-(\d{4})(\d{2})', canary_id)
    if m:
        sec_patch = f"{m.group(1)}-{m.group(2)}-05"
        version_num = f"{m.group(1)}{m.group(2)}{datetime.now().strftime('%d')}"
    else:
        sec_patch = datetime.now().strftime("%Y-%m-05")
        version_num = datetime.now().strftime("%Y%m%d")

    fingerprint = f"google/bluejay_beta/bluejay:CANARY/{candidate}/{build_id}:user/release-keys"

    current_data = {}
    if os.path.exists(PIF_PATH):
        try:
            with open(PIF_PATH, "r") as f:
                current_data = json.load(f)
        except Exception:
            pass

    current_fp = current_data.get("FINGERPRINT", "")
    print(f"Current fingerprint: {current_fp}")
    print(f"Latest canary fingerprint: {fingerprint}")

    new_data = {
        "VERSION": version_num,
        "PRODUCT": "bluejay_beta",
        "DEVICE": "bluejay",
        "MANUFACTURER": "Google",
        "BRAND": "google",
        "MODEL": "Pixel 6a",
        "FINGERPRINT": fingerprint,
        "SECURITY_PATCH": sec_patch,
        "DEVICE_INITIAL_SDK_INT": "32",
        "ID": candidate,
        "INCREMENTAL": build_id,
        "RELEASE": "17"
    }

    if current_fp == fingerprint and os.path.exists(PIF_PATH):
        print("PIF fingerprint is already up to date!")
        return 0

    print("Updating pif.json with new canary build...")
    os.makedirs(os.path.dirname(PIF_PATH), exist_ok=True)
    with open(PIF_PATH, "w") as f:
        json.dump(new_data, f, indent=2)
        f.write("\n")

    print(f"Successfully updated {PIF_PATH}!")
    return 1

if __name__ == "__main__":
    sys.exit(main())

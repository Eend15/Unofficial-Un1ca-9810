#!/usr/bin/env python3
"""Check original stock BioFaceService packaging offline without private-key reads."""
from __future__ import annotations

import argparse
from pathlib import Path
import zipfile

from cryptography import x509
from cryptography.hazmat.primitives import hashes
from cryptography.hazmat.primitives.serialization import pkcs7

FAMILIES = ("IFaceDaemon", "IFaceDaemonCallback",
            "IFaceService", "IFaceServiceReceiver")
RAW_UNMODIFIED = ("AndroidManifest.xml", "resources.arsc",
                  "SEC-INF/buildConfirm.crt", "SEC-INF/buildinfo.xml")


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--original", required=True, type=Path)
    parser.add_argument("--signed", required=True, type=Path)
    parser.add_argument("--platform-cert", required=True, type=Path)
    args = parser.parse_args()

    expected = x509.load_pem_x509_certificate(args.platform_cert.read_bytes())
    expected_hash = expected.fingerprint(hashes.SHA256())

    with zipfile.ZipFile(args.original) as old, zipfile.ZipFile(args.signed) as new:
        assert new.testzip() is None, "ZIP failed CRC integrity"
        for entry in RAW_UNMODIFIED:
            assert old.read(entry) == new.read(entry), f"Original {entry} modified"
            print(f"PASS original {entry} byte identical")

        # The runtime needs interface, Stub, Proxy, Default from the donor.
        dex = new.read("classes.dex")
        for family in FAMILIES:
            for name in (family, family + "$Stub", family + "$Stub$Proxy",
                         family + "$Default"):
                descriptor = (f"Lcom/samsung/android/bio/face/{name};").encode()
                assert descriptor in dex, f"Missing embedded Binder class {name}"
        print("PASS 16 full Binder interface/stub/proxy classes in signed DEX")

        # Verify cert identity (cryptographic validity checked by ApkVerifier).
        certificates = pkcs7.load_der_pkcs7_certificates(new.read("META-INF/CERT.RSA"))
        assert any(cert.fingerprint(hashes.SHA256()) == expected_hash
                   for cert in certificates), "Platform signer certificate differs"
        print("PASS signing certificate SHA256 matches A16 public platform cert")

    print(f"PASS offline packaging integrity ({args.signed.stat().st_size} bytes)")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

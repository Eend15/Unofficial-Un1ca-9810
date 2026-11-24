"""Note9 Notes normal-renderer patch for libSPenEngine.so (build-time only).

Return false from the pinned JNI FBR capability method so the Java SDK follows
its existing non-FBR drawing path. Recognition and ink data are unchanged.
"""
import hashlib

ORIGINAL = '79a8024586ce58ceeca613ddfce159e92274c597c5a863dd0aaf3e8e32e1b505'
OFFSET = 0xc2a5c
OLD = bytes.fromhex('fd7bbfa9fd030091')
NEW = bytes.fromhex('00008052c0035fd6')  # mov w0,0; ret (JNI jboolean false)


def patch(data):
    if hashlib.sha256(data).hexdigest() != ORIGINAL or data[OFFSET:OFFSET + 8] != OLD:
        raise ValueError('Unsupported engine; no offset patch applied')
    return data[:OFFSET] + NEW + data[OFFSET + 8:]

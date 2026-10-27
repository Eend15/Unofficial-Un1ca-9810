from pathlib import Path
import hashlib,json,sys
HERE=Path(__file__).resolve().parent
def inputs():
    roots=[HERE/'java',HERE/'upstream/app/src/main',HERE/'upstream/tools/framework-stubs',HERE/'settings-smali',HERE/'patches']
    files=[p for root in roots for p in root.rglob('*') if p.is_file()]
    files += [HERE/'Bootstrap.java',HERE/'rebuild.py',HERE/'weave-report.json',HERE/'extend_call_sites.py',HERE/'apply.py',HERE/'patched-files.json']
    return {str(p.relative_to(HERE)):hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted(files)}
def record():
    (HERE/'source-hashes.json').write_text(json.dumps(inputs(),indent=2)+'\n')
def verify():
    expected=json.loads((HERE/'source-hashes.json').read_text())
    actual=inputs()
    if actual!=expected:
        changed=[k for k in set(actual)|set(expected) if actual.get(k)!=expected.get(k)]
        raise RuntimeError('Source/payload out of sync. Rebuild with --update-payload: '+', '.join(sorted(changed)))
    print('PASS Dynamic Island source fingerprint:',len(actual),'inputs')
if __name__=='__main__':verify()

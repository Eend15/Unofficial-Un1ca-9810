#!/usr/bin/env python3
"""Stop notifications must use the attribution attached to the tracked active item."""
from pathlib import Path
import sys
REL=Path('com/android/systemui/appops/AppOpsControllerImpl.smali')
METHOD='.method public final onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZII)V'
OLD='''    if-eqz p5, :cond_8

    if-nez p6, :cond_8

    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;'''
NEW='''    if-eqz p5, :cond_8

    if-nez p6, :cond_8

    # Match stop visibility to the original tracked item, not the final attribution.
    iget-object v6, p5, Lcom/android/systemui/appops/AppOpItem;->mAttributionTag:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;'''
def transform(text):
    if text.count(METHOD)!=1:raise ValueError('Unknown AppOps active callback')
    before,rest=text.split(METHOD);body,after=rest.split('.end method',1)
    if NEW in body:return text
    if body.count(OLD)!=1:raise ValueError('Unknown AppOps stop path; refusing changes')
    return before+METHOD+body.replace(OLD,NEW,1)+'.end method'+after
def apply(root):
    files=list(root.glob('smali*/'+str(REL)))
    if len(files)!=1:raise ValueError('Expected exactly one AppOpsControllerImpl')
    p=files[0];p.write_text(transform(p.read_text()));print('PASS AppOps stop attribution')
if __name__=='__main__':apply(Path(sys.argv[1]))

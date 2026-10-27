"""Crown mode2 compatibility trial: retain filters in app, bypass controller filters.
No permission bypass or address substitution. Other scan modes stay untouched.
"""
from pathlib import Path
import sys
MARKER='UN1CA_CROWN_SOFTWARE_FILTER_V7'
def patch(scanner,callback):
 if MARKER in scanner or MARKER in callback:
  if MARKER not in scanner or MARKER not in callback:raise ValueError('Partial scanner bridge')
  return scanner,callback
 old='invoke-direct {v1, p3}, LD2/a;-><init>(LB/f;)V'
 new='invoke-direct {v1, p3, p1}, LD2/a;-><init>(LB/f;Ljava/util/List;)V'
 if scanner.count(old)!=1:raise ValueError('Unsupported callback constructor site')
 scanner=scanner.replace(old,new)
 old='    invoke-virtual {v2, p1, p2, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V'
 new="""    # UN1CA_CROWN_SOFTWARE_FILTER_V7: mode2 is scoped to Crown by R2/b.
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanSettings;->getScanMode()I
    move-result v3
    const/4 v0, 0x2
    if-ne v3, v0, :unica_scan_original_filters
    const/4 v3, 0x0
    invoke-virtual {v2, v3, p2, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V
    goto :goto_2
    :unica_scan_original_filters
"""+old
 # v0 is monitor-enter lock object! Do NOT overwrite it: use v3 compare via add-int.
 new=new.replace('    const/4 v0, 0x2\n    if-ne v3, v0,', '    add-int/lit8 v3, v3, -0x2\n    if-nez v3,')
 if scanner.count(old)!=1:raise ValueError('Unsupported scanner call')
 scanner=scanner.replace(old,new)
 callback=callback.replace('.field public final synthetic a:LB/f;', '.field public final synthetic a:LB/f;\n\n.field private final unicaFilters:Ljava/util/List;\n.field private unicaReported:Z')
 old='.method public constructor <init>(LB/f;)V'
 if callback.count(old)!=1:raise ValueError('Unsupported callback class')
 callback=callback.replace(old,'.method public constructor <init>(LB/f;Ljava/util/List;)V')
 callback=callback.replace('    iput-object p1, p0, LD2/a;->a:LB/f;', '    iput-object p1, p0, LD2/a;->a:LB/f;\n    iput-object p2, p0, LD2/a;->unicaFilters:Ljava/util/List;',1)
 old='.method public final onScanResult(ILandroid/bluetooth/le/ScanResult;)V\n    .locals 3'
 new=old+"""
    # UN1CA_CROWN_SOFTWARE_FILTER_V7: match the original filters before dispatch.
    iget-boolean v0, p0, LD2/a;->unicaReported:Z
    if-nez v0, :unica_check_filters
    const/4 v0, 0x1
    iput-boolean v0, p0, LD2/a;->unicaReported:Z
    const-string v0, "UN1CA-SPen"
    const-string v1, "v7 scan callback received; applying original filters"
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :unica_check_filters
    iget-object v0, p0, LD2/a;->unicaFilters:Ljava/util/List;
    if-eqz v0, :unica_filter_match
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    move-result v1
    if-nez v1, :unica_filter_match
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
    :unica_filter_next
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :unica_filter_reject
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/bluetooth/le/ScanFilter;
    invoke-virtual {v1, p2}, Landroid/bluetooth/le/ScanFilter;->matches(Landroid/bluetooth/le/ScanResult;)Z
    move-result v1
    if-eqz v1, :unica_filter_next
    goto :unica_filter_match
    :unica_filter_reject
    return-void
    :unica_filter_match
"""
 if callback.count(old)!=1:raise ValueError('Unsupported scan result callback')
 callback=callback.replace(old,new)
 return scanner,callback
if __name__=='__main__':
 a,b=map(Path,sys.argv[1:]);x,y=patch(a.read_text(),b.read_text());a.write_text(x);b.write_text(y)

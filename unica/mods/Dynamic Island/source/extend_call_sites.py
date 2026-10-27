"""Idempotent static adapters for v0.1.13 hooks; original method bodies retained."""
from pathlib import Path
import re,hashlib,json
BRIDGE='Lio/mesalabs/unica/dynamicisland/Bootstrap;'
def identity(sig):return 'unica_di_'+hashlib.sha256(sig.encode()).hexdigest()[:16]
def types(desc):return re.findall(r'\[*L[^;]+;|\[*[ZBCSIJFD]',desc)
def words(t):return 2 if t in ('J','D') else 1
BOX={'Z':('Boolean','booleanValue'),'B':('Byte','byteValue'),'C':('Character','charValue'),'S':('Short','shortValue'),'I':('Integer','intValue'),'J':('Long','longValue'),'F':('Float','floatValue'),'D':('Double','doubleValue')}
def args_code(params,start):
 code=[f'    const v4, {len(params)}','    new-array v3, v4, [Ljava/lang/Object;'];reg=start
 for i,t in enumerate(params):
  if t in BOX:
   code += [f'    invoke-static/range {{p{reg} .. p{reg+words(t)-1}}}, Ljava/lang/{BOX[t][0]};->valueOf({t})Ljava/lang/{BOX[t][0]};','    move-result-object v5']
  else:code += [f'    move-object/from16 v5, p{reg}']
  code += [f'    const v4, {i}','    aput-object v5, v3, v4'];reg+=words(t)
 return code
def body(owner,sig,static=False,ctor=False):
 params=types(sig[sig.index('(')+1:sig.index(')')]);ret=sig.split(')')[1]
 code=['    .locals 6']+args_code(params,0 if static else 1)
 code += ['    const/4 v0, 0x0' if static else '    move-object/from16 v0, p0',f'    const-class v1, {owner}',f'    const-string v2, "{sig}"']
 if ctor:return '\n'.join(code+[f'    invoke-static {{v0, v1, v2, v3}}, {BRIDGE}->constructed(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V','    return-void'])
 code += [f'    invoke-static {{v0, v1, v2, v3}}, {BRIDGE}->invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;']
 if ret=='V':code+=['    return-void']
 elif ret in BOX:
  cls,unbox=BOX[ret];code+=['    move-result-object v0',f'    check-cast v0, Ljava/lang/{cls};',f'    invoke-virtual {{v0}}, Ljava/lang/{cls};->{unbox}(){ret}', '    move-result-wide v0' if words(ret)==2 else '    move-result v0','    return-wide v0' if words(ret)==2 else '    return v0']
 else:code+=['    move-result-object v0',f'    check-cast v0, {ret}','    return-object v0']
 return '\n'.join(code)

SPECS={'com.android.systemui.statusbar.events.SystemStatusAnimationSchedulerImpl': ['onStatusEvent'], 'com.android.systemui.statusbar.notification.row.ExpandableNotificationRow': ['isActionButtonLongClick', 'doLongClickCallback'], 'com.android.systemui.statusbar.notification.headsup.HeadsUpManagerImpl': ['addListener', 'updateNotificationInternal', 'setEntryPinned'], 'com.android.wm.shell.common.TaskStackListenerImpl': ['onActivityPinned', 'onActivityUnpinned']}
METHOD=re.compile(r'(?ms)^\.method (?P<flags>[^\n]*?) (?P<sig>[^\s]+\([^\n]+)\n(?P<body>.*?)^\.end method')
def transform(text,owner,names):
 existing={m.group('sig') for m in METHOD.finditer(text)};changed=[]
 def edit(m):
  flags,sig,original=m.group('flags','sig','body');name=sig.split('(')[0]
  if name not in names or any(x in flags.split() for x in ('abstract','native')):return m.group(0)
  renamed=identity(sig)+sig[len(name):]
  if renamed in existing:
   if BRIDGE+'->invoke' not in original:raise ValueError('Incomplete static adapter: '+sig)
   return m.group(0)
  annotation='\n'.join(re.findall(r'(?ms)^    \.annotation .*?^    \.end annotation',original))
  wrapper='.method '+flags+' '+sig+'\n'+body(owner,sig,'static' in flags.split())+'\n'+annotation+'\n.end method'
  changed.append(sig)
  return '.method '+flags+' '+renamed+'\n'+original+'.end method\n\n'+wrapper
 updated=METHOD.sub(edit,text)
 for name in names:
  if not any(m.group('sig').startswith(name+'(') for m in METHOD.finditer(updated)):raise ValueError('Missing required upstream hook '+owner+'#'+name)
 return updated,changed

def plan(tree):
 result={}
 for cls,names in SPECS.items():
  found=list(Path(tree).glob('smali*/'+cls.replace('.','/')+'.smali'))
  if len(found)!=1:raise ValueError('Missing/duplicate target hook class '+cls)
  f=found[0];text,changes=transform(f.read_text(),'L'+cls.replace('.','/')+';',names);result[f]=text
 return result

def apply(tree):
 prepared=plan(tree)
 for f,text in prepared.items():f.write_text(text)
 return prepared

def strip(text):
    parsed=list(METHOD.finditer(text));by_sig={m.group('sig'):m for m in parsed};edits=[]
    names=set(n for group in SPECS.values() for n in group)
    for m in parsed:
        sig=m.group('sig');name=sig.split('(')[0]
        if name not in names:continue
        renamed=identity(sig)+sig[len(name):]
        old=by_sig.get(renamed)
        if old is None:continue
        # Only erase adapters with the exact generated dispatch body, never
        # remove an unrelated method/body that merely shares a marker.
        if BRIDGE+'->invoke' not in m.group('body'):raise ValueError('Changed adapter body '+sig)
        original='.method '+old.group('flags')+' '+sig+'\n'+old.group('body')+'.end method'
        edits.append((old.start(),old.end(),original));edits.append((m.start(),m.end(),''))
    for start,end,value in sorted(edits,reverse=True):text=text[:start]+value+text[end:]
    return text

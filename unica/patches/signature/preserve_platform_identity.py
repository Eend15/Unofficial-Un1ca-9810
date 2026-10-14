"""Keep framework-res platform identity when rebuilding with the ROM key.
Only the android package signed with the configured custom key is normalized.
Samsung's existing platform certificate is read from platform SELinux policy.
"""
from pathlib import Path
import sys, xml.etree.ElementTree as ET
root=Path(sys.argv[1]); policy=Path(sys.argv[2])
stock=next(s.attrib['signature'] for s in ET.parse(policy).getroot().findall('signer') if any(e.attrib.get('value')=='platform' for e in s.findall('seinfo')))
f=root/'smali_classes2/com/android/server/pm/ScanPackageUtils.smali'
s=f.read_text()
marker=':exynos_platform_identity_done'
if marker not in s:
    method='.method public static applyPolicy('
    start=s.index(method); pos=s.index('    .locals 5',start)+len('    .locals 5')
    code=f'''

    # Preserve the stock android package identity after framework-res re-signing.
    invoke-interface {{p0}}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;
    move-result-object v0
    const-string v1, "android"
    invoke-virtual {{v1, v0}}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :exynos_platform_identity_done
    invoke-interface {{p0}}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;
    move-result-object v0
    invoke-virtual {{v0}}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;
    move-result-object v1
    invoke-static {{p4, v1}}, Lcom/android/server/pm/ScanPackageUtils;->signedWithCustomSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    move-result v1
    if-eqz v1, :exynos_platform_identity_done
    invoke-virtual {{v0}}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I
    move-result v1
    const-string v0, "{stock}"
    filled-new-array {{v0}}, [Ljava/lang/String;
    move-result-object v0
    invoke-static {{v0}}, Lcom/android/server/pm/InstallPackageHelper;->createSignatures([Ljava/lang/String;)[Landroid/content/pm/Signature;
    move-result-object v0
    new-instance v2, Landroid/content/pm/SigningDetails;
    invoke-direct {{v2, v0, v1}}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;I)V
    invoke-interface {{p0, v2}}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    :exynos_platform_identity_done
'''
    f.write_text(s[:pos]+code+s[pos:])
print('Platform identity guard applied')

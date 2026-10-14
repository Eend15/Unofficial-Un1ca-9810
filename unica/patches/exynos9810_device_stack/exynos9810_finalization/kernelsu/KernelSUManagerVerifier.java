package com.un1ca.kernelsu;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import java.security.MessageDigest;
public final class KernelSUManagerVerifier {
    private static final String TRUSTED = "79e590113c4c4c0c222978e413a5faa801666957b1212a328e46c00c69821bf7";
    public static void main(String[] args) throws Exception {
        Object pm=Class.forName("android.app.AppGlobals").getMethod("getPackageManager").invoke(null);
        Class<?> iface=Class.forName("android.content.pm.IPackageManager");
        PackageInfo info=(PackageInfo)iface.getMethod("getPackageInfo",String.class,long.class,int.class)
                .invoke(pm,"com.rifsxd.ksunext",0x08000000L,0);
        if (info == null || info.applicationInfo == null || info.signingInfo == null) System.exit(1);
        Signature[] certs=info.signingInfo.hasMultipleSigners()
                ? info.signingInfo.getApkContentsSigners() : info.signingInfo.getSigningCertificateHistory();
        boolean trusted=false;
        for(Signature cert:certs) {
            byte[] digest=MessageDigest.getInstance("SHA-256").digest(cert.toByteArray());
            StringBuilder hex=new StringBuilder();
            for(byte value:digest) hex.append(String.format("%02x",value & 255));
            if (TRUSTED.equals(hex.toString())) trusted=true;
        }
        int uid=info.applicationInfo.uid;
        if (!trusted || uid<10000 || uid>=100000) System.exit(2);
        System.out.println(uid);
    }
}

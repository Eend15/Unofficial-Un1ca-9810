import com.android.apksig.ApkVerifier;
import java.io.File;
import java.security.MessageDigest;
import java.security.cert.X509Certificate;

/** Offline Android APK v2/v3 integrity verifier (no private-key access). */
public final class OfflineApkVerify {
    public static void main(String[] args) throws Exception {
        if (args.length != 1) throw new IllegalArgumentException("Usage: OfflineApkVerify <apk>");
        ApkVerifier.Result result = new ApkVerifier.Builder(new File(args[0])).build().verify();
        System.out.println("APK signature verified: " + result.isVerified());
        System.out.println("APK v1 verified: " + result.isVerifiedUsingV1Scheme());
        System.out.println("APK v2 verified: " + result.isVerifiedUsingV2Scheme());
        System.out.println("APK v3 verified: " + result.isVerifiedUsingV3Scheme());
        for (X509Certificate certificate : result.getSignerCertificates()) {
            byte[] digest = MessageDigest.getInstance("SHA-256").digest(certificate.getEncoded());
            StringBuilder fp = new StringBuilder();
            for (byte part : digest) fp.append(String.format("%02X", part));
            System.out.println("Public signer SHA256: " + fp);
        }
        if (!result.isVerified() ||
                (!result.isVerifiedUsingV2Scheme() && !result.isVerifiedUsingV3Scheme())) {
            for (Object issue : result.getErrors()) System.err.println("Verifier: " + issue);
            System.exit(1);
        }
    }
}

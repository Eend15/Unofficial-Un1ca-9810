package dev.android.dynamicisland.island.window;

import static org.junit.Assert.*;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.hardware.HardwareBuffer;
import android.view.SurfaceControl;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;

@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk=35)
public class DisplayCaptureApiTest {
    @Test public void samsungPathAvoidsCaptureArgsAndExcludesHostWithoutIgnoringPolicy() throws Exception {
        SamsungService service=new SamsungService();
        Bitmap result=new DisplayCaptureApi(service).read(new Rect(0,0,1200,800),.35f,null,2017);
        assertNotNull(result);assertEquals(0xff228844,result.getPixel(0,0));
        assertEquals(2017,service.type);assertFalse(service.containsTarget);assertFalse(service.ignorePolicy);
        assertFalse(service.identity);assertEquals(420,service.width);assertEquals(280,service.height);
        result.recycle();
    }
    @Test public void derivesHostOnlyTypesFromServiceAndKeepsExclusionAndSecurePolicy() throws Exception {
        DualService service=new DualService();
        DisplayCaptureApi api=new DisplayCaptureApi(service);
        Bitmap result=api.read(new Rect(12,24,116,180),.35f,null);
        assertNotNull(result);assertEquals(0xff228844,result.getPixel(0,0));
        assertEquals(new Rect(12,24,116,180),service.args.crop);
        assertEquals(.35f,service.args.scale,0);
        assertFalse(service.args.secure);
        assertNotNull(service.args.excluded);assertEquals(1,service.args.excluded.length);
        assertEquals(0,service.display);
        assertEquals(0,service.vendorCalls);
        result.recycle();
        // A firmware that rejects explicit exclusion can still use the vendor
        // path, without repeatedly invoking the failed API on every frame.
        service.rejectExplicit=true;
        result=api.read(new Rect(0,0,1200,800),.35f,null,2017);
        assertNotNull(result);assertEquals(1,service.vendorCalls);result.recycle();
        result=api.read(new Rect(0,0,1200,800),.35f,null,2017);
        assertEquals(2,service.vendorCalls);result.recycle();
    }
    // Intentionally not named android.window.ScreenCapture: lookup must use these exact host types.
    private static class HostCapture {
        public static class Arguments {
            Rect crop;float scale;boolean secure=true;SurfaceControl[] excluded;
            public static class Builder {
                final Arguments value=new Arguments();
                public Builder setSourceCrop(Rect crop){value.crop=new Rect(crop);return this;}
                public Builder setFrameScale(float scale){value.scale=scale;return this;}
                public Builder setExcludeLayers(SurfaceControl[] layers){value.excluded=layers;return this;}
                public Builder setCaptureSecureLayers(boolean secure){value.secure=secure;return this;}
                public Arguments build(){return value;}
            }
        }
        public static class Listener { }
        public static class Sync extends Listener {
            Buffer buffer;
            public Buffer getBuffer(){return buffer;}
        }
        public static Sync createSyncCaptureListener(){return new Sync();}
        public static class Buffer {
            public HardwareBuffer getHardwareBuffer(){return null;}
            public boolean containsSecureLayers(){return false;}
            public Bitmap asBitmap(){Bitmap b=Bitmap.createBitmap(2,2,Bitmap.Config.ARGB_8888);b.eraseColor(0xff228844);return b;}
        }
    }
    private static class HostService {
        HostCapture.Arguments args;int display=-1;
        public void captureDisplay(int display,HostCapture.Arguments args,HostCapture.Listener listener) {
            this.args=args;this.display=display;((HostCapture.Sync)listener).buffer=new HostCapture.Buffer();
        }
    }
    private static class DualService extends HostService {
        boolean rejectExplicit;int vendorCalls;
        @Override public void captureDisplay(int display,HostCapture.Arguments args,HostCapture.Listener listener) {
            if(rejectExplicit)throw new SecurityException("fixture: unavailable on this firmware");
            super.captureDisplay(display,args,listener);
        }
        public SamsungResult takeScreenshotToTargetWindow(int display,int type,boolean containsTarget,
                Rect crop,int width,int height,boolean identity,boolean ignorePolicy) {
            vendorCalls++;assertFalse(containsTarget);assertFalse(ignorePolicy);return new SamsungResult();
        }
    }
    private static class SamsungService {
        int type,width,height;boolean containsTarget,ignorePolicy,identity;
        public SamsungResult takeScreenshotToTargetWindow(int display,int type,boolean containsTarget,
                Rect crop,int width,int height,boolean identity,boolean ignorePolicy) {
            this.type=type;this.containsTarget=containsTarget;this.width=width;this.height=height;
            this.identity=identity;this.ignorePolicy=ignorePolicy;return new SamsungResult();
        }
    }
    private static class SamsungResult {
        public Bitmap getCapturedBitmap(){return new HostCapture.Buffer().asBitmap();}
    }
}

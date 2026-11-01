package dev.android.dynamicisland.island.view;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RuntimeShader;
import android.graphics.LinearGradient;
import android.graphics.Path;
import android.graphics.Shader;
import dev.android.dynamicisland.island.graphics.Spring;
import dev.android.dynamicisland.xposed.XLog;

/** One optical field and transition state per renderer, retained across brightness notification updates. */
public final class TorchBeamVisual {
    private final Tween power = new Tween(0, 260);
    private final Spring thumbY = new Spring(0,.14f,.88f).setValueThreshold(.01f);
    private long thumbAt=-1;
    private float from, target;
    private long levelAt;
    private boolean initialized, failed;
    private RuntimeShader shader;
    private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Path fallbackCone = new Path();
    private static final String OPTICS = """
        uniform float2 mouth;
        uniform float2 extent;
        uniform float level;
        uniform float power;
        uniform float density;
        float gaussian(float x,float width) {
            float z=x/max(width,.001);
            return exp(-.5*z*z);
        }
        half4 main(float2 p) {
            float2 q=(p-mouth)/density;
            float x=q.x, y=q.y;
            float d=max(0.0,x), span=extent.x/density;
            float high=level*level;
            // A continuous, steep bloom in the last 15% of travel; the camera still uses its real levels.
            float flare=smoothstep(.85,1.0,level);
            // Keep the lens aperture fixed. The extra bloom opens only in the far half of the beam.
            float tipFlare=flare*smoothstep(span*.40,span*.95,d);
            // A diffuse plume opens near the lens, rather than tracing a narrow, straight cone.
            float opening=1.0-exp(-d/95.0);
            float expansion=1.0+.42*high*opening+.85*tipFlare;
            float width=(7.0+mix(16.0,38.0,level)*opening+d*.05)*expansion;
            float entrance=smoothstep(-7.0,18.0,x);
            // span follows the curved control: retain light at the control, with a soft tail after it.
            float tip=x+y*y/(max(span,1.0)*1.20);
            float finish=1.0-smoothstep(span*.80,span+mix(14.0,32.0,level),tip);
            float axial=gaussian(d-span*.44,span*mix(.58,.65,level)+10.0);
            float attenuation=inversesqrt(1.0+(d/190.0)*(d/190.0));
            float core=gaussian(y,7.0+d*(.075+.02*high+.025*tipFlare));
            // Forward light stays aligned; surrounding light has unequal angular spread and reach.
            float plumeY=y-3.0*opening*gaussian(d-110.0,100.0);
            float side=smoothstep(-14.0,18.0,plumeY);
            float plumeWidth=width*mix(.72,1.13,side);
            // Wavelength-dependent spread keeps the core white and separates the softer outer light.
            float split=d/max(span,1.0)*4.0;
            float3 transmitted=float3(gaussian(plumeY+split,plumeWidth*.90),gaussian(plumeY,plumeWidth),gaussian(plumeY-split,plumeWidth*1.13));
            float scatter=gaussian(plumeY,(8.0+d*.18)*mix(.75,1.20,side)*expansion);
            float upperFan=gaussian(y+6.0+d*(.20+.05*high),(7.0+d*.06)*expansion)*gaussian(d-68.0,48.0+12.0*high);
            float lowerFan=gaussian(y-2.0-d*(.13+.04*high),(11.0+d*.08)*expansion)*gaussian(d-126.0,64.0+18.0*high);
            float haze=(upperFan*.90+lowerFan*.70)*smoothstep(0.0,60.0,d);
            // Each shoulder has its own focus, avoiding identical rainbow rings around an oval.
            float shoulder=mix(9.0*opening+d*.12,17.0*opening+d*.15,side)*(1.0+.25*high+.35*tipFlare);
            float veil=(upperFan*.85+lowerFan*.60)*smoothstep(8.0,80.0,d);
            float spectrumPosition=(abs(plumeY)-shoulder)/(7.0+d*.025);
            float3 spectrum=float3(gaussian(spectrumPosition+.95,.85),gaussian(spectrumPosition,.85),gaussian(spectrumPosition-.95,.85));
            float spectralFocus=mix(gaussian(d-78.0,48.0)*.90,gaussian(d-130.0,64.0)*.70,side);
            float3 fringe=spectrum*.30*spectralFocus*smoothstep(16.0,90.0,d);
            float3 radiance=(float3(1.0,.98,.96)*core*.50+transmitted*.66
                +float3(.85,.87,1.0)*scatter*(.47+.20*tipFlare)+float3(.80,.86,1.0)*haze*.18
                +float3(.80,.87,1.0)*veil*.20+fringe)
                *axial*attenuation*entrance*finish;
            float lens=gaussian(x,9.0)*gaussian(y,14.0);
            radiance+=float3(.83,.78,1.0)*lens*.40;
            float3 light=1.0-exp(-radiance*(mix(.45,1.15,level)+.15*high+.35*tipFlare)*power);
            // Fade across the whole height, with no flat-topped band or visible clipping edge.
            float edge=max(0.0,1.0-y*y/(64.0*64.0));
            float boundary=edge*mix(edge,sqrt(edge),tipFlare);
            float a=max(light.r,max(light.g,light.b));
            return half4(light*boundary,a*boundary);
        }
        """;

    public void sync(boolean on, float value, boolean dragging, long now) {
        power.set(on ? 1 : 0, now);
        if (!initialized || dragging) { from=target=value; levelAt=now-180; initialized=true; }
        else if (Math.abs(value-target)>.0001f) { from=level(now); target=value; levelAt=now; }
    }
    public float power(long now) { return power.value(now); }
    public float level(long now) { return from+(target-from)*IslandView.easeInOut((now-levelAt)/180f); }
    public void moveThumb(float dy,long now) {
        stepThumb(now);
        float resisted=dy*.16f;
        thumbY.animateTo(resisted/(1+Math.abs(resisted)/7f),.14f,.88f);
    }
    public void releaseThumb(long now) { stepThumb(now);thumbY.animateTo(0,.20f,.82f); }
    public float thumbOffset(long now) { stepThumb(now);return thumbY.value(); }
    private void stepThumb(long now) {
        if(thumbAt>=0 && now>thumbAt) thumbY.step((now-thumbAt)/1000f);
        thumbAt=now;
    }
    public boolean animating(long now) {
        stepThumb(now);
        return power.running(now) || Math.abs(target-from)>.0001f && now-levelAt<180 || !thumbY.isAtRest();
    }
    public void draw(Canvas canvas, float mouthX, float centerY, float endX, float density, float level, float power) {
        if (power<=.001f) return;
        if (!failed) try {
            if (shader==null) shader=new RuntimeShader(OPTICS);
            shader.setFloatUniform("mouth",mouthX,centerY);
            shader.setFloatUniform("extent",endX-mouthX,0);
            shader.setFloatUniform("density",density);
            shader.setFloatUniform("level",level);
            shader.setFloatUniform("power",power);
            paint.setShader(shader);
            canvas.drawPaint(paint);
            return;
        } catch (Throwable error) { failed=true; XLog.once("torch optical field",error); }
        // The same soft envelope remains usable if a vendor disables RuntimeShader.
        paint.setShader(new LinearGradient(mouthX,centerY,endX,centerY,
                new int[]{0xfffcf8ff,0xa0e5dfff,0},null,Shader.TileMode.CLAMP));
        for(int band=16;band>=1;band--) {
            float spread=(12+42*level)*density*band/16f;
            fallbackCone.reset();fallbackCone.moveTo(mouthX,centerY-2*density);
            fallbackCone.quadTo(mouthX+(endX-mouthX)*.5f,centerY-spread*.6f,endX,centerY-spread);
            fallbackCone.quadTo(endX+12*density,centerY,endX,centerY+spread);
            fallbackCone.quadTo(mouthX+(endX-mouthX)*.5f,centerY+spread*.6f,mouthX,centerY+2*density);
            fallbackCone.close();paint.setAlpha(Math.round(14*power*(.35f+.65f*level)));canvas.drawPath(fallbackCone,paint);
        }
        paint.setAlpha(255);
    }
}

package dev.android.dynamicisland.island.view.card;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.text.TextUtils;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.view.IslandView;
import dev.android.dynamicisland.island.view.TorchBeamVisual;

/** A bounded fan of light; one curved thumb grows as it moves away from the flashlight lens. */
public final class TorchBeamBody extends SliderBody {
    private final Paint paint=new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Path torch=new Path();
    private final RectF arc=new RectF();
    private final Btn powerButton=new Btn();
    private final TorchBeamVisual visual;
    private final float scale, mouth, middle, minRadius, maxRadius;
    private final String label;

    public TorchBeamBody(IslandView owner, IslandItem item, float width) {
        super(owner,item,width);
        scale=width/360f; h=164*scale;mouth=94*scale;middle=87*scale;
        android.text.TextPaint titlePaint=new android.text.TextPaint(Paint.ANTI_ALIAS_FLAG);titlePaint.setTextSize(12*scale);
        label=TextUtils.ellipsize(item.title==null?"":item.title,titlePaint,width-110*scale,TextUtils.TruncateAt.END).toString();
        minRadius=40*scale;maxRadius=width-mouth-42*scale;
        buttons.clear(); powerButton.r.set(16*scale,middle-33*scale,104*scale,middle+33*scale);
        if(!item.actions.isEmpty())powerButton.action=item.actions.get(0);
        buttons.add(powerButton);
        visual=owner.torchBeamVisual();
        visual.sync(item.torchOn,item.sliderChange==null?1:Math.max(0,item.sliderValue),false,IslandView.now());
    }
    @Override public boolean onSlider(float x,float y) {
        return item.torchOn && item.sliderChange!=null && x>=mouth+24*scale && x<=w-14*scale && y>=24*scale && y<=h-15*scale;
    }
    @Override public float valueAfterDrag(float start,float dx) {
        return IslandView.clamp01(start+dx/Math.max(1,maxRadius-minRadius));
    }
    @Override public boolean animating(long now) { return visual.animating(now); }
    @Override public void onSliderStart() { visual.releaseThumb(IslandView.now()); }
    @Override public void onSliderMove(float dy) { visual.moveThumb(dy/scale,IslandView.now()); }
    @Override public void onSliderEnd() { visual.releaseThumb(IslandView.now()); }
    public float thumbRadius(float level) { return minRadius+(maxRadius-minRadius)*level; }
    public float thumbHalfHeight(float level) { return thumbRadius(level)*(float)Math.sin(Math.toRadians(8+6*level)); }
    public float thumbCenterX(float power) { return mouth-60*scale*(1-power); }
    public float thumbRadius(float level,float power) { return 64*scale+(thumbRadius(level)-64*scale)*power; }

    @Override public void draw(Canvas canvas,float x,float y,float alpha,long elapsed) {
        long now=IslandView.now();float requested=item.sliderChange==null?1:Math.max(0,shownValue());
        visual.sync(item.torchOn,requested,owner.sliderBody==this,now);
        if(owner.sliderBody!=this || !item.torchOn) visual.releaseThumb(now);
        float level=visual.level(now),power=visual.power(now);
        float thumbMiddle=middle+visual.thumbOffset(now)*scale;
        int save=canvas.save();canvas.translate(x,y);
        // Both light scattering and controls are constrained inside the card, with breathing room for its corners.
        canvas.clipRect(12*scale,12*scale,w-12*scale,h-12*scale);
        int light=canvas.saveLayerAlpha(0,0,w,h,Math.round(255*alpha));
        // The light reaches the same moving control that defines its brightness, then fades beyond it.
        visual.draw(canvas,mouth,middle,mouth+thumbRadius(level),scale,level,power);canvas.restoreToCount(light);
        paint.setShader(null);paint.setStyle(Paint.Style.FILL);paint.setTextSize(12*scale);
        paint.setColor(colour(0xffb1b1ba,alpha));
        canvas.drawText(label,23*scale,25*scale,paint);
        String value=item.torchOn && item.sliderTrailing!=null?item.sliderTrailing.apply(requested):item.trailingText==null?"":item.trailingText.toString();
        paint.setTextAlign(Paint.Align.RIGHT);canvas.drawText(value,w-24*scale,25*scale,paint);paint.setTextAlign(Paint.Align.LEFT);
        drawTorch(canvas,alpha,power);
        if(item.sliderChange!=null) {
            float radius=thumbRadius(level,power),angle=14.5f+(8+6*level-14.5f)*power;
            float center=thumbCenterX(power);
            // Dock into the existing lens, rather than leave a second translucent rim beside it.
            float dock=IslandView.clamp01(power/.28f);
            float thumbAlpha=dock*dock*(3-2*dock);
            arc.set(center-radius,thumbMiddle-radius,center+radius,thumbMiddle+radius);
            paint.setStyle(Paint.Style.STROKE);paint.setStrokeCap(Paint.Cap.ROUND);
            paint.setStrokeWidth(7*scale);paint.setColor(colour(0xffd9d0ff,alpha*power*.12f));
            canvas.drawArc(arc,-angle,angle*2,false,paint);
            paint.setStrokeWidth(3*scale);paint.setColor(colour(0xfff7f4ff,alpha*thumbAlpha));
            canvas.drawArc(arc,-angle,angle*2,false,paint);
            // Discreet step hints suggest the curved travel without drawing a stack of bright lines.
            if(item.sliderSteps>1 && item.sliderSteps<=10) {
                paint.setStrokeWidth(1.4f*scale);paint.setColor(colour(0xffc9c3d8,alpha*.24f*power));
                for(int i=0;i<item.sliderSteps;i++) {
                    float r=thumbRadius(i/(float)(item.sliderSteps-1));
                    canvas.drawPoint(mouth+r,middle+thumbHalfHeight(i/(float)(item.sliderSteps-1))+9*scale,paint);
                }
            }
            paint.setStyle(Paint.Style.FILL);
        }
        canvas.restoreToCount(save);
    }
    private void drawTorch(Canvas canvas,float alpha,float power) {
        int save=canvas.save();float press=owner.pressOf(powerButton,item);
        canvas.scale(1-.07f*press,1-.07f*press,59*scale,middle);
        paint.setStyle(Paint.Style.FILL);paint.setColor(colour(0xfff5f1ff,alpha*(.42f+.58f*power)));
        // A single silhouette avoids double alpha where the handle and head join when dimmed.
        torch.reset();torch.moveTo(31*scale,middle-9*scale);torch.lineTo(63*scale,middle-9*scale);
        torch.quadTo(65*scale,middle-9*scale,67*scale,middle-10*scale);
        torch.lineTo(79*scale,middle-14.5f*scale);
        torch.quadTo(83*scale,middle-16*scale,83*scale,middle-12*scale);
        torch.lineTo(83*scale,middle+12*scale);
        torch.quadTo(83*scale,middle+16*scale,79*scale,middle+14.5f*scale);
        torch.lineTo(67*scale,middle+10*scale);
        torch.quadTo(65*scale,middle+9*scale,63*scale,middle+9*scale);
        torch.lineTo(31*scale,middle+9*scale);
        torch.quadTo(25*scale,middle+9*scale,25*scale,middle+3*scale);
        torch.lineTo(25*scale,middle-3*scale);torch.quadTo(25*scale,middle-9*scale,31*scale,middle-9*scale);
        torch.close();canvas.drawPath(torch,paint);
        canvas.drawRoundRect(87*scale,middle-17*scale,94*scale,middle+17*scale,3.5f*scale,3.5f*scale,paint);
        paint.setColor(colour(0xff24232d,alpha*.5f));canvas.drawRoundRect(41*scale,middle-2*scale,50*scale,middle+2*scale,2*scale,2*scale,paint);
        canvas.restoreToCount(save);
    }
    private static int colour(int rgb,float alpha) { return (Math.round(255*IslandView.clamp01(alpha))<<24)|(rgb&0xffffff); }
}

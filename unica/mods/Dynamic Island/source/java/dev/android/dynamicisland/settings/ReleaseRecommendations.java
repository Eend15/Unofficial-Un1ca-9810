package dev.android.dynamicisland.settings;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.view.Gravity;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import dev.android.dynamicisland.R;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ThreadLocalRandom;

/** One release suggestion at a time. UI-only history never changes the module's settings. */
final class ReleaseRecommendations {
    static final String PREFS="release_recommendations";
    static final String BANNER="release-recommendation",NEXT="release-recommendation-next",
            OPEN="release-recommendation-open",CLOSE="release-recommendation-close";
    private final SettingsActivity activity;
    private final OneUi ui;
    private final SharedPreferences history;
    private final String version,key;
    private final ReleaseHighlights.Release release;
    private ReleaseHighlights.Feature current;

    ReleaseRecommendations(SettingsActivity activity,OneUi ui,String version) {
        this.activity=activity;this.ui=ui;this.version=version==null ? "" : version;
        history=activity.getSharedPreferences(PREFS,Context.MODE_PRIVATE);
        key="release."+this.version;release=ReleaseHighlights.forVersion(this.version);
    }
    boolean available() { return release!=null && !release.features().isEmpty(); }
    boolean dismissed() { return history.getBoolean(key+".dismissed",false); }
    String currentId() { return current==null ? null : current.id(); }
    void restore(String id) {
        if(available() && id!=null) for(var feature:release.features()) if(feature.id().equals(id)) { current=feature;break; }
    }
    void showAgain() { history.edit().remove(key+".dismissed").apply(); }
    private void markShown() {
        Set<String> shown=new LinkedHashSet<>(history.getStringSet(key+".shown",Set.of()));
        boolean added=shown.add(current.id());
        if(added || !current.id().equals(history.getString(key+".last","")))
            history.edit().putStringSet(key+".shown",shown).putString(key+".last",current.id()).apply();
    }
    private void chooseNext() {
        Set<String> shown=new LinkedHashSet<>(history.getStringSet(key+".shown",Set.of()));
        List<ReleaseHighlights.Feature> candidates=new ArrayList<>();
        for(var feature:release.features()) if(!shown.contains(feature.id())) candidates.add(feature);
        if(candidates.isEmpty()) { shown.clear();candidates.addAll(release.features()); }
        String last=current==null ? history.getString(key+".last","") : current.id();
        if(candidates.size()>1) candidates.removeIf(feature->feature.id().equals(last));
        current=candidates.get(ThreadLocalRandom.current().nextInt(candidates.size()));shown.add(current.id());
        history.edit().putStringSet(key+".shown",shown).putString(key+".last",current.id()).apply();
    }
    void addTo(LinearLayout page) {
        if(!available() || dismissed()) return;
        if(current==null) chooseNext();else markShown();
        LinearLayout banner=ui.card(page);banner.setTag(BANNER);
        GradientDrawable background=new GradientDrawable(GradientDrawable.Orientation.TL_BR,
                ui.dark ? new int[]{0xff14263c,0xff171b24} : new int[]{0xffe8f1ff,0xfff8faff});
        background.setCornerRadius(ui.dp(26));background.setStroke(ui.dp(1),ui.dark ? 0xff26374d : 0xffd6e4f9);
        banner.setBackground(background);bind(banner);
    }
    private RippleDrawable ripple() {
        return new RippleDrawable(ColorStateList.valueOf(ui.dark ? 0x22ffffff : 0x160a6cff),null,ui.round(Color.WHITE,ui.dp(18)));
    }
    private void bind(LinearLayout banner) {
        banner.removeAllViews();
        LinearLayout header=new LinearLayout(activity);header.setGravity(Gravity.CENTER_VERTICAL);
        header.setPadding(ui.dp(20),ui.dp(4),ui.dp(4),0);
        LinearLayout labels=new LinearLayout(activity);labels.setOrientation(LinearLayout.VERTICAL);
        TextView label=ui.text(activity.getString(R.string.recommend_label),12,ui.accent);
        label.setTypeface(Typeface.create("sans-serif-medium",Typeface.NORMAL));labels.addView(label);
        labels.addView(ui.text(version,11,ui.muted));header.addView(labels,new LinearLayout.LayoutParams(0,-2,1));
        TextView close=ui.text("×",26,ui.muted);close.setGravity(Gravity.CENTER);close.setTag(CLOSE);
        close.setContentDescription(activity.getString(R.string.recommend_dismiss));close.setBackground(ripple());close.setFocusable(true);
        header.addView(close,new LinearLayout.LayoutParams(ui.dp(48),ui.dp(48)));
        close.setOnClickListener(v->{history.edit().putBoolean(key+".dismissed",true).apply();banner.setVisibility(View.GONE);});
        banner.addView(header,new LinearLayout.LayoutParams(-1,-2));

        LinearLayout body=new LinearLayout(activity);body.setGravity(Gravity.CENTER_VERTICAL);
        body.setPadding(ui.dp(20),ui.dp(4),ui.dp(20),ui.dp(8));body.setMinimumHeight(ui.dp(86));
        LinearLayout words=new LinearLayout(activity);words.setOrientation(LinearLayout.VERTICAL);
        TextView title=ui.text(activity.getString(current.title()),21,ui.textColor);
        title.setTypeface(Typeface.create("sans-serif-medium",Typeface.NORMAL));words.addView(title);
        TextView summary=ui.text(activity.getString(current.summary()),14,ui.muted);summary.setPadding(0,ui.dp(6),0,0);
        summary.setLineSpacing(ui.dp(2),1);words.addView(summary);
        body.addView(words,new LinearLayout.LayoutParams(0,-2,1));
        Illustration art=new Illustration(activity,current.art(),ui);
        LinearLayout.LayoutParams artSize=new LinearLayout.LayoutParams(ui.dp(68),ui.dp(68));artSize.leftMargin=ui.dp(16);body.addView(art,artSize);
        body.setForeground(ripple());body.setFocusable(true);body.setScreenReaderFocusable(true);
        body.setContentDescription(activity.getString(current.title())+". "+activity.getString(current.summary()));
        body.setOnClickListener(v->open());banner.addView(body,new LinearLayout.LayoutParams(-1,-2));

        LinearLayout actions=new LinearLayout(activity);actions.setPadding(ui.dp(8),0,ui.dp(8),ui.dp(8));
        TextView explore=action(activity.getString(R.string.recommend_open)+"  ›",ui.accent,Gravity.START);
        explore.setTag(OPEN);explore.setOnClickListener(v->open());actions.addView(explore,new LinearLayout.LayoutParams(0,-2,1));
        if(release.features().size()>1) {
            TextView next=action(activity.getString(R.string.recommend_next)+"  ↻",ui.muted,Gravity.END);
            next.setTag(NEXT);next.setContentDescription(activity.getString(R.string.recommend_next));
            next.setOnClickListener(v->{chooseNext();bind(banner);banner.findViewWithTag(NEXT).requestFocus();});
            actions.addView(next,new LinearLayout.LayoutParams(0,-2,1));
        }
        banner.addView(actions,new LinearLayout.LayoutParams(-1,-2));
    }
    private TextView action(String label,int color,int gravity) {
        TextView text=ui.text(label,14,color);text.setMinimumHeight(ui.dp(48));text.setPadding(ui.dp(12),ui.dp(8),ui.dp(12),ui.dp(8));
        text.setGravity(gravity|Gravity.CENTER_VERTICAL);text.setBackground(ripple());text.setFocusable(true);return text;
    }
    private void open() { activity.openSetting(current.route(),current.settingTitle(),0); }

    /** Static decorative diagrams use the current settings palette; no downloaded art or ambient animation. */
    static final class Illustration extends View {
        final ReleaseHighlights.Art art;
        final OneUi ui;
        final Paint paint=new Paint(Paint.ANTI_ALIAS_FLAG);
        final Path path=new Path();
        Illustration(Context context,ReleaseHighlights.Art art,OneUi ui) {
            super(context);this.art=art;this.ui=ui;setImportantForAccessibility(IMPORTANT_FOR_ACCESSIBILITY_NO);
        }
        @Override protected void onDraw(Canvas canvas) {
            super.onDraw(canvas);int save=canvas.save();canvas.scale(getWidth()/72f,getHeight()/72f);
            paint.setColor(ui.dark ? 0xff254369 : 0xffd0e2ff);canvas.drawCircle(36,36,33,paint);
            switch(art) {
                case MOTION -> {
                    paint.setColor(ui.dark ? 0xff080e19 : 0xff2b4b78);canvas.drawRoundRect(6,21,51,42,11,11,paint);canvas.drawCircle(63,31.5f,9,paint);
                    paint.setColor(0xff94c2ff);canvas.drawCircle(17,31.5f,4,paint);
                    for(int i=0;i<4;i++)canvas.drawRoundRect(31+i*4,27-i%2*2,33+i*4,36+i%2*2,1,1,paint);
                    paint.setColor(ui.dark ? 0xff4372ac : 0xff98bceb);canvas.drawRoundRect(16,48,58,54,3,3,paint);
                }
                case SEARCH -> {
                    paint.setColor(ui.accent);paint.setStrokeWidth(5);paint.setStyle(Paint.Style.STROKE);canvas.drawCircle(31,30,15,paint);
                    paint.setStrokeCap(Paint.Cap.ROUND);canvas.drawLine(42,42,56,56,paint);paint.setStyle(Paint.Style.FILL);
                    paint.setColor(ui.dark ? 0xffafceff : 0xffffffff);canvas.drawRoundRect(24,27,38,31,2,2,paint);
                }
                case FLASHLIGHT -> {
                    paint.setShader(new LinearGradient(28,36,69,36,new int[]{0xffe7f2ff,0x66a9ccff,0x00a9ccff},null,Shader.TileMode.CLAMP));
                    path.reset();path.moveTo(28,30);path.cubicTo(45,25,61,17,69,13);path.lineTo(69,59);path.cubicTo(52,50,39,43,28,42);path.close();canvas.drawPath(path,paint);paint.setShader(null);
                    paint.setColor(ui.dark ? 0xffeaf3ff : 0xff3d6eac);canvas.drawRoundRect(8,30,24,42,4,4,paint);
                    path.reset();path.moveTo(23,30);path.lineTo(30,26);path.lineTo(30,46);path.lineTo(23,42);path.close();canvas.drawPath(path,paint);
                    canvas.drawRoundRect(32,25,35,47,1.5f,1.5f,paint);
                }
                case PREVIEW -> {
                    paint.setColor(ui.dark ? 0xff080e19 : 0xff2b4b78);canvas.drawRoundRect(14,14,58,24,5,5,paint);
                    paint.setColor(0xff94c2ff);canvas.drawCircle(21,19,2.4f,paint);
                    paint.setColor(ui.dark ? 0xff3a5f90 : 0xffa9c6ee);
                    for(int i=0;i<3;i++) {
                        canvas.drawRoundRect(16,32+i*10,56,40+i*10,4,4,paint);
                    }
                    paint.setColor(ui.accent);canvas.drawCircle(23,36,2.6f,paint);
                    paint.setColor(ui.dark ? 0xffeaf3ff : 0xffffffff);canvas.drawCircle(23,36,1.1f,paint);
                    canvas.drawRoundRect(30,34.5f,50,37.5f,1.5f,1.5f,paint);
                }
                case SWIPE -> {
                    paint.setColor(ui.dark ? 0xff080e19 : 0xff2b4b78);canvas.drawRoundRect(14,40,58,56,8,8,paint);
                    paint.setColor(0xff94c2ff);canvas.drawCircle(23,48,3,paint);
                    paint.setColor(ui.accent);paint.setStyle(Paint.Style.STROKE);paint.setStrokeWidth(4);paint.setStrokeCap(Paint.Cap.ROUND);
                    canvas.drawLine(36,32,36,14,paint);canvas.drawLine(36,14,29,21,paint);canvas.drawLine(36,14,43,21,paint);
                    paint.setStrokeWidth(2.5f);paint.setColor(ui.dark ? 0xff4372ac : 0xff98bceb);
                    canvas.drawLine(27,30,27,22,paint);canvas.drawLine(45,30,45,22,paint);paint.setStyle(Paint.Style.FILL);
                }
                case BLUR -> {
                    paint.setColor(0xff699cf0);canvas.drawCircle(27,30,16,paint);paint.setColor(0xffa98be3);canvas.drawCircle(46,44,15,paint);
                    paint.setShader(new LinearGradient(12,14,60,58,ui.dark ? 0x99dfe9ff : 0xaaffffff,ui.dark ? 0x333d6296 : 0x5583ace9,Shader.TileMode.CLAMP));
                    canvas.drawCircle(36,36,22,paint);paint.setShader(null);
                    paint.setStyle(Paint.Style.STROKE);paint.setStrokeWidth(1.4f);paint.setColor(0xccffffff);canvas.drawCircle(36,36,22,paint);
                    paint.setStrokeWidth(2.4f);paint.setStrokeCap(Paint.Cap.ROUND);paint.setColor(ui.dark ? 0xffeaf3ff : 0xff3d6eac);
                    canvas.drawLine(26,36,46,36,paint);paint.setStyle(Paint.Style.FILL);
                }
                case NOTIFY -> {
                    paint.setColor(ui.dark ? 0xff080e19 : 0xff2b4b78);canvas.drawRoundRect(10,20,62,52,10,10,paint);
                    paint.setColor(0xff94c2ff);canvas.drawCircle(23,36,7,paint);
                    paint.setColor(ui.dark ? 0xffcfe0ff : 0xffe6f0ff);canvas.drawRoundRect(34,29,55,32.5f,1.7f,1.7f,paint);
                    paint.setColor(ui.dark ? 0xff7f9fcf : 0xff9db9e4);canvas.drawRoundRect(34,37,50,40.5f,1.7f,1.7f,paint);
                    paint.setColor(ui.accent);canvas.drawCircle(58,22,5.5f,paint);
                    paint.setColor(0xffffffff);paint.setStyle(Paint.Style.STROKE);paint.setStrokeWidth(1.8f);paint.setStrokeCap(Paint.Cap.ROUND);
                    canvas.drawLine(55.5f,22,57.3f,24,paint);canvas.drawLine(57.3f,24,60.7f,20,paint);paint.setStyle(Paint.Style.FILL);
                }
                case PROGRESS -> {
                    paint.setColor(ui.dark ? 0xff080e19 : 0xff2b4b78);canvas.drawRoundRect(10,22,62,50,9,9,paint);
                    paint.setColor(ui.dark ? 0xff4372ac : 0xff98bceb);canvas.drawRoundRect(18,40,54,45,2.5f,2.5f,paint);
                    paint.setColor(ui.accent);canvas.drawRoundRect(18,40,40,45,2.5f,2.5f,paint);
                    paint.setColor(0xff94c2ff);canvas.drawCircle(21,31,3.4f,paint);
                    paint.setColor(ui.dark ? 0xffcfe0ff : 0xffe6f0ff);canvas.drawRoundRect(28,29,50,32.4f,1.7f,1.7f,paint);
                }
                case HOTSPOT -> {
                    paint.setColor(ui.accent);paint.setStyle(Paint.Style.STROKE);paint.setStrokeWidth(3.6f);paint.setStrokeCap(Paint.Cap.ROUND);
                    for(int i=1;i<=3;i++) canvas.drawArc(36-i*9,44-i*9,36+i*9,44+i*9,225,90,false,paint);
                    paint.setStyle(Paint.Style.FILL);canvas.drawCircle(36,44,3.4f,paint);
                    paint.setColor(ui.dark ? 0xff080e19 : 0xff2b4b78);canvas.drawRoundRect(14,52,26,63,3,3,paint);canvas.drawRoundRect(46,52,58,63,3,3,paint);
                    paint.setColor(0xff94c2ff);canvas.drawCircle(20,57.5f,1.5f,paint);canvas.drawCircle(52,57.5f,1.5f,paint);
                }
                case UNLOCK -> {
                    paint.setColor(ui.accent);paint.setStyle(Paint.Style.STROKE);paint.setStrokeWidth(4.4f);paint.setStrokeCap(Paint.Cap.ROUND);
                    canvas.drawArc(25,12,47,34,180,180,false,paint);canvas.drawLine(47,23,47,25,paint);canvas.drawLine(25,23,25,30,paint);
                    paint.setStyle(Paint.Style.FILL);paint.setColor(ui.dark ? 0xff080e19 : 0xff2b4b78);canvas.drawRoundRect(19,31,53,58,8,8,paint);
                    paint.setColor(0xff94c2ff);canvas.drawCircle(36,42,3.6f,paint);canvas.drawRoundRect(34.6f,43,37.4f,50,1.4f,1.4f,paint);
                }
                case HEADSET -> {
                    paint.setColor(ui.accent);paint.setStyle(Paint.Style.STROKE);paint.setStrokeWidth(4.4f);paint.setStrokeCap(Paint.Cap.ROUND);
                    canvas.drawArc(17,13,55,51,180,180,false,paint);canvas.drawLine(17,32,17,40,paint);canvas.drawLine(55,32,55,40,paint);
                    paint.setStyle(Paint.Style.FILL);paint.setColor(ui.dark ? 0xff080e19 : 0xff2b4b78);
                    canvas.drawRoundRect(11,36,23,54,5,5,paint);canvas.drawRoundRect(49,36,61,54,5,5,paint);
                    paint.setColor(0xff94c2ff);canvas.drawRoundRect(15,40,19,50,2,2,paint);canvas.drawRoundRect(53,40,57,50,2,2,paint);
                }
                case GLASS -> {
                    paint.setColor(0xff699cf0);canvas.drawCircle(25,29,18,paint);paint.setColor(0xffa98be3);canvas.drawCircle(48,47,18,paint);
                    paint.setShader(new LinearGradient(14,14,57,59,ui.dark ? 0xaadecaff : 0xccffffff,ui.dark ? 0x443d6296 : 0x7783ace9,Shader.TileMode.CLAMP));
                    canvas.drawRoundRect(13,16,59,59,13,13,paint);paint.setShader(null);
                    paint.setStyle(Paint.Style.STROKE);paint.setStrokeWidth(1);paint.setColor(0xccffffff);canvas.drawRoundRect(13,16,59,59,13,13,paint);paint.setStyle(Paint.Style.FILL);
                    paint.setColor(0xfff5f8ff);canvas.drawRoundRect(22,28,48,32,2,2,paint);canvas.drawRoundRect(22,40,40,44,2,2,paint);
                }
            }
            canvas.restoreToCount(save);
        }
    }
}

package dev.android.dynamicisland.settings;

import android.content.SharedPreferences;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.SystemClock;
import android.view.Gravity;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.Switch;
import android.widget.TextView;
import dev.android.dynamicisland.R;
import dev.android.dynamicisland.island.view.AmbientGlow;
import dev.android.dynamicisland.island.view.GlowMotion;
import dev.android.dynamicisland.island.graphics.ArtworkPalette;
import dev.android.dynamicisland.island.model.IslandItem;
import java.util.Locale;

/** Shared compact glow with independent brightness, motion and session visibility. */
final class AmbientGlowScreen {
    private final SettingsActivity activity;
    private final OneUi ui;
    private final SharedPreferences prefs;
    AmbientGlowScreen(SettingsActivity activity, OneUi ui, SharedPreferences prefs) {
        this.activity=activity;this.ui=ui;this.prefs=prefs;
    }
    private boolean followsTheme() { return prefs.getBoolean(ModuleSettings.KEY_GLOW_FOLLOW_THEME, false); }
    private int colour() {
        if (followsTheme()) return prefs.getBoolean(ModuleSettings.KEY_ACCENT_CUSTOM, false)
                ? prefs.getInt(ModuleSettings.KEY_ACCENT_COLOR, ModuleSettings.DEFAULT_ACCENT) : ModuleSettings.DEFAULT_ACCENT;
        return prefs.getInt(ModuleSettings.KEY_GLOW_COLOUR, ModuleSettings.DEFAULT_GLOW_COLOUR);
    }
    private int strength() {return Math.max(0,Math.min(100,prefs.getInt(ModuleSettings.KEY_GLOW_STRENGTH,ModuleSettings.DEFAULT_GLOW_STRENGTH)));}
    private int motion() {return Math.max(0,Math.min(100,prefs.getInt(ModuleSettings.KEY_GLOW_MOTION,ModuleSettings.DEFAULT_GLOW_MOTION)));}
    void open() {
        activity.subPage(activity.getString(R.string.glow_title));
        LinearLayout control=ui.card(activity.page());
        Switch enabled=activity.toggle(control,R.string.glow_title,R.string.glow_summary,ModuleSettings.KEY_AMBIENT_GLOW,true);
        OneUi.listen(enabled,on->activity.refresh());
        if (prefs.getBoolean(ModuleSettings.KEY_LOW_PERFORMANCE,false)) ui.note(activity.page(),activity.getString(R.string.glow_low_mode));
        if (!enabled.isChecked()) return;
        LinearLayout example=ui.card(activity.page());
        Preview preview=new Preview(colour(),strength());
        example.addView(preview,new LinearLayout.LayoutParams(-1,ui.dp(132)));
        LinearLayout settings=ui.card(activity.page());
        activity.choice(settings,R.string.glow_visibility,new int[]{R.string.glow_music_only,R.string.glow_all_activities},
                prefs.getBoolean(ModuleSettings.KEY_GLOW_MUSIC_ONLY,true)?0:1,
                selected->prefs.edit().putBoolean(ModuleSettings.KEY_GLOW_MUSIC_ONLY,selected==0).apply());
        slider(settings,R.string.glow_strength,R.string.glow_strength_format,ModuleSettings.KEY_GLOW_STRENGTH,strength(),amount->{preview.strength=amount;preview.invalidate();});
        slider(settings,R.string.glow_motion_strength,R.string.glow_motion_format,ModuleSettings.KEY_GLOW_MOTION,motion(),amount->{preview.motion=amount;preview.invalidate();});
        TextView motionNote=ui.text(activity.getString(R.string.glow_motion_desc),13,ui.muted);
        motionNote.setPadding(ui.dp(22),0,ui.dp(22),ui.dp(16));settings.addView(motionNote);
        activity.choice(settings, R.string.glow_colour_source,
                new int[]{R.string.glow_follow_theme, R.string.glow_individual}, followsTheme() ? 0 : 1,
                selected -> prefs.edit().putBoolean(ModuleSettings.KEY_GLOW_FOLLOW_THEME, selected == 0).apply());
        if (followsTheme()) ui.valueRow(settings, activity.getString(R.string.glow_theme_colour),
                String.format(Locale.ROOT, "#%06X", colour() & 0xFFFFFF),
                () -> activity.open(() -> new AppearanceScreen(activity, ui, prefs).open()));
        activity.toggle(settings,R.string.glow_album,R.string.glow_album_summary,ModuleSettings.KEY_GLOW_ALBUM,true);
        if (!followsTheme()) {
            ui.category(activity.page(),activity.getString(R.string.glow_colour));
            LinearLayout colours=ui.card(activity.page());
            int[] values={ModuleSettings.DEFAULT_GLOW_COLOUR,0xFF75B6FF,0xFFB8A1FF,0xFFFFA7C5,0xFF87D5B2,0xFFE8EEF5};
            int[] names={R.string.glow_champagne,R.string.accent_blue,R.string.accent_purple,R.string.accent_pink,R.string.accent_green,R.string.glow_pearl};
            for(int row=0;row<2;row++){
                LinearLayout line=new LinearLayout(activity);line.setPadding(ui.dp(16),ui.dp(10),ui.dp(16),ui.dp(10));
                for(int col=0;col<3;col++){
                    int index=row*3+col,selected=values[index];
                    TextView swatch=ui.text(colour()==selected?"✓":"",22,Color.BLACK);
                    swatch.setGravity(Gravity.CENTER);swatch.setBackground(ui.round(selected,ui.dp(24)));
                    swatch.setContentDescription(activity.getString(names[index]));
                    LinearLayout.LayoutParams lp=new LinearLayout.LayoutParams(0,ui.dp(48),1);lp.setMargins(ui.dp(3),0,ui.dp(3),0);
                    line.addView(swatch,lp);swatch.setOnClickListener(v->save(selected));
                }colours.addView(line);
            }
            ui.valueRow(colours,activity.getString(R.string.accent_custom),String.format(Locale.ROOT,"#%06X",colour()&0xFFFFFF),()->{
                Preview editor=new Preview(colour(),strength());
                ColourEditor.show(activity,ui,colour(),editor,selected->{editor.colour=selected;editor.invalidate();},this::save);
            });
        }
        ui.note(activity.page(),activity.getString(R.string.glow_note));
    }
    private void slider(LinearLayout settings,int title,int format,String key,int initial,java.util.function.IntConsumer changed) {
        LinearLayout sliderBox=new LinearLayout(activity);sliderBox.setOrientation(LinearLayout.VERTICAL);
        sliderBox.setTag(activity.getString(title));
        sliderBox.setPadding(ui.dp(22),ui.dp(16),ui.dp(22),ui.dp(8));
        TextView value=ui.text(activity.getString(format,initial),17,ui.textColor);sliderBox.addView(value);
        SeekBar slider=new SeekBar(activity);slider.setMax(100);slider.setProgress(initial);
        slider.setContentDescription(activity.getString(title));
        slider.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener(){
            boolean tracking;
            public void onStartTrackingTouch(SeekBar bar){tracking=true;}
            public void onProgressChanged(SeekBar bar,int amount,boolean fromUser){
                value.setText(activity.getString(format,amount));changed.accept(amount);
                if(fromUser&&!tracking)prefs.edit().putInt(key,amount).apply();
            }
            public void onStopTrackingTouch(SeekBar bar){tracking=false;prefs.edit().putInt(key,bar.getProgress()).apply();}
        });
        sliderBox.addView(slider,new LinearLayout.LayoutParams(-1,ui.dp(48)));settings.addView(sliderBox);
    }
    private void save(int colour){prefs.edit().putInt(ModuleSettings.KEY_GLOW_COLOUR,colour).apply();activity.refresh();}
    private final class Preview extends View {
        int colour,strength,motion=motion(),sampleColour;
        private final AmbientGlow glow=new AmbientGlow(activity.getResources().getDisplayMetrics().density);
        private final GlowMotion flow=new GlowMotion();
        private final IslandItem sample=new IslandItem("glow:settings-preview");
        private long lastFrame;
        private final Paint paint=new Paint(Paint.ANTI_ALIAS_FLAG);
        private final RectF pill=new RectF();
        Preview(int colour,int strength){super(activity);this.colour=colour;this.strength=strength;setContentDescription(activity.getString(R.string.glow_title));}
        @Override protected void onDraw(Canvas canvas){
            canvas.drawColor(0xFF111519);
            float width=Math.min(getWidth()-ui.dp(76),ui.dp(210)),height=ui.dp(34);
            pill.set((getWidth()-width)/2,(getHeight()-height)/2,(getWidth()+width)/2,(getHeight()+height)/2);
            if(sample.mediaPalette==null||sampleColour!=colour){
                sampleColour=colour;sample.accent=colour;sample.isMedia=true;sample.playing=true;
                sample.mediaPalette=ArtworkPalette.fromPixels(new int[]{colour,colour,colour,colour});
            }
            long now=SystemClock.uptimeMillis();float dt=lastFrame==0?0:Math.min(.05f,(now-lastFrame)/1000f);lastFrame=now;
            // An explicitly labelled music example, without starting the system output visualizer in settings.
            float beat=(float)Math.pow(Math.max(0,Math.sin(now/360d)),4);
            boolean moving=flow.step(dt,sample,prefs.getBoolean(ModuleSettings.KEY_GLOW_ALBUM,true),colour,motion,.08f+.85f*beat);
            boolean low=prefs.getBoolean(ModuleSettings.KEY_LOW_PERFORMANCE,false);
            glow.draw(canvas,pill,flow,low?0:1,strength);
            paint.setColor(Color.BLACK);canvas.drawRoundRect(pill,height/2,height/2,paint);
            paint.setColor(0x33FFFFFF);paint.setStyle(Paint.Style.STROKE);paint.setStrokeWidth(ui.dp(1));
            canvas.drawRoundRect(pill,height/2,height/2,paint);paint.setStyle(Paint.Style.FILL);
            if(moving&&!low&&strength>0&&isAttachedToWindow()&&isShown()&&getWindowVisibility()==VISIBLE)postInvalidateDelayed(33);
        }
        @Override protected void onDetachedFromWindow(){lastFrame=0;super.onDetachedFromWindow();}
    }
}

package dev.android.dynamicisland.island.view;

import static org.junit.Assert.*;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.*;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.widget.FrameLayout;
import android.widget.RemoteViews;
import dev.android.dynamicisland.island.feedback.RecorderInput;
import dev.android.dynamicisland.island.graphics.GlyphIcon;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.view.card.*;
import dev.android.dynamicisland.settings.ModuleSettings;
import dev.android.dynamicisland.testutil.RenderCapture;
import java.io.File;
import java.lang.reflect.Proxy;
import java.util.*;
import org.junit.Test;
import org.junit.experimental.categories.Category;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;
import org.robolectric.util.ReflectionHelpers;
import org.robolectric.util.ReflectionHelpers.ClassParameter;

/** Opt-in contact sheet of every current card renderer, using illustrative notification data. */
@Category(RenderCapture.class)
@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk=35, qualifiers="ko-rKR-w360dp-h800dp-mdpi")
public class AllCardsOverviewRenderTest {
    private final Context context = RuntimeEnvironment.getApplication();
    private final List<Example> examples = new ArrayList<>();
    private record Example(String label, IslandItem item) { }
    private record Rendered(Example example, IslandView view, CardBody body) { }
    private static final float WIDTH=360, COLUMN=392, MARGIN=24, SCALE=2;

    private IslandItem item(String key,String title,String subtitle,GlyphIcon.Kind icon,int accent) {
        IslandItem it=new IslandItem("overview:"+key);it.title=title;it.subtitle=subtitle;
        it.accent=accent;if(icon!=null)it.icon=GlyphIcon.of(icon);return it;
    }
    private void add(String label,IslandItem item) { examples.add(new Example(label,item)); }
    private IslandItem.Action action(String title,int glyph,boolean destructive) {
        IslandItem.Action a=new IslandItem.Action(title,null,null,()->{},destructive);a.glyph=glyph;return a;
    }
    private IslandItem fixture(String name) {
        return ReflectionHelpers.callStaticMethod(ScreenshotsTest.class,name,
                ClassParameter.from(Context.class,context),ClassParameter.from(boolean.class,true));
    }
    private IslandItem media(boolean playing) {
        IslandItem it=fixture("media");it.playing=playing;
        it.cardImage=new BitmapDrawable(context.getResources(),it.art);it.cardImageIsImage=true;
        it.mediaSeek=value->{};return it;
    }
    private IslandItem voice(boolean paused) {
        IslandItem it=item("voice:"+paused,"음성 녹음",null,GlyphIcon.Kind.MIC,0xFFFF5B62);
        it.kind=IslandItem.Kind.RECORDING;it.voiceRecording=true;it.voiceRecordingPaused=paused;
        it.packageName="com.sec.android.app.voicenote";it.trailing=IslandItem.Trailing.TEXT;it.trailingText="0:18";
        IslandItem.Action toggle=action(paused?"계속":"일시정지",paused?1:2,false);toggle.recordingControl=paused?2:1;
        IslandItem.Action stop=action("종료",6,true);stop.recordingControl=3;
        it.actions.add(toggle);it.actions.add(stop);return it;
    }
    private IslandItem timer(String key,String title,String time,int count,boolean paused) {
        IslandItem it=item(key,title,null,GlyphIcon.Kind.BELL,0xFF9B82EE);
        it.kind=IslandItem.Kind.TIMER;it.trailing=IslandItem.Trailing.TEXT;it.trailingText=time;
        if(count==3)it.actions.add(new IslandItem.Action("초기화",context.getDrawable(android.R.drawable.ic_menu_revert),null,()->{},false));
        it.actions.add(action(paused?"시작":"일시정지",paused?1:2,false));
        it.actions.add(action("종료",6,true));return it;
    }
    private IslandItem battery(String key,String title,int percent,boolean charging) {
        IslandItem it=item(key,title,null,null,percent<=15?0xFFFF453A:0xFF30D158);
        it.kind=IslandItem.Kind.EVENT;it.eventLayout=IslandItem.EventLayout.BATTERY;
        it.batteryPercent=percent;it.batteryCharging=charging;
        it.trailing=IslandItem.Trailing.TEXT;it.trailingText=percent+"%";return it;
    }
    private IslandItem status(String key,String title,GlyphIcon.Kind icon,int colour) {
        IslandItem it=item(key,title,null,icon,colour);it.kind=IslandItem.Kind.EVENT;
        it.eventLayout=IslandItem.EventLayout.STATUS;return it;
    }
    private IslandItem privacy(String key,String title,String app,GlyphIcon.Kind icon,int colour) {
        IslandItem it=item(key,title,app,icon,colour);it.kind=IslandItem.Kind.EVENT;
        it.trailing=IslandItem.Trailing.TEXT;it.trailingText=app;return it;
    }
    private IslandItem transfer(String key,boolean indeterminate) {
        IslandItem it=item(key,indeterminate?"파일 준비 중":"파일 다운로드","DynamicIsland.apk · 6.4 / 10 MB",GlyphIcon.Kind.DOWNLOAD,0xFF75B6FF);
        it.appName="파일";it.kind=IslandItem.Kind.TASK;it.transfer=true;
        it.progress=indeterminate?-1:.64f;it.progressIndeterminate=indeterminate;
        it.trailing=IslandItem.Trailing.PROGRESS_RING;it.actions.add(new IslandItem.Action("취소",null,null,null,true));return it;
    }
    private Drawable badge(String text,int colour) {
        Bitmap bitmap=Bitmap.createBitmap(96,96,Bitmap.Config.ARGB_8888);
        Canvas canvas=new Canvas(bitmap);Paint paint=new Paint(Paint.ANTI_ALIAS_FLAG);
        paint.setColor(colour);canvas.drawRoundRect(0,0,96,96,24,24,paint);
        paint.setColor(Color.WHITE);paint.setTextAlign(Paint.Align.CENTER);paint.setTextSize(38);
        Paint.FontMetrics fm=paint.getFontMetrics();canvas.drawText(text,48,48-(fm.ascent+fm.descent)/2,paint);
        return new BitmapDrawable(context.getResources(),bitmap);
    }

    private void examples() {
        add("음악 · 재생 중",media(true));
        add("음악 · 일시정지",media(false));
        IslandItem remote=item("remote","앱 자체 알림",null,null,0xFF75B6FF);
        remote.remoteView=new RemoteViews("android",android.R.layout.simple_list_item_1);
        remote.remoteView.setTextViewText(android.R.id.text1,"앱에서 제공한 카드 · 콘텐츠 예시");
        add("앱 자체 레이아웃 · 예시",remote);

        add("음성 녹음 · 실시간 파형",voice(false));
        add("음성 녹음 · 일시정지",voice(true));
        IslandItem screen=item("screen","화면 녹화",null,GlyphIcon.Kind.CAMERA,0xFFFF5B62);
        screen.kind=IslandItem.Kind.RECORDING;screen.trailing=IslandItem.Trailing.TEXT;screen.trailingText="02:34";
        screen.actions.add(action("일시정지",2,false));screen.actions.add(action("종료",6,true));add("화면 녹화",screen);

        IslandItem watch=timer("watch","스톱워치","0:27.45",2,false);
        watch.actions.clear();watch.actions.add(new IslandItem.Action("초기화",context.getDrawable(android.R.drawable.ic_menu_revert),null,()->{},false));
        watch.actions.add(action("일시정지",2,false));add("스톱워치 · 진행 중",watch);
        add("스톱워치 · 개별 버튼 3개",timer("watch3","스톱워치","12:34:56.78",3,true));
        add("타이머",timer("timer","집중 시간","04:32",2,false));

        add("통화 · 연결됨",fixture("call"));
        IslandItem incoming=fixture("call");incoming.title="김민지";incoming.trailing=IslandItem.Trailing.TEXT;
        incoming.trailingText="전화 수신 중";incoming.chronoBase=0;incoming.actions.clear();
        incoming.actions.add(new IslandItem.Action("받기",context.getDrawable(android.R.drawable.sym_action_call),null,()->{},false));
        incoming.actions.add(action("거절",9,true));add("통화 · 수신 중",incoming);
        IslandItem otp=item("otp","인증번호",null,null,0xFF75B6FF);otp.kind=IslandItem.Kind.PEEK;
        otp.bigNumber=true;otp.otpCode="482913";otp.trailing=IslandItem.Trailing.TEXT;otp.trailingText="482 913";
        otp.icon=badge("#",0xFF2861C8);otp.iconIsImage=true;otp.actions.add(action("복사",11,false));add("인증번호",otp);

        IslandItem charge=battery("charge","충전 중",68,true);charge.subtitle="1800 mA · 7.2 W · 31.0 °C";
        add("배터리 · 충전 정보",charge);
        IslandItem stats=battery("stats","충전 중",68,true);stats.subtitle="1800 mA · 7.2 W · 31.0 °C";
        stats.description="화면 켜짐 · 8분 · +2%\n화면 꺼짐 · 24분 · +7%";stats.descriptionMaxLines=8;
        add("배터리 · 충전 통계",stats);
        add("배터리 · 부족",battery("low","배터리 부족",12,false));

        add("배터리 · 충전 완료",battery("full","충전 완료",100,false));
        IslandItem buds=item("buds","Galaxy Buds3 Pro","연결됨",GlyphIcon.Kind.HEADPHONES,0xFF75B6FF);
        buds.kind=IslandItem.Kind.EVENT;buds.eventLayout=IslandItem.EventLayout.DEVICE;buds.batteryPercent=67;
        add("블루투스 · 배터리 표시",buds);
        IslandItem wired=item("wired","이어폰 연결됨",null,GlyphIcon.Kind.HEADPHONES,0xFFF1F1F5);
        wired.kind=IslandItem.Kind.EVENT;wired.eventLayout=IslandItem.EventLayout.DEVICE;add("유선 이어폰",wired);

        add("알림 모드 · 무음",status("silent","무음 모드",GlyphIcon.Kind.BELL_OFF,0xFFD6B3FF));
        add("시스템 상태 · 비행기 모드",status("airplane","비행기 모드 켜짐",GlyphIcon.Kind.PLANE,0xFFFF9F0A));
        add("시스템 상태 · 절전 모드",status("power","절전 모드 켜짐",GlyphIcon.Kind.POWER_SAVE,0xFFFFD60A));

        IslandItem torch=item("torch","손전등",null,GlyphIcon.Kind.TORCH,0xFFFFD60A);
        torch.kind=IslandItem.Kind.EVENT;torch.trailing=IslandItem.Trailing.TEXT;torch.trailingText="60%";
        torch.sliderValue=.5f;torch.sliderSteps=5;torch.sliderChange=value->{};
        torch.actions.add(new IslandItem.Action("끄기",null,null,()->{},false));add("손전등 · 밝기 조절",torch);
        add("개인정보 · 카메라",privacy("camera","카메라 사용 중","카메라",GlyphIcon.Kind.CAMERA,0xFF30D158));
        add("개인정보 · 마이크",privacy("mic","마이크 사용 중","음성 녹음",GlyphIcon.Kind.MIC,0xFFFF9F0A));

        add("개인정보 · 위치",privacy("location","위치 사용 중","지도",GlyphIcon.Kind.LOCATION,0xFF75B6FF));
        add("개인정보 · 카메라와 마이크",privacy("both","카메라와 마이크 사용 중","영상 통화",GlyphIcon.Kind.CAMERA,0xFF30D158));
        IslandItem message=item("message","김민지","도착하면 연락해 줘. 입구에서 기다릴게!",null,0xFF75B6FF);
        message.kind=IslandItem.Kind.PEEK;message.icon=message.cardImage=badge("민",0xFF5E5CE6);
        message.iconIsImage=true;message.cardImageIsImage=true;message.cardImageRound=true;
        message.actions.add(new IslandItem.Action("답장",null,null,null,false));message.actions.add(new IslandItem.Action("읽음",null,null,null,false));
        add("메시지 · 팝업 알림",message);

        add("다운로드 · 진행률",transfer("download",false));
        IslandItem waiting=transfer("waiting",true);waiting.subtitle="다운로드를 준비하고 있습니다";add("진행 알림 · 대기 중",waiting);
        IslandItem progress=item("progressstyle","업데이트 다운로드","다운로드가 진행 중입니다",GlyphIcon.Kind.DOWNLOAD,0xFF75B6FF);
        progress.appName="시스템 업데이트";progress.progressStyle=true;progress.progress=.57f;
        progress.progressStyledByProgress=true;progress.progressSegmentStarts=new float[]{0,.4f,.7f};
        progress.progressSegmentColors=new int[]{0xFF30D158,0xFF75B6FF,0xFFBB9AFF};
        progress.progressPointPositions=new float[]{.4f,.7f};progress.progressPointColors=new int[]{0xFF75B6FF,0xFFBB9AFF};
        add("Android 진행 알림 · 구간",progress);

        IslandItem nav=item("nav","300m 앞에서 우회전","강남대로 · 도착까지 8분",GlyphIcon.Kind.LOCATION,0xFF30D158);
        nav.kind=IslandItem.Kind.NAVIGATION;nav.appName="지도";nav.progress=.58f;
        nav.progressSegmentStarts=new float[]{0,.45f,.78f};nav.progressSegmentColors=new int[]{0xFF30D158,0xFFFFD60A,0xFFFF453A};
        nav.progressThumb=badge("›",0xFF30D158);nav.detail="남은 거리 3.2km";add("길 안내 · 구간 진행률",nav);
        add("라이브 알림 · 택시",fixture("taxi"));
        IslandItem delivery=item("delivery","배달원이 출발했어요","주문하신 음식을 배달 중입니다",GlyphIcon.Kind.LOCATION,0xFFFF9F0A);
        delivery.appName="음식 배달";delivery.progress=.75f;delivery.detail="오후 6:40 도착 예정";
        delivery.actions.add(new IslandItem.Action("주문 보기",null,null,null,false));add("라이브 알림 · 배달",delivery);

        IslandItem sports=item("sports","후반전 · 72분","서울 vs 수원",null,0xFFF5F5F7);
        sports.leftImage=badge("서",0xFFD63846);sports.rightImage=badge("수",0xFF2F71D5);
        sports.trailing=IslandItem.Trailing.TEXT;sports.trailingText="2 - 1";add("스포츠 · 경기 점수",sports);
        IslandItem detail=item("detail","백업이 진행 중입니다",null,GlyphIcon.Kind.DOWNLOAD,0xFF75B6FF);
        detail.appName="클라우드";detail.description="사진과 동영상을 안전하게 백업하고 있습니다. Wi-Fi 연결을 유지해 주세요.";
        detail.detail="최근 백업 · 오늘 오후 2:10";detail.progress=.42f;add("일반 알림 · 긴 설명",detail);
        IslandItem controls=item("controls","작업이 진행 중입니다","남은 시간 약 3분",GlyphIcon.Kind.DOWNLOAD,0xFF75B6FF);
        controls.appName="파일 전송";controls.actionType=0;controls.progress=.35f;
        controls.actions.add(new IslandItem.Action("이전",context.getDrawable(android.R.drawable.ic_media_previous),null,null,false));
        controls.actions.add(new IslandItem.Action("일시정지",context.getDrawable(android.R.drawable.ic_media_pause),null,null,false));
        controls.actions.add(new IslandItem.Action("취소",context.getDrawable(android.R.drawable.ic_menu_close_clear_cancel),null,null,true));
        add("라이브 알림 · 아이콘 버튼",controls);
    }

    private void text(Canvas canvas,String text,float x,float y,float size,int colour,boolean bold) {
        Paint paint=new Paint(Paint.ANTI_ALIAS_FLAG);paint.setColor(colour);paint.setTextSize(size);
        paint.setTypeface(Typeface.create("sans-serif",bold?Typeface.BOLD:Typeface.NORMAL));canvas.drawText(text,x,y,paint);
    }

    @Test public void renderEveryCurrentCardIntoOneContactSheet() throws Exception {
        SharedPreferences prefs=context.getSharedPreferences("all-cards-overview",0);
        prefs.edit().clear().putBoolean(ModuleSettings.KEY_CONCURRENT_RECORDING_INPUT,true).commit();
        ModuleSettings.configurePreview(prefs);
        GlyphIcon.setPlaybackFrozen(true);
        try {
            RecorderInput input=new RecorderInput(context,()->{});
            IslandHost host=(IslandHost)Proxy.newProxyInstance(getClass().getClassLoader(),new Class<?>[]{IslandHost.class},
                    (proxy,method,args)->method.getName().equals("recordingAudio")?input:method.invoke(IslandHost.NONE,args));
            examples();assertEquals(36,examples.size());
            List<Rendered> rendered=new ArrayList<>();Set<String> layouts=new HashSet<>();
            for(Example example:examples) {
                IslandView view=new IslandView(context,host);view.setGeometry(360,180,40,22,false);
                view.setRemoteLayer(new FrameLayout(context));
                CardBody body=view.bodies().create(example.item,WIDTH,false);
                assertTrue(example.label+" height",body.h>0 && body.h<500);
                layouts.add(body.getClass().getSimpleName());rendered.add(new Rendered(example,view,body));
            }
            assertTrue("Rendered card layouts: "+layouts,layouts.containsAll(Set.of("MediaBody","RecordingBody","TimerBody","BatteryBody","EventBody",
                    "SliderBody","LiveBody","ProgressBody","RemoteBody")));
            float[] rowHeights=new float[12];
            for(int i=0;i<rendered.size();i++)rowHeights[i/3]=Math.max(rowHeights[i/3],rendered.get(i).body.h+64);
            float height=136;for(float row:rowHeights)height+=row;
            Bitmap bitmap=Bitmap.createBitmap(Math.round((MARGIN*2+COLUMN*3-32)*SCALE),Math.round(height*SCALE),Bitmap.Config.ARGB_8888);
            Canvas canvas=new Canvas(bitmap);canvas.scale(SCALE,SCALE);canvas.drawColor(0xFF0D0E11);
            text(canvas,"DYNAMIC ISLAND",MARGIN,32,15,0xFF89AFFF,true);
            text(canvas,"현재 카드 전체 미리보기",MARGIN,70,30,0xFFF3F3F7,true);
            text(canvas,"36가지 예시 · 기본 모서리 28dp · 기존 개별 버튼 · 카드 폭 360dp",MARGIN,96,14,0xFFA4A6B1,false);
            float rowTop=128;
            for(int i=0;i<rendered.size();i++) {
                Rendered r=rendered.get(i);float x=MARGIN+(i%3)*COLUMN,y=rowTop+32;
                text(canvas,String.format(java.util.Locale.ROOT,"%02d",i+1),x,rowTop+12,12,0xFF89AFFF,true);
                text(canvas,r.example.label,x+28,rowTop+12,15,0xFFDADBE3,true);
                if(r.example.item.voiceRecording) {
                    input.envelope.reset(r.example.item.key);
                    long start=SystemClock.elapsedRealtime()-23*120L;
                    float[] speech={0,.04f,.12f,.43f,.66f,.52f,.25f,.07f,0,0,.08f,.23f,.56f,.8f,.69f,.45f,.25f,.16f,.37f,.61f,.43f,.18f,.05f,0};
                    for(int j=0;j<speech.length;j++)input.envelope.add(r.example.item.key,speech[j],start+j*120L);
                }
                Card card=new Card(r.example.item,r.body);card.contentStart=IslandView.now()-2000;
                StackPainter painter=ReflectionHelpers.getField(r.view,"stackPainter");
                RectF bounds=new RectF(x,y,x+WIDTH,y+r.body.h);
                painter.drawCard(canvas,card,bounds,IslandView.now(),1);
                if(r.body instanceof RemoteBody remote) {
                    ViewDraw.draw(canvas,remote,x,y);
                }
                if(i%3==2)rowTop+=rowHeights[i/3];
            }
            text(canvas,"현재 로컬 코드의 실제 렌더링 · 내용은 예시 · 배경 블러와 앱 자체 레이아웃은 기기에 따라 달라질 수 있습니다.",MARGIN,rowTop-4,12,0xFF858994,false);
            RenderCapture.write(bitmap,new File("build/render/all-cards-current-overview.png"));
        } finally {GlyphIcon.setPlaybackFrozen(false);prefs.edit().clear().commit();ModuleSettings.configurePreview(prefs);}
    }
    private static class ViewDraw {
        static void draw(Canvas canvas,RemoteBody body,float x,float y) {
            int save=canvas.save();canvas.translate(x+body.pad,y+body.pad);
            body.view.layout(0,0,body.view.getMeasuredWidth(),body.view.getMeasuredHeight());body.view.draw(canvas);
            canvas.restoreToCount(save);
        }
    }
}

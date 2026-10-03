.class public final synthetic LA1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LA1/h;->a:I

    iput-object p2, p0, LA1/h;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget v0, p0, LA1/h;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LA1/h;->b:Ljava/lang/Object;

    check-cast p0, LQ1/h;

    check-cast p1, Lo1/a;

    invoke-virtual {p0, p1}, LQ1/h;->a(Lo1/a;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    const-string v0, "result"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, LA1/h;->b:Ljava/lang/Object;

    check-cast p0, Lm2/n;

    iget-boolean p1, p0, Lm2/n;->r:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lm2/n;->i()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "start to listen effect changes."

    invoke-static {p1, v2, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lm2/n;->h:LW4/t;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    new-instance v2, Lm2/m;

    invoke-direct {v2, p0, v1}, Lm2/m;-><init>(Lm2/n;Lu3/d;)V

    invoke-static {p1, v2}, LW4/u;->h(LW4/t;LE3/c;)LW4/x;

    move-result-object p1

    iput-object p1, p0, Lm2/n;->g:LW4/x;

    iget-boolean p1, p0, Lm2/n;->b:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lm2/n;->i()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "start to listen package changes."

    invoke-static {p1, v1, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lm2/n;->g()Lj2/b;

    goto :goto_0

    :cond_1
    const-string p0, "applicationScope"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    return-void

    :pswitch_1
    check-cast p1, Ld2/e;

    iget-object p0, p0, LA1/h;->b:Ljava/lang/Object;

    check-cast p0, Ld2/h;

    iget-object p0, p0, Ld2/h;->e:Ld2/g;

    if-eqz p0, :cond_4

    iget-object v0, p0, Ld2/g;->e:Ld2/h;

    iget-object v0, v0, Ld2/h;->h:La0/b;

    if-eqz v0, :cond_3

    iput-object p1, v0, La0/b;->m:Ljava/lang/Object;

    :cond_3
    invoke-virtual {p0}, Ld2/g;->b()V

    :cond_4
    return-void

    :pswitch_2
    iget-object p0, p0, LA1/h;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposer;

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/language/WritingComposer;->a(Lcom/samsung/android/sdk/scs/ai/language/WritingComposer;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V

    return-void

    :pswitch_3
    iget-object p0, p0, LA1/h;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/language/ToneConverter;

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/language/ToneConverter;->a(Lcom/samsung/android/sdk/scs/ai/language/ToneConverter;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V

    return-void

    :pswitch_4
    iget-object p0, p0, LA1/h;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/language/Summarizer;

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/language/Summarizer;->e(Lcom/samsung/android/sdk/scs/ai/language/Summarizer;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V

    return-void

    :pswitch_5
    iget-object p0, p0, LA1/h;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/language/SuggesterForExternal;

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/language/SuggesterForExternal;->b(Lcom/samsung/android/sdk/scs/ai/language/SuggesterForExternal;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V

    return-void

    :pswitch_6
    iget-object p0, p0, LA1/h;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/language/Suggester;

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/language/Suggester;->d(Lcom/samsung/android/sdk/scs/ai/language/Suggester;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V

    return-void

    :pswitch_7
    iget-object p0, p0, LA1/h;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/language/SmartReplyer;

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/language/SmartReplyer;->a(Lcom/samsung/android/sdk/scs/ai/language/SmartReplyer;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V

    return-void

    :pswitch_8
    iget-object p0, p0, LA1/h;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/language/SmartCoverer;

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/language/SmartCoverer;->a(Lcom/samsung/android/sdk/scs/ai/language/SmartCoverer;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V

    return-void

    :pswitch_9
    iget-object p0, p0, LA1/h;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/language/Extractor;

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/language/Extractor;->a(Lcom/samsung/android/sdk/scs/ai/language/Extractor;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V

    return-void

    :pswitch_a
    iget-object p0, p0, LA1/h;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/language/EmojiAugmentor;

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/language/EmojiAugmentor;->a(Lcom/samsung/android/sdk/scs/ai/language/EmojiAugmentor;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V

    return-void

    :pswitch_b
    iget-object p0, p0, LA1/h;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/language/Corrector;

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/language/Corrector;->c(Lcom/samsung/android/sdk/scs/ai/language/Corrector;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V

    return-void

    :pswitch_c
    iget-object p0, p0, LA1/h;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/tasks/SttRecognitionTask;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/tasks/SttRecognitionTask;->a(Lcom/samsung/android/sdk/scs/ai/asr_6_0/tasks/SttRecognitionTask;Ljava/lang/String;)V

    return-void

    :pswitch_d
    iget-object p0, p0, LA1/h;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->b(Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;Ljava/lang/String;)V

    return-void

    :pswitch_e
    check-cast p1, LF2/b;

    iget p1, p1, LF2/b;->a:I

    const/16 v0, 0x64

    if-eq p1, v0, :cond_6

    const/16 v0, 0x65

    if-eq p1, v0, :cond_5

    goto :goto_1

    :cond_5
    const/16 p1, 0x12c

    goto :goto_1

    :cond_6
    move p1, v0

    :goto_1
    iget-object p0, p0, LA1/h;->b:Ljava/lang/Object;

    check-cast p0, LF3/r;

    iput p1, p0, LF3/r;->d:I

    return-void

    :pswitch_f
    check-cast p1, Ljava/lang/Boolean;

    const-string v0, "it"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p0, p0, LA1/h;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;

    iget-object p1, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->r:LM2/h;

    iget-object v0, p1, LM2/h;->a:LO2/a;

    invoke-virtual {v0}, LO2/a;->d()LU0/e;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "WorkerTerminator"

    const-string v3, "stop"

    invoke-virtual {v0, v2, v3, v1}, LU0/e;->o(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p1, LM2/h;->c:LA1/h;

    iget-object v0, p1, LM2/h;->b:Landroid/content/ContentResolver;

    iget-object p1, p1, LM2/h;->d:LE1/f;

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->g()V

    :cond_7
    return-void

    :pswitch_10
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p0, p0, LA1/h;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;

    iget v1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->d:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->f:Lk1/b;

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    goto :goto_2

    :cond_8
    move v3, v4

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {p1, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "onFrameChanged: nowFrame[%d], lastFrame[%d], diff[%d], player[%b]"

    const-string v2, "InfinityWallpaper"

    invoke-static {v2, v1, p1}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget p1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->d:I

    if-eq p1, v0, :cond_d

    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->h:Landroid/os/Handler;

    const/16 v1, 0x65

    if-eqz p1, :cond_9

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_9
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->f:Lk1/b;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lk1/b;->o()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v3, "tempStartPlayer: exception = %s"

    invoke-static {v2, v3, p1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->h:Landroid/os/Handler;

    if-eqz p1, :cond_b

    const-wide/16 v5, 0x7d0

    invoke-virtual {p1, v1, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_b
    invoke-virtual {p0, v0}, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->e(I)Z

    move-result p1

    if-eqz p1, :cond_c

    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->d:I

    goto :goto_4

    :cond_c
    const-string p0, "onFrameChanged: seekTo failed"

    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    :goto_4
    return-void

    :pswitch_11
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p0, p0, LA1/h;->b:Ljava/lang/Object;

    check-cast p0, LA1/o;

    iget v1, p0, LA1/o;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, LA1/o;->f:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, LA1/o;->h:Lk1/b;

    const/4 v4, 0x0

    if-eqz v3, :cond_e

    const/4 v3, 0x1

    goto :goto_5

    :cond_e
    move v3, v4

    :goto_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {p1, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "onFrameChanged: nowFrame[%d], lastFrame[%d], diff[%d], player[%b]"

    const-string v2, "FoldInteractive"

    invoke-static {v2, v1, p1}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget p1, p0, LA1/o;->f:I

    if-eq p1, v0, :cond_10

    invoke-virtual {p0, v0}, LA1/o;->g(I)Z

    move-result p1

    if-eqz p1, :cond_f

    iput v0, p0, LA1/o;->f:I

    goto :goto_6

    :cond_f
    const-string p0, "onFrameChanged: seekTo failed"

    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

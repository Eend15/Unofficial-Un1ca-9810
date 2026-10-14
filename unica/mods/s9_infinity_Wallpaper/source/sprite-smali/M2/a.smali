.class public final synthetic LM2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LM2/a;->d:I

    iput-object p2, p0, LM2/a;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, LM2/a;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LM2/a;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/w;

    invoke-virtual {p0}, Landroidx/activity/i;->reportFullyDrawn()V

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const/high16 v0, 0x42200000    # 40.0f

    iget-object p0, p0, LM2/a;->e:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;

    invoke-virtual {p0, v0}, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->q(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->n()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->r()V

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->g()V

    :cond_1
    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0

    :pswitch_1
    const/high16 v0, 0x42480000    # 50.0f

    iget-object p0, p0, LM2/a;->e:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;

    invoke-virtual {p0, v0}, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->q(F)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->r()V

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->g()V

    :cond_2
    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

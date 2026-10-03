.class public final LN1/a;
.super LN1/j;
.source "SourceFile"


# instance fields
.field public final synthetic v:I

.field public final w:I

.field public final x:[I

.field public final y:[I


# direct methods
.method public constructor <init>(Lcom/samsung/android/wallpaper/live/smartcase/Sc00000001;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LN1/a;->v:I

    .line 1
    invoke-direct {p0, p1}, LN1/j;-><init>(LN1/k;)V

    const p1, 0x45673fff    # 3699.9998f

    .line 2
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, LN1/a;->w:I

    const/16 p1, -0x5a

    const/16 v0, 0x5a

    .line 3
    filled-new-array {p1, v0}, [I

    move-result-object p1

    iput-object p1, p0, LN1/a;->x:[I

    const/16 p1, -0x3c

    .line 4
    filled-new-array {p1, p1}, [I

    move-result-object p1

    iput-object p1, p0, LN1/a;->y:[I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/wallpaper/live/smartcase/Sc00000002;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LN1/a;->v:I

    .line 5
    invoke-direct {p0, p1}, LN1/j;-><init>(LN1/k;)V

    const p1, 0x44f9ffff    # 1999.9999f

    .line 6
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, LN1/a;->w:I

    const/16 p1, -0x5a

    const/16 v0, 0x5a

    .line 7
    filled-new-array {p1, v0}, [I

    move-result-object p1

    iput-object p1, p0, LN1/a;->x:[I

    const/16 p1, 0x1e

    .line 8
    filled-new-array {p1, p1}, [I

    move-result-object p1

    iput-object p1, p0, LN1/a;->y:[I

    return-void
.end method


# virtual methods
.method public final d()[I
    .locals 1

    iget v0, p0, LN1/a;->v:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LN1/a;->y:[I

    return-object p0

    :pswitch_0
    iget-object p0, p0, LN1/a;->y:[I

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e()I
    .locals 1

    iget v0, p0, LN1/a;->v:I

    packed-switch v0, :pswitch_data_0

    iget p0, p0, LN1/a;->w:I

    return p0

    :pswitch_0
    iget p0, p0, LN1/a;->w:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f()[I
    .locals 1

    iget v0, p0, LN1/a;->v:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LN1/a;->x:[I

    return-object p0

    :pswitch_0
    iget-object p0, p0, LN1/a;->x:[I

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g()Ljava/lang/String;
    .locals 0

    iget p0, p0, LN1/a;->v:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "blue_h265.mp4"

    return-object p0

    :pswitch_0
    const-string p0, "violet_h265.mp4"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreate(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget v0, p0, LN1/a;->v:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, LN1/j;->onCreate(Landroid/view/SurfaceHolder;)V

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->setFixedOrientation(ZZ)V

    return-void

    :pswitch_0
    invoke-super {p0, p1}, LN1/j;->onCreate(Landroid/view/SurfaceHolder;)V

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->setFixedOrientation(ZZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

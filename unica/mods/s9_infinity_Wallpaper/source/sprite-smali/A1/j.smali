.class public final synthetic LA1/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LA1/k;


# direct methods
.method public synthetic constructor <init>(LA1/k;I)V
    .locals 0

    iput p2, p0, LA1/j;->d:I

    iput-object p1, p0, LA1/j;->e:LA1/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, LA1/j;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LA1/j;->e:LA1/k;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FoldInteractive"

    const-string v2, "onSeekReady"

    invoke-static {v1, v2, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, LA1/k;->a:LA1/o;

    iget v0, p0, LA1/o;->f:I

    iget v1, p0, LA1/o;->g:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, LA1/o;->g(I)Z

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, LA1/j;->e:LA1/k;

    iget-object p0, p0, LA1/k;->a:LA1/o;

    iget-boolean v0, p0, LA1/o;->d:Z

    if-nez v0, :cond_1

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "FoldInteractive"

    const-string v1, "resurrection: not Initialized"

    invoke-static {v0, v1, p0}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LA1/o;->v:Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldResourceInfo;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, LA1/o;->b()Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldResourceInfo;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, LA1/o;->c(Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldResourceInfo;)V

    iget-boolean v0, p0, LA1/o;->d:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, LA1/o;->e:LA1/f;

    if-eqz v0, :cond_3

    iget v1, p0, LA1/o;->p:F

    const/4 v2, 0x1

    iput-boolean v2, v0, LA1/f;->k:Z

    invoke-virtual {v0, v1}, LA1/f;->d(F)V

    :cond_3
    invoke-virtual {p0}, LA1/o;->d()V

    :cond_4
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

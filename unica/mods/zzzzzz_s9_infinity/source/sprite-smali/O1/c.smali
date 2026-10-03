.class public final LO1/c;
.super Lcom/samsung/android/wallpaper/live/common/BaseWallpaperService$BaseEngine;
.source "SourceFile"


# instance fields
.field public d:Ljava/lang/String;

.field public e:Ln1/a;

.field public f:Landroid/view/SurfaceHolder;

.field public g:Ljava/lang/Object;

.field public final synthetic h:Lcom/samsung/android/wallpaper/live/suitcase/PhysicsWallpaper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/wallpaper/live/suitcase/PhysicsWallpaper;)V
    .locals 0

    iput-object p1, p0, LO1/c;->h:Lcom/samsung/android/wallpaper/live/suitcase/PhysicsWallpaper;

    invoke-direct {p0, p1}, Lcom/samsung/android/wallpaper/live/common/BaseWallpaperService$BaseEngine;-><init>(Lj1/a;)V

    const-string p1, "PhysicsWallpaper"

    iput-object p1, p0, LO1/c;->d:Ljava/lang/String;

    sget-object p0, Lcom/samsung/android/wallpaper/live/SpriteWallpaperApp;->d:Landroidx/recyclerview/widget/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;)V
    .locals 14

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_1
    const v0, 0x3f99999a    # 1.2f

    cmpg-float p1, p1, v0

    const-string v0, "getBaseContext(...)"

    iget-object v1, p0, LO1/c;->h:Lcom/samsung/android/wallpaper/live/suitcase/PhysicsWallpaper;

    if-nez p1, :cond_2

    new-instance p1, LW1/c;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, LO1/c;->e:Ln1/a;

    invoke-static {v4}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getWhich()I

    move-result v5

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, LW1/c;-><init>(Landroid/content/Context;Ln1/a;IZLandroid/os/Bundle;)V

    iput-object p0, p1, LW1/c;->M:LO1/c;

    iput-object p1, p0, LO1/c;->g:Ljava/lang/Object;

    goto :goto_2

    :cond_2
    new-instance p1, LS1/f;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v10, p0, LO1/c;->e:Ln1/a;

    invoke-static {v10}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getWhich()I

    move-result v11

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v12

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    move-object v8, p1

    invoke-direct/range {v8 .. v13}, LS1/f;-><init>(Landroid/content/Context;Ln1/a;IZLandroid/os/Bundle;)V

    iput-object p0, p1, LS1/f;->O:LO1/c;

    iput-object p1, p0, LO1/c;->g:Ljava/lang/Object;

    :goto_2
    return-void
.end method

.method public final getDisplayState()LH1/a;
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getDisplayState()LH1/a;

    move-result-object p0

    const-string v0, "getDisplayState(...)"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onApplyWindowInsets(Landroid/view/WindowInsets;)V

    iget-object p1, p0, LO1/c;->g:Ljava/lang/Object;

    if-eqz p1, :cond_0

    invoke-interface {p1}, LO1/a;->f()V

    :cond_0
    iget-object p0, p0, LO1/c;->d:Ljava/lang/String;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "onApplyWindowInsets"

    invoke-static {p0, v0, p1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 9

    const-string v0, "action"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "android.wallpaper.reapply"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, LO1/c;->d:Ljava/lang/String;

    const-string v1, "onCommand: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, LO1/c;->h:Lcom/samsung/android/wallpaper/live/suitcase/PhysicsWallpaper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getWhich()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/thumbnail.jpg"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/SurfaceHolder;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object v4

    if-eqz v4, :cond_3

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v2, v2, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    invoke-direct {v6, v2, v2, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v1, v5, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_3
    :goto_2
    iget-object v1, p0, LO1/c;->e:Ln1/a;

    if-eqz v1, :cond_4

    iget-object v1, v1, Ln1/a;->b:Ljava/lang/Object;

    check-cast v1, La2/q;

    iget-object v1, v1, La2/q;->q:La2/k;

    iget-object v1, v1, La2/k;->k:Ljava/lang/String;

    const-string v4, "tilt"

    invoke-static {v1, v4}, LV4/m;->o0(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/common/BaseWallpaperService$BaseEngine;->b()Lw0/i;

    move-result-object v1

    iget-object v4, p0, LO1/c;->g:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Lw0/i;->J(Ln1/c;)V

    :cond_4
    iget-object v1, p0, LO1/c;->g:Ljava/lang/Object;

    if-eqz v1, :cond_5

    invoke-interface {v1}, LO1/a;->clear()V

    :cond_5
    iget-object v1, p0, LO1/c;->e:Ln1/a;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ln1/a;->c()V

    :cond_6
    invoke-static {}, Lf2/g;->b()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, LO1/c;->g:Ljava/lang/Object;

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/samsung/android/view/SemWindowManager;->unregisterFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;)V

    :cond_7
    new-instance v1, Ln1/a;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "getBaseContext(...)"

    invoke-static {v4, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ln1/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, LO1/c;->e:Ln1/a;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v1, v4}, Ln1/a;->s(Landroid/os/Bundle;)La2/q;

    move-result-object v1

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getWhich()I

    move-result v4

    invoke-virtual {v1, v4}, Ln1/a;->r(I)La2/q;

    move-result-object v1

    :goto_3
    if-eqz v1, :cond_9

    invoke-virtual {v1}, La2/q;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_9
    move-object v1, v3

    :goto_4
    invoke-virtual {p0, v1}, LO1/c;->d(Ljava/lang/String;)V

    invoke-static {}, Lf2/g;->b()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, LO1/c;->g:Ljava/lang/Object;

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lcom/samsung/android/view/SemWindowManager;->registerFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;Landroid/os/Handler;)V

    :cond_a
    iget-object v1, p0, LO1/c;->f:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_b

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    goto :goto_5

    :cond_b
    move v1, v2

    :goto_5
    iget-object v3, p0, LO1/c;->f:Landroid/view/SurfaceHolder;

    if-eqz v3, :cond_c

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    goto :goto_6

    :cond_c
    move v3, v2

    :goto_6
    iget-object v4, p0, LO1/c;->d:Ljava/lang/String;

    const-string v5, "invalidate: "

    const-string v6, " x "

    invoke-static {v5, v6, v1, v3}, LB/a;->m(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, LO1/c;->f:Landroid/view/SurfaceHolder;

    invoke-virtual {p0, v4}, LO1/c;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    iget-object v4, p0, LO1/c;->f:Landroid/view/SurfaceHolder;

    invoke-virtual {p0, v4, v2, v1, v3}, LO1/c;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    invoke-static {}, Lf2/g;->b()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LL1/a;->getLidState(Landroid/content/Context;)I

    move-result v0

    sget v1, Lf2/g;->a:I

    if-ne v0, v1, :cond_d

    move v2, v3

    :cond_d
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz v2, :cond_10

    invoke-virtual {p0, v3}, LO1/c;->onVisibilityChanged(Z)V

    goto :goto_7

    :cond_e
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0, v3}, LO1/c;->onVisibilityChanged(Z)V

    goto :goto_7

    :cond_f
    iget-object v0, p0, LO1/c;->g:Ljava/lang/Object;

    if-eqz v0, :cond_10

    invoke-interface {v0, p2, p1, p5}, LO1/a;->b(ILjava/lang/String;Landroid/os/Bundle;)V

    :cond_10
    :goto_7
    invoke-super/range {p0 .. p6}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final onCreate(Landroid/view/SurfaceHolder;)V
    .locals 4

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LO1/c;->d:Ljava/lang/String;

    const-string v1, "_PREVIEW"

    invoke-static {v0, v1}, Li4/b;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LO1/c;->d:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, LO1/c;->d:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "onCreate"

    invoke-static {v0, v3, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/samsung/android/wallpaper/live/common/BaseWallpaperService$BaseEngine;->onCreate(Landroid/view/SurfaceHolder;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->setTouchEventsEnabled(Z)V

    invoke-virtual {p0, v1, v1}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->setFixedOrientation(ZZ)V

    invoke-static {p1}, LF3/k;->c(Ljava/lang/Object;)V

    iput-object p1, p0, LO1/c;->f:Landroid/view/SurfaceHolder;

    new-instance p1, Ln1/a;

    iget-object v0, p0, LO1/c;->h:Lcom/samsung/android/wallpaper/live/suitcase/PhysicsWallpaper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getBaseContext(...)"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ln1/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, LO1/c;->e:Ln1/a;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Ln1/a;->s(Landroid/os/Bundle;)La2/q;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getWhich()I

    move-result v0

    invoke-virtual {p1, v0}, Ln1/a;->r(I)La2/q;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p1, La2/q;->f:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object p1, v0

    :goto_1
    invoke-virtual {p0, p1}, LO1/c;->d(Ljava/lang/String;)V

    invoke-static {}, Lf2/g;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, LO1/c;->g:Ljava/lang/Object;

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/view/SemWindowManager;->registerFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;Landroid/os/Handler;)V

    :cond_3
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    iget-object v0, p0, LO1/c;->d:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onDestroy"

    invoke-static {v0, v2, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, LO1/c;->e:Ln1/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ln1/a;->q()La2/q;

    move-result-object v0

    invoke-virtual {v0}, La2/q;->b()La2/k;

    move-result-object v0

    invoke-virtual {v0}, La2/k;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tilt"

    invoke-static {v0, v1}, LV4/m;->o0(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/common/BaseWallpaperService$BaseEngine;->b()Lw0/i;

    move-result-object v0

    iget-object v1, p0, LO1/c;->g:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lw0/i;->J(Ln1/c;)V

    :cond_0
    invoke-static {}, Lf2/g;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LO1/c;->g:Ljava/lang/Object;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/view/SemWindowManager;->unregisterFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;)V

    :cond_1
    iget-object v0, p0, LO1/c;->g:Ljava/lang/Object;

    if-eqz v0, :cond_2

    invoke-interface {v0}, LO1/a;->clear()V

    :cond_2
    iget-object v0, p0, LO1/c;->e:Ln1/a;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ln1/a;->c()V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, LO1/c;->g:Ljava/lang/Object;

    invoke-super {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onDestroy()V

    return-void
.end method

.method public final onDisplayStateChanged(LH1/a;LH1/a;)V
    .locals 3

    iget-object v0, p0, LO1/c;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDisplayStateChanged : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, LO1/c;->g:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, LO1/a;->e(LH1/a;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onDisplayStateChanged(LH1/a;LH1/a;)V

    return-void
.end method

.method public final onOffsetsChanged(FFFFII)V
    .locals 0

    invoke-super/range {p0 .. p6}, Landroid/service/wallpaper/WallpaperService$Engine;->onOffsetsChanged(FFFFII)V

    iget-object p3, p0, LO1/c;->g:Ljava/lang/Object;

    if-eqz p3, :cond_0

    invoke-interface {p3}, LO1/a;->a()V

    :cond_0
    iget-object p0, p0, LO1/c;->d:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "onOffsetsChanged: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    iget-object p0, p0, LO1/c;->g:Ljava/lang/Object;

    if-eqz p0, :cond_0

    invoke-interface {p0, p3, p4}, LO1/a;->h(II)V

    :cond_0
    return-void
.end method

.method public final onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    iget-object p0, p0, LO1/c;->g:Ljava/lang/Object;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, LO1/a;->c(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onTouchEvent(Landroid/view/MotionEvent;)V

    iget-object p0, p0, LO1/c;->g:Ljava/lang/Object;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, LO1/a;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public final onVisibilityChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    iget-object v0, p0, LO1/c;->g:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, LO1/a;->g(Z)V

    :cond_0
    const-string v0, "tilt"

    if-eqz p1, :cond_2

    iget-object p1, p0, LO1/c;->e:Ln1/a;

    if-eqz p1, :cond_3

    iget-object v1, p1, Ln1/a;->b:Ljava/lang/Object;

    check-cast v1, La2/q;

    iget-object v1, v1, La2/q;->q:La2/k;

    iget-object v1, v1, La2/k;->k:Ljava/lang/String;

    invoke-static {v1, v0}, LV4/m;->o0(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/common/BaseWallpaperService$BaseEngine;->b()Lw0/i;

    move-result-object v0

    iget-object v1, p0, LO1/c;->g:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lw0/i;->F(Ln1/c;)V

    :cond_1
    iget-object p1, p1, Ln1/a;->b:Ljava/lang/Object;

    check-cast p1, La2/q;

    iget-object p1, p1, La2/q;->q:La2/k;

    iget-object p1, p1, La2/k;->k:Ljava/lang/String;

    const-string v0, "weather"

    invoke-static {p1, v0}, LV4/m;->o0(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object p1, LW4/B;->b:Lkotlinx/coroutines/scheduling/c;

    invoke-static {p1}, LW4/u;->a(Lu3/i;)Lkotlinx/coroutines/internal/c;

    move-result-object p1

    new-instance v0, LO1/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LO1/b;-><init>(LO1/c;Lu3/d;)V

    invoke-static {p1, v0}, LW4/u;->h(LW4/t;LE3/c;)LW4/x;

    goto :goto_0

    :cond_2
    iget-object p1, p0, LO1/c;->e:Ln1/a;

    if-eqz p1, :cond_3

    iget-object p1, p1, Ln1/a;->b:Ljava/lang/Object;

    check-cast p1, La2/q;

    iget-object p1, p1, La2/q;->q:La2/k;

    iget-object p1, p1, La2/k;->k:Ljava/lang/String;

    invoke-static {p1, v0}, LV4/m;->o0(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/common/BaseWallpaperService$BaseEngine;->b()Lw0/i;

    move-result-object p1

    iget-object p0, p0, LO1/c;->g:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lw0/i;->J(Ln1/c;)V

    :cond_3
    :goto_0
    return-void
.end method

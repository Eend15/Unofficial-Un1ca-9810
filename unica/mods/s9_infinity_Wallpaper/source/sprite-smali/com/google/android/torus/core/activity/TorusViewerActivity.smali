.class public abstract Lcom/google/android/torus/core/activity/TorusViewerActivity;
.super Landroidx/appcompat/app/k;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008&\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\'\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH&\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0019\u0010\u0011\u001a\u00020\u00042\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0015\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u0013\u0010\u0003J\u000f\u0010\u0014\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u0014\u0010\u0003J\u000f\u0010\u0015\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0003J\u0017\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001a\u001a\u00020\u000c8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\t\u001a\u00020\u00088\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u001c\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/google/android/torus/core/activity/TorusViewerActivity;",
        "Landroidx/appcompat/app/k;",
        "<init>",
        "()V",
        "Lq3/m;",
        "checkManifestAttributes",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/SurfaceView;",
        "surfaceView",
        "",
        "isPreview",
        "Lcom/google/android/torus/core/engine/TorusEngine;",
        "getWallpaperEngine",
        "(Landroid/content/Context;Landroid/view/SurfaceView;Z)Lcom/google/android/torus/core/engine/TorusEngine;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onResume",
        "onPause",
        "onDestroy",
        "Landroid/content/res/Configuration;",
        "newConfig",
        "onConfigurationChanged",
        "(Landroid/content/res/Configuration;)V",
        "wallpaperEngine",
        "Lcom/google/android/torus/core/engine/TorusEngine;",
        "Landroid/view/SurfaceView;",
        "torus_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private surfaceView:Landroid/view/SurfaceView;

.field private wallpaperEngine:Lcom/google/android/torus/core/engine/TorusEngine;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/fragment/app/w;-><init>()V

    invoke-virtual {p0}, Landroidx/activity/i;->getSavedStateRegistry()Ld0/e;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/app/i;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/i;-><init>(Lcom/google/android/torus/core/activity/TorusViewerActivity;)V

    const-string v2, "androidx:appcompat"

    invoke-virtual {v0, v2, v1}, Ld0/e;->c(Ljava/lang/String;Ld0/d;)V

    new-instance v0, Landroidx/appcompat/app/j;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/j;-><init>(Lcom/google/android/torus/core/activity/TorusViewerActivity;)V

    invoke-virtual {p0, v0}, Landroidx/activity/i;->addOnContextAvailableListener(Lc/b;)V

    return-void
.end method

.method public static final synthetic access$getWallpaperEngine$p(Lcom/google/android/torus/core/activity/TorusViewerActivity;)Lcom/google/android/torus/core/engine/TorusEngine;
    .locals 0

    iget-object p0, p0, Lcom/google/android/torus/core/activity/TorusViewerActivity;->wallpaperEngine:Lcom/google/android/torus/core/engine/TorusEngine;

    return-object p0
.end method

.method private final checkManifestAttributes()V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v0, 0x200

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    sget-object v0, LF3/t;->a:LF3/u;

    const-class v1, Lcom/google/android/torus/core/activity/TorusViewerActivity;

    invoke-virtual {v0, v1}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object v0

    invoke-interface {v0}, LL3/b;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, " has to include the attribute android:configChanges=\"uiMode\" in the AndroidManifest.xml"

    invoke-static {v0, v1}, Li4/b;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic e(Lcom/google/android/torus/core/activity/TorusViewerActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/torus/core/activity/TorusViewerActivity;->onCreate$lambda$1(Lcom/google/android/torus/core/activity/TorusViewerActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private static final onCreate$lambda$1(Lcom/google/android/torus/core/activity/TorusViewerActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/torus/core/activity/TorusViewerActivity;->wallpaperEngine:Lcom/google/android/torus/core/engine/TorusEngine;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/google/android/torus/core/engine/listener/TorusTouchListener;

    invoke-static {p2}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-interface {p0, p2}, Lcom/google/android/torus/core/engine/listener/TorusTouchListener;->onTouchEvent(Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "wallpaperEngine"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public abstract getWallpaperEngine(Landroid/content/Context;Landroid/view/SurfaceView;Z)Lcom/google/android/torus/core/engine/TorusEngine;
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const-string v0, "newConfig"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/appcompat/app/k;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/google/android/torus/core/activity/TorusViewerActivity;->wallpaperEngine:Lcom/google/android/torus/core/engine/TorusEngine;

    const/4 v0, 0x0

    const-string v1, "wallpaperEngine"

    if-eqz p0, :cond_2

    instance-of v2, p0, Lcom/google/android/torus/core/content/ConfigurationChangeListener;

    if-eqz v2, :cond_1

    if-eqz p0, :cond_0

    check-cast p0, Lcom/google/android/torus/core/content/ConfigurationChangeListener;

    invoke-interface {p0, p1}, Lcom/google/android/torus/core/content/ConfigurationChangeListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/fragment/app/w;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/google/android/torus/core/activity/TorusViewerActivity;->checkManifestAttributes()V

    new-instance p1, Landroid/view/SurfaceView;

    invoke-direct {p1, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/k;->setContentView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/google/android/torus/core/activity/TorusViewerActivity;->surfaceView:Landroid/view/SurfaceView;

    const/4 v0, 0x1

    invoke-virtual {p0, p0, p1, v0}, Lcom/google/android/torus/core/activity/TorusViewerActivity;->getWallpaperEngine(Landroid/content/Context;Landroid/view/SurfaceView;Z)Lcom/google/android/torus/core/engine/TorusEngine;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/torus/core/activity/TorusViewerActivity;->wallpaperEngine:Lcom/google/android/torus/core/engine/TorusEngine;

    const/4 v1, 0x0

    const-string v2, "wallpaperEngine"

    if-eqz p1, :cond_4

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1}, Lcom/google/android/torus/core/engine/TorusEngine$DefaultImpls;->create$default(Lcom/google/android/torus/core/engine/TorusEngine;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/torus/core/activity/TorusViewerActivity;->surfaceView:Landroid/view/SurfaceView;

    const-string v0, "surfaceView"

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    new-instance v3, Lcom/google/android/torus/core/activity/TorusViewerActivity$onCreate$2;

    invoke-direct {v3, p0}, Lcom/google/android/torus/core/activity/TorusViewerActivity$onCreate$2;-><init>(Lcom/google/android/torus/core/activity/TorusViewerActivity;)V

    invoke-interface {p1, v3}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object p1, p0, Lcom/google/android/torus/core/activity/TorusViewerActivity;->wallpaperEngine:Lcom/google/android/torus/core/engine/TorusEngine;

    if-eqz p1, :cond_2

    instance-of p1, p1, Lcom/google/android/torus/core/engine/listener/TorusTouchListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/torus/core/activity/TorusViewerActivity;->surfaceView:Landroid/view/SurfaceView;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/android/torus/core/activity/a;

    invoke-direct {v0, p0}, Lcom/google/android/torus/core/activity/a;-><init>(Lcom/google/android/torus/core/activity/TorusViewerActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, LF3/k;->m(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {v2}, LF3/k;->m(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v0}, LF3/k;->m(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-static {v2}, LF3/k;->m(Ljava/lang/String;)V

    throw v1
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroidx/appcompat/app/k;->onDestroy()V

    iget-object p0, p0, Lcom/google/android/torus/core/activity/TorusViewerActivity;->wallpaperEngine:Lcom/google/android/torus/core/engine/TorusEngine;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Lcom/google/android/torus/core/engine/TorusEngine$DefaultImpls;->destroy$default(Lcom/google/android/torus/core/engine/TorusEngine;ZILjava/lang/Object;)V

    return-void

    :cond_0
    const-string p0, "wallpaperEngine"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    throw v0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/w;->onPause()V

    iget-object p0, p0, Lcom/google/android/torus/core/activity/TorusViewerActivity;->wallpaperEngine:Lcom/google/android/torus/core/engine/TorusEngine;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/android/torus/core/engine/TorusEngine;->pause()V

    return-void

    :cond_0
    const-string p0, "wallpaperEngine"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/w;->onResume()V

    iget-object p0, p0, Lcom/google/android/torus/core/activity/TorusViewerActivity;->wallpaperEngine:Lcom/google/android/torus/core/engine/TorusEngine;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/android/torus/core/engine/TorusEngine;->resume()V

    return-void

    :cond_0
    const-string p0, "wallpaperEngine"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

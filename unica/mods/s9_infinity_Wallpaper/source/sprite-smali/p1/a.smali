.class public final Lp1/a;
.super Lcom/samsung/android/nexus/egl/core/SurfaceView;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lp1/b;


# direct methods
.method public constructor <init>(Lp1/b;Landroid/content/Context;Lcom/samsung/android/nexus/egl/core/SurfaceCallback;)V
    .locals 0

    iput-object p1, p0, Lp1/a;->d:Lp1/b;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/nexus/egl/core/SurfaceView;-><init>(Landroid/content/Context;Lcom/samsung/android/nexus/egl/core/SurfaceCallback;)V

    return-void
.end method


# virtual methods
.method public final getHolder()Landroid/view/SurfaceHolder;
    .locals 0

    iget-object p0, p0, Lp1/a;->d:Lp1/b;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    return-object p0
.end method

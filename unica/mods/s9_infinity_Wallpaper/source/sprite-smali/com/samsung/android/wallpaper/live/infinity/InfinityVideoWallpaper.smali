.class public Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper;
.super Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;
    }
.end annotation


# static fields
.field public static final e:Z


# instance fields
.field public d:Lw0/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, LM1/g;->c()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;-><init>()V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final onCreate()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;->onCreate()V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "InfinityWallpaper"

    const-string v1, "onCreate"

    invoke-static {v0, v1, p0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    new-instance v0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;

    invoke-direct {v0, p0, p0}, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;-><init>(Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper;Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper;)V

    return-object v0
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "InfinityWallpaper"

    const-string v1, "onDestroy"

    invoke-static {v0, v1, p0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

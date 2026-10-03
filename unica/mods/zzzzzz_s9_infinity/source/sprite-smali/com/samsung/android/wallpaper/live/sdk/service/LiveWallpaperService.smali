.class public abstract Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;
.super Landroid/service/wallpaper/WallpaperService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;
    }
.end annotation

.annotation build Le/a;
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "LiveWallpaperService"


# instance fields
.field private mEngineManager:Lcom/samsung/android/wallpaper/live/sdk/service/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, LM1/g;->c()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;)Lcom/samsung/android/wallpaper/live/sdk/service/a;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;->mEngineManager:Lcom/samsung/android/wallpaper/live/sdk/service/a;

    return-object p0
.end method

.method public static bridge synthetic b()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;->DEBUG:Z

    return v0
.end method


# virtual methods
.method public onCreate()V
    .locals 1
    .annotation build Le/a;
    .end annotation

    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onCreate()V

    invoke-static {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/a;->b(Landroid/content/Context;)Lcom/samsung/android/wallpaper/live/sdk/service/a;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;->mEngineManager:Lcom/samsung/android/wallpaper/live/sdk/service/a;

    return-void
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 0
    .annotation build Le/a;
    .end annotation

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreateEngine(I)Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 0
    .annotation build Le/a;
    .end annotation

    .line 2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final onCreateSubEngine(I)Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 0
    .annotation build Le/a;
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;->onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;

    move-result-object p0

    return-object p0
.end method

.class public Lcom/samsung/android/wallpaper/live/smartcase/Sc00000001;
.super LN1/k;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    new-instance v0, LN1/a;

    invoke-direct {v0, p0}, LN1/a;-><init>(Lcom/samsung/android/wallpaper/live/smartcase/Sc00000001;)V

    return-object v0
.end method

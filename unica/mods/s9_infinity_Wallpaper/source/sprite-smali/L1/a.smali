.class public abstract LL1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sMethodGetLidState:Ljava/lang/reflect/Method;

.field private static final sMethodGetWallpaperAssetFile:Ljava/lang/reflect/Method;

.field private static final sMethodGetWallpaperExtras:Ljava/lang/reflect/Method;

.field private static final sMethodSemClearWallpaperThumbnailCache:Ljava/lang/reflect/Method;

.field private static final sMethodSemGetWallpaperColors:Ljava/lang/reflect/Method;

.field private static final sMethodSemRequestWallpaperColorsAnalysis:Ljava/lang/reflect/Method;

.field private static final sMethodSetWallpaperComponent:Ljava/lang/reflect/Method;

.field private static final sMethodWallpaperSupportsWcg:Ljava/lang/reflect/Method;

.field private static final sMethodclearWallpaper:Ljava/lang/reflect/Method;

.field private static final sMethodsetWallpaperComponentWithExtras:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v0}, [Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/app/WallpaperManager;

    const-string v3, "getWallpaperExtras"

    invoke-static {v2, v3, v1}, LK/I;->L(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, LL1/a;->sMethodGetWallpaperExtras:Ljava/lang/reflect/Method;

    const-class v1, Ljava/lang/String;

    filled-new-array {v0, v0, v1}, [Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getWallpaperAssetFile"

    invoke-static {v2, v4, v3}, LK/I;->L(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, LL1/a;->sMethodGetWallpaperAssetFile:Ljava/lang/reflect/Method;

    const-string v3, "semGetWallpaperColors"

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v4

    invoke-static {v2, v3, v4}, LK/I;->L(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, LL1/a;->sMethodSemGetWallpaperColors:Ljava/lang/reflect/Method;

    const-class v3, Landroid/graphics/Bitmap;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    const-string v4, "wallpaperSupportsWcg"

    invoke-static {v2, v4, v3}, LK/I;->L(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, LL1/a;->sMethodWallpaperSupportsWcg:Ljava/lang/reflect/Method;

    const-string v3, "semClearWallpaperThumbnailCache"

    filled-new-array {v0, v0}, [Ljava/lang/Class;

    move-result-object v4

    invoke-static {v2, v3, v4}, LK/I;->L(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, LL1/a;->sMethodSemClearWallpaperThumbnailCache:Ljava/lang/reflect/Method;

    const-string v3, "semRequestWallpaperColorsAnalysis"

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v4

    invoke-static {v2, v3, v4}, LK/I;->L(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, LL1/a;->sMethodSemRequestWallpaperColorsAnalysis:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    const-string v4, "getLidState"

    invoke-static {v2, v4, v3}, LK/I;->L(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, LL1/a;->sMethodGetLidState:Ljava/lang/reflect/Method;

    const-class v3, Landroid/content/ComponentName;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v4

    const-string v5, "setWallpaperComponent"

    invoke-static {v2, v5, v4}, LK/I;->L(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, LL1/a;->sMethodSetWallpaperComponent:Ljava/lang/reflect/Method;

    const-class v4, Landroid/os/Bundle;

    filled-new-array {v0, v3, v1, v0, v4}, [Ljava/lang/Class;

    move-result-object v1

    const-string v3, "setWallpaperComponentWithExtras"

    invoke-static {v2, v3, v1}, LK/I;->L(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, LL1/a;->sMethodsetWallpaperComponentWithExtras:Ljava/lang/reflect/Method;

    const-string v1, "clearWallpaper"

    filled-new-array {v0, v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-static {v2, v1, v0}, LK/I;->L(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, LL1/a;->sMethodclearWallpaper:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static clearWallpaper(Landroid/content/Context;II)V
    .locals 1

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    sget-object v0, LL1/a;->sMethodclearWallpaper:Ljava/lang/reflect/Method;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, LK/I;->U(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getLidState(Landroid/content/Context;)I
    .locals 2

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    sget-object v0, LL1/a;->sMethodGetLidState:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, LK/I;->U(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getWallpaperAssetFile(Landroid/content/Context;ILjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    sget-object v0, LL1/a;->sMethodGetWallpaperAssetFile:Ljava/lang/reflect/Method;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {}, LM1/h;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, LK/I;->U(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/ParcelFileDescriptor;

    return-object p0
.end method

.method public static getWallpaperExtras(Landroid/content/Context;I)Landroid/os/Bundle;
    .locals 2

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    sget-object v0, LL1/a;->sMethodGetWallpaperExtras:Ljava/lang/reflect/Method;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {}, LM1/h;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, LK/I;->U(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0
.end method

.method public static semClearWallpaperThumbnailCache(Landroid/content/Context;I)V
    .locals 2

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    sget-object v0, LL1/a;->sMethodSemClearWallpaperThumbnailCache:Ljava/lang/reflect/Method;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {}, LM1/h;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, LK/I;->U(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static semGetWallpaperColors(Landroid/content/Context;I)Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    sget-object v0, LL1/a;->sMethodSemGetWallpaperColors:Ljava/lang/reflect/Method;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, LK/I;->U(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static semRequestWallpaperColorsAnalysis(Landroid/content/Context;I)V
    .locals 1

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    sget-object v0, LL1/a;->sMethodSemRequestWallpaperColorsAnalysis:Ljava/lang/reflect/Method;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, LK/I;->U(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setWallpaperComponent(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 1

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    sget-object v0, LL1/a;->sMethodSetWallpaperComponent:Ljava/lang/reflect/Method;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, LK/I;->U(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static setWallpaperComponentWithExtras(Landroid/content/Context;ILandroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;)Z
    .locals 1

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    sget-object v0, LL1/a;->sMethodsetWallpaperComponentWithExtras:Ljava/lang/reflect/Method;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4, p5}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, LK/I;->U(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static wallpaperSupportsWcg(Landroid/content/Context;Landroid/graphics/Bitmap;)Z
    .locals 1

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    sget-object v0, LL1/a;->sMethodWallpaperSupportsWcg:Ljava/lang/reflect/Method;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, LK/I;->U(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

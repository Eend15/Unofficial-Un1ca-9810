.class final Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider$updateWallpaper$1;
.super Lw3/g;
.source "SourceFile"

# interfaces
.implements LE3/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;->updateWallpaper(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lw3/g;",
        "LE3/c;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "LW4/t;",
        "Lq3/m;",
        "<anonymous>",
        "(LW4/t;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
.end annotation

.annotation runtime Lw3/e;
    c = "com.samsung.android.wallpaper.live.weather.effects.provider.WeatherEffectsContentProvider$updateWallpaper$1"
    f = "WeatherEffectsContentProvider.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $backgroundPfd:Landroid/os/ParcelFileDescriptor;

.field final synthetic $fgObjBounds:Landroid/graphics/Rect;

.field final synthetic $foregroundPfd:Landroid/os/ParcelFileDescriptor;

.field final synthetic $hasObject:Z

.field final synthetic $isNight:Z

.field final synthetic $isOutdoor:Z

.field final synthetic $weatherType:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;


# direct methods
.method public constructor <init>(Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/graphics/Rect;Ljava/lang/String;ZZZLu3/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Rect;",
            "Ljava/lang/String;",
            "ZZZ",
            "Lu3/d<",
            "-",
            "Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider$updateWallpaper$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider$updateWallpaper$1;->this$0:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;

    iput-object p2, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider$updateWallpaper$1;->$foregroundPfd:Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider$updateWallpaper$1;->$backgroundPfd:Landroid/os/ParcelFileDescriptor;

    iput-object p4, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider$updateWallpaper$1;->$fgObjBounds:Landroid/graphics/Rect;

    iput-object p5, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider$updateWallpaper$1;->$weatherType:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider$updateWallpaper$1;->$isOutdoor:Z

    iput-boolean p7, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider$updateWallpaper$1;->$isNight:Z

    iput-boolean p8, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider$updateWallpaper$1;->$hasObject:Z

    invoke-direct {p0, p9}, Lw3/g;-><init>(Lu3/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lu3/d;)Lu3/d;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lu3/d<",
            "*>;)",
            "Lu3/d<",
            "Lq3/m;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider$updateWallpaper$1;

    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider$updateWallpaper$1;->this$0:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;

    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider$updateWallpaper$1;->$foregroundPfd:Landroid/os/ParcelFileDescriptor;

    iget-object v3, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider$updateWallpaper$1;->$backgroundPfd:Landroid/os/ParcelFileDescriptor;

    iget-object v4, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider$updateWallpaper$1;->$fgObjBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider$updateWallpaper$1;->$weatherType:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider$updateWallpaper$1;->$isOutdoor:Z

    iget-boolean v7, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider$updateWallpaper$1;->$isNight:Z

    iget-boolean v8, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider$updateWallpaper$1;->$hasObject:Z

    move-object v0, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider$updateWallpaper$1;-><init>(Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/graphics/Rect;Ljava/lang/String;ZZZLu3/d;)V

    return-object p1
.end method

.method public final invoke(LW4/t;Lu3/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LW4/t;",
            "Lu3/d<",
            "-",
            "Lq3/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider$updateWallpaper$1;->create(Ljava/lang/Object;Lu3/d;)Lu3/d;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider$updateWallpaper$1;

    sget-object p1, Lq3/m;->a:Lq3/m;

    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider$updateWallpaper$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, LW4/t;

    check-cast p2, Lu3/d;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider$updateWallpaper$1;->invoke(LW4/t;Lu3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lv3/a;->d:Lv3/a;

    iget v0, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider$updateWallpaper$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lp4/g;->X(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider$updateWallpaper$1;->this$0:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;

    invoke-virtual {p1}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;->getInteractor()Lq2/a;

    move-result-object p1

    new-instance v8, Lv2/b;

    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider$updateWallpaper$1;->$foregroundPfd:Landroid/os/ParcelFileDescriptor;

    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider$updateWallpaper$1;->$backgroundPfd:Landroid/os/ParcelFileDescriptor;

    iget-object v3, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider$updateWallpaper$1;->$fgObjBounds:Landroid/graphics/Rect;

    sget-object v0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;->Companion:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect$Companion;

    iget-object v4, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider$updateWallpaper$1;->$weatherType:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect$Companion;->fromStringValue(Ljava/lang/String;)Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider$updateWallpaper$1;->$isOutdoor:Z

    iget-boolean v6, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider$updateWallpaper$1;->$isNight:Z

    iget-boolean v7, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider$updateWallpaper$1;->$hasObject:Z

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lv2/b;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/graphics/Rect;Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;ZZZ)V

    invoke-virtual {p1, v8}, Lq2/a;->b(Lv2/b;)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

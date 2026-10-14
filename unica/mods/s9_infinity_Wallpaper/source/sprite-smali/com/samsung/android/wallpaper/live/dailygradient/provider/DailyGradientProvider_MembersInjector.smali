.class public final Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientProvider_MembersInjector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg3/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg3/a;"
    }
.end annotation


# instance fields
.field private final deviceGradientRatioProvider:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a;"
        }
    .end annotation
.end field

.field private final getCurrentWeatherDataProvider:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo3/a;Lo3/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a;",
            "Lo3/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientProvider_MembersInjector;->getCurrentWeatherDataProvider:Lo3/a;

    iput-object p2, p0, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientProvider_MembersInjector;->deviceGradientRatioProvider:Lo3/a;

    return-void
.end method

.method public static create(Lo3/a;Lo3/a;)Lg3/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a;",
            "Lo3/a;",
            ")",
            "Lg3/a;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientProvider_MembersInjector;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientProvider_MembersInjector;-><init>(Lo3/a;Lo3/a;)V

    return-object v0
.end method

.method public static injectDeviceGradientRatio(Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientProvider;Lw1/e;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientProvider;->deviceGradientRatio:Lw1/e;

    return-void
.end method

.method public static injectGetCurrentWeatherData(Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientProvider;Ls1/b;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientProvider;->getCurrentWeatherData:Ls1/b;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientProvider;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientProvider_MembersInjector;->getCurrentWeatherDataProvider:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/b;

    invoke-static {p1, v0}, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientProvider_MembersInjector;->injectGetCurrentWeatherData(Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientProvider;Ls1/b;)V

    .line 3
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientProvider_MembersInjector;->deviceGradientRatioProvider:Lo3/a;

    invoke-interface {p0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw1/e;

    invoke-static {p1, p0}, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientProvider_MembersInjector;->injectDeviceGradientRatio(Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientProvider;Lw1/e;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientProvider;

    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientProvider_MembersInjector;->injectMembers(Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientProvider;)V

    return-void
.end method

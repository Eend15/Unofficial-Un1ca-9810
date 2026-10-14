.class public final La/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:La/d;

.field public static final b:Lkotlinx/coroutines/flow/e;

.field public static final c:Lkotlinx/coroutines/flow/e;

.field public static final d:Lkotlinx/coroutines/flow/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, La/d;->a:La/d;

    invoke-static {}, Lkotlinx/coroutines/flow/f;->a()Lkotlinx/coroutines/flow/e;

    move-result-object v0

    sput-object v0, La/d;->b:Lkotlinx/coroutines/flow/e;

    invoke-static {}, Lkotlinx/coroutines/flow/f;->a()Lkotlinx/coroutines/flow/e;

    move-result-object v0

    sput-object v0, La/d;->c:Lkotlinx/coroutines/flow/e;

    invoke-static {}, Lkotlinx/coroutines/flow/f;->a()Lkotlinx/coroutines/flow/e;

    move-result-object v0

    sput-object v0, La/d;->d:Lkotlinx/coroutines/flow/e;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lw3/c;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, La/c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, La/c;

    iget v1, v0, La/c;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, La/c;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, La/c;

    invoke-direct {v0, p0, p2}, La/c;-><init>(La/d;Lw3/c;)V

    :goto_0
    iget-object p0, v0, La/c;->e:Ljava/lang/Object;

    sget-object p2, Lv3/a;->d:Lv3/a;

    iget v1, v0, La/c;->g:I

    sget-object v2, Lq3/m;->a:Lq3/m;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_2

    if-ne v1, v4, :cond_1

    invoke-static {p0}, Lp4/g;->X(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p1, v0, La/c;->d:Lcom/samsung/android/weather/api/entity/settings/Setting;

    invoke-static {p0}, Lp4/g;->X(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p0}, Lp4/g;->X(Ljava/lang/Object;)V

    sget-object p0, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    if-nez p0, :cond_4

    invoke-static {}, LR3/f;->b()Lcom/samsung/android/weather/api/source/WeatherCacheManager;

    move-result-object p0

    sput-object p0, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    :cond_4
    sget-object p0, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    if-eqz p0, :cond_7

    invoke-static {}, Lm3/d;->b()Lcom/samsung/android/weather/api/entity/profile/Profile;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/samsung/android/weather/api/source/WeatherStorageApi;->updateProfile(Lcom/samsung/android/weather/api/entity/profile/Profile;)V

    invoke-static {v1}, Lm3/d;->d(Lcom/samsung/android/weather/api/entity/profile/Profile;)Lcom/samsung/android/weather/api/entity/settings/Setting;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {p0, v1}, Lcom/samsung/android/weather/api/source/WeatherStorageApi;->updateSetting(Lcom/samsung/android/weather/api/entity/settings/Setting;)V

    invoke-static {p1, v1}, Lm3/d;->j(Landroid/content/Context;Lcom/samsung/android/weather/api/entity/settings/Setting;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/weather/api/source/WeatherStorageApi;->updateWeather(Ljava/util/List;)I

    iput-object v1, v0, La/c;->d:Lcom/samsung/android/weather/api/entity/settings/Setting;

    iput v5, v0, La/c;->g:I

    sget-object p0, La/d;->b:Lkotlinx/coroutines/flow/e;

    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/flow/e;->a(Ljava/lang/Object;Lw3/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p2, :cond_5

    return-object p2

    :cond_5
    move-object p1, v1

    :goto_1
    iput-object v3, v0, La/c;->d:Lcom/samsung/android/weather/api/entity/settings/Setting;

    iput v4, v0, La/c;->g:I

    sget-object p0, La/d;->c:Lkotlinx/coroutines/flow/e;

    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/flow/e;->a(Ljava/lang/Object;Lw3/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p2, :cond_6

    return-object p2

    :cond_6
    :goto_2
    return-object v2

    :cond_7
    const-string p0, "storage"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    throw v3
.end method

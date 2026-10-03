.class public final Lu1/a;
.super Lw3/g;
.source "SourceFile"

# interfaces
.implements LE3/c;


# instance fields
.field public d:I

.field public final synthetic e:Lu1/b;


# direct methods
.method public constructor <init>(Lu1/b;Lu3/d;)V
    .locals 0

    iput-object p1, p0, Lu1/a;->e:Lu1/b;

    invoke-direct {p0, p2}, Lw3/g;-><init>(Lu3/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lu3/d;)Lu3/d;
    .locals 0

    new-instance p1, Lu1/a;

    iget-object p0, p0, Lu1/a;->e:Lu1/b;

    invoke-direct {p1, p0, p2}, Lu1/a;-><init>(Lu1/b;Lu3/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LW4/t;

    check-cast p2, Lu3/d;

    invoke-virtual {p0, p1, p2}, Lu1/a;->create(Ljava/lang/Object;Lu3/d;)Lu3/d;

    move-result-object p0

    check-cast p0, Lu1/a;

    sget-object p1, Lq3/m;->a:Lq3/m;

    invoke-virtual {p0, p1}, Lu1/a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lv3/a;->d:Lv3/a;

    iget v1, p0, Lu1/a;->d:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lp4/g;->X(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lp4/g;->X(Ljava/lang/Object;)V

    sget-object p1, Lcom/samsung/android/weather/api/WeatherApi;->INSTANCE:Lcom/samsung/android/weather/api/WeatherApi;

    invoke-virtual {p1}, Lcom/samsung/android/weather/api/WeatherApi;->observeWeatherChange()Lkotlinx/coroutines/flow/a;

    move-result-object p1

    new-instance v1, Landroidx/recyclerview/widget/y;

    iget-object v3, p0, Lu1/a;->e:Lu1/b;

    const/16 v4, 0x12

    invoke-direct {v1, v4, v3}, Landroidx/recyclerview/widget/y;-><init>(ILjava/lang/Object;)V

    iput v2, p0, Lu1/a;->d:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/a;->b(Lkotlinx/coroutines/flow/b;Lu3/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0
.end method

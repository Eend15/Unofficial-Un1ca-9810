.class public final LN2/a;
.super Lw3/g;
.source "SourceFile"

# interfaces
.implements LE3/c;


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lcom/samsung/android/wallpaper/magician/core/weather/service/GenerateAllService;

.field public final synthetic f:LH2/a;


# direct methods
.method public constructor <init>(Lcom/samsung/android/wallpaper/magician/core/weather/service/GenerateAllService;LH2/a;Lu3/d;)V
    .locals 0

    iput-object p1, p0, LN2/a;->e:Lcom/samsung/android/wallpaper/magician/core/weather/service/GenerateAllService;

    iput-object p2, p0, LN2/a;->f:LH2/a;

    invoke-direct {p0, p3}, Lw3/g;-><init>(Lu3/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lu3/d;)Lu3/d;
    .locals 2

    new-instance v0, LN2/a;

    iget-object v1, p0, LN2/a;->e:Lcom/samsung/android/wallpaper/magician/core/weather/service/GenerateAllService;

    iget-object p0, p0, LN2/a;->f:LH2/a;

    invoke-direct {v0, v1, p0, p2}, LN2/a;-><init>(Lcom/samsung/android/wallpaper/magician/core/weather/service/GenerateAllService;LH2/a;Lu3/d;)V

    iput-object p1, v0, LN2/a;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LW4/t;

    check-cast p2, Lu3/d;

    invoke-virtual {p0, p1, p2}, LN2/a;->create(Ljava/lang/Object;Lu3/d;)Lu3/d;

    move-result-object p0

    check-cast p0, LN2/a;

    sget-object p1, Lq3/m;->a:Lq3/m;

    invoke-virtual {p0, p1}, LN2/a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lv3/a;->d:Lv3/a;

    invoke-static {p1}, Lp4/g;->X(Ljava/lang/Object;)V

    iget-object p1, p0, LN2/a;->d:Ljava/lang/Object;

    check-cast p1, LW4/t;

    iget-object p1, p0, LN2/a;->e:Lcom/samsung/android/wallpaper/magician/core/weather/service/GenerateAllService;

    iget-object v0, p1, Lcom/samsung/android/wallpaper/magician/core/weather/service/GenerateAllService;->e:LI2/b;

    const-string v1, "notifier"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    new-instance v9, LI2/a;

    iget-object p0, p0, LN2/a;->f:LH2/a;

    iget-object v8, p0, LH2/a;->a:Ljava/lang/String;

    invoke-static {v8}, LF3/k;->c(Ljava/lang/Object;)V

    iget-wide v6, p0, LH2/a;->b:J

    iget v4, p0, LH2/a;->c:I

    const/16 v5, 0xa

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, LI2/a;-><init>(IIJLjava/lang/String;)V

    invoke-virtual {v0, v9}, LI2/b;->a(Ljava/lang/Object;)V

    new-instance v0, LF3/r;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v3, p1, Lcom/samsung/android/wallpaper/magician/core/weather/service/GenerateAllService;->d:LF2/d;

    if-eqz v3, :cond_2

    iget v4, p0, LH2/a;->d:I

    invoke-virtual {v3, v4}, LF2/d;->a(I)LF2/c;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, LF2/a;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, LF2/a;-><init>(LH2/a;I)V

    new-instance v5, LA1/h;

    const/4 v6, 0x3

    invoke-direct {v5, v6, v0}, LA1/h;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v4, v5}, LF2/c;->e(LF2/a;Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    const/16 v3, 0x190

    iput v3, v0, LF3/r;->d:I

    :goto_0
    iget-object v3, p1, Lcom/samsung/android/wallpaper/magician/core/weather/service/GenerateAllService;->e:LI2/b;

    if-eqz v3, :cond_1

    new-instance v1, LI2/a;

    iget-object v9, p0, LH2/a;->a:Ljava/lang/String;

    invoke-static {v9}, LF3/k;->c(Ljava/lang/Object;)V

    iget-wide v7, p0, LH2/a;->b:J

    iget v5, p0, LH2/a;->c:I

    iget v6, v0, LF3/r;->d:I

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, LI2/a;-><init>(IIJLjava/lang/String;)V

    invoke-virtual {v3, v1}, LI2/b;->a(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0

    :cond_1
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string p0, "generateAllUseCaseFactory"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v2
.end method

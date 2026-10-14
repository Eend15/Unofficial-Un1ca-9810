.class public final Lm3/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lm3/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm3/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lm3/h;->a:Lm3/h;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lu3/d;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lm3/g;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lm3/g;

    iget v1, v0, Lm3/g;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lm3/g;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lm3/g;

    invoke-direct {v0, p0, p2}, Lm3/g;-><init>(Lm3/h;Lu3/d;)V

    :goto_0
    iget-object p0, v0, Lm3/g;->d:Ljava/lang/Object;

    sget-object p2, Lv3/a;->d:Lv3/a;

    iget v1, v0, Lm3/g;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p0}, Lp4/g;->X(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p0}, Lp4/g;->X(Ljava/lang/Object;)V

    invoke-static {p1}, LR3/f;->e(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, La/d;->a:La/d;

    iput v2, v0, Lm3/g;->f:I

    invoke-virtual {p0, p1, v0}, La/d;->a(Landroid/content/Context;Lw3/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p2, :cond_4

    return-object p2

    :cond_3
    const-string p0, "WPI"

    const-string p1, "WeatherApiConfigurator.init should be done."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :cond_4
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

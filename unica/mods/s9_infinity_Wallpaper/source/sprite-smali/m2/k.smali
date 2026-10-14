.class public final Lm2/k;
.super Lw3/g;
.source "SourceFile"

# interfaces
.implements LE3/c;


# instance fields
.field public d:I

.field public final synthetic e:Lm2/n;


# direct methods
.method public constructor <init>(Lm2/n;Lu3/d;)V
    .locals 0

    iput-object p1, p0, Lm2/k;->e:Lm2/n;

    invoke-direct {p0, p2}, Lw3/g;-><init>(Lu3/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lu3/d;)Lu3/d;
    .locals 0

    new-instance p1, Lm2/k;

    iget-object p0, p0, Lm2/k;->e:Lm2/n;

    invoke-direct {p1, p0, p2}, Lm2/k;-><init>(Lm2/n;Lu3/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LW4/t;

    check-cast p2, Lu3/d;

    invoke-virtual {p0, p1, p2}, Lm2/k;->create(Ljava/lang/Object;Lu3/d;)Lu3/d;

    move-result-object p0

    check-cast p0, Lm2/k;

    sget-object p1, Lq3/m;->a:Lq3/m;

    invoke-virtual {p0, p1}, Lm2/k;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lv3/a;->d:Lv3/a;

    iget v1, p0, Lm2/k;->d:I

    iget-object v2, p0, Lm2/k;->e:Lm2/n;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lp4/g;->X(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lp4/g;->X(Ljava/lang/Object;)V

    sget p1, Lm2/n;->O:I

    invoke-virtual {v2}, Lm2/n;->i()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "redrawForWatermark"

    invoke-static {p1, v4, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput v3, p0, Lm2/k;->d:I

    const-wide/16 v3, 0x64

    invoke-static {v3, v4, p0}, LW4/u;->c(JLw3/g;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget p1, Lm2/n;->O:I

    invoke-virtual {v2, p0}, Lm2/n;->m(Ljava/lang/Boolean;)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0
.end method

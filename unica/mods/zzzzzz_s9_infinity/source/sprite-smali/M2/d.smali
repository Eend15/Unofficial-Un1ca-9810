.class public final LM2/d;
.super Lw3/g;
.source "SourceFile"

# interfaces
.implements LE3/c;


# instance fields
.field public d:I

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:LE3/a;


# direct methods
.method public constructor <init>(LE3/a;Lu3/d;)V
    .locals 0

    iput-object p1, p0, LM2/d;->f:LE3/a;

    invoke-direct {p0, p2}, Lw3/g;-><init>(Lu3/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lu3/d;)Lu3/d;
    .locals 1

    new-instance v0, LM2/d;

    iget-object p0, p0, LM2/d;->f:LE3/a;

    invoke-direct {v0, p0, p2}, LM2/d;-><init>(LE3/a;Lu3/d;)V

    iput-object p1, v0, LM2/d;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LW4/t;

    check-cast p2, Lu3/d;

    invoke-virtual {p0, p1, p2}, LM2/d;->create(Ljava/lang/Object;Lu3/d;)Lu3/d;

    move-result-object p0

    check-cast p0, LM2/d;

    sget-object p1, Lq3/m;->a:Lq3/m;

    invoke-virtual {p0, p1}, LM2/d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lv3/a;->d:Lv3/a;

    iget v1, p0, LM2/d;->d:I

    iget-object v2, p0, LM2/d;->f:LE3/a;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, LM2/d;->e:Ljava/lang/Object;

    check-cast v1, LW4/t;

    invoke-static {p1}, Lp4/g;->X(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lp4/g;->X(Ljava/lang/Object;)V

    iget-object p1, p0, LM2/d;->e:Ljava/lang/Object;

    check-cast p1, LW4/t;

    move-object v1, p1

    :goto_0
    invoke-interface {v1}, LW4/t;->c()Lu3/i;

    move-result-object p1

    sget-object v4, LW4/r;->e:LW4/r;

    invoke-interface {p1, v4}, Lu3/i;->W(Lu3/h;)Lu3/g;

    move-result-object p1

    check-cast p1, LW4/P;

    if-eqz p1, :cond_2

    invoke-interface {p1}, LW4/P;->a()Z

    move-result p1

    goto :goto_1

    :cond_2
    move p1, v3

    :goto_1
    if-eqz p1, :cond_4

    iput-object v1, p0, LM2/d;->e:Ljava/lang/Object;

    iput v3, p0, LM2/d;->d:I

    const-wide/16 v4, 0xbb8

    invoke-static {v4, v5, p0}, LW4/u;->c(JLw3/g;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_2
    invoke-interface {v2}, LE3/a;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_4
    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0
.end method

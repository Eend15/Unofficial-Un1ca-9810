.class public final Lm2/m;
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

    iput-object p1, p0, Lm2/m;->e:Lm2/n;

    invoke-direct {p0, p2}, Lw3/g;-><init>(Lu3/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lu3/d;)Lu3/d;
    .locals 0

    new-instance p1, Lm2/m;

    iget-object p0, p0, Lm2/m;->e:Lm2/n;

    invoke-direct {p1, p0, p2}, Lm2/m;-><init>(Lm2/n;Lu3/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LW4/t;

    check-cast p2, Lu3/d;

    invoke-virtual {p0, p1, p2}, Lm2/m;->create(Ljava/lang/Object;Lu3/d;)Lu3/d;

    move-result-object p0

    check-cast p0, Lm2/m;

    sget-object p1, Lq3/m;->a:Lq3/m;

    invoke-virtual {p0, p1}, Lm2/m;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lv3/a;->d:Lv3/a;

    iget v1, p0, Lm2/m;->d:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    invoke-static {p1}, Lp4/g;->X(Ljava/lang/Object;)V

    new-instance p0, LW4/m;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    invoke-static {p1}, Lp4/g;->X(Ljava/lang/Object;)V

    iget-object p1, p0, Lm2/m;->e:Lm2/n;

    invoke-virtual {p1}, Lm2/n;->e()Lq2/a;

    move-result-object v1

    iget-boolean v3, p1, Lm2/n;->b:Z

    invoke-virtual {v1, v3}, Lq2/a;->a(Z)Landroidx/recyclerview/widget/y;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v3, Lm2/i;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v4}, Lm2/i;-><init>(Lm2/n;I)V

    iput v2, p0, Lm2/m;->d:I

    iget-object p1, v1, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/i;

    invoke-virtual {p1, v3, p0}, Lkotlinx/coroutines/flow/i;->b(Lkotlinx/coroutines/flow/b;Lu3/d;)Ljava/lang/Object;

    return-object v0

    :cond_2
    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0
.end method

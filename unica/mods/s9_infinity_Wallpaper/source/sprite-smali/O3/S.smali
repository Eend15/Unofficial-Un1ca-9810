.class public LO3/S;
.super LO3/c0;
.source "SourceFile"

# interfaces
.implements LL3/k;


# instance fields
.field public final l:LO3/l0;


# direct methods
.method public constructor <init>(LO3/z;LX3/L;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1, p2}, LO3/c0;-><init>(LO3/z;LX3/L;)V

    .line 7
    new-instance p1, LO3/Q;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, LO3/Q;-><init>(LO3/S;I)V

    .line 8
    new-instance p2, LO3/l0;

    invoke-direct {p2, p1}, LO3/l0;-><init>(LE3/a;)V

    .line 9
    iput-object p2, p0, LO3/S;->l:LO3/l0;

    .line 10
    sget-object p1, Lq3/e;->d:Lq3/e;

    new-instance p2, LO3/Q;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, LO3/Q;-><init>(LO3/S;I)V

    invoke-static {p1, p2}, Lp4/g;->G(Lq3/e;LE3/a;)Lq3/d;

    return-void
.end method

.method public constructor <init>(LO3/z;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signature"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, LO3/c0;-><init>(LO3/z;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    new-instance p1, LO3/Q;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, LO3/Q;-><init>(LO3/S;I)V

    .line 3
    new-instance p2, LO3/l0;

    invoke-direct {p2, p1}, LO3/l0;-><init>(LE3/a;)V

    .line 4
    iput-object p2, p0, LO3/S;->l:LO3/l0;

    .line 5
    sget-object p1, Lq3/e;->d:Lq3/e;

    new-instance p2, LO3/Q;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, LO3/Q;-><init>(LO3/S;I)V

    invoke-static {p1, p2}, Lp4/g;->G(Lq3/e;LE3/a;)Lq3/d;

    return-void
.end method


# virtual methods
.method public final e()LL3/j;
    .locals 1

    iget-object p0, p0, LO3/S;->l:LO3/l0;

    invoke-virtual {p0}, LO3/l0;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "_getter()"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, LO3/P;

    return-object p0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, LO3/S;->l:LO3/l0;

    invoke-virtual {p0}, LO3/l0;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "_getter()"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, LO3/P;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, LO3/p;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, LO3/S;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final j()LO3/Y;
    .locals 1

    iget-object p0, p0, LO3/S;->l:LO3/l0;

    invoke-virtual {p0}, LO3/l0;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "_getter()"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, LO3/P;

    return-object p0
.end method

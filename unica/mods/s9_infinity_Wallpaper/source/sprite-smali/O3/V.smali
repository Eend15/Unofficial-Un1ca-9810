.class public LO3/V;
.super LO3/c0;
.source "SourceFile"

# interfaces
.implements LE3/c;


# instance fields
.field public final l:LO3/l0;


# direct methods
.method public constructor <init>(LO3/z;LX3/L;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, LO3/c0;-><init>(LO3/z;LX3/L;)V

    new-instance p1, LO3/U;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, LO3/U;-><init>(LO3/V;I)V

    new-instance p2, LO3/l0;

    invoke-direct {p2, p1}, LO3/l0;-><init>(LE3/a;)V

    iput-object p2, p0, LO3/V;->l:LO3/l0;

    sget-object p1, Lq3/e;->d:Lq3/e;

    new-instance p2, LO3/U;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, LO3/U;-><init>(LO3/V;I)V

    invoke-static {p1, p2}, Lp4/g;->G(Lq3/e;LE3/a;)Lq3/d;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, LO3/V;->l:LO3/l0;

    invoke-virtual {p0}, LO3/l0;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "_getter()"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, LO3/T;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, LO3/p;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final j()LO3/Y;
    .locals 1

    iget-object p0, p0, LO3/V;->l:LO3/l0;

    invoke-virtual {p0}, LO3/l0;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "_getter()"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, LO3/T;

    return-object p0
.end method

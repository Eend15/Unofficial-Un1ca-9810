.class public final LO3/D;
.super LO3/a0;
.source "SourceFile"

# interfaces
.implements LE3/c;


# instance fields
.field public final h:LO3/E;


# direct methods
.method public constructor <init>(LO3/E;)V
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, LO3/a0;-><init>()V

    iput-object p1, p0, LO3/D;->h:LO3/E;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, LO3/D;->h:LO3/E;

    iget-object p0, p0, LO3/E;->m:LO3/l0;

    invoke-virtual {p0}, LO3/l0;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "_setter()"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, LO3/D;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, LO3/p;->b([Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0
.end method

.method public final j()LO3/c0;
    .locals 0

    iget-object p0, p0, LO3/D;->h:LO3/E;

    return-object p0
.end method

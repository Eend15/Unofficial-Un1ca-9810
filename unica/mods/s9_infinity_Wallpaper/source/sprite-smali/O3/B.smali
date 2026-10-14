.class public final LO3/B;
.super LO3/a0;
.source "SourceFile"

# interfaces
.implements LE3/b;


# instance fields
.field public final h:LO3/C;


# direct methods
.method public constructor <init>(LO3/C;)V
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, LO3/a0;-><init>()V

    iput-object p1, p0, LO3/B;->h:LO3/C;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, LO3/B;->h:LO3/C;

    iget-object p0, p0, LO3/C;->m:LO3/l0;

    invoke-virtual {p0}, LO3/l0;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "_setter()"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, LO3/B;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, LO3/p;->b([Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0
.end method

.method public final j()LO3/c0;
    .locals 0

    iget-object p0, p0, LO3/B;->h:LO3/C;

    return-object p0
.end method

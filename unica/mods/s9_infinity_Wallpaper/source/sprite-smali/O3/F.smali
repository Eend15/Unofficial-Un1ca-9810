.class public final LO3/F;
.super LO3/a0;
.source "SourceFile"

# interfaces
.implements LE3/d;


# instance fields
.field public final h:LO3/G;


# direct methods
.method public constructor <init>(LO3/G;)V
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, LO3/a0;-><init>()V

    iput-object p1, p0, LO3/F;->h:LO3/G;

    return-void
.end method


# virtual methods
.method public final a(LJ4/C;Ljava/lang/Object;Ll4/o;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, LO3/F;->h:LO3/G;

    iget-object p0, p0, LO3/G;->m:LO3/l0;

    invoke-virtual {p0}, LO3/l0;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "_setter()"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, LO3/F;

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, LO3/p;->b([Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0
.end method

.method public final j()LO3/c0;
    .locals 0

    iget-object p0, p0, LO3/F;->h:LO3/G;

    return-object p0
.end method

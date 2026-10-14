.class public final LO3/M;
.super LO3/Y;
.source "SourceFile"

# interfaces
.implements LE3/a;


# instance fields
.field public final h:LO3/O;


# direct methods
.method public constructor <init>(LO3/O;)V
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, LO3/Y;-><init>()V

    iput-object p1, p0, LO3/M;->h:LO3/O;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, LO3/M;->h:LO3/O;

    iget-object p0, p0, LO3/O;->l:LO3/l0;

    invoke-virtual {p0}, LO3/l0;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "_getter()"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, LO3/M;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, LO3/p;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final j()LO3/c0;
    .locals 0

    iget-object p0, p0, LO3/M;->h:LO3/O;

    return-object p0
.end method

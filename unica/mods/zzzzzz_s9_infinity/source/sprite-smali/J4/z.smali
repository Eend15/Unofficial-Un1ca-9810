.class public final LJ4/z;
.super LJ4/U;
.source "SourceFile"


# instance fields
.field public final b:[LU3/O;

.field public final c:[LJ4/P;

.field public final d:Z


# direct methods
.method public constructor <init>([LU3/O;[LJ4/P;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ4/z;->b:[LU3/O;

    iput-object p2, p0, LJ4/z;->c:[LJ4/P;

    iput-boolean p3, p0, LJ4/z;->d:Z

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 0

    iget-boolean p0, p0, LJ4/z;->d:Z

    return p0
.end method

.method public final d(LJ4/C;)LJ4/P;
    .locals 4

    invoke-virtual {p1}, LJ4/C;->q0()LJ4/M;

    move-result-object p1

    invoke-interface {p1}, LJ4/M;->e()LU3/g;

    move-result-object p1

    instance-of v0, p1, LU3/O;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, LU3/O;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    return-object v1

    :cond_1
    invoke-interface {p1}, LU3/O;->r0()I

    move-result v0

    iget-object v2, p0, LJ4/z;->b:[LU3/O;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v2, v2, v0

    invoke-interface {v2}, LU3/g;->E()LJ4/M;

    move-result-object v2

    invoke-interface {p1}, LU3/g;->E()LJ4/M;

    move-result-object p1

    invoke-static {v2, p1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, LJ4/z;->c:[LJ4/P;

    aget-object p0, p0, v0

    return-object p0

    :cond_2
    return-object v1
.end method

.method public final e()Z
    .locals 0

    iget-object p0, p0, LJ4/z;->c:[LJ4/P;

    array-length p0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

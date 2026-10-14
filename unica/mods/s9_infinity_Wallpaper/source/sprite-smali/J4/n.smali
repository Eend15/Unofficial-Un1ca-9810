.class public abstract LJ4/n;
.super LJ4/m;
.source "SourceFile"


# instance fields
.field public final e:LJ4/G;


# direct methods
.method public constructor <init>(LJ4/G;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ4/n;->e:LJ4/G;

    return-void
.end method


# virtual methods
.method public final E0(LV3/h;)LJ4/b0;
    .locals 1

    invoke-virtual {p0}, LJ4/m;->p()LV3/h;

    move-result-object v0

    if-eq p1, v0, :cond_0

    new-instance v0, LJ4/i;

    invoke-direct {v0, p0, p1}, LJ4/i;-><init>(LJ4/G;LV3/h;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method

.method public final F0(Z)LJ4/G;
    .locals 1

    invoke-virtual {p0}, LJ4/m;->z0()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, LJ4/n;->e:LJ4/G;

    invoke-virtual {v0, p1}, LJ4/G;->F0(Z)LJ4/G;

    move-result-object p1

    invoke-virtual {p0}, LJ4/m;->p()LV3/h;

    move-result-object p0

    invoke-virtual {p1, p0}, LJ4/G;->G0(LV3/h;)LJ4/G;

    move-result-object p0

    return-object p0
.end method

.method public final G0(LV3/h;)LJ4/G;
    .locals 1

    const-string v0, "newAnnotations"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LJ4/m;->p()LV3/h;

    move-result-object v0

    if-eq p1, v0, :cond_0

    new-instance v0, LJ4/i;

    invoke-direct {v0, p0, p1}, LJ4/i;-><init>(LJ4/G;LV3/h;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method

.method public final H0()LJ4/G;
    .locals 0

    iget-object p0, p0, LJ4/n;->e:LJ4/G;

    return-object p0
.end method

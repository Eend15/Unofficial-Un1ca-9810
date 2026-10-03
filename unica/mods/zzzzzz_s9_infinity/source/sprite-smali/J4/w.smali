.class public abstract LJ4/w;
.super LJ4/b0;
.source "SourceFile"

# interfaces
.implements LM4/c;


# instance fields
.field public final e:LJ4/G;

.field public final f:LJ4/G;


# direct methods
.method public constructor <init>(LJ4/G;LJ4/G;)V
    .locals 1

    const-string v0, "lowerBound"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upperBound"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ4/w;->e:LJ4/G;

    iput-object p2, p0, LJ4/w;->f:LJ4/G;

    return-void
.end method


# virtual methods
.method public abstract F0()LJ4/G;
.end method

.method public abstract G0(Lu4/g;Lu4/g;)Ljava/lang/String;
.end method

.method public l0()LC4/o;
    .locals 0

    invoke-virtual {p0}, LJ4/w;->F0()LJ4/G;

    move-result-object p0

    invoke-virtual {p0}, LJ4/C;->l0()LC4/o;

    move-result-object p0

    return-object p0
.end method

.method public final m0()Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, LJ4/w;->F0()LJ4/G;

    move-result-object p0

    invoke-virtual {p0}, LJ4/C;->m0()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final p()LV3/h;
    .locals 0

    invoke-virtual {p0}, LJ4/w;->F0()LJ4/G;

    move-result-object p0

    invoke-interface {p0}, LV3/a;->p()LV3/h;

    move-result-object p0

    return-object p0
.end method

.method public final q0()LJ4/M;
    .locals 0

    invoke-virtual {p0}, LJ4/w;->F0()LJ4/G;

    move-result-object p0

    invoke-virtual {p0}, LJ4/C;->q0()LJ4/M;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lu4/g;->d:Lu4/g;

    invoke-virtual {v0, p0}, Lu4/g;->U(LJ4/C;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final z0()Z
    .locals 0

    invoke-virtual {p0}, LJ4/w;->F0()LJ4/G;

    move-result-object p0

    invoke-virtual {p0}, LJ4/C;->z0()Z

    move-result p0

    return p0
.end method

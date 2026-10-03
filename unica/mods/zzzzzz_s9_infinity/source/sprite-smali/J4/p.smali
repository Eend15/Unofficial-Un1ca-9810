.class public LJ4/p;
.super LJ4/G;
.source "SourceFile"


# instance fields
.field public final e:LJ4/M;

.field public final f:LC4/o;

.field public final g:Ljava/util/List;

.field public final h:Z

.field public final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(LJ4/M;LC4/o;Ljava/util/List;ZI)V
    .locals 1

    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_0

    sget-object p3, Lr3/r;->d:Lr3/r;

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    :cond_1
    const-string p5, "constructor"

    invoke-static {p1, p5}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "memberScope"

    invoke-static {p2, p5}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "arguments"

    invoke-static {p3, p5}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ4/p;->e:LJ4/M;

    iput-object p2, p0, LJ4/p;->f:LC4/o;

    iput-object p3, p0, LJ4/p;->g:Ljava/util/List;

    iput-boolean p4, p0, LJ4/p;->h:Z

    const-string p1, "???"

    iput-object p1, p0, LJ4/p;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A0(LK4/g;)LJ4/C;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final D0(LK4/g;)LJ4/b0;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final E0(LV3/h;)LJ4/b0;
    .locals 0

    return-object p0
.end method

.method public final F0(Z)LJ4/G;
    .locals 7

    new-instance v6, LJ4/p;

    iget-object v2, p0, LJ4/p;->f:LC4/o;

    iget-object v3, p0, LJ4/p;->g:Ljava/util/List;

    iget-object v1, p0, LJ4/p;->e:LJ4/M;

    const/16 v5, 0x10

    move-object v0, v6

    move v4, p1

    invoke-direct/range {v0 .. v5}, LJ4/p;-><init>(LJ4/M;LC4/o;Ljava/util/List;ZI)V

    return-object v6
.end method

.method public final G0(LV3/h;)LJ4/G;
    .locals 1

    const-string v0, "newAnnotations"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l0()LC4/o;
    .locals 0

    iget-object p0, p0, LJ4/p;->f:LC4/o;

    return-object p0
.end method

.method public final m0()Ljava/util/List;
    .locals 0

    iget-object p0, p0, LJ4/p;->g:Ljava/util/List;

    return-object p0
.end method

.method public final p()LV3/h;
    .locals 0

    sget-object p0, LV3/g;->a:LV3/f;

    return-object p0
.end method

.method public final q0()LJ4/M;
    .locals 0

    iget-object p0, p0, LJ4/p;->e:LJ4/M;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LJ4/p;->e:LJ4/M;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LJ4/p;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const-string v6, "..."

    const/4 v7, 0x0

    iget-object v1, p0, LJ4/p;->g:Ljava/util/List;

    const-string v2, ", "

    const-string v3, "<"

    const-string v4, ">"

    const/4 v5, -0x1

    invoke-static/range {v1 .. v7}, Lr3/j;->z0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;LE3/b;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final z0()Z
    .locals 0

    iget-boolean p0, p0, LJ4/p;->h:Z

    return p0
.end method

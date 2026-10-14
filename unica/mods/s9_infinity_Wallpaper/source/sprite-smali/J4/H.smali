.class public final LJ4/H;
.super LJ4/G;
.source "SourceFile"


# instance fields
.field public final e:LJ4/M;

.field public final f:Ljava/util/List;

.field public final g:Z

.field public final h:LC4/o;

.field public final i:LE3/b;


# direct methods
.method public constructor <init>(LJ4/M;Ljava/util/List;ZLC4/o;LE3/b;)V
    .locals 1

    const-string v0, "constructor"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "memberScope"

    invoke-static {p4, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ4/H;->e:LJ4/M;

    iput-object p2, p0, LJ4/H;->f:Ljava/util/List;

    iput-boolean p3, p0, LJ4/H;->g:Z

    iput-object p4, p0, LJ4/H;->h:LC4/o;

    iput-object p5, p0, LJ4/H;->i:LE3/b;

    instance-of p0, p4, LJ4/t;

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "SimpleTypeImpl should not be created for error type: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p3, 0xa

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final A0(LK4/g;)LJ4/C;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LJ4/H;->i:LE3/b;

    invoke-interface {v0, p1}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LJ4/G;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public final D0(LK4/g;)LJ4/b0;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LJ4/H;->i:LE3/b;

    invoke-interface {v0, p1}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LJ4/G;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public final F0(Z)LJ4/G;
    .locals 1

    iget-boolean v0, p0, LJ4/H;->g:Z

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    new-instance p1, LJ4/F;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, LJ4/F;-><init>(LJ4/G;I)V

    :goto_0
    move-object p0, p1

    goto :goto_1

    :cond_1
    new-instance p1, LJ4/F;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, LJ4/F;-><init>(LJ4/G;I)V

    goto :goto_0

    :goto_1
    return-object p0
.end method

.method public final G0(LV3/h;)LJ4/G;
    .locals 1

    const-string v0, "newAnnotations"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, LV3/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LJ4/i;

    invoke-direct {v0, p0, p1}, LJ4/i;-><init>(LJ4/G;LV3/h;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final l0()LC4/o;
    .locals 0

    iget-object p0, p0, LJ4/H;->h:LC4/o;

    return-object p0
.end method

.method public final m0()Ljava/util/List;
    .locals 0

    iget-object p0, p0, LJ4/H;->f:Ljava/util/List;

    return-object p0
.end method

.method public final p()LV3/h;
    .locals 0

    sget-object p0, LV3/g;->a:LV3/f;

    return-object p0
.end method

.method public final q0()LJ4/M;
    .locals 0

    iget-object p0, p0, LJ4/H;->e:LJ4/M;

    return-object p0
.end method

.method public final z0()Z
    .locals 0

    iget-boolean p0, p0, LJ4/H;->g:Z

    return p0
.end method

.class public final Lw4/a;
.super LJ4/G;
.source "SourceFile"

# interfaces
.implements LM4/b;


# instance fields
.field public final e:LJ4/P;

.field public final f:Lw4/b;

.field public final g:Z

.field public final h:LV3/h;


# direct methods
.method public constructor <init>(LJ4/P;Lw4/b;ZLV3/h;)V
    .locals 1

    const-string v0, "typeProjection"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    invoke-static {p4, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw4/a;->e:LJ4/P;

    iput-object p2, p0, Lw4/a;->f:Lw4/b;

    iput-boolean p3, p0, Lw4/a;->g:Z

    iput-object p4, p0, Lw4/a;->h:LV3/h;

    return-void
.end method


# virtual methods
.method public final A0(LK4/g;)LJ4/C;
    .locals 3

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lw4/a;

    iget-object v1, p0, Lw4/a;->e:LJ4/P;

    invoke-virtual {v1, p1}, LJ4/P;->d(LK4/g;)LJ4/P;

    move-result-object p1

    iget-object v1, p0, Lw4/a;->h:LV3/h;

    iget-object v2, p0, Lw4/a;->f:Lw4/b;

    iget-boolean p0, p0, Lw4/a;->g:Z

    invoke-direct {v0, p1, v2, p0, v1}, Lw4/a;-><init>(LJ4/P;Lw4/b;ZLV3/h;)V

    return-object v0
.end method

.method public final C0(Z)LJ4/b0;
    .locals 3

    iget-boolean v0, p0, Lw4/a;->g:Z

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lw4/a;

    iget-object v1, p0, Lw4/a;->f:Lw4/b;

    iget-object v2, p0, Lw4/a;->h:LV3/h;

    iget-object p0, p0, Lw4/a;->e:LJ4/P;

    invoke-direct {v0, p0, v1, p1, v2}, Lw4/a;-><init>(LJ4/P;Lw4/b;ZLV3/h;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final D0(LK4/g;)LJ4/b0;
    .locals 3

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lw4/a;

    iget-object v1, p0, Lw4/a;->e:LJ4/P;

    invoke-virtual {v1, p1}, LJ4/P;->d(LK4/g;)LJ4/P;

    move-result-object p1

    iget-object v1, p0, Lw4/a;->h:LV3/h;

    iget-object v2, p0, Lw4/a;->f:Lw4/b;

    iget-boolean p0, p0, Lw4/a;->g:Z

    invoke-direct {v0, p1, v2, p0, v1}, Lw4/a;-><init>(LJ4/P;Lw4/b;ZLV3/h;)V

    return-object v0
.end method

.method public final E0(LV3/h;)LJ4/b0;
    .locals 3

    new-instance v0, Lw4/a;

    iget-object v1, p0, Lw4/a;->f:Lw4/b;

    iget-boolean v2, p0, Lw4/a;->g:Z

    iget-object p0, p0, Lw4/a;->e:LJ4/P;

    invoke-direct {v0, p0, v1, v2, p1}, Lw4/a;-><init>(LJ4/P;Lw4/b;ZLV3/h;)V

    return-object v0
.end method

.method public final F0(Z)LJ4/G;
    .locals 3

    iget-boolean v0, p0, Lw4/a;->g:Z

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lw4/a;

    iget-object v1, p0, Lw4/a;->f:Lw4/b;

    iget-object v2, p0, Lw4/a;->h:LV3/h;

    iget-object p0, p0, Lw4/a;->e:LJ4/P;

    invoke-direct {v0, p0, v1, p1, v2}, Lw4/a;-><init>(LJ4/P;Lw4/b;ZLV3/h;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final G0(LV3/h;)LJ4/G;
    .locals 3

    const-string v0, "newAnnotations"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lw4/a;

    iget-object v1, p0, Lw4/a;->f:Lw4/b;

    iget-boolean v2, p0, Lw4/a;->g:Z

    iget-object p0, p0, Lw4/a;->e:LJ4/P;

    invoke-direct {v0, p0, v1, v2, p1}, Lw4/a;-><init>(LJ4/P;Lw4/b;ZLV3/h;)V

    return-object v0
.end method

.method public final l0()LC4/o;
    .locals 1

    const-string p0, "No member resolution should be done on captured type, it used only during constraint system resolution"

    const/4 v0, 0x1

    invoke-static {p0, v0}, LJ4/v;->b(Ljava/lang/String;Z)LC4/o;

    move-result-object p0

    return-object p0
.end method

.method public final m0()Ljava/util/List;
    .locals 0

    sget-object p0, Lr3/r;->d:Lr3/r;

    return-object p0
.end method

.method public final p()LV3/h;
    .locals 0

    iget-object p0, p0, Lw4/a;->h:LV3/h;

    return-object p0
.end method

.method public final q0()LJ4/M;
    .locals 0

    iget-object p0, p0, Lw4/a;->f:Lw4/b;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Captured("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lw4/a;->e:LJ4/P;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lw4/a;->g:Z

    if-eqz p0, :cond_0

    const-string p0, "?"

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final z0()Z
    .locals 0

    iget-boolean p0, p0, Lw4/a;->g:Z

    return p0
.end method

.class public final LK4/i;
.super LJ4/G;
.source "SourceFile"

# interfaces
.implements LM4/b;


# instance fields
.field public final e:I

.field public final f:LK4/j;

.field public final g:LJ4/b0;

.field public final h:LV3/h;

.field public final i:Z

.field public final j:Z


# direct methods
.method public synthetic constructor <init>(ILK4/j;LJ4/b0;LV3/h;ZI)V
    .locals 7

    and-int/lit8 v0, p6, 0x8

    if-eqz v0, :cond_0

    .line 8
    sget-object p4, LV3/g;->a:LV3/f;

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const/4 p5, 0x0

    :cond_1
    move v5, p5

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 9
    invoke-direct/range {v0 .. v6}, LK4/i;-><init>(ILK4/j;LJ4/b0;LV3/h;ZZ)V

    return-void
.end method

.method public constructor <init>(ILK4/j;LJ4/b0;LV3/h;ZZ)V
    .locals 1

    const-string v0, "captureStatus"

    invoke-static {p1, v0}, LB/a;->t(ILjava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    invoke-static {p4, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, LK4/i;->e:I

    .line 3
    iput-object p2, p0, LK4/i;->f:LK4/j;

    .line 4
    iput-object p3, p0, LK4/i;->g:LJ4/b0;

    .line 5
    iput-object p4, p0, LK4/i;->h:LV3/h;

    .line 6
    iput-boolean p5, p0, LK4/i;->i:Z

    .line 7
    iput-boolean p6, p0, LK4/i;->j:Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic A0(LK4/g;)LJ4/C;
    .locals 0

    invoke-virtual {p0, p1}, LK4/i;->H0(LK4/g;)LK4/i;

    move-result-object p0

    return-object p0
.end method

.method public final C0(Z)LJ4/b0;
    .locals 8

    new-instance v7, LK4/i;

    iget-object v2, p0, LK4/i;->f:LK4/j;

    const/16 v6, 0x20

    iget v1, p0, LK4/i;->e:I

    iget-object v3, p0, LK4/i;->g:LJ4/b0;

    iget-object v4, p0, LK4/i;->h:LV3/h;

    move-object v0, v7

    move v5, p1

    invoke-direct/range {v0 .. v6}, LK4/i;-><init>(ILK4/j;LJ4/b0;LV3/h;ZI)V

    return-object v7
.end method

.method public final bridge synthetic D0(LK4/g;)LJ4/b0;
    .locals 0

    invoke-virtual {p0, p1}, LK4/i;->H0(LK4/g;)LK4/i;

    move-result-object p0

    return-object p0
.end method

.method public final E0(LV3/h;)LJ4/b0;
    .locals 8

    new-instance v7, LK4/i;

    iget-object v2, p0, LK4/i;->f:LK4/j;

    const/16 v6, 0x20

    iget v1, p0, LK4/i;->e:I

    iget-object v3, p0, LK4/i;->g:LJ4/b0;

    iget-boolean v5, p0, LK4/i;->i:Z

    move-object v0, v7

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, LK4/i;-><init>(ILK4/j;LJ4/b0;LV3/h;ZI)V

    return-object v7
.end method

.method public final F0(Z)LJ4/G;
    .locals 8

    new-instance v7, LK4/i;

    iget-object v2, p0, LK4/i;->f:LK4/j;

    const/16 v6, 0x20

    iget v1, p0, LK4/i;->e:I

    iget-object v3, p0, LK4/i;->g:LJ4/b0;

    iget-object v4, p0, LK4/i;->h:LV3/h;

    move-object v0, v7

    move v5, p1

    invoke-direct/range {v0 .. v6}, LK4/i;-><init>(ILK4/j;LJ4/b0;LV3/h;ZI)V

    return-object v7
.end method

.method public final G0(LV3/h;)LJ4/G;
    .locals 8

    const-string v0, "newAnnotations"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LK4/i;

    iget-object v3, p0, LK4/i;->f:LK4/j;

    const/16 v7, 0x20

    iget v2, p0, LK4/i;->e:I

    iget-object v4, p0, LK4/i;->g:LJ4/b0;

    iget-boolean v6, p0, LK4/i;->i:Z

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, LK4/i;-><init>(ILK4/j;LJ4/b0;LV3/h;ZI)V

    return-object v0
.end method

.method public final H0(LK4/g;)LK4/i;
    .locals 11

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LK4/i;->f:LK4/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, LK4/j;->a:LJ4/P;

    invoke-virtual {v1, p1}, LJ4/P;->d(LK4/g;)LJ4/P;

    move-result-object v1

    iget-object v2, v0, LK4/j;->b:LE3/a;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    new-instance v2, LF4/C;

    const/4 v4, 0x3

    invoke-direct {v2, v0, v4, p1}, LF4/C;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    :goto_0
    iget-object p1, v0, LK4/j;->c:LK4/j;

    if-nez p1, :cond_1

    move-object p1, v0

    :cond_1
    new-instance v6, LK4/j;

    iget-object v0, v0, LK4/j;->d:LU3/O;

    invoke-direct {v6, v1, v2, p1, v0}, LK4/j;-><init>(LJ4/P;LE3/a;LK4/j;LU3/O;)V

    iget-object p1, p0, LK4/i;->g:LJ4/b0;

    if-nez p1, :cond_2

    move-object v7, v3

    goto :goto_1

    :cond_2
    move-object v7, p1

    :goto_1
    new-instance p1, LK4/i;

    iget-boolean v9, p0, LK4/i;->i:Z

    const/16 v10, 0x20

    iget v5, p0, LK4/i;->e:I

    iget-object v8, p0, LK4/i;->h:LV3/h;

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, LK4/i;-><init>(ILK4/j;LJ4/b0;LV3/h;ZI)V

    return-object p1
.end method

.method public final l0()LC4/o;
    .locals 1

    const-string p0, "No member resolution should be done on captured type!"

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

    iget-object p0, p0, LK4/i;->h:LV3/h;

    return-object p0
.end method

.method public final q0()LJ4/M;
    .locals 0

    iget-object p0, p0, LK4/i;->f:LK4/j;

    return-object p0
.end method

.method public final z0()Z
    .locals 0

    iget-boolean p0, p0, LK4/i;->i:Z

    return p0
.end method

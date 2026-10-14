.class public abstract Lz4/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "value"

    invoke-static {v0}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    return-void
.end method

.method public static final a(LX3/W;)Z
    .locals 2

    invoke-static {p0}, Lp4/g;->H(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    sget-object v0, Lz4/a;->d:Lz4/a;

    sget-object v1, Lz4/b;->l:Lz4/b;

    invoke-static {p0, v0, v1}, LS4/m;->g(Ljava/util/List;LS4/b;LE3/b;)Ljava/lang/Boolean;

    move-result-object p0

    const-string v0, "ifAny(\n        listOf(th\u2026eclaresDefaultValue\n    )"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static b(LU3/b;LE3/b;)LU3/b;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LF3/s;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lp4/g;->H(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    new-instance v1, Lz4/c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lz4/c;-><init>(Z)V

    new-instance v2, LS4/a;

    invoke-direct {v2, v0, p1}, LS4/a;-><init>(LF3/s;LE3/b;)V

    invoke-static {p0, v1, v2}, LS4/m;->e(Ljava/util/List;LS4/b;LS4/m;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LU3/b;

    return-object p0
.end method

.method public static final c(LU3/k;)Ls4/c;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lz4/e;->h(LU3/j;)Ls4/e;

    move-result-object p0

    invoke-virtual {p0}, Ls4/e;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ls4/e;->g()Ls4/c;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public static final d(LV3/b;)LU3/e;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, LV3/b;->j()LJ4/C;

    move-result-object p0

    invoke-virtual {p0}, LJ4/C;->q0()LJ4/M;

    move-result-object p0

    invoke-interface {p0}, LJ4/M;->e()LU3/g;

    move-result-object p0

    instance-of v0, p0, LU3/e;

    if-eqz v0, :cond_0

    check-cast p0, LU3/e;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final e(LU3/j;)LR3/j;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lz4/e;->j(LU3/j;)LU3/x;

    move-result-object p0

    invoke-interface {p0}, LU3/x;->c()LR3/j;

    move-result-object p0

    return-object p0
.end method

.method public static final f(LU3/g;)Ls4/b;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, LU3/j;->g()LU3/j;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    instance-of v2, v1, LU3/B;

    if-eqz v2, :cond_2

    new-instance v0, Ls4/b;

    check-cast v1, LU3/B;

    check-cast v1, LX3/F;

    invoke-interface {p0}, LU3/j;->r()Ls4/f;

    move-result-object p0

    iget-object v1, v1, LX3/F;->h:Ls4/c;

    invoke-direct {v0, v1, p0}, Ls4/b;-><init>(Ls4/c;Ls4/f;)V

    goto :goto_0

    :cond_2
    instance-of v2, v1, LU3/h;

    if-eqz v2, :cond_4

    check-cast v1, LU3/g;

    invoke-static {v1}, Lz4/e;->f(LU3/g;)Ls4/b;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p0}, LU3/j;->r()Ls4/f;

    move-result-object p0

    invoke-virtual {v1, p0}, Ls4/b;->d(Ls4/f;)Ls4/b;

    move-result-object v0

    :cond_4
    :goto_0
    return-object v0
.end method

.method public static final g(LU3/j;)Ls4/c;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lv4/f;->h(LU3/j;)Ls4/c;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, LU3/j;->g()LU3/j;

    move-result-object v0

    invoke-static {v0}, Lv4/f;->g(LU3/j;)Ls4/e;

    move-result-object v0

    invoke-interface {p0}, LU3/j;->r()Ls4/f;

    move-result-object p0

    invoke-virtual {v0, p0}, Ls4/e;->b(Ls4/f;)Ls4/e;

    move-result-object p0

    invoke-virtual {p0}, Ls4/e;->g()Ls4/c;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const/4 p0, 0x4

    invoke-static {p0}, Lv4/f;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final h(LU3/j;)Ls4/e;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lv4/f;->g(LU3/j;)Ls4/e;

    move-result-object p0

    const-string v0, "getFqName(this)"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final i(LU3/x;)LK4/g;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LK4/h;->a:LU3/w;

    invoke-interface {p0, v0}, LU3/x;->u0(LU3/w;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LK4/n;

    sget-object p0, LK4/g;->a:LK4/g;

    return-object p0
.end method

.method public static final j(LU3/j;)LU3/x;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lv4/f;->d(LU3/j;)LU3/x;

    move-result-object p0

    const-string v0, "getContainingModule(this)"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final k(LU3/b;)LU3/b;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, LU3/I;

    if-eqz v0, :cond_0

    check-cast p0, LU3/I;

    check-cast p0, LX3/J;

    invoke-virtual {p0}, LX3/J;->H0()LX3/L;

    move-result-object p0

    :cond_0
    return-object p0
.end method

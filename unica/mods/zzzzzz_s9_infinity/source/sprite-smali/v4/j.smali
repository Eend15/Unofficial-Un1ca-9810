.class public abstract Lv4/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ls4/c;

    const-string v1, "kotlin.jvm.JvmInline"

    invoke-direct {v0, v1}, Ls4/c;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final a(LU3/b;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, LX3/M;

    if-eqz v0, :cond_0

    check-cast p0, LX3/M;

    check-cast p0, LX3/J;

    invoke-virtual {p0}, LX3/J;->H0()LX3/L;

    move-result-object p0

    invoke-static {p0}, Lv4/j;->d(LU3/P;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final b(LU3/j;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, LU3/e;

    if-eqz v0, :cond_1

    check-cast p0, LU3/e;

    invoke-interface {p0}, LU3/e;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, LU3/e;->t()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final c(LJ4/C;)Z
    .locals 0

    invoke-virtual {p0}, LJ4/C;->q0()LJ4/M;

    move-result-object p0

    invoke-interface {p0}, LJ4/M;->e()LU3/g;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lv4/j;->b(LU3/j;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static final d(LU3/P;)Z
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, LU3/a;->Y()LU3/J;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-interface {p0}, LU3/j;->g()LU3/j;

    move-result-object v0

    instance-of v1, v0, LU3/e;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, LU3/e;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, LU3/e;->s()LU3/t;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, v0, LU3/t;->a:Ls4/f;

    :goto_1
    check-cast p0, LX3/p;

    invoke-virtual {p0}, LX3/p;->r()Ls4/f;

    move-result-object p0

    invoke-static {v2, p0}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    return p0
.end method

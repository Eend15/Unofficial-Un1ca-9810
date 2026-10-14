.class public abstract LO3/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LL3/a;
.implements LO3/i0;


# instance fields
.field public final d:LO3/k0;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LO3/m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LO3/m;-><init>(LO3/p;I)V

    const/4 v1, 0x0

    invoke-static {v1, v0}, LO3/n0;->e(LU3/b;LE3/a;)LO3/k0;

    new-instance v0, LO3/m;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, LO3/m;-><init>(LO3/p;I)V

    invoke-static {v1, v0}, LO3/n0;->e(LU3/b;LE3/a;)LO3/k0;

    move-result-object v0

    iput-object v0, p0, LO3/p;->d:LO3/k0;

    new-instance v0, LO3/m;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v2}, LO3/m;-><init>(LO3/p;I)V

    invoke-static {v1, v0}, LO3/n0;->e(LU3/b;LE3/a;)LO3/k0;

    new-instance v0, LO3/m;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v2}, LO3/m;-><init>(LO3/p;I)V

    invoke-static {v1, v0}, LO3/n0;->e(LU3/b;LE3/a;)LO3/k0;

    return-void
.end method


# virtual methods
.method public final varargs b([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-virtual {p0}, LO3/p;->c()LP3/f;

    move-result-object p0

    invoke-interface {p0, p1}, LP3/f;->m([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, LM3/a;

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public abstract c()LP3/f;
.end method

.method public abstract d()LO3/z;
.end method

.method public abstract f()LU3/b;
.end method

.method public final g()Z
    .locals 2

    invoke-interface {p0}, LL3/a;->r()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    invoke-static {v0, v1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LO3/p;->d()LO3/z;

    move-result-object p0

    invoke-interface {p0}, LF3/d;->c()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isAnnotation()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract h()Z
.end method

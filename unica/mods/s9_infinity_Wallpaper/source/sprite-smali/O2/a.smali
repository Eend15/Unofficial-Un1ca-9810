.class public abstract LO2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LU0/e;

.field public b:LG4/d;

.field public c:LU0/e;

.field public d:LQ2/a;

.field public e:LT2/b;

.field public f:LT2/b;

.field public g:LS2/b;


# virtual methods
.method public final a()LU0/e;
    .locals 0

    iget-object p0, p0, LO2/a;->c:LU0/e;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "bitmap"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final b()LS2/b;
    .locals 0

    iget-object p0, p0, LO2/a;->g:LS2/b;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "dump"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final c()LG4/d;
    .locals 0

    iget-object p0, p0, LO2/a;->b:LG4/d;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "file"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final d()LU0/e;
    .locals 0

    iget-object p0, p0, LO2/a;->a:LU0/e;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "log"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

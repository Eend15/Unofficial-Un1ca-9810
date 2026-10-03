.class public final Lv4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK4/d;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:LU3/a;

.field public final synthetic c:LU3/a;


# direct methods
.method public constructor <init>(LU3/a;LU3/a;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lv4/c;->a:Z

    iput-object p1, p0, Lv4/c;->b:LU3/a;

    iput-object p2, p0, Lv4/c;->c:LU3/a;

    return-void
.end method


# virtual methods
.method public final a(LJ4/M;LJ4/M;)Z
    .locals 4

    const-string v0, "c1"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "c2"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-interface {p1}, LJ4/M;->e()LU3/g;

    move-result-object p1

    invoke-interface {p2}, LJ4/M;->e()LU3/g;

    move-result-object p2

    instance-of v0, p1, LU3/O;

    if-eqz v0, :cond_2

    instance-of v0, p2, LU3/O;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lv4/d;->a:Lv4/d;

    check-cast p1, LU3/O;

    check-cast p2, LU3/O;

    new-instance v1, Lv4/b;

    iget-object v2, p0, Lv4/c;->b:LU3/a;

    iget-object v3, p0, Lv4/c;->c:LU3/a;

    invoke-direct {v1, v2, v3}, Lv4/b;-><init>(LU3/a;LU3/a;)V

    iget-boolean p0, p0, Lv4/c;->a:Z

    invoke-virtual {v0, p1, p2, p0, v1}, Lv4/d;->d(LU3/O;LU3/O;ZLE3/c;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

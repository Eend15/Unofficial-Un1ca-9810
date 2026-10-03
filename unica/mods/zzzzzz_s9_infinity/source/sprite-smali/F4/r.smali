.class public final LF4/r;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/a;


# instance fields
.field public final synthetic d:LF4/u;

.field public final synthetic e:Z

.field public final synthetic f:Ln4/G;


# direct methods
.method public constructor <init>(LF4/u;ZLn4/G;)V
    .locals 0

    iput-object p1, p0, LF4/r;->d:LF4/u;

    iput-boolean p2, p0, LF4/r;->e:Z

    iput-object p3, p0, LF4/r;->f:Ln4/G;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, LF4/r;->d:LF4/u;

    iget-object v1, v0, LF4/u;->a:LF4/k;

    iget-object v1, v1, LF4/k;->c:LU3/j;

    invoke-virtual {v0, v1}, LF4/u;->a(LU3/j;)LF4/x;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, LF4/u;->a:LF4/k;

    iget-boolean v2, p0, LF4/r;->e:Z

    iget-object p0, p0, LF4/r;->f:Ln4/G;

    if-eqz v2, :cond_1

    iget-object v0, v0, LF4/k;->a:LF4/i;

    iget-object v0, v0, LF4/i;->e:LF4/b;

    invoke-interface {v0, v1, p0}, LF4/b;->p(LF4/x;Ln4/G;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lr3/j;->P0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object v0, v0, LF4/k;->a:LF4/i;

    iget-object v0, v0, LF4/i;->e:LF4/b;

    invoke-interface {v0, v1, p0}, LF4/b;->e(LF4/x;Ln4/G;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lr3/j;->P0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    sget-object p0, Lr3/r;->d:Lr3/r;

    :goto_1
    return-object p0
.end method

.class public final Li4/c;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/a;


# instance fields
.field public final synthetic d:Lw0/i;

.field public final synthetic e:LU3/O;

.field public final synthetic f:La4/p;

.field public final synthetic g:Li4/a;

.field public final synthetic h:LJ4/M;


# direct methods
.method public constructor <init>(Lw0/i;LU3/O;La4/p;Li4/a;LJ4/M;)V
    .locals 0

    iput-object p1, p0, Li4/c;->d:Lw0/i;

    iput-object p2, p0, Li4/c;->e:LU3/O;

    iput-object p3, p0, Li4/c;->f:La4/p;

    iput-object p4, p0, Li4/c;->g:Li4/a;

    iput-object p5, p0, Li4/c;->h:LJ4/M;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Li4/c;->d:Lw0/i;

    iget-object v0, v0, Lw0/i;->g:Ljava/lang/Object;

    check-cast v0, Lw0/s;

    iget-object v1, p0, Li4/c;->f:La4/p;

    invoke-virtual {v1}, La4/p;->f()Z

    move-result v1

    iget-object v2, p0, Li4/c;->h:LJ4/M;

    invoke-interface {v2}, LJ4/M;->e()LU3/g;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-interface {v2}, LU3/g;->n()LJ4/G;

    move-result-object v2

    :goto_0
    iget-object v4, p0, Li4/c;->g:Li4/a;

    const/16 v5, 0xf

    const/4 v6, 0x0

    invoke-static {v4, v6, v3, v2, v5}, Li4/a;->a(Li4/a;ILjava/util/Set;LJ4/G;I)Li4/a;

    move-result-object v2

    iget-object p0, p0, Li4/c;->e:LU3/O;

    invoke-virtual {v0, p0, v1, v2}, Lw0/s;->a(LU3/O;ZLi4/a;)LJ4/C;

    move-result-object p0

    return-object p0
.end method

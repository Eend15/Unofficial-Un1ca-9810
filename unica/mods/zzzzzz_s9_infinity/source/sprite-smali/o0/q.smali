.class public final Lo0/q;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/a;


# instance fields
.field public final synthetic d:Ln0/w;

.field public final synthetic e:Lo0/n;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lw0/e;


# direct methods
.method public constructor <init>(Ln0/w;Lo0/n;Ljava/lang/String;Lw0/e;)V
    .locals 0

    iput-object p1, p0, Lo0/q;->d:Ln0/w;

    iput-object p2, p0, Lo0/q;->e:Lo0/n;

    iput-object p3, p0, Lo0/q;->f:Ljava/lang/String;

    iput-object p4, p0, Lo0/q;->g:Lw0/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lo0/q;->d:Ln0/w;

    invoke-static {v0}, Lp4/g;->H(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lo0/j;

    iget-object v2, p0, Lo0/q;->e:Lo0/n;

    iget-object v3, p0, Lo0/q;->f:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4, v0}, Lo0/j;-><init>(Lo0/n;Ljava/lang/String;ILjava/util/List;)V

    new-instance v0, Lx0/d;

    iget-object p0, p0, Lo0/q;->g:Lw0/e;

    invoke-direct {v0, v1, p0}, Lx0/d;-><init>(Lo0/j;Lw0/e;)V

    invoke-virtual {v0}, Lx0/d;->run()V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0
.end method

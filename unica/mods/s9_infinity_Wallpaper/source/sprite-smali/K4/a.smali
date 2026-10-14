.class public final LK4/a;
.super LJ4/c;
.source "SourceFile"


# instance fields
.field public final synthetic a:LK4/c;

.field public final synthetic b:LJ4/X;


# direct methods
.method public constructor <init>(LK4/c;LJ4/X;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK4/a;->a:LK4/c;

    iput-object p2, p0, LK4/a;->b:LJ4/X;

    return-void
.end method


# virtual methods
.method public final w(LK4/b;LM4/c;)LM4/d;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "type"

    invoke-static {p2, p1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, LK4/a;->a:LK4/c;

    invoke-interface {p1, p2}, LK4/c;->r(LM4/c;)LM4/d;

    move-result-object p2

    check-cast p2, LJ4/C;

    iget-object p0, p0, LK4/a;->b:LJ4/X;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, LJ4/X;->g(ILJ4/C;)LJ4/C;

    move-result-object p0

    invoke-interface {p1, p0}, LK4/c;->i(LM4/c;)LJ4/G;

    move-result-object p0

    invoke-static {p0}, LF3/k;->c(Ljava/lang/Object;)V

    return-object p0
.end method

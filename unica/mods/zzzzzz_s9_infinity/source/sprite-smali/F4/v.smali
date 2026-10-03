.class public final LF4/v;
.super LF4/x;
.source "SourceFile"


# instance fields
.field public final e:Ln4/j;

.field public final f:LF4/v;

.field public final g:Ls4/b;

.field public final h:Ln4/i;

.field public final i:Z


# direct methods
.method public constructor <init>(Ln4/j;Lp4/f;LX3/C;LU3/L;LF4/v;)V
    .locals 1

    const-string v0, "classProto"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3, p4}, LF4/x;-><init>(Lp4/f;LX3/C;LU3/L;)V

    iput-object p1, p0, LF4/v;->e:Ln4/j;

    iput-object p5, p0, LF4/v;->f:LF4/v;

    iget p3, p1, Ln4/j;->h:I

    invoke-static {p2, p3}, Lw0/f;->v(Lp4/f;I)Ls4/b;

    move-result-object p2

    iput-object p2, p0, LF4/v;->g:Ls4/b;

    sget-object p2, Lp4/e;->f:Lp4/c;

    iget p3, p1, Ln4/j;->g:I

    invoke-virtual {p2, p3}, Lp4/c;->c(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ln4/i;

    if-nez p2, :cond_0

    sget-object p2, Ln4/i;->e:Ln4/i;

    :cond_0
    iput-object p2, p0, LF4/v;->h:Ln4/i;

    sget-object p2, Lp4/e;->g:Lp4/b;

    iget p1, p1, Ln4/j;->g:I

    invoke-virtual {p2, p1}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, LF4/v;->i:Z

    return-void
.end method


# virtual methods
.method public final f()Ls4/c;
    .locals 0

    iget-object p0, p0, LF4/v;->g:Ls4/b;

    invoke-virtual {p0}, Ls4/b;->b()Ls4/c;

    move-result-object p0

    return-object p0
.end method

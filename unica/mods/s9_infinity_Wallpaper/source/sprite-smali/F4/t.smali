.class public final LF4/t;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/a;


# instance fields
.field public final synthetic d:LF4/u;

.field public final synthetic e:LF4/x;

.field public final synthetic f:Lt4/m;

.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:Ln4/Z;


# direct methods
.method public constructor <init>(LF4/u;LF4/x;Lt4/m;IILn4/Z;)V
    .locals 0

    iput-object p1, p0, LF4/t;->d:LF4/u;

    iput-object p2, p0, LF4/t;->e:LF4/x;

    iput-object p3, p0, LF4/t;->f:Lt4/m;

    iput p4, p0, LF4/t;->g:I

    iput p5, p0, LF4/t;->h:I

    iput-object p6, p0, LF4/t;->i:Ln4/Z;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, LF4/t;->d:LF4/u;

    iget-object v0, v0, LF4/u;->a:LF4/k;

    iget-object v0, v0, LF4/k;->a:LF4/i;

    iget-object v1, v0, LF4/i;->e:LF4/b;

    iget-object v2, p0, LF4/t;->e:LF4/x;

    iget-object v6, p0, LF4/t;->i:Ln4/Z;

    iget-object v3, p0, LF4/t;->f:Lt4/m;

    iget v4, p0, LF4/t;->g:I

    iget v5, p0, LF4/t;->h:I

    invoke-interface/range {v1 .. v6}, LF4/b;->l(LF4/x;Lt4/m;IILn4/Z;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lr3/j;->P0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

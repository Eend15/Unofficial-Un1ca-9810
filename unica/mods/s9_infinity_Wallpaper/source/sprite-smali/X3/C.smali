.class public final LX3/C;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, LX3/C;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ln4/X;)V
    .locals 6

    const-string v0, "typeTable"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Ln4/X;->f:Ljava/util/List;

    .line 3
    iget v1, p1, Ln4/X;->e:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    .line 4
    iget p1, p1, Ln4/X;->g:I

    .line 5
    const-string v1, "typeTable.typeList"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-ltz v3, :cond_2

    .line 8
    check-cast v4, Ln4/Q;

    if-lt v3, p1, :cond_1

    .line 9
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {v4}, Ln4/Q;->r(Ln4/Q;)Ln4/P;

    move-result-object v3

    .line 11
    iget v4, v3, Ln4/P;->g:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Ln4/P;->g:I

    .line 12
    iput-boolean v2, v3, Ln4/P;->i:Z

    .line 13
    invoke-virtual {v3}, Ln4/P;->g()Ln4/Q;

    move-result-object v4

    .line 14
    invoke-virtual {v4}, Ln4/Q;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 15
    :cond_0
    new-instance p0, LW4/m;

    invoke-direct {p0}, LW4/m;-><init>()V

    .line 16
    throw p0

    .line 17
    :cond_1
    :goto_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v5

    goto :goto_0

    .line 18
    :cond_2
    invoke-static {}, Lr3/k;->i0()V

    const/4 p0, 0x0

    throw p0

    :cond_3
    move-object v0, v1

    .line 19
    :cond_4
    const-string p1, "run {\n        val origin\u2026 else originalTypes\n    }"

    invoke-static {v0, p1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, LX3/C;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(I)Ln4/Q;
    .locals 0

    iget-object p0, p0, LX3/C;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln4/Q;

    return-object p0
.end method

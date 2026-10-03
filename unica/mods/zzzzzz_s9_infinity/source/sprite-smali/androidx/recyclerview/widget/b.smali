.class public final Landroidx/recyclerview/widget/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll4/j;
.implements Ll4/k;
.implements LF4/b;


# instance fields
.field public final synthetic d:I

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x6

    iput v0, p0, Landroidx/recyclerview/widget/b;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LX3/D;Lw0/i;LI4/l;LZ3/b;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Landroidx/recyclerview/widget/b;->d:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p4, p0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    .line 4
    new-instance p4, LF4/a;

    const/16 v0, 0x15

    invoke-direct {p4, v0, p0}, LF4/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p3, p4}, LI4/l;->b(LE3/b;)LI4/e;

    move-result-object p3

    iput-object p3, p0, Landroidx/recyclerview/widget/b;->f:Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Landroidx/recyclerview/widget/b;->g:Ljava/lang/Object;

    .line 6
    iput-object p2, p0, Landroidx/recyclerview/widget/b;->h:Ljava/lang/Object;

    .line 7
    new-instance p3, Lw0/e;

    invoke-direct {p3, p1, p2}, Lw0/e;-><init>(LU3/x;Lw0/i;)V

    iput-object p3, p0, Landroidx/recyclerview/widget/b;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/C;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/b;->d:I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, LJ/c;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, LJ/c;-><init>(I)V

    iput-object v0, p0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/b;->f:Ljava/lang/Object;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/b;->g:Ljava/lang/Object;

    .line 12
    iput-object p1, p0, Landroidx/recyclerview/widget/b;->h:Ljava/lang/Object;

    .line 13
    new-instance p1, Landroidx/recyclerview/widget/y;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0}, Landroidx/recyclerview/widget/y;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Landroidx/recyclerview/widget/b;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/b;LU3/e;Ljava/util/List;LU3/L;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Landroidx/recyclerview/widget/b;->d:I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Landroidx/recyclerview/widget/b;->f:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/recyclerview/widget/b;->g:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/recyclerview/widget/b;->h:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/recyclerview/widget/b;->i:Ljava/lang/Object;

    .line 16
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/b;Landroidx/recyclerview/widget/b;Ls4/f;Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/recyclerview/widget/b;->d:I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Landroidx/recyclerview/widget/b;->g:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/recyclerview/widget/b;->h:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/recyclerview/widget/b;->i:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/recyclerview/widget/b;->f:Ljava/lang/Object;

    .line 28
    iput-object p1, p0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/b;Ls4/f;Landroidx/recyclerview/widget/b;LU3/e;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Landroidx/recyclerview/widget/b;->d:I

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/recyclerview/widget/b;->g:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/recyclerview/widget/b;->h:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/recyclerview/widget/b;->i:Ljava/lang/Object;

    .line 19
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/b;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg4/a;Lg4/f;Lq3/d;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/b;->d:I

    const-string v0, "typeParameterResolver"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    .line 22
    iput-object p2, p0, Landroidx/recyclerview/widget/b;->f:Ljava/lang/Object;

    .line 23
    iput-object p3, p0, Landroidx/recyclerview/widget/b;->g:Ljava/lang/Object;

    .line 24
    iput-object p3, p0, Landroidx/recyclerview/widget/b;->h:Ljava/lang/Object;

    .line 25
    new-instance p1, Lw0/i;

    invoke-direct {p1, p0, p2}, Lw0/i;-><init>(Landroidx/recyclerview/widget/b;Lg4/f;)V

    iput-object p1, p0, Landroidx/recyclerview/widget/b;->i:Ljava/lang/Object;

    return-void
.end method

.method public static A(Ln4/G;Lp4/f;LX3/C;ZZZ)Ll4/m;
    .locals 2

    sget-object v0, Lq4/j;->d:Lt4/o;

    const-string v1, "propertySignature"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lj0/s;->x(Lt4/m;Lt4/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq4/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p3, :cond_2

    sget-object p3, Lr4/h;->a:Lt4/i;

    invoke-static {p0, p1, p2, p5}, Lr4/h;->b(Ln4/G;Lp4/f;LX3/C;Z)Lr4/d;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    invoke-static {p0}, Lj0/s;->w(Lp4/g;)Ll4/m;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz p4, :cond_3

    iget p0, v0, Lq4/d;->e:I

    const/4 p2, 0x2

    and-int/2addr p0, p2

    if-ne p0, p2, :cond_3

    iget-object p0, v0, Lq4/d;->g:Lq4/c;

    const-string p2, "signature.syntheticMethod"

    invoke-static {p0, p2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "nameResolver"

    invoke-static {p1, p2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lq4/c;->f:I

    invoke-interface {p1, p2}, Lp4/f;->n(I)Ljava/lang/String;

    move-result-object p2

    iget p0, p0, Lq4/c;->g:I

    invoke-interface {p1, p0}, Lp4/f;->n(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ll4/m;

    invoke-static {p0, p2}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ll4/m;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_3
    return-object v1
.end method

.method public static synthetic B(Landroidx/recyclerview/widget/b;Ln4/G;Lp4/f;LX3/C;ZZI)Ll4/m;
    .locals 8

    and-int/lit8 v0, p6, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, p4

    :goto_0
    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, p5

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v2 .. v7}, Landroidx/recyclerview/widget/b;->A(Ln4/G;Lp4/f;LX3/C;ZZZ)Ll4/m;

    move-result-object p0

    return-object p0
.end method

.method public static K(LF4/v;)LZ3/c;
    .locals 2

    iget-object p0, p0, LF4/x;->d:Ljava/lang/Object;

    check-cast p0, LU3/L;

    instance-of v0, p0, Ll4/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Ll4/l;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Ll4/l;->d:LZ3/c;

    :goto_1
    return-object v1
.end method

.method public static final b(Landroidx/recyclerview/widget/b;Ls4/b;LZ3/a;Ljava/util/List;)Landroidx/recyclerview/widget/b;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, LQ3/a;->a:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/b;->E(Ls4/b;LU3/L;Ljava/util/List;)Landroidx/recyclerview/widget/b;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static synthetic w(Landroidx/recyclerview/widget/b;LF4/x;Ll4/m;ZLjava/lang/Boolean;ZI)Ljava/util/List;
    .locals 9

    and-int/lit8 v0, p6, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, p3

    :goto_0
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_1

    const/4 p4, 0x0

    :cond_1
    move-object v7, p4

    and-int/lit8 p3, p6, 0x20

    if-eqz p3, :cond_2

    move v8, v1

    goto :goto_1

    :cond_2
    move v8, p5

    :goto_1
    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Landroidx/recyclerview/widget/b;->v(LF4/x;Ll4/m;ZZLjava/lang/Boolean;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static y(Lt4/m;Lp4/f;LX3/C;IZ)Ll4/m;
    .locals 8

    instance-of v0, p0, Ln4/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object p3, Lr4/h;->a:Lt4/i;

    check-cast p0, Ln4/l;

    invoke-static {p0, p1, p2}, Lr4/h;->a(Ln4/l;Lp4/f;LX3/C;)Lr4/e;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p0}, Lj0/s;->w(Lp4/g;)Ll4/m;

    move-result-object v1

    goto/16 :goto_0

    :cond_1
    instance-of v0, p0, Ln4/y;

    if-eqz v0, :cond_3

    sget-object p3, Lr4/h;->a:Lt4/i;

    check-cast p0, Ln4/y;

    invoke-static {p0, p1, p2}, Lr4/h;->c(Ln4/y;Lp4/f;LX3/C;)Lr4/e;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v1

    :cond_2
    invoke-static {p0}, Lj0/s;->w(Lp4/g;)Ll4/m;

    move-result-object v1

    goto/16 :goto_0

    :cond_3
    instance-of v0, p0, Ln4/G;

    if-eqz v0, :cond_8

    sget-object v0, Lq4/j;->d:Lt4/o;

    const-string v2, "propertySignature"

    invoke-static {v0, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lj0/s;->x(Lt4/m;Lt4/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq4/d;

    if-nez v0, :cond_4

    return-object v1

    :cond_4
    invoke-static {p3}, Lq/e;->c(I)I

    move-result p3

    const/4 v2, 0x1

    if-eq p3, v2, :cond_7

    const/4 p0, 0x2

    const-string p2, "nameResolver"

    if-eq p3, p0, :cond_6

    const/4 p0, 0x3

    if-eq p3, p0, :cond_5

    goto :goto_0

    :cond_5
    iget p0, v0, Lq4/d;->e:I

    const/16 p3, 0x8

    and-int/2addr p0, p3

    if-ne p0, p3, :cond_8

    iget-object p0, v0, Lq4/d;->i:Lq4/c;

    const-string p3, "signature.setter"

    invoke-static {p0, p3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lq4/c;->f:I

    invoke-interface {p1, p2}, Lp4/f;->n(I)Ljava/lang/String;

    move-result-object p2

    iget p0, p0, Lq4/c;->g:I

    invoke-interface {p1, p0}, Lp4/f;->n(I)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ll4/m;

    invoke-static {p0, p2}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ll4/m;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget p0, v0, Lq4/d;->e:I

    const/4 p3, 0x4

    and-int/2addr p0, p3

    if-ne p0, p3, :cond_8

    iget-object p0, v0, Lq4/d;->h:Lq4/c;

    const-string p3, "signature.getter"

    invoke-static {p0, p3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lq4/c;->f:I

    invoke-interface {p1, p2}, Lp4/f;->n(I)Ljava/lang/String;

    move-result-object p2

    iget p0, p0, Lq4/c;->g:I

    invoke-interface {p1, p0}, Lp4/f;->n(I)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ll4/m;

    invoke-static {p0, p2}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ll4/m;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    move-object v2, p0

    check-cast v2, Ln4/G;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v3, p1

    move-object v4, p2

    move v7, p4

    invoke-static/range {v2 .. v7}, Landroidx/recyclerview/widget/b;->A(Ln4/G;Lp4/f;LX3/C;ZZZ)Ll4/m;

    move-result-object v1

    :cond_8
    :goto_0
    return-object v1
.end method


# virtual methods
.method public C(LF4/x;ZZLjava/lang/Boolean;Z)LZ3/c;
    .locals 3

    sget-object v0, Ln4/i;->f:Ln4/i;

    iget-object p0, p0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast p0, LZ3/b;

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    if-eqz p4, :cond_3

    instance-of p2, p1, LF4/v;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, LF4/v;

    iget-object v2, p2, LF4/v;->h:Ln4/i;

    if-ne v2, v0, :cond_0

    const-string p1, "DefaultImpls"

    invoke-static {p1}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object p1

    iget-object p2, p2, LF4/v;->g:Ls4/b;

    invoke-virtual {p2, p1}, Ls4/b;->d(Ls4/f;)Ls4/b;

    move-result-object p1

    invoke-static {p0, p1}, Lj0/s;->v(LZ3/b;Ls4/b;)LZ3/c;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    instance-of p2, p1, LF4/w;

    if-eqz p2, :cond_4

    iget-object p2, p1, LF4/x;->d:Ljava/lang/Object;

    check-cast p2, LU3/L;

    instance-of p4, p2, Ll4/e;

    if-eqz p4, :cond_1

    check-cast p2, Ll4/e;

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_0
    if-nez p2, :cond_2

    move-object p2, v1

    goto :goto_1

    :cond_2
    iget-object p2, p2, Ll4/e;->e:LA4/b;

    :goto_1
    if-eqz p2, :cond_4

    new-instance p1, Ls4/c;

    invoke-virtual {p2}, LA4/b;->d()Ljava/lang/String;

    move-result-object p2

    const-string p3, "facadeClassName.internalName"

    invoke-static {p2, p3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p3, 0x2f

    const/16 p4, 0x2e

    invoke-static {p2, p3, p4}, LV4/u;->k0(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ls4/c;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ls4/b;->j(Ls4/c;)Ls4/b;

    move-result-object p1

    invoke-static {p0, p1}, Lj0/s;->v(LZ3/b;Ls4/b;)LZ3/c;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "isConst should not be null for property (container="

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    if-eqz p3, :cond_6

    instance-of p2, p1, LF4/v;

    if-eqz p2, :cond_6

    move-object p2, p1

    check-cast p2, LF4/v;

    iget-object p3, p2, LF4/v;->h:Ln4/i;

    sget-object p4, Ln4/i;->i:Ln4/i;

    if-ne p3, p4, :cond_6

    iget-object p2, p2, LF4/v;->f:LF4/v;

    if-eqz p2, :cond_6

    sget-object p3, Ln4/i;->e:Ln4/i;

    iget-object p4, p2, LF4/v;->h:Ln4/i;

    if-eq p4, p3, :cond_5

    sget-object p3, Ln4/i;->g:Ln4/i;

    if-eq p4, p3, :cond_5

    if-eqz p5, :cond_6

    if-eq p4, v0, :cond_5

    sget-object p3, Ln4/i;->h:Ln4/i;

    if-ne p4, p3, :cond_6

    :cond_5
    invoke-static {p2}, Landroidx/recyclerview/widget/b;->K(LF4/v;)LZ3/c;

    move-result-object p0

    return-object p0

    :cond_6
    instance-of p2, p1, LF4/w;

    if-eqz p2, :cond_9

    iget-object p1, p1, LF4/x;->d:Ljava/lang/Object;

    check-cast p1, LU3/L;

    instance-of p2, p1, Ll4/e;

    if-eqz p2, :cond_9

    if-eqz p1, :cond_8

    check-cast p1, Ll4/e;

    iget-object p2, p1, Ll4/e;->f:LZ3/c;

    if-nez p2, :cond_7

    invoke-virtual {p1}, Ll4/e;->a()Ls4/b;

    move-result-object p1

    invoke-static {p0, p1}, Lj0/s;->v(LZ3/b;Ls4/b;)LZ3/c;

    move-result-object p2

    :cond_7
    return-object p2

    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type org.jetbrains.kotlin.load.kotlin.JvmPackagePartSource"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    return-object v1
.end method

.method public D()Z
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/b;->f:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public E(Ls4/b;LU3/L;Ljava/util/List;)Landroidx/recyclerview/widget/b;
    .locals 2

    const-string v0, "result"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/b;->g:Ljava/lang/Object;

    check-cast v0, LX3/D;

    iget-object v1, p0, Landroidx/recyclerview/widget/b;->h:Ljava/lang/Object;

    check-cast v1, Lw0/i;

    invoke-static {v0, p1, v1}, LR3/f;->D(LU3/x;Ls4/b;Lw0/i;)LU3/e;

    move-result-object p1

    new-instance v0, Landroidx/recyclerview/widget/b;

    invoke-direct {v0, p0, p1, p3, p2}, Landroidx/recyclerview/widget/b;-><init>(Landroidx/recyclerview/widget/b;LU3/e;Ljava/util/List;LU3/L;)V

    return-object v0
.end method

.method public F(LF4/x;Ln4/G;I)Ljava/util/List;
    .locals 13

    move-object v1, p1

    move/from16 v0, p3

    sget-object v2, Lp4/e;->A:Lp4/b;

    move-object v4, p2

    iget v3, v4, Ln4/G;->g:I

    invoke-virtual {v2, v3}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {p2}, Lr4/h;->d(Ln4/G;)Z

    move-result v11

    sget-object v2, Lr3/r;->d:Lr3/r;

    const/4 v12, 0x1

    if-ne v0, v12, :cond_1

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-object v0, v1, LF4/x;->b:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lp4/f;

    iget-object v0, v1, LF4/x;->c:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, LX3/C;

    const/16 v9, 0x28

    move-object v3, p0

    move-object v4, p2

    invoke-static/range {v3 .. v9}, Landroidx/recyclerview/widget/b;->B(Landroidx/recyclerview/widget/b;Ln4/G;Lp4/f;LX3/C;ZZI)Ll4/m;

    move-result-object v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    const/16 v6, 0x8

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, v3

    move v3, v4

    move-object v4, v10

    move v5, v11

    invoke-static/range {v0 .. v6}, Landroidx/recyclerview/widget/b;->w(Landroidx/recyclerview/widget/b;LF4/x;Ll4/m;ZLjava/lang/Boolean;ZI)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v3, v1, LF4/x;->b:Ljava/lang/Object;

    move-object v5, v3

    check-cast v5, Lp4/f;

    iget-object v3, v1, LF4/x;->c:Ljava/lang/Object;

    move-object v6, v3

    check-cast v6, LX3/C;

    const/16 v9, 0x30

    move-object v3, p0

    move-object v4, p2

    invoke-static/range {v3 .. v9}, Landroidx/recyclerview/widget/b;->B(Landroidx/recyclerview/widget/b;Ln4/G;Lp4/f;LX3/C;ZZI)Ll4/m;

    move-result-object v3

    if-nez v3, :cond_2

    return-object v2

    :cond_2
    iget-object v4, v3, Ll4/m;->a:Ljava/lang/String;

    const-string v5, "$delegate"

    invoke-static {v4, v5}, LV4/m;->o0(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x3

    if-ne v0, v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v12, 0x0

    :goto_0
    if-eq v4, v12, :cond_4

    return-object v2

    :cond_4
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v10

    move v6, v11

    invoke-virtual/range {v0 .. v6}, Landroidx/recyclerview/widget/b;->v(LF4/x;Ll4/m;ZZLjava/lang/Boolean;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public G(III)Landroidx/recyclerview/widget/a;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast p0, LJ/c;

    invoke-virtual {p0}, LJ/c;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/a;

    if-nez p0, :cond_0

    new-instance p0, Landroidx/recyclerview/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/recyclerview/widget/a;->a:I

    iput p2, p0, Landroidx/recyclerview/widget/a;->b:I

    iput p3, p0, Landroidx/recyclerview/widget/a;->c:I

    goto :goto_0

    :cond_0
    iput p1, p0, Landroidx/recyclerview/widget/a;->a:I

    iput p2, p0, Landroidx/recyclerview/widget/a;->b:I

    iput p3, p0, Landroidx/recyclerview/widget/a;->c:I

    :goto_0
    return-object p0
.end method

.method public H(Landroidx/recyclerview/widget/a;)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/b;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p1, Landroidx/recyclerview/widget/a;->a:I

    const/4 v1, 0x1

    iget-object p0, p0, Landroidx/recyclerview/widget/b;->h:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/C;

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroidx/recyclerview/widget/a;->b:I

    iget p1, p1, Landroidx/recyclerview/widget/a;->c:I

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/C;->e(II)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown update op type for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget v0, p1, Landroidx/recyclerview/widget/a;->b:I

    iget p1, p1, Landroidx/recyclerview/widget/a;->c:I

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/C;->c(II)V

    goto :goto_0

    :cond_2
    iget v0, p1, Landroidx/recyclerview/widget/a;->b:I

    iget p1, p1, Landroidx/recyclerview/widget/a;->c:I

    iget-object p0, p0, Landroidx/recyclerview/widget/C;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->N(ZII)V

    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->h0:Z

    goto :goto_0

    :cond_3
    iget v0, p1, Landroidx/recyclerview/widget/a;->b:I

    iget p1, p1, Landroidx/recyclerview/widget/a;->c:I

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/C;->d(II)V

    :goto_0
    return-void
.end method

.method public I()Ls1/b;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/b;->g:Ljava/lang/Object;

    check-cast p0, Lh3/b;

    invoke-interface {p0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls1/b;

    return-object p0
.end method

.method public J(Ljava/util/ArrayList;)V
    .locals 4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v3, LJ/c;

    invoke-virtual {v3, v2}, LJ/c;->c(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public L(II)I
    .locals 9

    iget-object v0, p0, Landroidx/recyclerview/widget/b;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    const/16 v3, 0x8

    if-ltz v1, :cond_d

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/a;

    iget v5, v4, Landroidx/recyclerview/widget/a;->a:I

    const/4 v6, 0x2

    if-ne v5, v3, :cond_8

    iget v3, v4, Landroidx/recyclerview/widget/a;->b:I

    iget v5, v4, Landroidx/recyclerview/widget/a;->c:I

    if-ge v3, v5, :cond_0

    move v7, v3

    move v8, v5

    goto :goto_1

    :cond_0
    move v8, v3

    move v7, v5

    :goto_1
    if-lt p1, v7, :cond_6

    if-gt p1, v8, :cond_6

    if-ne v7, v3, :cond_3

    if-ne p2, v2, :cond_1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroidx/recyclerview/widget/a;->c:I

    goto :goto_2

    :cond_1
    if-ne p2, v6, :cond_2

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Landroidx/recyclerview/widget/a;->c:I

    :cond_2
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_3
    if-ne p2, v2, :cond_4

    add-int/lit8 v3, v3, 0x1

    iput v3, v4, Landroidx/recyclerview/widget/a;->b:I

    goto :goto_3

    :cond_4
    if-ne p2, v6, :cond_5

    add-int/lit8 v3, v3, -0x1

    iput v3, v4, Landroidx/recyclerview/widget/a;->b:I

    :cond_5
    :goto_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    :cond_6
    if-ge p1, v3, :cond_c

    if-ne p2, v2, :cond_7

    add-int/lit8 v3, v3, 0x1

    iput v3, v4, Landroidx/recyclerview/widget/a;->b:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroidx/recyclerview/widget/a;->c:I

    goto :goto_4

    :cond_7
    if-ne p2, v6, :cond_c

    add-int/lit8 v3, v3, -0x1

    iput v3, v4, Landroidx/recyclerview/widget/a;->b:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Landroidx/recyclerview/widget/a;->c:I

    goto :goto_4

    :cond_8
    iget v3, v4, Landroidx/recyclerview/widget/a;->b:I

    if-gt v3, p1, :cond_a

    if-ne v5, v2, :cond_9

    iget v3, v4, Landroidx/recyclerview/widget/a;->c:I

    sub-int/2addr p1, v3

    goto :goto_4

    :cond_9
    if-ne v5, v6, :cond_c

    iget v3, v4, Landroidx/recyclerview/widget/a;->c:I

    add-int/2addr p1, v3

    goto :goto_4

    :cond_a
    if-ne p2, v2, :cond_b

    add-int/lit8 v3, v3, 0x1

    iput v3, v4, Landroidx/recyclerview/widget/a;->b:I

    goto :goto_4

    :cond_b
    if-ne p2, v6, :cond_c

    add-int/lit8 v3, v3, -0x1

    iput v3, v4, Landroidx/recyclerview/widget/a;->b:I

    :cond_c
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v2

    :goto_5
    if-ltz p2, :cond_11

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/a;

    iget v2, v1, Landroidx/recyclerview/widget/a;->a:I

    iget-object v4, p0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v4, LJ/c;

    if-ne v2, v3, :cond_f

    iget v2, v1, Landroidx/recyclerview/widget/a;->c:I

    iget v5, v1, Landroidx/recyclerview/widget/a;->b:I

    if-eq v2, v5, :cond_e

    if-gez v2, :cond_10

    :cond_e
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v4, v1}, LJ/c;->c(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_f
    iget v2, v1, Landroidx/recyclerview/widget/a;->c:I

    if-gtz v2, :cond_10

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v4, v1}, LJ/c;->c(Ljava/lang/Object;)Z

    :cond_10
    :goto_6
    add-int/lit8 p2, p2, -0x1

    goto :goto_5

    :cond_11
    return p1
.end method

.method public a(Ln4/Q;Lp4/f;)Ljava/util/ArrayList;
    .locals 3

    const-string v0, "proto"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lq4/j;->f:Lt4/o;

    invoke-virtual {p1, v0}, Lt4/m;->k(Lt4/o;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "proto.getExtension(JvmProtoBuf.typeAnnotation)"

    invoke-static {p1, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln4/g;

    const-string v2, "it"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/recyclerview/widget/b;->i:Ljava/lang/Object;

    check-cast v2, Lw0/e;

    invoke-virtual {v2, v1, p2}, Lw0/e;->r0(Ln4/g;Lp4/f;)LV3/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public c(LF4/x;Lt4/m;I)Ljava/util/List;
    .locals 7

    const-string v0, "proto"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p3, v0}, LB/a;->t(ILjava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p1, LF4/x;->b:Ljava/lang/Object;

    check-cast v1, Lp4/f;

    iget-object v2, p1, LF4/x;->c:Ljava/lang/Object;

    check-cast v2, LX3/C;

    invoke-static {p2, v1, v2, p3, v0}, Landroidx/recyclerview/widget/b;->y(Lt4/m;Lp4/f;LX3/C;IZ)Ll4/m;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v2, Ll4/m;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p2, Ll4/m;->a:Ljava/lang/String;

    const-string v0, "@0"

    invoke-static {p3, p2, v0}, LB/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Ll4/m;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/16 v6, 0x3c

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Landroidx/recyclerview/widget/b;->w(Landroidx/recyclerview/widget/b;LF4/x;Ll4/m;ZLjava/lang/Boolean;ZI)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lr3/r;->d:Lr3/r;

    return-object p0
.end method

.method public d(I)Z
    .locals 8

    iget-object v0, p0, Landroidx/recyclerview/widget/b;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/a;

    iget v5, v4, Landroidx/recyclerview/widget/a;->a:I

    const/16 v6, 0x8

    const/4 v7, 0x1

    if-ne v5, v6, :cond_0

    iget v4, v4, Landroidx/recyclerview/widget/a;->c:I

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v4, v5}, Landroidx/recyclerview/widget/b;->x(II)I

    move-result v4

    if-ne v4, p1, :cond_2

    return v7

    :cond_0
    if-ne v5, v7, :cond_2

    iget v5, v4, Landroidx/recyclerview/widget/a;->b:I

    iget v4, v4, Landroidx/recyclerview/widget/a;->c:I

    add-int/2addr v4, v5

    :goto_1
    if-ge v5, v4, :cond_2

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v5, v6}, Landroidx/recyclerview/widget/b;->x(II)I

    move-result v6

    if-ne v6, p1, :cond_1

    return v7

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public d0(Ls4/b;Ls4/f;)V
    .locals 1

    iget-object p0, p0, Landroidx/recyclerview/widget/b;->f:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    new-instance v0, Lx4/h;

    invoke-direct {v0, p1, p2}, Lx4/h;-><init>(Ls4/b;Ls4/f;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public e(LF4/x;Ln4/G;)Ljava/util/List;
    .locals 1

    const-string v0, "proto"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/b;->F(LF4/x;Ln4/G;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public f()V
    .locals 8

    iget-object v0, p0, Landroidx/recyclerview/widget/b;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/a;

    iget-object v4, p0, Landroidx/recyclerview/widget/b;->h:Ljava/lang/Object;

    check-cast v4, Landroidx/recyclerview/widget/C;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/C;->a(Landroidx/recyclerview/widget/a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/b;->J(Ljava/util/ArrayList;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/b;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/a;

    iget v4, v3, Landroidx/recyclerview/widget/a;->a:I

    const/4 v5, 0x1

    iget-object v6, p0, Landroidx/recyclerview/widget/b;->h:Ljava/lang/Object;

    check-cast v6, Landroidx/recyclerview/widget/C;

    if-eq v4, v5, :cond_4

    const/4 v7, 0x2

    if-eq v4, v7, :cond_3

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v6, v3}, Landroidx/recyclerview/widget/C;->a(Landroidx/recyclerview/widget/a;)V

    iget v4, v3, Landroidx/recyclerview/widget/a;->b:I

    iget v3, v3, Landroidx/recyclerview/widget/a;->c:I

    invoke-virtual {v6, v4, v3}, Landroidx/recyclerview/widget/C;->e(II)V

    goto :goto_2

    :cond_2
    invoke-virtual {v6, v3}, Landroidx/recyclerview/widget/C;->a(Landroidx/recyclerview/widget/a;)V

    iget v4, v3, Landroidx/recyclerview/widget/a;->b:I

    iget v3, v3, Landroidx/recyclerview/widget/a;->c:I

    invoke-virtual {v6, v4, v3}, Landroidx/recyclerview/widget/C;->c(II)V

    goto :goto_2

    :cond_3
    invoke-virtual {v6, v3}, Landroidx/recyclerview/widget/C;->a(Landroidx/recyclerview/widget/a;)V

    iget v4, v3, Landroidx/recyclerview/widget/a;->b:I

    iget v3, v3, Landroidx/recyclerview/widget/a;->c:I

    iget-object v6, v6, Landroidx/recyclerview/widget/C;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6, v5, v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->N(ZII)V

    iput-boolean v5, v6, Landroidx/recyclerview/widget/RecyclerView;->h0:Z

    iget-object v4, v6, Landroidx/recyclerview/widget/RecyclerView;->f0:Landroidx/recyclerview/widget/S;

    iget v5, v4, Landroidx/recyclerview/widget/S;->c:I

    add-int/2addr v5, v3

    iput v5, v4, Landroidx/recyclerview/widget/S;->c:I

    goto :goto_2

    :cond_4
    invoke-virtual {v6, v3}, Landroidx/recyclerview/widget/C;->a(Landroidx/recyclerview/widget/a;)V

    iget v4, v3, Landroidx/recyclerview/widget/a;->b:I

    iget v3, v3, Landroidx/recyclerview/widget/a;->c:I

    invoke-virtual {v6, v4, v3}, Landroidx/recyclerview/widget/C;->d(II)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/b;->J(Ljava/util/ArrayList;)V

    return-void
.end method

.method public g(LF4/x;Lt4/m;I)Ljava/util/List;
    .locals 10

    const-string v0, "proto"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p3, v0}, LB/a;->t(ILjava/lang/String;)V

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    check-cast p2, Ln4/G;

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/b;->F(LF4/x;Ln4/G;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p1, LF4/x;->b:Ljava/lang/Object;

    check-cast v1, Lp4/f;

    iget-object v2, p1, LF4/x;->c:Ljava/lang/Object;

    check-cast v2, LX3/C;

    invoke-static {p2, v1, v2, p3, v0}, Landroidx/recyclerview/widget/b;->y(Lt4/m;Lp4/f;LX3/C;IZ)Ll4/m;

    move-result-object v5

    if-nez v5, :cond_1

    sget-object p0, Lr3/r;->d:Lr3/r;

    return-object p0

    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/16 v9, 0x3c

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v3 .. v9}, Landroidx/recyclerview/widget/b;->w(Landroidx/recyclerview/widget/b;LF4/x;Ll4/m;ZLjava/lang/Boolean;ZI)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public h()V
    .locals 6

    iget v0, p0, Landroidx/recyclerview/widget/b;->d:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, LV3/c;

    iget-object v1, p0, Landroidx/recyclerview/widget/b;->g:Ljava/lang/Object;

    check-cast v1, LU3/e;

    invoke-interface {v1}, LU3/e;->n()LJ4/G;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    iget-object v3, p0, Landroidx/recyclerview/widget/b;->i:Ljava/lang/Object;

    check-cast v3, LU3/L;

    invoke-direct {v0, v1, v2, v3}, LV3/c;-><init>(LJ4/G;Ljava/util/Map;LU3/L;)V

    iget-object p0, p0, Landroidx/recyclerview/widget/b;->h:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->i:Ljava/lang/Object;

    check-cast v0, LU3/e;

    iget-object v1, p0, Landroidx/recyclerview/widget/b;->g:Ljava/lang/Object;

    check-cast v1, Ls4/f;

    invoke-static {v1, v0}, Le0/a;->A(Ls4/f;LU3/e;)LX3/W;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v2, Landroidx/recyclerview/widget/b;

    iget-object v2, v2, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    iget-object p0, p0, Landroidx/recyclerview/widget/b;->f:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-static {p0}, LS4/m;->d(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p0

    check-cast v0, LX3/X;

    invoke-virtual {v0}, LX3/X;->j()LJ4/C;

    move-result-object v0

    const-string v3, "parameter.type"

    invoke-static {v0, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lx4/b;

    new-instance v4, LF4/l;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v0}, LF4/l;-><init>(ILJ4/C;)V

    invoke-direct {v3, p0, v4}, Lx4/b;-><init>(Ljava/util/List;LE3/b;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :pswitch_1
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->g:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/b;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->h()V

    iget-object v0, p0, Landroidx/recyclerview/widget/b;->h:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/b;

    iget-object v0, v0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    new-instance v1, Lx4/a;

    iget-object v2, p0, Landroidx/recyclerview/widget/b;->f:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v2}, Lr3/j;->J0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LV3/b;

    invoke-direct {v1, v2}, Lx4/a;-><init>(LV3/b;)V

    iget-object p0, p0, Landroidx/recyclerview/widget/b;->i:Ljava/lang/Object;

    check-cast p0, Ls4/f;

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public i(Ls4/f;)Ll4/k;
    .locals 3

    iget v0, p0, Landroidx/recyclerview/widget/b;->d:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroidx/recyclerview/widget/b;

    iget-object v1, p0, Landroidx/recyclerview/widget/b;->f:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/b;

    iget-object v2, p0, Landroidx/recyclerview/widget/b;->g:Ljava/lang/Object;

    check-cast v2, LU3/e;

    invoke-direct {v0, p0, p1, v1, v2}, Landroidx/recyclerview/widget/b;-><init>(Landroidx/recyclerview/widget/b;Ls4/f;Landroidx/recyclerview/widget/b;LU3/e;)V

    return-object v0

    :pswitch_0
    iget-object p0, p0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/b;

    new-instance v0, Landroidx/recyclerview/widget/b;

    iget-object v1, p0, Landroidx/recyclerview/widget/b;->f:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/b;

    iget-object v2, p0, Landroidx/recyclerview/widget/b;->g:Ljava/lang/Object;

    check-cast v2, LU3/e;

    invoke-direct {v0, p0, p1, v1, v2}, Landroidx/recyclerview/widget/b;-><init>(Landroidx/recyclerview/widget/b;Ls4/f;Landroidx/recyclerview/widget/b;LU3/e;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public j(LF4/v;)Ljava/util/ArrayList;
    .locals 7

    const-string v0, "container"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/recyclerview/widget/b;->K(LF4/v;)LZ3/c;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "klass"

    iget-object v0, v0, LZ3/c;->a:Ljava/lang/Class;

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    const-string v1, "klass.declaredAnnotations"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    const-string v4, "annotation"

    invoke-static {v3, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lw0/f;->u(Ljava/lang/annotation/Annotation;)LL3/b;

    move-result-object v4

    invoke-static {v4}, Lw0/f;->x(LL3/b;)Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, La4/b;->a(Ljava/lang/Class;)Ls4/b;

    move-result-object v5

    new-instance v6, LZ3/a;

    invoke-direct {v6, v3}, LZ3/a;-><init>(Ljava/lang/annotation/Annotation;)V

    invoke-static {p0, v5, v6, p1}, Landroidx/recyclerview/widget/b;->b(Landroidx/recyclerview/widget/b;Ls4/b;LZ3/a;Ljava/util/List;)Landroidx/recyclerview/widget/b;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v5, v3, v4}, LR3/f;->X(Ll4/j;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    iget-object p0, p1, LF4/v;->g:Ls4/b;

    invoke-virtual {p0}, Ls4/b;->b()Ls4/c;

    move-result-object p0

    const-string p1, "Class for loading annotations is not found: "

    invoke-static {p0, p1}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k(LF4/x;Ln4/G;LJ4/C;)Ljava/lang/Object;
    .locals 8

    const-string v0, "proto"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lp4/e;->A:Lp4/b;

    iget v1, p2, Ln4/G;->g:I

    invoke-virtual {v0, v1}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p2}, Lr4/h;->d(Ln4/G;)Z

    move-result v7

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroidx/recyclerview/widget/b;->C(LF4/x;ZZLjava/lang/Boolean;Z)LZ3/c;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, LF4/v;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, LF4/v;

    invoke-static {v0}, Landroidx/recyclerview/widget/b;->K(LF4/v;)LZ3/c;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    return-object v1

    :cond_2
    iget-object v2, v0, LZ3/c;->b:Lm4/b;

    iget-object v2, v2, Lm4/b;->b:Lr4/f;

    sget-object v3, Ll4/c;->e:Lr4/f;

    const-string v4, "version"

    invoke-static {v3, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v4, v3, Lp4/a;->b:I

    iget v5, v3, Lp4/a;->c:I

    iget v3, v3, Lp4/a;->d:I

    invoke-virtual {v2, v4, v5, v3}, Lp4/a;->a(III)Z

    move-result v2

    iget-object v3, p1, LF4/x;->b:Ljava/lang/Object;

    check-cast v3, Lp4/f;

    iget-object p1, p1, LF4/x;->c:Ljava/lang/Object;

    check-cast p1, LX3/C;

    const/4 v4, 0x2

    invoke-static {p2, v3, p1, v4, v2}, Landroidx/recyclerview/widget/b;->y(Lt4/m;Lp4/f;LX3/C;IZ)Ll4/m;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v1

    :cond_3
    iget-object p0, p0, Landroidx/recyclerview/widget/b;->f:Ljava/lang/Object;

    check-cast p0, LI4/e;

    invoke-virtual {p0, v0}, LI4/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll4/a;

    iget-object p0, p0, Ll4/a;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    invoke-static {p3}, LR3/t;->a(LJ4/C;)Z

    move-result p1

    if-eqz p1, :cond_8

    check-cast p0, Lx4/g;

    instance-of p1, p0, Lx4/d;

    if-eqz p1, :cond_5

    new-instance p1, Lx4/v;

    check-cast p0, Lx4/d;

    iget-object p0, p0, Lx4/g;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    invoke-direct {p1, p0}, Lx4/v;-><init>(B)V

    :goto_1
    move-object p0, p1

    goto :goto_2

    :cond_5
    instance-of p1, p0, Lx4/t;

    if-eqz p1, :cond_6

    new-instance p1, Lx4/v;

    check-cast p0, Lx4/t;

    iget-object p0, p0, Lx4/g;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    invoke-direct {p1, p0}, Lx4/v;-><init>(S)V

    goto :goto_1

    :cond_6
    instance-of p1, p0, Lx4/j;

    if-eqz p1, :cond_7

    new-instance p1, Lx4/v;

    check-cast p0, Lx4/j;

    iget-object p0, p0, Lx4/g;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-direct {p1, p0}, Lx4/v;-><init>(I)V

    goto :goto_1

    :cond_7
    instance-of p1, p0, Lx4/r;

    if-eqz p1, :cond_8

    new-instance p1, Lx4/v;

    check-cast p0, Lx4/r;

    iget-object p0, p0, Lx4/g;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Lx4/v;-><init>(J)V

    goto :goto_1

    :cond_8
    :goto_2
    return-object p0
.end method

.method public k0(Ls4/b;)Ll4/j;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, LU3/L;->a:LU3/M;

    iget-object v2, p0, Landroidx/recyclerview/widget/b;->h:Ljava/lang/Object;

    check-cast v2, Landroidx/recyclerview/widget/b;

    invoke-virtual {v2, p1, v1, v0}, Landroidx/recyclerview/widget/b;->E(Ls4/b;LU3/L;Ljava/util/List;)Landroidx/recyclerview/widget/b;

    move-result-object p1

    new-instance v1, Lw0/i;

    invoke-direct {v1, p1, p0, v0}, Lw0/i;-><init>(Landroidx/recyclerview/widget/b;Landroidx/recyclerview/widget/b;Ljava/util/ArrayList;)V

    return-object v1
.end method

.method public l(LF4/x;Lt4/m;IILn4/Z;)Ljava/util/List;
    .locals 8

    const-string p5, "callableProto"

    invoke-static {p2, p5}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "kind"

    invoke-static {p3, p5}, LB/a;->t(ILjava/lang/String;)V

    iget-object p5, p1, LF4/x;->b:Ljava/lang/Object;

    check-cast p5, Lp4/f;

    iget-object v0, p1, LF4/x;->c:Ljava/lang/Object;

    check-cast v0, LX3/C;

    const/4 v1, 0x0

    invoke-static {p2, p5, v0, p3, v1}, Landroidx/recyclerview/widget/b;->y(Lt4/m;Lp4/f;LX3/C;IZ)Ll4/m;

    move-result-object p3

    if-eqz p3, :cond_6

    instance-of p5, p2, Ln4/y;

    const/16 v0, 0x40

    const/4 v2, 0x1

    if-eqz p5, :cond_1

    check-cast p2, Ln4/y;

    invoke-virtual {p2}, Ln4/y;->p()Z

    move-result p5

    if-nez p5, :cond_0

    iget p2, p2, Ln4/y;->f:I

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_4

    :cond_0
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_1
    instance-of p5, p2, Ln4/G;

    if-eqz p5, :cond_2

    check-cast p2, Ln4/G;

    invoke-virtual {p2}, Ln4/G;->p()Z

    move-result p5

    if-nez p5, :cond_0

    iget p2, p2, Ln4/G;->f:I

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_4

    goto :goto_0

    :cond_2
    instance-of p5, p2, Ln4/l;

    if-eqz p5, :cond_5

    move-object p2, p1

    check-cast p2, LF4/v;

    sget-object p5, Ln4/i;->g:Ln4/i;

    iget-object v3, p2, LF4/v;->h:Ln4/i;

    if-ne v3, p5, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :cond_3
    iget-boolean p2, p2, LF4/v;->i:Z

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    add-int/2addr p4, v1

    new-instance v3, Ll4/m;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p3, Ll4/m;->a:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, Ll4/m;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/16 v7, 0x3c

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Landroidx/recyclerview/widget/b;->w(Landroidx/recyclerview/widget/b;LF4/x;Ll4/m;ZLjava/lang/Boolean;ZI)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string p2, "Unsupported message: "

    invoke-static {p1, p2}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    sget-object p0, Lr3/r;->d:Lr3/r;

    return-object p0
.end method

.method public m(Ln4/W;Lp4/f;)Ljava/util/ArrayList;
    .locals 3

    const-string v0, "proto"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lq4/j;->h:Lt4/o;

    invoke-virtual {p1, v0}, Lt4/m;->k(Lt4/o;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "proto.getExtension(JvmPr\u2026.typeParameterAnnotation)"

    invoke-static {p1, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln4/g;

    const-string v2, "it"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/recyclerview/widget/b;->i:Ljava/lang/Object;

    check-cast v2, Lw0/e;

    invoke-virtual {v2, v1, p2}, Lw0/e;->r0(Ln4/g;Lp4/f;)LV3/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public m0(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/b;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/recyclerview/widget/b;->g:Ljava/lang/Object;

    check-cast v1, Ls4/f;

    iget-object p0, p0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lp4/g;->t(Ljava/lang/Object;)Lx4/g;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "Unsupported annotation argument: "

    invoke-static {v1, p0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "message"

    invoke-static {p0, p1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lx4/i;

    invoke-direct {p1, p0}, Lx4/i;-><init>(Ljava/lang/String;)V

    move-object p0, p1

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public n(Ls4/f;Lx4/f;)V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/b;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    new-instance v0, Lx4/q;

    new-instance v1, Lx4/o;

    invoke-direct {v1, p2}, Lx4/o;-><init>(Lx4/f;)V

    invoke-direct {v0, v1}, Lx4/g;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/b;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/b;->n(Ls4/f;Lx4/f;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public o(LF4/x;Ln4/t;)Ljava/util/List;
    .locals 9

    const-string v0, "container"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p2, Ln4/t;->g:I

    iget-object v0, p1, LF4/x;->b:Ljava/lang/Object;

    check-cast v0, Lp4/f;

    invoke-interface {v0, p2}, Lp4/f;->n(I)Ljava/lang/String;

    move-result-object p2

    move-object v0, p1

    check-cast v0, LF4/v;

    iget-object v0, v0, LF4/v;->g:Ls4/b;

    invoke-virtual {v0}, Ls4/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr4/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "desc"

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ll4/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x23

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v4, p2}, Ll4/m;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/16 v8, 0x3c

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v2 .. v8}, Landroidx/recyclerview/widget/b;->w(Landroidx/recyclerview/widget/b;LF4/x;Ll4/m;ZLjava/lang/Boolean;ZI)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public p(LF4/x;Ln4/G;)Ljava/util/List;
    .locals 1

    const-string v0, "proto"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/b;->F(LF4/x;Ln4/G;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public q(Landroidx/recyclerview/widget/a;)V
    .locals 12

    iget v0, p1, Landroidx/recyclerview/widget/a;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/16 v2, 0x8

    if-eq v0, v2, :cond_8

    iget v2, p1, Landroidx/recyclerview/widget/a;->b:I

    invoke-virtual {p0, v2, v0}, Landroidx/recyclerview/widget/b;->L(II)I

    move-result v0

    iget v2, p1, Landroidx/recyclerview/widget/a;->b:I

    iget v3, p1, Landroidx/recyclerview/widget/a;->a:I

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-eq v3, v4, :cond_1

    if-ne v3, v5, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "op should be remove or update."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    move v6, v1

    move v7, v6

    :goto_1
    iget v8, p1, Landroidx/recyclerview/widget/a;->c:I

    iget-object v9, p0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v9, LJ/c;

    if-ge v6, v8, :cond_6

    iget v8, p1, Landroidx/recyclerview/widget/a;->b:I

    mul-int v10, v3, v6

    add-int/2addr v10, v8

    iget v8, p1, Landroidx/recyclerview/widget/a;->a:I

    invoke-virtual {p0, v10, v8}, Landroidx/recyclerview/widget/b;->L(II)I

    move-result v8

    iget v10, p1, Landroidx/recyclerview/widget/a;->a:I

    if-eq v10, v4, :cond_3

    if-eq v10, v5, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v11, v0, 0x1

    if-ne v8, v11, :cond_4

    goto :goto_2

    :cond_3
    if-ne v8, v0, :cond_4

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_4
    :goto_3
    invoke-virtual {p0, v10, v0, v7}, Landroidx/recyclerview/widget/b;->G(III)Landroidx/recyclerview/widget/a;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/b;->u(Landroidx/recyclerview/widget/a;I)V

    invoke-virtual {v9, v0}, LJ/c;->c(Ljava/lang/Object;)Z

    iget v0, p1, Landroidx/recyclerview/widget/a;->a:I

    if-ne v0, v5, :cond_5

    add-int/2addr v2, v7

    :cond_5
    move v7, v1

    move v0, v8

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v9, p1}, LJ/c;->c(Ljava/lang/Object;)Z

    if-lez v7, :cond_7

    iget p1, p1, Landroidx/recyclerview/widget/a;->a:I

    invoke-virtual {p0, p1, v0, v7}, Landroidx/recyclerview/widget/b;->G(III)Landroidx/recyclerview/widget/a;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/b;->u(Landroidx/recyclerview/widget/a;I)V

    invoke-virtual {v9, p1}, LJ/c;->c(Ljava/lang/Object;)Z

    :cond_7
    return-void

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "should not dispatch add or move for pre layout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public q0(Lx4/f;)V
    .locals 2

    iget-object p0, p0, Landroidx/recyclerview/widget/b;->f:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    new-instance v0, Lx4/q;

    new-instance v1, Lx4/o;

    invoke-direct {v1, p1}, Lx4/o;-><init>(Lx4/f;)V

    invoke-direct {v0, v1}, Lx4/g;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public r(Ls4/b;Ls4/f;)Ll4/j;
    .locals 3

    iget v0, p0, Landroidx/recyclerview/widget/b;->d:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, LU3/L;->a:LU3/M;

    iget-object v2, p0, Landroidx/recyclerview/widget/b;->f:Ljava/lang/Object;

    check-cast v2, Landroidx/recyclerview/widget/b;

    invoke-virtual {v2, p1, v1, v0}, Landroidx/recyclerview/widget/b;->E(Ls4/b;LU3/L;Ljava/util/List;)Landroidx/recyclerview/widget/b;

    move-result-object p1

    new-instance v1, Landroidx/recyclerview/widget/b;

    invoke-direct {v1, p1, p0, p2, v0}, Landroidx/recyclerview/widget/b;-><init>(Landroidx/recyclerview/widget/b;Landroidx/recyclerview/widget/b;Ls4/f;Ljava/util/ArrayList;)V

    return-object v1

    :pswitch_0
    iget-object p0, p0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/b;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/b;->r(Ls4/b;Ls4/f;)Ll4/j;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public s(Ls4/f;Ls4/b;Ls4/f;)V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/b;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    new-instance v0, Lx4/h;

    invoke-direct {v0, p2, p3}, Lx4/h;-><init>(Ls4/b;Ls4/f;)V

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/b;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/b;->s(Ls4/f;Ls4/b;Ls4/f;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public t(Ls4/f;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/b;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-static {p2}, Lp4/g;->t(Ljava/lang/Object;)Lx4/g;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "Unsupported annotation argument: "

    invoke-static {p1, p2}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "message"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lx4/i;

    invoke-direct {v0, p2}, Lx4/i;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/b;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/b;->t(Ls4/f;Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public u(Landroidx/recyclerview/widget/a;I)V
    .locals 2

    iget-object p0, p0, Landroidx/recyclerview/widget/b;->h:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/C;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/C;->a(Landroidx/recyclerview/widget/a;)V

    iget v0, p1, Landroidx/recyclerview/widget/a;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget p1, p1, Landroidx/recyclerview/widget/a;->c:I

    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/C;->c(II)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "only remove and update ops can be dispatched in first pass"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget p1, p1, Landroidx/recyclerview/widget/a;->c:I

    iget-object p0, p0, Landroidx/recyclerview/widget/C;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->N(ZII)V

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->h0:Z

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->f0:Landroidx/recyclerview/widget/S;

    iget p2, p0, Landroidx/recyclerview/widget/S;->c:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/recyclerview/widget/S;->c:I

    :goto_0
    return-void
.end method

.method public v(LF4/x;Ll4/m;ZZLjava/lang/Boolean;Z)Ljava/util/List;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/b;->C(LF4/x;ZZLjava/lang/Boolean;Z)LZ3/c;

    move-result-object p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    instance-of p3, p1, LF4/v;

    if-eqz p3, :cond_1

    check-cast p1, LF4/v;

    invoke-static {p1}, Landroidx/recyclerview/widget/b;->K(LF4/v;)LZ3/c;

    move-result-object p3

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    sget-object p1, Lr3/r;->d:Lr3/r;

    if-nez p3, :cond_2

    return-object p1

    :cond_2
    iget-object p0, p0, Landroidx/recyclerview/widget/b;->f:Ljava/lang/Object;

    check-cast p0, LI4/e;

    invoke-virtual {p0, p3}, LI4/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll4/a;

    iget-object p0, p0, Ll4/a;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, p0

    :goto_1
    return-object p1
.end method

.method public x(II)I
    .locals 5

    iget-object p0, p0, Landroidx/recyclerview/widget/b;->g:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge p2, v0, :cond_6

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/a;

    iget v2, v1, Landroidx/recyclerview/widget/a;->a:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    iget v2, v1, Landroidx/recyclerview/widget/a;->b:I

    if-ne v2, p1, :cond_0

    iget p1, v1, Landroidx/recyclerview/widget/a;->c:I

    goto :goto_1

    :cond_0
    if-ge v2, p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    :cond_1
    iget v1, v1, Landroidx/recyclerview/widget/a;->c:I

    if-gt v1, p1, :cond_5

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    iget v3, v1, Landroidx/recyclerview/widget/a;->b:I

    if-gt v3, p1, :cond_5

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    iget v1, v1, Landroidx/recyclerview/widget/a;->c:I

    add-int/2addr v3, v1

    if-ge p1, v3, :cond_3

    const/4 p0, -0x1

    return p0

    :cond_3
    sub-int/2addr p1, v1

    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    iget v1, v1, Landroidx/recyclerview/widget/a;->c:I

    add-int/2addr p1, v1

    :cond_5
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    return p1
.end method

.method public z()Ld4/u;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/b;->h:Ljava/lang/Object;

    invoke-interface {p0}, Lq3/d;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ld4/u;

    return-object p0
.end method

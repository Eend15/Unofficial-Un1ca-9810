.class public abstract Lh4/w;
.super LC4/p;
.source "SourceFile"


# static fields
.field public static final synthetic m:[LL3/l;


# instance fields
.field public final b:Landroidx/recyclerview/widget/b;

.field public final c:Lh4/w;

.field public final d:LI4/c;

.field public final e:LI4/i;

.field public final f:LI4/e;

.field public final g:LI4/j;

.field public final h:LI4/e;

.field public final i:LI4/i;

.field public final j:LI4/i;

.field public final k:LI4/i;

.field public final l:LI4/e;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, LF3/o;

    sget-object v1, LF3/t;->a:LF3/u;

    const-class v2, Lh4/w;

    invoke-virtual {v1, v2}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object v3

    const-string v4, "functionNamesLazy"

    const-string v5, "getFunctionNamesLazy()Ljava/util/Set;"

    invoke-direct {v0, v3, v4, v5}, LF3/o;-><init>(LL3/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, LF3/u;->f(LF3/o;)LL3/k;

    move-result-object v0

    new-instance v3, LF3/o;

    invoke-virtual {v1, v2}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object v4

    const-string v5, "propertyNamesLazy"

    const-string v6, "getPropertyNamesLazy()Ljava/util/Set;"

    invoke-direct {v3, v4, v5, v6}, LF3/o;-><init>(LL3/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, LF3/u;->f(LF3/o;)LL3/k;

    move-result-object v3

    new-instance v4, LF3/o;

    invoke-virtual {v1, v2}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object v2

    const-string v5, "classNamesLazy"

    const-string v6, "getClassNamesLazy()Ljava/util/Set;"

    invoke-direct {v4, v2, v5, v6}, LF3/o;-><init>(LL3/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, LF3/u;->f(LF3/o;)LL3/k;

    move-result-object v1

    filled-new-array {v0, v3, v1}, [LL3/l;

    move-result-object v0

    sput-object v0, Lh4/w;->m:[LL3/l;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/b;Lh4/w;)V
    .locals 1

    const-string v0, "c"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh4/w;->b:Landroidx/recyclerview/widget/b;

    iput-object p2, p0, Lh4/w;->c:Lh4/w;

    iget-object p1, p1, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast p1, Lg4/a;

    iget-object p1, p1, Lg4/a;->a:LI4/l;

    new-instance p2, Lh4/u;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lh4/u;-><init>(Lh4/w;I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LI4/c;

    invoke-direct {v0, p1, p2}, LI4/i;-><init>(LI4/l;LE3/a;)V

    iput-object v0, p0, Lh4/w;->d:LI4/c;

    new-instance p2, Lh4/u;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Lh4/u;-><init>(Lh4/w;I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LI4/i;

    invoke-direct {v0, p1, p2}, LI4/h;-><init>(LI4/l;LE3/a;)V

    iput-object v0, p0, Lh4/w;->e:LI4/i;

    new-instance p2, Lh4/v;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lh4/v;-><init>(Lh4/w;I)V

    invoke-virtual {p1, p2}, LI4/l;->b(LE3/b;)LI4/e;

    move-result-object p2

    iput-object p2, p0, Lh4/w;->f:LI4/e;

    new-instance p2, Lh4/v;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lh4/v;-><init>(Lh4/w;I)V

    invoke-virtual {p1, p2}, LI4/l;->c(LE3/b;)LI4/j;

    move-result-object p2

    iput-object p2, p0, Lh4/w;->g:LI4/j;

    new-instance p2, Lh4/v;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Lh4/v;-><init>(Lh4/w;I)V

    invoke-virtual {p1, p2}, LI4/l;->b(LE3/b;)LI4/e;

    move-result-object p2

    iput-object p2, p0, Lh4/w;->h:LI4/e;

    new-instance p2, Lh4/u;

    const/4 v0, 0x3

    invoke-direct {p2, p0, v0}, Lh4/u;-><init>(Lh4/w;I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LI4/i;

    invoke-direct {v0, p1, p2}, LI4/h;-><init>(LI4/l;LE3/a;)V

    iput-object v0, p0, Lh4/w;->i:LI4/i;

    new-instance p2, Lh4/u;

    const/4 v0, 0x4

    invoke-direct {p2, p0, v0}, Lh4/u;-><init>(Lh4/w;I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LI4/i;

    invoke-direct {v0, p1, p2}, LI4/h;-><init>(LI4/l;LE3/a;)V

    iput-object v0, p0, Lh4/w;->j:LI4/i;

    new-instance p2, Lh4/u;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lh4/u;-><init>(Lh4/w;I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LI4/i;

    invoke-direct {v0, p1, p2}, LI4/h;-><init>(LI4/l;LE3/a;)V

    iput-object v0, p0, Lh4/w;->k:LI4/i;

    new-instance p2, Lh4/v;

    const/4 v0, 0x3

    invoke-direct {p2, p0, v0}, Lh4/v;-><init>(Lh4/w;I)V

    invoke-virtual {p1, p2}, LI4/l;->b(LE3/b;)LI4/e;

    move-result-object p1

    iput-object p1, p0, Lh4/w;->l:LI4/e;

    return-void
.end method

.method public static l(La4/w;Landroidx/recyclerview/widget/b;)LJ4/C;
    .locals 3

    const-string v0, "method"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, La4/w;->d()Ljava/lang/reflect/Member;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "member.declaringClass"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v2, v0, v1, v2}, Li4/d;->b(IZLh4/B;I)Li4/a;

    move-result-object v0

    invoke-virtual {p0}, La4/w;->g()La4/B;

    move-result-object p0

    iget-object p1, p1, Landroidx/recyclerview/widget/b;->i:Ljava/lang/Object;

    check-cast p1, Lw0/i;

    invoke-virtual {p1, p0, v0}, Lw0/i;->I(Lj4/d;Li4/a;)LJ4/C;

    move-result-object p0

    return-object p0
.end method

.method public static u(Landroidx/recyclerview/widget/b;LX3/w;Ljava/util/List;)LI/d;
    .locals 19

    move-object/from16 v0, p0

    invoke-static/range {p2 .. p2}, Lr3/j;->T0(Ljava/util/List;)LU4/n;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, LU4/n;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    move-object v5, v1

    check-cast v5, LU4/b;

    iget-object v6, v5, LU4/b;->e:Ljava/util/Iterator;

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v5}, LU4/b;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr3/u;

    iget v9, v5, Lr3/u;->a:I

    iget-object v5, v5, Lr3/u;->b:Ljava/lang/Object;

    check-cast v5, La4/D;

    invoke-static {v0, v5}, Le0/a;->U(Landroidx/recyclerview/widget/b;Lj4/b;)Lg4/c;

    move-result-object v10

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static {v6, v3, v8, v7}, Li4/d;->b(IZLh4/B;I)Li4/a;

    move-result-object v6

    iget-object v7, v0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v7, Lg4/a;

    iget-object v11, v5, La4/D;->a:La4/B;

    iget-boolean v12, v5, La4/D;->d:Z

    const/4 v13, 0x1

    iget-object v14, v0, Landroidx/recyclerview/widget/b;->i:Ljava/lang/Object;

    check-cast v14, Lw0/i;

    iget-object v15, v7, Lg4/a;->o:LX3/D;

    if-eqz v12, :cond_2

    instance-of v12, v11, La4/h;

    if-eqz v12, :cond_0

    check-cast v11, La4/h;

    goto :goto_1

    :cond_0
    move-object v11, v8

    :goto_1
    if-eqz v11, :cond_1

    invoke-virtual {v14, v11, v6, v13}, Lw0/i;->H(La4/h;Li4/a;Z)LJ4/b0;

    move-result-object v6

    iget-object v11, v15, LX3/D;->g:LR3/j;

    invoke-virtual {v11, v6}, LR3/j;->f(LJ4/C;)LJ4/C;

    move-result-object v11

    new-instance v12, Lq3/f;

    invoke-direct {v12, v6, v11}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Vararg parameter should be an array: "

    invoke-static {v5, v1}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    invoke-virtual {v14, v11, v6}, Lw0/i;->I(Lj4/d;Li4/a;)LJ4/C;

    move-result-object v6

    new-instance v12, Lq3/f;

    invoke-direct {v12, v6, v8}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    iget-object v6, v12, Lq3/f;->d:Ljava/lang/Object;

    move-object v14, v6

    check-cast v14, LJ4/C;

    iget-object v6, v12, Lq3/f;->e:Ljava/lang/Object;

    move-object/from16 v16, v6

    check-cast v16, LJ4/C;

    invoke-virtual/range {p1 .. p1}, LX3/p;->r()Ls4/f;

    move-result-object v6

    invoke-virtual {v6}, Ls4/f;->b()Ljava/lang/String;

    move-result-object v6

    const-string v11, "equals"

    invoke-static {v6, v11}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v13, :cond_3

    iget-object v6, v15, LX3/D;->g:LR3/j;

    invoke-virtual {v6}, LR3/j;->n()LJ4/G;

    move-result-object v6

    invoke-virtual {v6, v14}, LJ4/C;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "other"

    invoke-static {v6}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v6

    :goto_3
    move-object v11, v6

    goto :goto_5

    :cond_3
    iget-object v6, v5, La4/D;->c:Ljava/lang/String;

    if-nez v6, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {v6}, Ls4/f;->d(Ljava/lang/String;)Ls4/f;

    move-result-object v8

    :goto_4
    if-nez v8, :cond_5

    move v4, v13

    :cond_5
    if-nez v8, :cond_6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v8, "p"

    invoke-static {v6, v8}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v6

    goto :goto_3

    :cond_6
    move-object v11, v8

    :goto_5
    new-instance v15, LX3/W;

    iget-object v6, v7, Lg4/a;->j:LZ3/e;

    invoke-virtual {v6, v5}, LZ3/e;->b(Lj4/c;)LZ3/g;

    move-result-object v17

    const/4 v5, 0x0

    const/16 v18, 0x0

    const/4 v8, 0x0

    const/4 v13, 0x0

    move-object v6, v15

    move-object/from16 v7, p1

    move-object v12, v14

    move v14, v5

    move-object v5, v15

    move/from16 v15, v18

    invoke-direct/range {v6 .. v17}, LX3/W;-><init>(LU3/a;LX3/W;ILV3/h;Ls4/f;LJ4/C;ZZZLJ4/C;LU3/L;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    invoke-static {v2}, Lr3/j;->P0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    new-instance v1, LI/d;

    const/4 v2, 0x5

    invoke-direct {v1, v0, v4, v2}, LI/d;-><init>(Ljava/lang/Object;ZI)V

    return-object v1
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 2

    iget-object p0, p0, Lh4/w;->i:LI4/i;

    sget-object v0, Lh4/w;->m:[LL3/l;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lw0/f;->C(LI4/m;LL3/l;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public final b()Ljava/util/Set;
    .locals 2

    iget-object p0, p0, Lh4/w;->j:LI4/i;

    sget-object v0, Lh4/w;->m:[LL3/l;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lw0/f;->C(LI4/m;LL3/l;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public d(Ls4/f;Lc4/b;)Ljava/util/Collection;
    .locals 0

    const-string p2, "name"

    invoke-static {p1, p2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lh4/w;->b()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p0, Lr3/r;->d:Lr3/r;

    return-object p0

    :cond_0
    iget-object p0, p0, Lh4/w;->l:LI4/e;

    invoke-virtual {p0, p1}, LI4/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public e(LC4/f;LE3/b;)Ljava/util/Collection;
    .locals 1

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nameFilter"

    invoke-static {p2, p1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lh4/w;->d:LI4/c;

    invoke-virtual {p0}, LI4/i;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public final f()Ljava/util/Set;
    .locals 2

    iget-object p0, p0, Lh4/w;->k:LI4/i;

    sget-object v0, Lh4/w;->m:[LL3/l;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lw0/f;->C(LI4/m;LL3/l;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public g(Ls4/f;Lc4/b;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lh4/w;->a()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p0, Lr3/r;->d:Lr3/r;

    return-object p0

    :cond_0
    iget-object p0, p0, Lh4/w;->h:LI4/e;

    invoke-virtual {p0, p1}, LI4/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public abstract h(LC4/f;LC4/l;)Ljava/util/Set;
.end method

.method public abstract i(LC4/f;LC4/l;)Ljava/util/Set;
.end method

.method public j(Ljava/util/ArrayList;Ls4/f;)V
    .locals 0

    const-string p0, "name"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract k()Lh4/c;
.end method

.method public abstract m(Ljava/util/LinkedHashSet;Ls4/f;)V
.end method

.method public abstract n(Ljava/util/ArrayList;Ls4/f;)V
.end method

.method public abstract o(LC4/f;)Ljava/util/Set;
.end method

.method public abstract p()LU3/J;
.end method

.method public abstract q()LU3/j;
.end method

.method public r(Lf4/f;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract s(La4/w;Ljava/util/ArrayList;LJ4/C;Ljava/util/List;)Lh4/t;
.end method

.method public final t(La4/w;)Lf4/f;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "method"

    invoke-static {v1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lh4/w;->b:Landroidx/recyclerview/widget/b;

    invoke-static {v2, v1}, Le0/a;->U(Landroidx/recyclerview/widget/b;Lj4/b;)Lg4/c;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lh4/w;->q()LU3/j;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, La4/v;->e()Ls4/f;

    move-result-object v7

    iget-object v3, v2, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v3, Lg4/a;

    iget-object v3, v3, Lg4/a;->j:LZ3/e;

    invoke-virtual {v3, v1}, LZ3/e;->b(Lj4/c;)LZ3/g;

    move-result-object v9

    iget-object v3, v0, Lh4/w;->e:LI4/i;

    invoke-virtual {v3}, LI4/i;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh4/c;

    invoke-virtual/range {p1 .. p1}, La4/v;->e()Ls4/f;

    move-result-object v5

    invoke-interface {v3, v5}, Lh4/c;->f(Ls4/f;)V

    if-eqz v4, :cond_5

    new-instance v15, Lf4/f;

    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v10, 0x0

    move-object v3, v15

    invoke-direct/range {v3 .. v10}, Lf4/f;-><init>(LU3/j;LX3/P;LV3/h;Ls4/f;ILU3/L;Z)V

    const-string v3, "<this>"

    invoke-static {v2, v3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v2, Landroidx/recyclerview/widget/b;->g:Ljava/lang/Object;

    iget-object v4, v2, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v4, Lg4/a;

    new-instance v5, Lg4/e;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v15, v1, v6}, Lg4/e;-><init>(Landroidx/recyclerview/widget/b;LU3/k;Lj4/e;I)V

    new-instance v2, Landroidx/recyclerview/widget/b;

    invoke-direct {v2, v4, v5, v3}, Landroidx/recyclerview/widget/b;-><init>(Lg4/a;Lg4/f;Lq3/d;)V

    invoke-virtual/range {p1 .. p1}, La4/w;->q()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La4/C;

    iget-object v6, v2, Landroidx/recyclerview/widget/b;->f:Ljava/lang/Object;

    check-cast v6, Lg4/f;

    invoke-interface {v6, v5}, Lg4/f;->a(La4/C;)LU3/O;

    move-result-object v5

    invoke-static {v5}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, La4/w;->h()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v15, v3}, Lh4/w;->u(Landroidx/recyclerview/widget/b;LX3/w;Ljava/util/List;)LI/d;

    move-result-object v3

    invoke-static {v1, v2}, Lh4/w;->l(La4/w;Landroidx/recyclerview/widget/b;)LJ4/C;

    move-result-object v5

    iget-object v6, v3, LI/d;->f:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    invoke-virtual {v0, v1, v4, v5, v6}, Lh4/w;->s(La4/w;Ljava/util/ArrayList;LJ4/C;Ljava/util/List;)Lh4/t;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lh4/w;->p()LU3/J;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, La4/v;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    invoke-static/range {p1 .. p1}, La4/x;->I(La4/y;)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x3

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    move/from16 v16, v0

    goto :goto_1

    :cond_1
    if-nez v5, :cond_2

    move/from16 v16, v7

    goto :goto_1

    :cond_2
    move/from16 v16, v6

    :goto_1
    invoke-static/range {p1 .. p1}, La4/x;->C(La4/y;)LU3/b0;

    move-result-object v0

    invoke-static {v0}, La4/x;->c0(LU3/b0;)LU3/n;

    move-result-object v17

    sget-object v18, Lr3/s;->d:Lr3/s;

    iget-object v13, v4, Lh4/t;->c:Ljava/util/ArrayList;

    iget-object v14, v4, Lh4/t;->b:Ljava/util/List;

    iget-object v0, v4, Lh4/t;->a:LJ4/C;

    const/4 v11, 0x0

    move-object v10, v15

    move-object v1, v15

    move-object v15, v0

    invoke-virtual/range {v10 .. v18}, Lf4/f;->U0(LX3/O;LU3/J;Ljava/util/List;Ljava/util/List;LJ4/C;ILU3/n;Lr3/s;)LX3/P;

    iget-boolean v0, v3, LI/d;->e:Z

    if-eqz v0, :cond_3

    move v6, v7

    :cond_3
    iput v6, v1, Lf4/f;->F:I

    iget-object v0, v4, Lh4/t;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    return-object v1

    :cond_4
    iget-object v0, v2, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v0, Lg4/a;

    iget-object v0, v0, Lg4/a;->e:Le4/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Should not be called"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v0, 0x5

    invoke-static {v0}, Lf4/f;->z0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lh4/w;->q()LU3/j;

    move-result-object p0

    const-string v0, "Lazy scope for "

    invoke-static {p0, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

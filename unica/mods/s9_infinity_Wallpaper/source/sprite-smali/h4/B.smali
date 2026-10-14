.class public final Lh4/B;
.super LX3/c;
.source "SourceFile"


# instance fields
.field public final n:Landroidx/recyclerview/widget/b;

.field public final o:La4/C;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/b;La4/C;ILU3/k;)V
    .locals 10

    const-string v0, "javaTypeParameter"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v0, Lg4/a;

    iget-object v2, v0, Lg4/a;->a:LI4/l;

    new-instance v4, Lg4/c;

    const/4 v1, 0x0

    invoke-direct {v4, p1, p2, v1}, Lg4/c;-><init>(Landroidx/recyclerview/widget/b;Lj4/b;Z)V

    iget-object v1, p2, La4/C;->a:Ljava/lang/reflect/TypeVariable;

    invoke-interface {v1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v9, v0, Lg4/a;->m:LU3/M;

    move-object v1, p0

    move-object v3, p4

    move v8, p3

    invoke-direct/range {v1 .. v9}, LX3/c;-><init>(LI4/o;LU3/j;LV3/h;Ls4/f;IZILU3/M;)V

    iput-object p1, p0, Lh4/B;->n:Landroidx/recyclerview/widget/b;

    iput-object p2, p0, Lh4/B;->o:La4/C;

    return-void
.end method


# virtual methods
.method public final H0(Ljava/util/List;)Ljava/util/List;
    .locals 17

    move-object/from16 v11, p0

    iget-object v12, v11, Lh4/B;->n:Landroidx/recyclerview/widget/b;

    iget-object v0, v12, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v0, Lg4/a;

    iget-object v13, v0, Lg4/a;->r:Ln1/a;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v14, Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v0

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, LJ4/C;

    sget-object v0, Lk4/o;->h:Lk4/o;

    const-string v1, "<this>"

    invoke-static {v3, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v3, v0, v1, v1}, LJ4/Z;->c(LJ4/C;LE3/b;Lk4/o;LS4/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v10, Lk4/q;

    sget-object v4, Lr3/r;->d:Lr3/r;

    sget-object v7, Ld4/a;->i:Ld4/a;

    const/4 v5, 0x0

    const/16 v16, 0x80

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, v10

    move-object v1, v13

    move-object/from16 v2, p0

    move-object v6, v12

    move-object v11, v10

    move/from16 v10, v16

    invoke-direct/range {v0 .. v10}, Lk4/q;-><init>(Ln1/a;LU3/k;LJ4/C;Ljava/util/Collection;ZLandroidx/recyclerview/widget/b;Ld4/a;ZZI)V

    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Lk4/q;->c(Lk4/t;)Lk4/m;

    move-result-object v0

    iget-object v3, v0, Lk4/m;->a:LJ4/C;

    :goto_1
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v11, p0

    goto :goto_0

    :cond_1
    return-object v14
.end method

.method public final I0()Ljava/util/List;
    .locals 8

    iget-object v0, p0, Lh4/B;->o:La4/C;

    iget-object v0, v0, La4/C;->a:Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "typeVariable.bounds"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v0, v4

    new-instance v6, La4/p;

    invoke-direct {v6, v5}, La4/p;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lr3/j;->L0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La4/p;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget-object v0, v0, La4/p;->a:Ljava/lang/reflect/Type;

    :goto_1
    const-class v2, Ljava/lang/Object;

    invoke-static {v0, v2}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v1, Lr3/r;->d:Lr3/r;

    :cond_2
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    iget-object v2, p0, Lh4/B;->n:Landroidx/recyclerview/widget/b;

    if-eqz v0, :cond_3

    iget-object p0, v2, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast p0, Lg4/a;

    iget-object p0, p0, Lg4/a;->o:LX3/D;

    iget-object p0, p0, LX3/D;->g:LR3/j;

    invoke-virtual {p0}, LR3/j;->e()LJ4/G;

    move-result-object p0

    iget-object v0, v2, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v0, Lg4/a;

    iget-object v0, v0, Lg4/a;->o:LX3/D;

    iget-object v0, v0, LX3/D;->g:LR3/j;

    invoke-virtual {v0}, LR3/j;->n()LJ4/G;

    move-result-object v0

    invoke-static {p0, v0}, LJ4/d;->i(LJ4/G;LJ4/G;)LJ4/b0;

    move-result-object p0

    invoke-static {p0}, Lp4/g;->H(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v1}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La4/p;

    iget-object v5, v2, Landroidx/recyclerview/widget/b;->i:Ljava/lang/Object;

    check-cast v5, Lw0/i;

    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-static {v6, v3, p0, v7}, Li4/d;->b(IZLh4/B;I)Li4/a;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lw0/i;->I(Lj4/d;Li4/a;)LJ4/C;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move-object p0, v0

    :goto_3
    return-object p0
.end method

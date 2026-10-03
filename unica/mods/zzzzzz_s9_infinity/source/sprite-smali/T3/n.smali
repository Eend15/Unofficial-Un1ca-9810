.class public final LT3/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW3/b;
.implements LW3/d;


# static fields
.field public static final synthetic g:[LL3/l;


# instance fields
.field public final a:LX3/D;

.field public final b:LI4/i;

.field public final c:LJ4/G;

.field public final d:LI4/i;

.field public final e:LI4/e;

.field public final f:LI4/i;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, LF3/o;

    sget-object v1, LF3/t;->a:LF3/u;

    const-class v2, LT3/n;

    invoke-virtual {v1, v2}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object v3

    const-string v4, "settings"

    const-string v5, "getSettings()Lorg/jetbrains/kotlin/builtins/jvm/JvmBuiltIns$Settings;"

    invoke-direct {v0, v3, v4, v5}, LF3/o;-><init>(LL3/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, LF3/u;->f(LF3/o;)LL3/k;

    move-result-object v0

    new-instance v3, LF3/o;

    invoke-virtual {v1, v2}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object v4

    const-string v5, "cloneableType"

    const-string v6, "getCloneableType()Lorg/jetbrains/kotlin/types/SimpleType;"

    invoke-direct {v3, v4, v5, v6}, LF3/o;-><init>(LL3/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, LF3/u;->f(LF3/o;)LL3/k;

    move-result-object v3

    new-instance v4, LF3/o;

    invoke-virtual {v1, v2}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object v2

    const-string v5, "notConsideredDeprecation"

    const-string v6, "getNotConsideredDeprecation()Lorg/jetbrains/kotlin/descriptors/annotations/Annotations;"

    invoke-direct {v4, v2, v5, v6}, LF3/o;-><init>(LL3/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, LF3/u;->f(LF3/o;)LL3/k;

    move-result-object v1

    filled-new-array {v0, v3, v1}, [LL3/l;

    move-result-object v0

    sput-object v0, LT3/n;->g:[LL3/l;

    return-void
.end method

.method public constructor <init>(LX3/D;LI4/l;LC4/g;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT3/n;->a:LX3/D;

    new-instance v0, LI4/i;

    invoke-direct {v0, p2, p3}, LI4/h;-><init>(LI4/l;LE3/a;)V

    iput-object v0, p0, LT3/n;->b:LI4/i;

    new-instance p3, Ls4/c;

    const-string v0, "java.io"

    invoke-direct {p3, v0}, Ls4/c;-><init>(Ljava/lang/String;)V

    new-instance v2, LT3/k;

    const/4 v0, 0x0

    invoke-direct {v2, p1, p3, v0}, LT3/k;-><init>(LU3/x;Ls4/c;I)V

    new-instance p1, LJ4/E;

    new-instance p3, LT3/l;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, LT3/l;-><init>(LT3/n;I)V

    invoke-direct {p1, p2, p3}, LJ4/E;-><init>(LI4/l;LE3/a;)V

    invoke-static {p1}, Lp4/g;->H(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    new-instance p1, LX3/n;

    const-string p3, "Serializable"

    invoke-static {p3}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v3

    const/4 v4, 0x4

    const/4 v5, 0x2

    move-object v1, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, LX3/n;-><init>(LU3/j;Ls4/f;IILjava/util/List;LI4/l;)V

    sget-object p3, LC4/n;->b:LC4/n;

    sget-object v0, Lr3/t;->d:Lr3/t;

    const/4 v1, 0x0

    invoke-virtual {p1, p3, v0, v1}, LX3/n;->m0(LC4/o;Ljava/util/Set;LX3/l;)V

    invoke-virtual {p1}, LX3/b;->n()LJ4/G;

    move-result-object p1

    iput-object p1, p0, LT3/n;->c:LJ4/G;

    new-instance p1, LF4/C;

    const/16 p3, 0xa

    invoke-direct {p1, p0, p3, p2}, LF4/C;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    new-instance p3, LI4/i;

    invoke-direct {p3, p2, p1}, LI4/h;-><init>(LI4/l;LE3/a;)V

    iput-object p3, p0, LT3/n;->d:LI4/i;

    new-instance p1, LI4/e;

    new-instance p3, Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-direct {p3, v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    new-instance v0, LI4/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p1, p2, p3, v0, v1}, LI4/e;-><init>(LI4/l;Ljava/util/concurrent/ConcurrentHashMap;LE3/b;I)V

    iput-object p1, p0, LT3/n;->e:LI4/e;

    new-instance p1, LT3/l;

    const/4 p3, 0x1

    invoke-direct {p1, p0, p3}, LT3/l;-><init>(LT3/n;I)V

    new-instance p3, LI4/i;

    invoke-direct {p3, p2, p1}, LI4/h;-><init>(LI4/l;LE3/a;)V

    iput-object p3, p0, LT3/n;->f:LI4/i;

    return-void
.end method


# virtual methods
.method public final a(Ls4/f;LU3/e;)Ljava/util/Collection;
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "name"

    invoke-static {p1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "classDescriptor"

    invoke-static {p2, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, LT3/a;->e:Ls4/f;

    invoke-virtual {p1, v2}, Ls4/f;->equals(Ljava/lang/Object;)Z

    move-result v2

    sget-object v3, Lr3/r;->d:Lr3/r;

    sget-object v4, LT3/n;->g:[LL3/l;

    if-eqz v2, :cond_4

    instance-of v2, p2, LH4/l;

    if-eqz v2, :cond_4

    sget-object v2, LR3/j;->e:Ls4/f;

    sget-object v2, LR3/o;->g:Ls4/e;

    invoke-static {p2, v2}, LR3/j;->b(LU3/e;Ls4/e;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, LR3/j;->q(LU3/g;)LR3/l;

    move-result-object v2

    if-eqz v2, :cond_4

    :cond_0
    check-cast p2, LH4/l;

    iget-object v0, p2, LH4/l;->h:Ln4/j;

    iget-object v0, v0, Ln4/j;->q:Ljava/util/List;

    const-string v2, "classDescriptor.classProto.functionList"

    invoke-static {v0, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln4/y;

    iget-object v5, p2, LH4/l;->o:LF4/k;

    iget-object v5, v5, LF4/k;->b:Lp4/f;

    iget v2, v2, Ln4/y;->i:I

    invoke-static {v5, v2}, Lw0/f;->B(Lp4/f;I)Ls4/f;

    move-result-object v2

    sget-object v5, LT3/a;->e:Ls4/f;

    invoke-virtual {v2, v5}, Ls4/f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v3

    :cond_3
    :goto_0
    iget-object p0, p0, LT3/n;->d:LI4/i;

    aget-object v0, v4, v1

    invoke-static {p0, v0}, Lw0/f;->C(LI4/m;LL3/l;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJ4/G;

    invoke-virtual {p0}, LJ4/C;->l0()LC4/o;

    move-result-object p0

    sget-object v0, Lc4/b;->d:Lc4/b;

    invoke-interface {p0, p1, v0}, LC4/o;->g(Ls4/f;Lc4/b;)Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0}, Lr3/j;->I0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LX3/P;

    invoke-interface {p0}, LU3/s;->Z()LU3/r;

    move-result-object p0

    invoke-interface {p0, p2}, LU3/r;->m(LU3/e;)LU3/r;

    sget-object p1, LU3/o;->e:LU3/n;

    invoke-interface {p0, p1}, LU3/r;->y(LU3/n;)LU3/r;

    invoke-virtual {p2}, LX3/b;->n()LJ4/G;

    move-result-object p1

    invoke-interface {p0, p1}, LU3/r;->f(LJ4/C;)LU3/r;

    invoke-virtual {p2}, LX3/b;->y0()LU3/J;

    move-result-object p1

    invoke-interface {p0, p1}, LU3/r;->u(LU3/J;)LU3/r;

    invoke-interface {p0}, LU3/r;->build()LU3/s;

    move-result-object p0

    invoke-static {p0}, LF3/k;->c(Ljava/lang/Object;)V

    check-cast p0, LX3/P;

    invoke-static {p0}, Lp4/g;->H(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0}, LT3/n;->g()LT3/h;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, LT3/m;

    invoke-direct {v2, p1, v0}, LT3/m;-><init>(Ls4/f;I)V

    invoke-virtual {p0, p2}, LT3/n;->f(LU3/e;)Lh4/h;

    move-result-object p1

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-nez p1, :cond_5

    goto/16 :goto_b

    :cond_5
    invoke-static {p1}, Lz4/e;->g(LU3/j;)Ls4/c;

    move-result-object v7

    sget-object v8, LT3/b;->f:LT3/b;

    const-string v9, "builtIns"

    invoke-static {v8, v9}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v8}, LT3/e;->b(Ls4/c;LR3/j;)LU3/e;

    move-result-object v7

    if-nez v7, :cond_6

    sget-object v7, Lr3/t;->d:Lr3/t;

    goto :goto_1

    :cond_6
    sget-object v9, LT3/d;->a:Ljava/lang/String;

    invoke-static {v7}, Lz4/e;->h(LU3/j;)Ls4/e;

    move-result-object v9

    sget-object v10, LT3/d;->k:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ls4/c;

    if-nez v9, :cond_7

    invoke-static {v7}, Lp4/g;->T(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v7

    goto :goto_1

    :cond_7
    invoke-virtual {v8, v9}, LR3/j;->i(Ls4/c;)LU3/e;

    move-result-object v8

    filled-new-array {v7, v8}, [LU3/e;

    move-result-object v7

    invoke-static {v7}, Lr3/k;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    :goto_1
    instance-of v8, v7, Ljava/util/List;

    if-eqz v8, :cond_9

    move-object v8, v7

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_2

    :cond_8
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    goto :goto_4

    :cond_9
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_a

    :goto_2
    move-object v8, v5

    goto :goto_4

    :cond_a
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    goto :goto_3

    :cond_b
    move-object v8, v9

    :goto_4
    check-cast v8, LU3/e;

    if-nez v8, :cond_c

    goto/16 :goto_b

    :cond_c
    sget v3, LS4/j;->f:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v7}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v9

    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LU3/e;

    invoke-static {v9}, Lz4/e;->g(LU3/j;)Ls4/c;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_d
    new-instance v7, LS4/j;

    invoke-direct {v7}, LS4/j;-><init>()V

    invoke-virtual {v7, v3}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    sget-object v3, LT3/d;->a:Ljava/lang/String;

    invoke-static {p2}, Lv4/f;->g(LU3/j;)Ls4/e;

    move-result-object v3

    sget-object v9, LT3/d;->j:Ljava/util/HashMap;

    if-eqz v9, :cond_21

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {p1}, Lz4/e;->g(LU3/j;)Ls4/c;

    move-result-object v9

    new-instance v10, LF4/C;

    const/16 v11, 0xb

    invoke-direct {v10, p1, v11, v8}, LF4/C;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p1, p0, LT3/n;->e:LI4/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, LI4/g;

    invoke-direct {v8, v9, v10}, LI4/g;-><init>(Ls4/c;LE3/a;)V

    invoke-virtual {p1, v8}, LI4/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_20

    check-cast p1, LU3/e;

    invoke-interface {p1}, LU3/e;->a0()LC4/o;

    move-result-object p1

    const-string v8, "fakeJavaClassDescriptor.unsubstitutedMemberScope"

    invoke-static {p1, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, LT3/m;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, LX3/P;

    invoke-virtual {v9}, LX3/w;->f0()I

    move-result v10

    if-eq v10, v1, :cond_10

    :cond_f
    :goto_7
    move v9, v0

    goto/16 :goto_a

    :cond_10
    invoke-virtual {v9}, LX3/w;->b()LU3/n;

    move-result-object v10

    iget-object v10, v10, LU3/n;->a:LU3/b0;

    iget-boolean v10, v10, LU3/b0;->b:Z

    if-nez v10, :cond_11

    goto :goto_7

    :cond_11
    invoke-static {v9}, LR3/j;->B(LU3/s;)Z

    move-result v10

    if-eqz v10, :cond_12

    goto :goto_7

    :cond_12
    invoke-virtual {v9}, LX3/w;->m()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_13

    goto :goto_8

    :cond_13
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_14
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_15

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LU3/s;

    invoke-interface {v11}, LU3/j;->g()LU3/j;

    move-result-object v11

    const-string v12, "it.containingDeclaration"

    invoke-static {v11, v12}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11}, Lz4/e;->g(LU3/j;)Ls4/c;

    move-result-object v11

    invoke-virtual {v7, v11}, LS4/j;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    goto :goto_7

    :cond_15
    :goto_8
    invoke-virtual {v9}, LX3/q;->g()LU3/j;

    move-result-object v10

    check-cast v10, LU3/e;

    invoke-static {v9, v6}, Lj0/s;->q(LU3/s;I)Ljava/lang/String;

    move-result-object v11

    sget-object v12, LT3/p;->d:Ljava/util/LinkedHashSet;

    invoke-static {v10, v11}, Lj0/s;->J(LU3/e;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v12, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    xor-int/2addr v10, v3

    if-eqz v10, :cond_16

    move v9, v1

    goto :goto_9

    :cond_16
    invoke-static {v9}, Lp4/g;->H(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    sget-object v10, LT3/e;->d:LT3/e;

    new-instance v11, LF4/a;

    const/4 v12, 0x6

    invoke-direct {v11, v12, p0}, LF4/a;-><init>(ILjava/lang/Object;)V

    invoke-static {v9, v10, v11}, LS4/m;->g(Ljava/util/List;LS4/b;LE3/b;)Ljava/lang/Boolean;

    move-result-object v9

    const-string v10, "private fun SimpleFuncti\u2026scriptor)\n        }\n    }"

    invoke-static {v9, v10}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    :goto_9
    if-nez v9, :cond_f

    move v9, v1

    :goto_a
    if-eqz v9, :cond_e

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_17
    move-object v3, v2

    :goto_b
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LX3/P;

    invoke-virtual {v3}, LX3/q;->g()LU3/j;

    move-result-object v7

    check-cast v7, LU3/e;

    invoke-static {v7, p2}, LR3/f;->u(LU3/e;LU3/e;)LJ4/N;

    move-result-object v7

    new-instance v8, LJ4/X;

    invoke-direct {v8, v7}, LJ4/X;-><init>(LJ4/U;)V

    invoke-virtual {v3, v8}, LX3/w;->l(LJ4/X;)LU3/s;

    move-result-object v7

    if-eqz v7, :cond_1e

    check-cast v7, LX3/P;

    invoke-interface {v7}, LU3/s;->Z()LU3/r;

    move-result-object v7

    invoke-interface {v7, p2}, LU3/r;->m(LU3/e;)LU3/r;

    invoke-interface {p2}, LU3/e;->y0()LU3/J;

    move-result-object v8

    invoke-interface {v7, v8}, LU3/r;->u(LU3/J;)LU3/r;

    invoke-interface {v7}, LU3/r;->n()LU3/r;

    invoke-virtual {v3}, LX3/q;->g()LU3/j;

    move-result-object v8

    check-cast v8, LU3/e;

    invoke-static {v3, v6}, Lj0/s;->q(LU3/s;I)Ljava/lang/String;

    move-result-object v3

    new-instance v9, LF3/s;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    invoke-static {v8}, Lp4/g;->H(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    new-instance v10, LA1/e;

    invoke-direct {v10, p0}, LA1/e;-><init>(Ljava/lang/Object;)V

    new-instance v11, LS4/a;

    invoke-direct {v11, v3, v9, v1}, LS4/a;-><init>(Ljava/lang/Object;Ljava/io/Serializable;I)V

    invoke-static {v8, v10, v11}, LS4/m;->e(Ljava/util/List;LS4/b;LS4/m;)Ljava/lang/Object;

    move-result-object v3

    const-string v8, "private fun FunctionDesc\u2026ERED\n            })\n    }"

    invoke-static {v3, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, LT3/j;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_1b

    const/4 v8, 0x2

    if-eq v3, v8, :cond_1a

    if-eq v3, v6, :cond_19

    goto :goto_f

    :cond_19
    :goto_d
    move-object v3, v5

    goto :goto_10

    :cond_1a
    iget-object v3, p0, LT3/n;->f:LI4/i;

    aget-object v8, v4, v8

    invoke-static {v3, v8}, Lw0/f;->C(LI4/m;LL3/l;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LV3/h;

    invoke-interface {v7, v3}, LU3/r;->I(LV3/h;)LU3/r;

    goto :goto_f

    :cond_1b
    invoke-interface {p2}, LU3/e;->e()I

    move-result v3

    if-ne v3, v1, :cond_1c

    invoke-interface {p2}, LU3/e;->I()I

    move-result v3

    if-eq v3, v6, :cond_1c

    move v3, v1

    goto :goto_e

    :cond_1c
    move v3, v0

    :goto_e
    if-eqz v3, :cond_1d

    goto :goto_d

    :cond_1d
    invoke-interface {v7}, LU3/r;->D()LU3/r;

    :goto_f
    invoke-interface {v7}, LU3/r;->build()LU3/s;

    move-result-object v3

    invoke-static {v3}, LF3/k;->c(Ljava/lang/Object;)V

    check-cast v3, LX3/P;

    :goto_10
    if-eqz v3, :cond_18

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :cond_1e
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.SimpleFunctionDescriptor"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f
    return-object p1

    :cond_20
    invoke-static {v6}, LI4/e;->a(I)V

    throw v5

    :cond_21
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.collections.Map<K, *>"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(LU3/e;)Ljava/util/Collection;
    .locals 14

    const-string v0, "classDescriptor"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, LU3/e;->I()I

    move-result v0

    sget-object v1, Lr3/r;->d:Lr3/r;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_c

    invoke-virtual {p0}, LT3/n;->g()LT3/h;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, LT3/n;->f(LU3/e;)Lh4/h;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {v0}, Lz4/e;->g(LU3/j;)Ls4/c;

    move-result-object v3

    sget-object v4, LT3/b;->f:LT3/b;

    invoke-static {v3, v4}, LT3/e;->b(Ls4/c;LR3/j;)LU3/e;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v1

    :cond_1
    invoke-static {v3, v0}, LR3/f;->u(LU3/e;LU3/e;)LJ4/N;

    move-result-object v1

    new-instance v4, LJ4/X;

    invoke-direct {v4, v1}, LJ4/X;-><init>(LJ4/U;)V

    iget-object v1, v0, Lh4/h;->t:Lh4/l;

    iget-object v1, v1, Lh4/l;->q:LI4/i;

    invoke-virtual {v1}, LI4/i;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x3

    if-eqz v6, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, LU3/d;

    move-object v10, v9

    check-cast v10, LX3/w;

    invoke-virtual {v10}, LX3/w;->b()LU3/n;

    move-result-object v11

    iget-object v11, v11, LU3/n;->a:LU3/b0;

    iget-boolean v11, v11, LU3/b0;->b:Z

    if-eqz v11, :cond_2

    invoke-interface {v3}, LU3/e;->P()Ljava/util/Collection;

    move-result-object v11

    const-string v12, "defaultKotlinVersion.constructors"

    invoke-static {v11, v12}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LU3/d;

    const-string v13, "it"

    invoke-static {v12, v13}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v9

    check-cast v13, LX3/l;

    invoke-virtual {v13, v4}, LX3/l;->W0(LJ4/X;)LU3/d;

    move-result-object v13

    invoke-static {v12, v13}, Lv4/o;->j(LU3/a;LU3/a;)I

    move-result v12

    if-ne v12, v2, :cond_4

    goto :goto_0

    :cond_5
    :goto_1
    invoke-virtual {v10}, LX3/w;->n0()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ne v11, v2, :cond_7

    invoke-virtual {v10}, LX3/w;->n0()Ljava/util/List;

    move-result-object v10

    const-string v11, "valueParameters"

    invoke-static {v10, v11}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Lr3/j;->J0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LX3/W;

    check-cast v10, LX3/X;

    invoke-virtual {v10}, LX3/X;->j()LJ4/C;

    move-result-object v10

    invoke-virtual {v10}, LJ4/C;->q0()LJ4/M;

    move-result-object v10

    invoke-interface {v10}, LJ4/M;->e()LU3/g;

    move-result-object v10

    if-nez v10, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {v10}, Lz4/e;->h(LU3/j;)Ls4/e;

    move-result-object v7

    :goto_2
    invoke-static {p1}, Lz4/e;->h(LU3/j;)Ls4/e;

    move-result-object v10

    invoke-static {v7, v10}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto/16 :goto_0

    :cond_7
    invoke-static {v9}, LR3/j;->B(LU3/s;)Z

    move-result v7

    if-nez v7, :cond_2

    sget-object v7, LT3/p;->e:Ljava/util/LinkedHashSet;

    invoke-static {v9, v8}, Lj0/s;->q(LU3/s;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lj0/s;->J(LU3/e;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v5}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LU3/d;

    move-object v6, v5

    check-cast v6, LX3/w;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, LJ4/X;->b:LJ4/X;

    invoke-virtual {v6, v9}, LX3/w;->N0(LJ4/X;)LX3/v;

    move-result-object v6

    iput-object p1, v6, LX3/v;->e:LU3/j;

    invoke-interface {p1}, LU3/e;->n()LJ4/G;

    move-result-object v9

    invoke-virtual {v6, v9}, LX3/v;->f(LJ4/C;)LU3/r;

    iput-boolean v2, v6, LX3/v;->q:Z

    invoke-virtual {v4}, LJ4/X;->f()LJ4/U;

    move-result-object v9

    if-eqz v9, :cond_b

    iput-object v9, v6, LX3/v;->d:LJ4/U;

    sget-object v9, LT3/p;->f:Ljava/util/LinkedHashSet;

    invoke-static {v5, v8}, Lj0/s;->q(LU3/s;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lj0/s;->J(LU3/e;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, LT3/n;->f:LI4/i;

    sget-object v9, LT3/n;->g:[LL3/l;

    const/4 v10, 0x2

    aget-object v9, v9, v10

    invoke-static {v5, v9}, Lw0/f;->C(LI4/m;LL3/l;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LV3/h;

    invoke-virtual {v6, v5}, LX3/v;->I(LV3/h;)LU3/r;

    :cond_9
    iget-object v5, v6, LX3/v;->z:LX3/w;

    invoke-virtual {v5, v6}, LX3/w;->K0(LX3/v;)LX3/w;

    move-result-object v5

    if-eqz v5, :cond_a

    check-cast v5, LU3/d;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassConstructorDescriptor"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    const/16 p0, 0x22

    invoke-static {p0}, LX3/v;->a(I)V

    throw v7

    :cond_c
    return-object v1
.end method

.method public final c(LU3/e;LH4/u;)Z
    .locals 3

    const-string v0, "classDescriptor"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LT3/n;->f(LU3/e;)Lh4/h;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, LD4/a;->p()LV3/h;

    move-result-object v1

    sget-object v2, LW3/e;->a:Ls4/c;

    invoke-interface {v1, v2}, LV3/h;->e(Ls4/c;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, LT3/n;->g()LT3/h;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x3

    invoke-static {p2, p0}, Lj0/s;->q(LU3/s;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lh4/h;->m0()Lh4/l;

    move-result-object p1

    invoke-virtual {p2}, LX3/p;->r()Ls4/f;

    move-result-object p2

    const-string v2, "functionDescriptor.name"

    invoke-static {p2, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lc4/b;->d:Lc4/b;

    invoke-virtual {p1, p2, v2}, Lh4/l;->g(Ls4/f;Lc4/b;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LX3/P;

    invoke-static {p2, p0}, Lj0/s;->q(LU3/s;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    :goto_0
    return v0
.end method

.method public final d(LU3/e;)Ljava/util/Collection;
    .locals 5

    const-string v0, "classDescriptor"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lz4/e;->h(LU3/j;)Ls4/e;

    move-result-object p1

    sget-object v0, LT3/p;->a:Ljava/util/LinkedHashSet;

    sget-object v0, LR3/o;->g:Ls4/e;

    invoke-virtual {p1, v0}, Ls4/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    sget-object v1, LR3/o;->c0:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    iget-object v4, p0, LT3/n;->c:LJ4/G;

    if-eqz v1, :cond_2

    iget-object p0, p0, LT3/n;->d:LI4/i;

    sget-object p1, LT3/n;->g:[LL3/l;

    aget-object p1, p1, v3

    invoke-static {p0, p1}, Lw0/f;->C(LI4/m;LL3/l;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJ4/G;

    const-string p1, "cloneableType"

    invoke-static {p0, p1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {p0, v4}, [LJ4/C;

    move-result-object p0

    invoke-static {p0}, Lr3/k;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_4

    :cond_2
    invoke-virtual {p1, v0}, Ls4/e;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    sget-object p0, LR3/o;->c0:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    sget-object p0, LT3/d;->a:Ljava/lang/String;

    invoke-static {p1}, LT3/d;->f(Ls4/e;)Ls4/b;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    :try_start_0
    invoke-virtual {p0}, Ls4/b;->b()Ls4/c;

    move-result-object p0

    invoke-virtual {p0}, Ls4/c;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-class p1, Ljava/io/Serializable;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    goto :goto_3

    :cond_5
    :goto_2
    move v2, v3

    :catch_0
    :goto_3
    if-eqz v2, :cond_6

    invoke-static {v4}, Lp4/g;->H(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_4

    :cond_6
    sget-object p0, Lr3/r;->d:Lr3/r;

    :goto_4
    return-object p0
.end method

.method public final e(LU3/e;)Ljava/util/Collection;
    .locals 1

    const-string v0, "classDescriptor"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LT3/n;->g()LT3/h;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lr3/t;->d:Lr3/t;

    invoke-virtual {p0, p1}, LT3/n;->f(LU3/e;)Lh4/h;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lh4/h;->m0()Lh4/l;

    move-result-object p0

    invoke-virtual {p0}, Lh4/w;->a()Ljava/util/Set;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p0

    :goto_1
    return-object v0
.end method

.method public final f(LU3/e;)Lh4/h;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    sget-object v1, LR3/j;->e:Ls4/f;

    sget-object v1, LR3/o;->a:Ls4/e;

    invoke-static {p1, v1}, LR3/j;->b(LU3/e;Ls4/e;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1}, LR3/j;->G(LU3/g;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-static {p1}, Lz4/e;->h(LU3/j;)Ls4/e;

    move-result-object p1

    invoke-virtual {p1}, Ls4/e;->d()Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    sget-object v1, LT3/d;->a:Ljava/lang/String;

    invoke-static {p1}, LT3/d;->f(Ls4/e;)Ls4/b;

    move-result-object p1

    if-nez p1, :cond_3

    move-object p1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ls4/b;->b()Ls4/c;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0}, LT3/n;->g()LT3/h;

    move-result-object p0

    iget-object p0, p0, LT3/h;->a:LX3/D;

    invoke-static {p0, p1}, LR3/f;->Y(LX3/D;Ls4/c;)LU3/e;

    move-result-object p0

    instance-of p1, p0, Lh4/h;

    if-eqz p1, :cond_5

    move-object v0, p0

    check-cast v0, Lh4/h;

    :cond_5
    return-object v0

    :cond_6
    const/16 p0, 0x6c

    invoke-static {p0}, LR3/j;->a(I)V

    throw v0
.end method

.method public final g()LT3/h;
    .locals 2

    iget-object p0, p0, LT3/n;->b:LI4/i;

    sget-object v0, LT3/n;->g:[LL3/l;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lw0/f;->C(LI4/m;LL3/l;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LT3/h;

    return-object p0
.end method

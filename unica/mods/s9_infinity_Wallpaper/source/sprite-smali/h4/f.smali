.class public final Lh4/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LV3/b;
.implements Lf4/h;


# static fields
.field public static final synthetic h:[LL3/l;


# instance fields
.field public final a:Landroidx/recyclerview/widget/b;

.field public final b:La4/c;

.field public final c:LI4/h;

.field public final d:LI4/i;

.field public final e:LZ3/g;

.field public final f:LI4/i;

.field public final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, LF3/o;

    sget-object v1, LF3/t;->a:LF3/u;

    const-class v2, Lh4/f;

    invoke-virtual {v1, v2}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object v3

    const-string v4, "fqName"

    const-string v5, "getFqName()Lorg/jetbrains/kotlin/name/FqName;"

    invoke-direct {v0, v3, v4, v5}, LF3/o;-><init>(LL3/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, LF3/u;->f(LF3/o;)LL3/k;

    move-result-object v0

    new-instance v3, LF3/o;

    invoke-virtual {v1, v2}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object v4

    const-string v5, "type"

    const-string v6, "getType()Lorg/jetbrains/kotlin/types/SimpleType;"

    invoke-direct {v3, v4, v5, v6}, LF3/o;-><init>(LL3/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, LF3/u;->f(LF3/o;)LL3/k;

    move-result-object v3

    new-instance v4, LF3/o;

    invoke-virtual {v1, v2}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object v2

    const-string v5, "allValueArguments"

    const-string v6, "getAllValueArguments()Ljava/util/Map;"

    invoke-direct {v4, v2, v5, v6}, LF3/o;-><init>(LL3/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, LF3/u;->f(LF3/o;)LL3/k;

    move-result-object v1

    filled-new-array {v0, v3, v1}, [LL3/l;

    move-result-object v0

    sput-object v0, Lh4/f;->h:[LL3/l;

    return-void
.end method

.method public constructor <init>(La4/c;Landroidx/recyclerview/widget/b;Z)V
    .locals 3

    const-string v0, "c"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaAnnotation"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lh4/f;->a:Landroidx/recyclerview/widget/b;

    iput-object p1, p0, Lh4/f;->b:La4/c;

    iget-object p2, p2, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast p2, Lg4/a;

    iget-object v0, p2, Lg4/a;->a:LI4/l;

    new-instance v1, Lh4/e;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lh4/e;-><init>(Lh4/f;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, LI4/h;

    invoke-direct {v2, v0, v1}, LI4/h;-><init>(LI4/l;LE3/a;)V

    iput-object v2, p0, Lh4/f;->c:LI4/h;

    new-instance v1, Lh4/e;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lh4/e;-><init>(Lh4/f;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, LI4/i;

    invoke-direct {v2, v0, v1}, LI4/h;-><init>(LI4/l;LE3/a;)V

    iput-object v2, p0, Lh4/f;->d:LI4/i;

    iget-object p2, p2, Lg4/a;->j:LZ3/e;

    invoke-virtual {p2, p1}, LZ3/e;->b(Lj4/c;)LZ3/g;

    move-result-object p1

    iput-object p1, p0, Lh4/f;->e:LZ3/g;

    new-instance p1, Lh4/e;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lh4/e;-><init>(Lh4/f;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, LI4/i;

    invoke-direct {p2, v0, p1}, LI4/h;-><init>(LI4/l;LE3/a;)V

    iput-object p2, p0, Lh4/f;->f:LI4/i;

    iput-boolean p3, p0, Lh4/f;->g:Z

    return-void
.end method


# virtual methods
.method public final a()Ls4/c;
    .locals 2

    iget-object p0, p0, Lh4/f;->c:LI4/h;

    sget-object v0, Lh4/f;->h:[LL3/l;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "<this>"

    invoke-static {p0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "p"

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LI4/h;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls4/c;

    return-object p0
.end method

.method public final b()Ljava/util/Map;
    .locals 2

    iget-object p0, p0, Lh4/f;->f:LI4/i;

    sget-object v0, Lh4/f;->h:[LL3/l;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lw0/f;->C(LI4/m;LL3/l;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public final c(Lj4/a;)Lx4/g;
    .locals 6

    instance-of v0, p1, La4/u;

    if-eqz v0, :cond_0

    check-cast p1, La4/u;

    iget-object p0, p1, La4/u;->b:Ljava/lang/Object;

    invoke-static {p0}, Lp4/g;->t(Ljava/lang/Object;)Lx4/g;

    move-result-object p0

    goto/16 :goto_8

    :cond_0
    instance-of v0, p1, La4/s;

    if-eqz v0, :cond_2

    check-cast p1, La4/s;

    iget-object p0, p1, La4/s;->b:Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object p0

    :goto_0
    const-string v0, "enumClass"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, La4/b;->a(Ljava/lang/Class;)Ls4/b;

    move-result-object p0

    iget-object p1, p1, La4/s;->b:Ljava/lang/Enum;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object p1

    new-instance v0, Lx4/h;

    invoke-direct {v0, p0, p1}, Lx4/h;-><init>(Ls4/b;Ls4/f;)V

    move-object p0, v0

    goto/16 :goto_8

    :cond_2
    instance-of v0, p1, La4/g;

    iget-object v1, p0, Lh4/f;->a:Landroidx/recyclerview/widget/b;

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    check-cast p1, La4/g;

    move-object v0, p1

    check-cast v0, La4/d;

    iget-object v0, v0, La4/d;->a:Ls4/f;

    if-nez v0, :cond_3

    sget-object v0, Ld4/x;->b:Ls4/f;

    :cond_3
    const-string v3, "argument.name ?: DEFAULT_ANNOTATION_MEMBER_NAME"

    invoke-static {v0, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, La4/g;->a()Ljava/util/ArrayList;

    move-result-object p1

    iget-object v3, p0, Lh4/f;->d:LI4/i;

    sget-object v4, Lh4/f;->h:[LL3/l;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v3, v4}, Lw0/f;->C(LI4/m;LL3/l;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LJ4/G;

    const-string v4, "type"

    invoke-static {v3, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, LJ4/c;->i(LJ4/C;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto/16 :goto_7

    :cond_4
    invoke-static {p0}, Lz4/e;->d(LV3/b;)LU3/e;

    move-result-object v3

    invoke-static {v3}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-static {v0, v3}, Le0/a;->A(Ls4/f;LU3/e;)LX3/W;

    move-result-object v0

    if-nez v0, :cond_5

    move-object v0, v2

    goto :goto_1

    :cond_5
    check-cast v0, LX3/X;

    invoke-virtual {v0}, LX3/X;->j()LJ4/C;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_6

    iget-object v0, v1, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v0, Lg4/a;

    iget-object v0, v0, Lg4/a;->o:LX3/D;

    iget-object v0, v0, LX3/D;->g:LR3/j;

    const-string v1, "Unknown array element type"

    invoke-static {v1}, LJ4/v;->c(Ljava/lang/String;)LJ4/p;

    move-result-object v1

    invoke-virtual {v0, v1}, LR3/j;->h(LJ4/b0;)LJ4/G;

    move-result-object v0

    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj4/a;

    invoke-virtual {p0, v3}, Lh4/f;->c(Lj4/a;)Lx4/g;

    move-result-object v3

    if-nez v3, :cond_7

    new-instance v3, Lx4/s;

    invoke-direct {v3, v2}, Lx4/g;-><init>(Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    new-instance p0, Lx4/b;

    new-instance p1, LF4/l;

    const/4 v2, 0x1

    invoke-direct {p1, v2, v0}, LF4/l;-><init>(ILJ4/C;)V

    invoke-direct {p0, v1, p1}, Lx4/b;-><init>(Ljava/util/List;LE3/b;)V

    goto/16 :goto_8

    :cond_9
    instance-of p0, p1, La4/e;

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    check-cast p1, La4/e;

    new-instance p0, La4/c;

    iget-object p1, p1, La4/e;->b:Ljava/lang/annotation/Annotation;

    invoke-direct {p0, p1}, La4/c;-><init>(Ljava/lang/annotation/Annotation;)V

    new-instance p1, Lx4/a;

    new-instance v2, Lh4/f;

    invoke-direct {v2, p0, v1, v0}, Lh4/f;-><init>(La4/c;Landroidx/recyclerview/widget/b;Z)V

    invoke-direct {p1, v2}, Lx4/g;-><init>(Ljava/lang/Object;)V

    :goto_3
    move-object p0, p1

    goto/16 :goto_8

    :cond_a
    instance-of p0, p1, La4/o;

    if-eqz p0, :cond_13

    check-cast p1, La4/o;

    iget-object p0, p1, La4/o;->b:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result p1

    if-eqz p1, :cond_b

    new-instance p1, La4/A;

    invoke-direct {p1, p0}, La4/A;-><init>(Ljava/lang/Class;)V

    goto :goto_5

    :cond_b
    instance-of p1, p0, Ljava/lang/reflect/GenericArrayType;

    if-nez p1, :cond_e

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_4

    :cond_c
    instance-of p1, p0, Ljava/lang/reflect/WildcardType;

    if-eqz p1, :cond_d

    new-instance p1, La4/E;

    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-direct {p1, p0}, La4/E;-><init>(Ljava/lang/reflect/WildcardType;)V

    goto :goto_5

    :cond_d
    new-instance p1, La4/p;

    invoke-direct {p1, p0}, La4/p;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_5

    :cond_e
    :goto_4
    new-instance p1, La4/h;

    invoke-direct {p1, p0}, La4/h;-><init>(Ljava/lang/reflect/Type;)V

    :goto_5
    iget-object p0, v1, Landroidx/recyclerview/widget/b;->i:Ljava/lang/Object;

    check-cast p0, Lw0/i;

    const/4 v1, 0x2

    const/4 v3, 0x3

    invoke-static {v1, v0, v2, v3}, Li4/d;->b(IZLh4/B;I)Li4/a;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lw0/i;->I(Lj4/d;Li4/a;)LJ4/C;

    move-result-object p0

    invoke-static {p0}, LJ4/c;->i(LJ4/C;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_7

    :cond_f
    move-object p1, p0

    move v1, v0

    :goto_6
    invoke-static {p1}, LR3/j;->x(LJ4/C;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {p1}, LJ4/C;->m0()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lr3/j;->J0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LJ4/P;

    invoke-virtual {p1}, LJ4/P;->b()LJ4/C;

    move-result-object p1

    const-string v3, "type.arguments.single().type"

    invoke-static {p1, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_10
    invoke-virtual {p1}, LJ4/C;->q0()LJ4/M;

    move-result-object p1

    invoke-interface {p1}, LJ4/M;->e()LU3/g;

    move-result-object p1

    instance-of v3, p1, LU3/e;

    if-eqz v3, :cond_12

    invoke-static {p1}, Lz4/e;->f(LU3/g;)Ls4/b;

    move-result-object p1

    if-nez p1, :cond_11

    new-instance p1, Lx4/q;

    new-instance v0, Lx4/n;

    invoke-direct {v0, p0}, Lx4/n;-><init>(LJ4/C;)V

    invoke-direct {p1, v0}, Lx4/g;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_11
    new-instance v2, Lx4/q;

    invoke-direct {v2, p1, v1}, Lx4/q;-><init>(Ls4/b;I)V

    goto :goto_7

    :cond_12
    instance-of p0, p1, LU3/O;

    if-eqz p0, :cond_13

    new-instance v2, Lx4/q;

    sget-object p0, LR3/o;->a:Ls4/e;

    invoke-virtual {p0}, Ls4/e;->g()Ls4/c;

    move-result-object p0

    invoke-static {p0}, Ls4/b;->j(Ls4/c;)Ls4/b;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Lx4/q;-><init>(Ls4/b;I)V

    :cond_13
    :goto_7
    move-object p0, v2

    :goto_8
    return-object p0
.end method

.method public final i()LU3/L;
    .locals 0

    iget-object p0, p0, Lh4/f;->e:LZ3/g;

    return-object p0
.end method

.method public final j()LJ4/C;
    .locals 2

    iget-object p0, p0, Lh4/f;->d:LI4/i;

    sget-object v0, Lh4/f;->h:[LL3/l;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lw0/f;->C(LI4/m;LL3/l;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJ4/G;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lu4/g;->c:Lu4/g;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lu4/g;->w(LV3/b;LV3/d;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

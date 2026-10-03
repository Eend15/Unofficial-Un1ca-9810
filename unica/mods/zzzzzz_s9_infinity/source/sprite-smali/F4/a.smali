.class public final LF4/a;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/b;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, LF4/a;->d:I

    iput-object p2, p0, LF4/a;->e:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method

.method public constructor <init>(LU3/e;Li4/e;LJ4/G;Li4/a;)V
    .locals 0

    const/16 p2, 0x11

    iput p2, p0, LF4/a;->d:I

    .line 2
    iput-object p1, p0, LF4/a;->e:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "fqName"

    const-string v3, "null cannot be cast to non-null type kotlin.collections.Map<K, *>"

    const-string v4, "kotlinTypeRefiner"

    const-string v5, "method.parameterTypes"

    const-string v6, "annotation"

    sget-object v7, Lq3/m;->a:Lq3/m;

    const-string v8, "module"

    const-string v10, "it"

    const/4 v11, 0x0

    const/4 v12, 0x1

    iget-object v13, v0, LF4/a;->e:Ljava/lang/Object;

    iget v0, v0, LF4/a;->d:I

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    check-cast v0, LU3/x;

    invoke-static {v0, v8}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, LU3/x;->c()LR3/j;

    move-result-object v0

    check-cast v13, LR3/l;

    invoke-virtual {v0, v13}, LR3/j;->p(LR3/l;)LJ4/G;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-static {v1, v10}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, LS4/j;

    invoke-virtual {v13, v1}, LS4/j;->add(Ljava/lang/Object;)Z

    return-object v7

    :pswitch_1
    check-cast v13, Lr3/c;

    if-ne v1, v13, :cond_0

    const-string v0, "(this Collection)"

    goto :goto_0

    :cond_0
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_2
    move-object v0, v1

    check-cast v0, LZ3/c;

    const-string v1, "kotlinClass"

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Landroidx/recyclerview/widget/b;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Lo1/b;

    invoke-direct {v3, v13, v1, v2}, Lo1/b;-><init>(Landroidx/recyclerview/widget/b;Ljava/util/HashMap;Ljava/util/HashMap;)V

    iget-object v0, v0, LZ3/c;->a:Ljava/lang/Class;

    const-string v4, "klass"

    invoke-static {v0, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    const-string v7, "klass.declaredMethods"

    invoke-static {v4, v7}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v7, v4

    const/4 v8, 0x0

    :goto_1
    const-string v10, "annotations"

    const-string v11, "sb.toString()"

    const-string v13, "parameterType"

    const-string v14, "("

    if-ge v8, v7, :cond_7

    aget-object v15, v4, v8

    add-int/2addr v8, v12

    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v14

    invoke-static {v14, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 p0, v4

    array-length v4, v14

    move/from16 p1, v7

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v4, :cond_1

    move/from16 v18, v4

    aget-object v4, v14, v7

    const/16 v16, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-static {v4, v13}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, La4/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v18

    goto :goto_2

    :cond_1
    const-string v4, ")"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    const-string v7, "method.returnType"

    invoke-static {v4, v7}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, La4/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v11}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v9, v4}, Lo1/b;->i(Ls4/f;Ljava/lang/String;)Lw0/i;

    move-result-object v4

    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v7

    const-string v9, "method.declaredAnnotations"

    invoke-static {v7, v9}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v9, v7

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v9, :cond_3

    aget-object v12, v7, v11

    const/4 v13, 0x1

    add-int/2addr v11, v13

    invoke-static {v12, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12}, Lw0/f;->u(Ljava/lang/annotation/Annotation;)LL3/b;

    move-result-object v13

    invoke-static {v13}, Lw0/f;->x(LL3/b;)Ljava/lang/Class;

    move-result-object v13

    invoke-static {v13}, La4/b;->a(Ljava/lang/Class;)Ls4/b;

    move-result-object v14

    move-object/from16 v18, v7

    new-instance v7, LZ3/a;

    invoke-direct {v7, v12}, LZ3/a;-><init>(Ljava/lang/annotation/Annotation;)V

    move/from16 v19, v8

    iget-object v8, v4, Lw0/i;->g:Ljava/lang/Object;

    check-cast v8, Lo1/b;

    iget-object v8, v8, Lo1/b;->c:Ljava/lang/Object;

    check-cast v8, Landroidx/recyclerview/widget/b;

    move/from16 v20, v9

    iget-object v9, v4, Lw0/i;->f:Ljava/lang/Object;

    check-cast v9, Ljava/util/ArrayList;

    invoke-static {v8, v14, v7, v9}, Landroidx/recyclerview/widget/b;->b(Landroidx/recyclerview/widget/b;Ls4/b;LZ3/a;Ljava/util/List;)Landroidx/recyclerview/widget/b;

    move-result-object v7

    if-nez v7, :cond_2

    goto :goto_4

    :cond_2
    invoke-static {v7, v12, v13}, LR3/f;->X(Ll4/j;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    :goto_4
    move-object/from16 v7, v18

    move/from16 v8, v19

    move/from16 v9, v20

    goto :goto_3

    :cond_3
    move/from16 v19, v8

    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v7

    const-string v8, "method.parameterAnnotations"

    invoke-static {v7, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, [[Ljava/lang/annotation/Annotation;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v8, :cond_6

    aget-object v11, v7, v9

    const/4 v12, 0x1

    add-int/lit8 v13, v9, 0x1

    invoke-static {v11, v10}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v14, v11

    const/4 v15, 0x0

    :goto_6
    if-ge v15, v14, :cond_5

    move-object/from16 v18, v7

    aget-object v7, v11, v15

    add-int/2addr v15, v12

    invoke-static {v7}, Lw0/f;->u(Ljava/lang/annotation/Annotation;)LL3/b;

    move-result-object v12

    invoke-static {v12}, Lw0/f;->x(LL3/b;)Ljava/lang/Class;

    move-result-object v12

    move/from16 v20, v8

    invoke-static {v12}, La4/b;->a(Ljava/lang/Class;)Ls4/b;

    move-result-object v8

    move-object/from16 v21, v11

    new-instance v11, LZ3/a;

    invoke-direct {v11, v7}, LZ3/a;-><init>(Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v4, v9, v8, v11}, Lw0/i;->K(ILs4/b;LZ3/a;)Landroidx/recyclerview/widget/b;

    move-result-object v8

    if-nez v8, :cond_4

    goto :goto_7

    :cond_4
    invoke-static {v8, v7, v12}, LR3/f;->X(Ll4/j;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    :goto_7
    move-object/from16 v7, v18

    move/from16 v8, v20

    move-object/from16 v11, v21

    const/4 v12, 0x1

    goto :goto_6

    :cond_5
    move v9, v13

    goto :goto_5

    :cond_6
    invoke-virtual {v4}, Lw0/i;->h()V

    move-object/from16 v4, p0

    move/from16 v7, p1

    move/from16 v8, v19

    const/4 v12, 0x1

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v4

    const-string v5, "klass.declaredConstructors"

    invoke-static {v4, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v5, v4

    const/4 v7, 0x0

    :goto_8
    if-ge v7, v5, :cond_f

    aget-object v8, v4, v7

    const/4 v9, 0x1

    add-int/2addr v7, v9

    const-string v9, "<init>"

    invoke-static {v9}, Ls4/f;->g(Ljava/lang/String;)Ls4/f;

    move-result-object v9

    const-string v12, "constructor"

    invoke-static {v8, v12}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v15

    move-object/from16 p0, v4

    const-string v4, "constructor.parameterTypes"

    invoke-static {v15, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v4, v15

    move/from16 v18, v5

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v4, :cond_8

    move/from16 v19, v4

    aget-object v4, v15, v5

    const/16 v16, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v13}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, La4/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v19

    goto :goto_9

    :cond_8
    const-string v4, ")V"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v11}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v9, v4}, Lo1/b;->i(Ls4/f;Ljava/lang/String;)Lw0/i;

    move-result-object v4

    invoke-virtual {v8}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v5

    const-string v9, "constructor.declaredAnnotations"

    invoke-static {v5, v9}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v9, v5

    const/4 v12, 0x0

    :goto_a
    if-ge v12, v9, :cond_a

    aget-object v15, v5, v12

    const/16 v16, 0x1

    add-int/lit8 v12, v12, 0x1

    invoke-static {v15, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v15}, Lw0/f;->u(Ljava/lang/annotation/Annotation;)LL3/b;

    move-result-object v19

    move-object/from16 p1, v5

    invoke-static/range {v19 .. v19}, Lw0/f;->x(LL3/b;)Ljava/lang/Class;

    move-result-object v5

    move/from16 v19, v7

    invoke-static {v5}, La4/b;->a(Ljava/lang/Class;)Ls4/b;

    move-result-object v7

    move/from16 v20, v9

    new-instance v9, LZ3/a;

    invoke-direct {v9, v15}, LZ3/a;-><init>(Ljava/lang/annotation/Annotation;)V

    move-object/from16 v21, v11

    iget-object v11, v4, Lw0/i;->g:Ljava/lang/Object;

    check-cast v11, Lo1/b;

    iget-object v11, v11, Lo1/b;->c:Ljava/lang/Object;

    check-cast v11, Landroidx/recyclerview/widget/b;

    move/from16 v22, v12

    iget-object v12, v4, Lw0/i;->f:Ljava/lang/Object;

    check-cast v12, Ljava/util/ArrayList;

    invoke-static {v11, v7, v9, v12}, Landroidx/recyclerview/widget/b;->b(Landroidx/recyclerview/widget/b;Ls4/b;LZ3/a;Ljava/util/List;)Landroidx/recyclerview/widget/b;

    move-result-object v7

    if-nez v7, :cond_9

    goto :goto_b

    :cond_9
    invoke-static {v7, v15, v5}, LR3/f;->X(Ll4/j;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    :goto_b
    move-object/from16 v5, p1

    move/from16 v7, v19

    move/from16 v9, v20

    move-object/from16 v11, v21

    move/from16 v12, v22

    goto :goto_a

    :cond_a
    move/from16 v19, v7

    move-object/from16 v21, v11

    invoke-virtual {v8}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v5

    const-string v7, "parameterAnnotations"

    invoke-static {v5, v7}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v7, v5

    if-nez v7, :cond_c

    :cond_b
    move-object/from16 v22, v10

    goto :goto_f

    :cond_c
    invoke-virtual {v8}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    array-length v8, v5

    sub-int/2addr v7, v8

    array-length v8, v5

    const/4 v9, 0x0

    :goto_c
    if-ge v9, v8, :cond_b

    aget-object v11, v5, v9

    const/4 v12, 0x1

    add-int/lit8 v15, v9, 0x1

    invoke-static {v11, v10}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v12, v11

    move-object/from16 p1, v5

    const/4 v5, 0x0

    :goto_d
    if-ge v5, v12, :cond_e

    move/from16 v20, v8

    aget-object v8, v11, v5

    const/16 v16, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-static {v8}, Lw0/f;->u(Ljava/lang/annotation/Annotation;)LL3/b;

    move-result-object v22

    move/from16 v23, v5

    invoke-static/range {v22 .. v22}, Lw0/f;->x(LL3/b;)Ljava/lang/Class;

    move-result-object v5

    move-object/from16 v22, v10

    add-int v10, v9, v7

    move/from16 v24, v7

    invoke-static {v5}, La4/b;->a(Ljava/lang/Class;)Ls4/b;

    move-result-object v7

    move/from16 v25, v9

    new-instance v9, LZ3/a;

    invoke-direct {v9, v8}, LZ3/a;-><init>(Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v4, v10, v7, v9}, Lw0/i;->K(ILs4/b;LZ3/a;)Landroidx/recyclerview/widget/b;

    move-result-object v7

    if-nez v7, :cond_d

    goto :goto_e

    :cond_d
    invoke-static {v7, v8, v5}, LR3/f;->X(Ll4/j;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    :goto_e
    move/from16 v8, v20

    move-object/from16 v10, v22

    move/from16 v5, v23

    move/from16 v7, v24

    move/from16 v9, v25

    goto :goto_d

    :cond_e
    move-object/from16 v5, p1

    move v9, v15

    goto :goto_c

    :goto_f
    invoke-virtual {v4}, Lw0/i;->h()V

    move-object/from16 v4, p0

    move/from16 v5, v18

    move/from16 v7, v19

    move-object/from16 v11, v21

    move-object/from16 v10, v22

    goto/16 :goto_8

    :cond_f
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    const-string v4, "klass.declaredFields"

    invoke-static {v0, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v4, v0

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v4, :cond_13

    aget-object v7, v0, v5

    const/4 v8, 0x1

    add-int/2addr v5, v8

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "field.type"

    invoke-static {v9, v10}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, La4/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "desc"

    invoke-static {v9, v10}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ls4/f;->b()Ljava/lang/String;

    move-result-object v8

    const-string v10, "name.asString()"

    invoke-static {v8, v10}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Ll4/m;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x23

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v8}, Ll4/m;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v7

    const-string v9, "field.declaredAnnotations"

    invoke-static {v7, v9}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v9, v7

    const/4 v11, 0x0

    :goto_11
    if-ge v11, v9, :cond_11

    aget-object v12, v7, v11

    const/4 v13, 0x1

    add-int/2addr v11, v13

    invoke-static {v12, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12}, Lw0/f;->u(Ljava/lang/annotation/Annotation;)LL3/b;

    move-result-object v13

    invoke-static {v13}, Lw0/f;->x(LL3/b;)Ljava/lang/Class;

    move-result-object v13

    invoke-static {v13}, La4/b;->a(Ljava/lang/Class;)Ls4/b;

    move-result-object v14

    new-instance v15, LZ3/a;

    invoke-direct {v15, v12}, LZ3/a;-><init>(Ljava/lang/annotation/Annotation;)V

    move-object/from16 p0, v0

    iget-object v0, v3, Lo1/b;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/b;

    invoke-static {v0, v14, v15, v8}, Landroidx/recyclerview/widget/b;->b(Landroidx/recyclerview/widget/b;Ls4/b;LZ3/a;Ljava/util/List;)Landroidx/recyclerview/widget/b;

    move-result-object v0

    if-nez v0, :cond_10

    goto :goto_12

    :cond_10
    invoke-static {v0, v12, v13}, LR3/f;->X(Ll4/j;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    :goto_12
    move-object/from16 v0, p0

    goto :goto_11

    :cond_11
    move-object/from16 p0, v0

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, v3, Lo1/b;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    move-object/from16 v0, p0

    goto/16 :goto_10

    :cond_13
    new-instance v0, Ll4/a;

    invoke-direct {v0, v1, v2}, Ll4/a;-><init>(Ljava/util/HashMap;Ljava/util/HashMap;)V

    return-object v0

    :pswitch_3
    move-object v0, v1

    check-cast v0, LU3/b;

    invoke-static {v0, v10}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, LU3/a;->n0()Ljava/util/List;

    move-result-object v0

    check-cast v13, LX3/W;

    iget v1, v13, LX3/W;->i:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX3/W;

    check-cast v0, LX3/X;

    invoke-virtual {v0}, LX3/X;->j()LJ4/C;

    move-result-object v0

    const-string v1, "it.valueParameters[p.index].type"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :pswitch_4
    move-object v0, v1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-ltz v0, :cond_14

    check-cast v13, [Lk4/e;

    array-length v1, v13

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_14

    aget-object v0, v13, v0

    goto :goto_13

    :cond_14
    sget-object v0, Lk4/e;->e:Lk4/e;

    :goto_13
    return-object v0

    :pswitch_5
    move-object v0, v1

    check-cast v0, Li4/h;

    iget-object v1, v0, Li4/h;->a:LU3/O;

    check-cast v13, Lw0/s;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Li4/h;->c:Li4/a;

    iget-object v3, v2, Li4/a;->d:Ljava/util/Set;

    const-string v4, "erroneousErasedBound"

    iget-object v5, v13, Lw0/s;->a:Ljava/lang/Object;

    check-cast v5, Lq3/j;

    iget-object v6, v2, Li4/a;->e:LJ4/G;

    if-eqz v3, :cond_16

    invoke-interface {v1}, LU3/O;->a()LU3/O;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    if-nez v6, :cond_15

    goto :goto_14

    :cond_15
    invoke-static {v6}, LK/I;->n0(LJ4/C;)LJ4/b0;

    move-result-object v11

    :goto_14
    if-nez v11, :cond_23

    invoke-virtual {v5}, Lq3/j;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, LJ4/G;

    invoke-static {v11, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1d

    :cond_16
    invoke-interface {v1}, LU3/g;->n()LJ4/G;

    move-result-object v7

    const-string v8, "typeParameter.defaultType"

    invoke-static {v7, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/util/LinkedHashSet;

    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v7, v7, v8, v3}, LK/I;->t(LJ4/C;LJ4/G;Ljava/util/LinkedHashSet;Ljava/util/Set;)V

    invoke-static {v8}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v7

    invoke-static {v7}, Lr3/v;->d0(I)I

    move-result v7

    const/16 v9, 0x10

    if-ge v7, v9, :cond_17

    move v7, v9

    :cond_17
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9, v7}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_15
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    iget-object v10, v2, Li4/a;->d:Ljava/util/Set;

    if-eqz v8, :cond_1c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LU3/O;

    if-eqz v3, :cond_19

    invoke-interface {v3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_18

    goto :goto_16

    :cond_18
    invoke-static {v8, v2}, Li4/d;->a(LU3/O;Li4/a;)LJ4/P;

    move-result-object v10

    move-object/from16 p0, v0

    goto :goto_19

    :cond_19
    :goto_16
    iget-boolean v12, v0, Li4/h;->b:Z

    if-eqz v12, :cond_1a

    move-object v15, v2

    goto :goto_17

    :cond_1a
    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Li4/a;->b(I)Li4/a;

    move-result-object v15

    :goto_17
    if-eqz v10, :cond_1b

    invoke-static {v10, v1}, Lr3/y;->b0(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    move-result-object v10

    goto :goto_18

    :cond_1b
    invoke-static {v1}, Lp4/g;->T(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v10

    :goto_18
    const/16 v14, 0x17

    move-object/from16 p0, v0

    const/4 v0, 0x0

    invoke-static {v2, v0, v10, v11, v14}, Li4/a;->a(Li4/a;ILjava/util/Set;LJ4/G;I)Li4/a;

    move-result-object v10

    invoke-virtual {v13, v8, v12, v10}, Lw0/s;->a(LU3/O;ZLi4/a;)LJ4/C;

    move-result-object v0

    iget-object v10, v13, Lw0/s;->b:Ljava/lang/Object;

    check-cast v10, Li4/e;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v15, v0}, Li4/e;->g(LU3/O;Li4/a;LJ4/C;)LJ4/P;

    move-result-object v10

    :goto_19
    invoke-interface {v8}, LU3/g;->E()LJ4/M;

    move-result-object v0

    invoke-interface {v9, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    goto :goto_15

    :cond_1c
    new-instance v0, LJ4/N;

    const/4 v2, 0x0

    invoke-direct {v0, v9, v2}, LJ4/N;-><init>(Ljava/util/Map;Z)V

    new-instance v2, LJ4/X;

    invoke-direct {v2, v0}, LJ4/X;-><init>(LJ4/U;)V

    invoke-interface {v1}, LU3/O;->getUpperBounds()Ljava/util/List;

    move-result-object v0

    const-string v1, "typeParameter.upperBounds"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lr3/j;->t0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ4/C;

    invoke-virtual {v0}, LJ4/C;->q0()LJ4/M;

    move-result-object v1

    invoke-interface {v1}, LJ4/M;->e()LU3/g;

    move-result-object v1

    instance-of v1, v1, LU3/e;

    if-eqz v1, :cond_1d

    invoke-static {v0, v2, v9, v10}, LK/I;->m0(LJ4/C;LJ4/X;Ljava/util/LinkedHashMap;Ljava/util/Set;)LJ4/C;

    move-result-object v11

    goto :goto_1d

    :cond_1d
    if-nez v10, :cond_1e

    invoke-static {v13}, Lp4/g;->T(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    goto :goto_1a

    :cond_1e
    move-object v1, v10

    :goto_1a
    invoke-virtual {v0}, LJ4/C;->q0()LJ4/M;

    move-result-object v0

    invoke-interface {v0}, LJ4/M;->e()LU3/g;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.TypeParameterDescriptor"

    if-eqz v0, :cond_24

    check-cast v0, LU3/O;

    :goto_1b
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_21

    invoke-interface {v0}, LU3/O;->getUpperBounds()Ljava/util/List;

    move-result-object v0

    const-string v7, "current.upperBounds"

    invoke-static {v0, v7}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lr3/j;->t0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ4/C;

    invoke-virtual {v0}, LJ4/C;->q0()LJ4/M;

    move-result-object v7

    invoke-interface {v7}, LJ4/M;->e()LU3/g;

    move-result-object v7

    instance-of v7, v7, LU3/e;

    if-eqz v7, :cond_1f

    invoke-static {v0, v2, v9, v10}, LK/I;->m0(LJ4/C;LJ4/X;Ljava/util/LinkedHashMap;Ljava/util/Set;)LJ4/C;

    move-result-object v11

    goto :goto_1d

    :cond_1f
    invoke-virtual {v0}, LJ4/C;->q0()LJ4/M;

    move-result-object v0

    invoke-interface {v0}, LJ4/M;->e()LU3/g;

    move-result-object v0

    if-eqz v0, :cond_20

    check-cast v0, LU3/O;

    goto :goto_1b

    :cond_20
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    if-nez v6, :cond_22

    goto :goto_1c

    :cond_22
    invoke-static {v6}, LK/I;->n0(LJ4/C;)LJ4/b0;

    move-result-object v11

    :goto_1c
    if-nez v11, :cond_23

    invoke-virtual {v5}, Lq3/j;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ4/G;

    invoke-static {v0, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v0

    :cond_23
    :goto_1d
    return-object v11

    :cond_24
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    move-object v0, v1

    check-cast v0, LK4/g;

    invoke-static {v0, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, LU3/e;

    if-eqz v13, :cond_25

    goto :goto_1e

    :cond_25
    move-object v13, v11

    :goto_1e
    if-nez v13, :cond_26

    goto :goto_1f

    :cond_26
    invoke-static {v13}, Lz4/e;->f(LU3/g;)Ls4/b;

    :goto_1f
    return-object v11

    :pswitch_7
    const/4 v2, 0x0

    move-object v0, v1

    check-cast v0, LK4/g;

    invoke-static {v0, v10}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lh4/l;

    move-object v5, v13

    check-cast v5, Lh4/h;

    iget-object v4, v5, Lh4/h;->m:Landroidx/recyclerview/widget/b;

    iget-object v1, v5, Lh4/h;->l:LU3/e;

    if-eqz v1, :cond_27

    const/4 v7, 0x1

    goto :goto_20

    :cond_27
    move v7, v2

    :goto_20
    iget-object v6, v5, Lh4/h;->k:La4/n;

    iget-object v8, v5, Lh4/h;->t:Lh4/l;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lh4/l;-><init>(Landroidx/recyclerview/widget/b;LU3/e;La4/n;ZLh4/l;)V

    return-object v0

    :pswitch_8
    const/4 v2, 0x0

    move-object v0, v1

    check-cast v0, La4/w;

    const-string v1, "m"

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Lh4/a;

    iget-object v1, v13, Lh4/a;->b:LF3/l;

    invoke-interface {v1, v0}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {v0}, La4/w;->d()Ljava/lang/reflect/Member;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "member.declaringClass"

    invoke-static {v1, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-virtual {v0}, La4/v;->e()Ls4/f;

    move-result-object v1

    invoke-virtual {v1}, Ls4/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x69e9ad94

    if-eq v3, v4, :cond_2e

    const v4, -0x4d378041

    if-eq v3, v4, :cond_29

    const v4, 0x8cdac1b

    if-eq v3, v4, :cond_28

    goto :goto_22

    :cond_28
    const-string v3, "hashCode"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    goto :goto_22

    :cond_29
    const-string v3, "equals"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    goto :goto_22

    :cond_2a
    invoke-virtual {v0}, La4/w;->h()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lr3/j;->L0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La4/D;

    if-nez v0, :cond_2b

    move-object v0, v11

    goto :goto_21

    :cond_2b
    iget-object v0, v0, La4/D;->a:La4/B;

    :goto_21
    instance-of v1, v0, La4/p;

    if-eqz v1, :cond_2c

    move-object v11, v0

    check-cast v11, La4/p;

    :cond_2c
    if-nez v11, :cond_2d

    goto :goto_22

    :cond_2d
    iget-object v0, v11, La4/p;->b:La4/r;

    instance-of v1, v0, La4/n;

    if-eqz v1, :cond_2f

    check-cast v0, La4/n;

    invoke-virtual {v0}, La4/n;->e()Ls4/c;

    move-result-object v0

    invoke-virtual {v0}, Ls4/c;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.Object"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_23

    :cond_2e
    const-string v3, "toString"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    :cond_2f
    :goto_22
    move v0, v2

    goto :goto_23

    :cond_30
    invoke-virtual {v0}, La4/w;->h()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    :goto_23
    if-eqz v0, :cond_31

    const/4 v0, 0x1

    goto :goto_24

    :cond_31
    move v0, v2

    :goto_24
    if-nez v0, :cond_32

    const/4 v9, 0x1

    goto :goto_25

    :cond_32
    move v9, v2

    :goto_25
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_9
    move-object v0, v1

    check-cast v0, La4/C;

    const-string v1, "typeParameter"

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Lg4/e;

    iget-object v1, v13, Lg4/e;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_33

    goto :goto_26

    :cond_33
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    new-instance v11, Lh4/B;

    iget-object v2, v13, Lg4/e;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/recyclerview/widget/b;

    const-string v3, "<this>"

    invoke-static {v2, v3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Landroidx/recyclerview/widget/b;

    iget-object v4, v2, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v4, Lg4/a;

    iget-object v2, v2, Landroidx/recyclerview/widget/b;->g:Ljava/lang/Object;

    invoke-direct {v3, v4, v13, v2}, Landroidx/recyclerview/widget/b;-><init>(Lg4/a;Lg4/f;Lq3/d;)V

    iget-object v2, v13, Lg4/e;->c:Ljava/lang/Object;

    check-cast v2, LU3/k;

    invoke-interface {v2}, LV3/a;->p()LV3/h;

    move-result-object v4

    invoke-static {v3, v4}, Le0/a;->x(Landroidx/recyclerview/widget/b;LV3/h;)Landroidx/recyclerview/widget/b;

    move-result-object v3

    iget v4, v13, Lg4/e;->a:I

    add-int/2addr v4, v1

    invoke-direct {v11, v3, v0, v4, v2}, Lh4/B;-><init>(Landroidx/recyclerview/widget/b;La4/C;ILU3/k;)V

    :goto_26
    return-object v11

    :pswitch_a
    move-object v0, v1

    check-cast v0, La4/c;

    invoke-static {v0, v6}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Le4/c;->a:Ls4/f;

    check-cast v13, Lg4/c;

    iget-object v1, v13, Lg4/c;->d:Landroidx/recyclerview/widget/b;

    iget-boolean v2, v13, Lg4/c;->f:Z

    invoke-static {v0, v1, v2}, Le4/c;->b(La4/c;Landroidx/recyclerview/widget/b;Z)Lf4/h;

    move-result-object v0

    return-object v0

    :pswitch_b
    move-object v0, v1

    check-cast v0, Ls4/c;

    invoke-static {v0, v10}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Lo1/b;

    iget-object v1, v13, Lo1/b;->c:Ljava/lang/Object;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_34
    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls4/c;

    invoke-virtual {v0, v4}, Ls4/c;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_36

    const-string v5, "packageName"

    invoke-static {v4, v5}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ls4/c;->d()Z

    move-result v5

    if-eqz v5, :cond_35

    move-object v5, v11

    goto :goto_28

    :cond_35
    invoke-virtual {v0}, Ls4/c;->e()Ls4/c;

    move-result-object v5

    :goto_28
    invoke-static {v5, v4}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    :cond_36
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    :cond_37
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_38

    goto :goto_29

    :cond_38
    move-object v2, v11

    :goto_29
    if-nez v2, :cond_39

    goto :goto_2b

    :cond_39
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3a

    move-object v1, v11

    goto :goto_2a

    :cond_3a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3b

    goto :goto_2a

    :cond_3b
    move-object v3, v1

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls4/c;

    invoke-static {v3, v0}, Lp4/g;->W(Ls4/c;Ls4/c;)Ls4/c;

    move-result-object v3

    invoke-virtual {v3}, Ls4/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    :cond_3c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls4/c;

    invoke-static {v5, v0}, Lp4/g;->W(Ls4/c;Ls4/c;)Ls4/c;

    move-result-object v5

    invoke-virtual {v5}, Ls4/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v3, v5, :cond_3d

    move-object v1, v4

    move v3, v5

    :cond_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3c

    :goto_2a
    check-cast v1, Ljava/util/Map$Entry;

    if-nez v1, :cond_3e

    goto :goto_2b

    :cond_3e
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    :goto_2b
    return-object v11

    :pswitch_c
    move-object v0, v1

    check-cast v0, LU3/b;

    invoke-static {v0, v10}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ld4/F;->i:Ljava/util/LinkedHashMap;

    check-cast v13, LX3/P;

    invoke-static {v13}, Lj0/s;->r(LU3/a;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_3f

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_3f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_d
    const/4 v2, 0x0

    move-object v0, v1

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result v1

    if-eqz v1, :cond_41

    :cond_40
    move v9, v2

    goto :goto_2d

    :cond_41
    check-cast v13, La4/n;

    iget-object v1, v13, La4/n;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "values"

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, v0

    if-nez v0, :cond_42

    const/4 v0, 0x1

    goto :goto_2c

    :cond_42
    move v0, v2

    goto :goto_2c

    :cond_43
    const-string v3, "valueOf"

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    :goto_2c
    if-nez v0, :cond_40

    :cond_44
    const/4 v9, 0x1

    :goto_2d
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_e
    move-object v0, v1

    check-cast v0, Ls4/c;

    invoke-static {v0, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, LX3/D;

    iget-object v1, v13, LX3/D;->i:LX3/I;

    check-cast v1, LX3/H;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v13, LX3/D;->f:LI4/l;

    const-string v2, "storageManager"

    invoke-static {v1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, LX3/z;

    invoke-direct {v2, v13, v0, v1}, LX3/z;-><init>(LX3/D;Ls4/c;LI4/l;)V

    return-object v2

    :pswitch_f
    move-object v0, v1

    check-cast v0, LU3/x;

    invoke-static {v0, v8}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, LU3/x;->c()LR3/j;

    move-result-object v0

    check-cast v13, LR3/j;

    invoke-virtual {v13}, LR3/j;->t()LJ4/G;

    move-result-object v1

    invoke-virtual {v0, v1}, LR3/j;->h(LJ4/b0;)LJ4/G;

    move-result-object v0

    return-object v0

    :pswitch_10
    invoke-static {v1, v10}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, LF4/s;

    invoke-virtual {v13}, LF4/s;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_11
    const/4 v2, 0x0

    move-object v0, v1

    check-cast v0, LU3/b;

    invoke-interface {v0}, LU3/b;->f0()I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_46

    check-cast v13, LT3/n;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, LU3/j;->g()LU3/j;

    move-result-object v0

    check-cast v0, LU3/e;

    const-string v1, "mutable"

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, LT3/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lv4/f;->g(LU3/j;)Ls4/e;

    move-result-object v0

    sget-object v1, LT3/d;->j:Ljava/util/HashMap;

    if-eqz v1, :cond_45

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    move v9, v5

    goto :goto_2e

    :cond_45
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    move v9, v2

    :goto_2e
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_12
    move-object v0, v1

    check-cast v0, LJ4/C;

    invoke-static {v0, v10}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, LE3/b;

    invoke-interface {v13, v0}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_13
    move v5, v12

    const/4 v2, 0x0

    move-object v0, v1

    check-cast v0, LK4/g;

    invoke-static {v0, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, LJ4/B;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v13, LJ4/B;->b:Ljava/util/LinkedHashSet;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v9, v2

    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LJ4/C;

    invoke-virtual {v2, v0}, LJ4/C;->A0(LK4/g;)LJ4/C;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v9, v5

    goto :goto_2f

    :cond_47
    if-nez v9, :cond_48

    goto :goto_31

    :cond_48
    iget-object v1, v13, LJ4/B;->a:LJ4/C;

    if-nez v1, :cond_49

    goto :goto_30

    :cond_49
    invoke-virtual {v1, v0}, LJ4/C;->A0(LK4/g;)LJ4/C;

    move-result-object v11

    :goto_30
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, v3}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    new-instance v1, LJ4/B;

    invoke-direct {v1, v0}, LJ4/B;-><init>(Ljava/util/AbstractCollection;)V

    iput-object v11, v1, LJ4/B;->a:LJ4/C;

    move-object v11, v1

    :goto_31
    if-nez v11, :cond_4a

    goto :goto_32

    :cond_4a
    move-object v13, v11

    :goto_32
    invoke-virtual {v13}, LJ4/B;->b()LJ4/G;

    move-result-object v0

    return-object v0

    :pswitch_14
    move-object v0, v1

    check-cast v0, LJ4/f;

    const-string v1, "supertypes"

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, LJ4/h;

    invoke-virtual {v13}, LJ4/h;->i()LU3/M;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "superTypes"

    iget-object v2, v0, LJ4/f;->a:Ljava/util/Collection;

    invoke-static {v2, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-virtual {v13}, LJ4/h;->h()LJ4/C;

    move-result-object v1

    if-nez v1, :cond_4b

    move-object v1, v11

    goto :goto_33

    :cond_4b
    invoke-static {v1}, Lp4/g;->H(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_33
    if-eqz v1, :cond_4c

    :goto_34
    move-object v2, v1

    goto :goto_35

    :cond_4c
    sget-object v1, Lr3/r;->d:Lr3/r;

    goto :goto_34

    :cond_4d
    :goto_35
    instance-of v1, v2, Ljava/util/List;

    if-eqz v1, :cond_4e

    move-object v11, v2

    check-cast v11, Ljava/util/List;

    :cond_4e
    if-nez v11, :cond_4f

    invoke-static {v2}, Lr3/j;->P0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v11

    :cond_4f
    invoke-virtual {v13, v11}, LJ4/h;->l(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    const-string v2, "<set-?>"

    invoke-static {v1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, LJ4/f;->b:Ljava/util/List;

    return-object v7

    :pswitch_15
    move-object v0, v1

    check-cast v0, Ls4/b;

    invoke-static {v0, v10}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, LG4/c;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, LU3/L;->a:LU3/M;

    return-object v0

    :pswitch_16
    move-object v0, v1

    check-cast v0, LF4/f;

    const-string v1, "key"

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, LF4/g;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v13, LF4/g;->a:LF4/i;

    iget-object v2, v1, LF4/i;->k:Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    iget-object v4, v0, LF4/f;->a:Ls4/b;

    if-eqz v3, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LW3/c;

    invoke-interface {v3, v4}, LW3/c;->b(Ls4/b;)LU3/e;

    move-result-object v3

    if-nez v3, :cond_50

    goto :goto_36

    :cond_50
    move-object v11, v3

    goto/16 :goto_3b

    :cond_51
    sget-object v2, LF4/g;->c:Ljava/util/Set;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    goto/16 :goto_3b

    :cond_52
    iget-object v0, v0, LF4/f;->b:LF4/d;

    if-nez v0, :cond_53

    iget-object v0, v1, LF4/i;->d:LF4/e;

    invoke-interface {v0, v4}, LF4/e;->M(Ls4/b;)LF4/d;

    move-result-object v0

    if-nez v0, :cond_53

    goto/16 :goto_3b

    :cond_53
    invoke-virtual {v4}, Ls4/b;->f()Ls4/b;

    move-result-object v2

    iget-object v9, v0, LF4/d;->c:Lp4/a;

    const-string v3, "classId.shortClassName"

    iget-object v8, v0, LF4/d;->a:Lp4/f;

    iget-object v7, v0, LF4/d;->b:Ln4/j;

    if-eqz v2, :cond_57

    invoke-virtual {v13, v2, v11}, LF4/g;->a(Ls4/b;LF4/d;)LU3/e;

    move-result-object v1

    instance-of v2, v1, LH4/l;

    if-eqz v2, :cond_54

    check-cast v1, LH4/l;

    goto :goto_37

    :cond_54
    move-object v1, v11

    :goto_37
    if-nez v1, :cond_55

    goto/16 :goto_3b

    :cond_55
    invoke-virtual {v4}, Ls4/b;->i()Ls4/f;

    move-result-object v2

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, LH4/l;->m0()LH4/g;

    move-result-object v3

    invoke-virtual {v3}, LH4/r;->m()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_56

    goto/16 :goto_3b

    :cond_56
    iget-object v1, v1, LH4/l;->o:LF4/k;

    :goto_38
    move-object v6, v1

    goto/16 :goto_3a

    :cond_57
    invoke-virtual {v4}, Ls4/b;->g()Ls4/c;

    move-result-object v2

    const-string v5, "classId.packageFqName"

    invoke-static {v2, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v1, LF4/i;->f:LU3/F;

    invoke-static {v1, v2}, LR3/f;->W(LU3/C;Ls4/c;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_58
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, LU3/B;

    instance-of v6, v5, LG4/c;

    if-eqz v6, :cond_5a

    check-cast v5, LG4/c;

    invoke-virtual {v4}, Ls4/b;->i()Ls4/f;

    move-result-object v6

    invoke-static {v6, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, LG4/c;->l0()LC4/o;

    move-result-object v5

    check-cast v5, LH4/r;

    invoke-virtual {v5}, LH4/r;->m()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_58

    goto :goto_39

    :cond_59
    move-object v2, v11

    :cond_5a
    :goto_39
    move-object v15, v2

    check-cast v15, LU3/B;

    if-nez v15, :cond_5b

    goto :goto_3b

    :cond_5b
    new-instance v1, LX3/C;

    iget-object v2, v7, Ln4/j;->z:Ln4/X;

    const-string v3, "classProto.typeTable"

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, LX3/C;-><init>(Ln4/X;)V

    iget-object v2, v7, Ln4/j;->B:Ln4/e0;

    const-string v3, "classProto.versionRequirementTable"

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lp4/g;->q(Ln4/e0;)Lp4/h;

    move-result-object v18

    const/16 v20, 0x0

    iget-object v14, v13, LF4/g;->a:LF4/i;

    move-object/from16 v16, v8

    move-object/from16 v17, v1

    move-object/from16 v19, v9

    invoke-virtual/range {v14 .. v20}, LF4/i;->a(LU3/B;Lp4/f;LX3/C;Lp4/h;Lp4/a;Ll4/e;)LF4/k;

    move-result-object v1

    goto :goto_38

    :goto_3a
    new-instance v11, LH4/l;

    iget-object v10, v0, LF4/d;->d:LU3/L;

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, LH4/l;-><init>(LF4/k;Ln4/j;Lp4/f;Lp4/a;LU3/L;)V

    :goto_3b
    return-object v11

    :pswitch_17
    move-object v0, v1

    check-cast v0, Ls4/c;

    invoke-static {v0, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, LT3/o;

    invoke-virtual {v13, v0}, LT3/o;->e(Ls4/c;)LG4/c;

    move-result-object v0

    if-nez v0, :cond_5c

    goto :goto_3c

    :cond_5c
    iget-object v1, v13, LT3/o;->c:LF4/i;

    if-eqz v1, :cond_5d

    invoke-virtual {v0, v1}, LG4/c;->I0(LF4/i;)V

    move-object v11, v0

    :goto_3c
    return-object v11

    :cond_5d
    const-string v0, "components"

    invoke-static {v0}, LF3/k;->m(Ljava/lang/String;)V

    throw v11

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

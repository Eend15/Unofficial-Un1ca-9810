.class public abstract LO3/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ls4/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ls4/c;

    const-string v1, "kotlin.jvm.JvmStatic"

    invoke-direct {v0, v1}, Ls4/c;-><init>(Ljava/lang/String;)V

    sput-object v0, LO3/r0;->a:Ls4/c;

    return-void
.end method

.method public static final a(Ljava/lang/Object;)LO3/A;
    .locals 2

    instance-of v0, p0, LO3/A;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    check-cast v0, LO3/A;

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    instance-of v0, p0, LF3/h;

    if-nez v0, :cond_2

    move-object p0, v1

    :cond_2
    check-cast p0, LF3/h;

    if-eqz p0, :cond_3

    iget-object v0, p0, LF3/c;->d:LL3/a;

    if-nez v0, :cond_4

    invoke-virtual {p0}, LF3/h;->a()LL3/a;

    move-result-object v0

    iput-object v0, p0, LF3/c;->d:LL3/a;

    goto :goto_1

    :cond_3
    move-object v0, v1

    :cond_4
    :goto_1
    instance-of p0, v0, LO3/A;

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    move-object v1, v0

    :goto_2
    move-object v0, v1

    check-cast v0, LO3/A;

    :goto_3
    return-object v0
.end method

.method public static final b(LV3/a;)Ljava/util/ArrayList;
    .locals 4

    const-string v0, "$this$computeAnnotations"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, LV3/a;->p()LV3/h;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LV3/b;

    invoke-interface {v1}, LV3/b;->i()LU3/L;

    move-result-object v2

    instance-of v3, v2, LZ3/a;

    if-eqz v3, :cond_1

    check-cast v2, LZ3/a;

    iget-object v1, v2, LZ3/a;->d:Ljava/lang/annotation/Annotation;

    goto :goto_1

    :cond_1
    instance-of v3, v2, LZ3/g;

    if-eqz v3, :cond_4

    check-cast v2, LZ3/g;

    iget-object v1, v2, LZ3/g;->d:La4/r;

    instance-of v2, v1, La4/c;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    move-object v1, v3

    :cond_2
    check-cast v1, La4/c;

    if-eqz v1, :cond_3

    iget-object v1, v1, La4/c;->a:Ljava/lang/annotation/Annotation;

    goto :goto_1

    :cond_3
    move-object v1, v3

    goto :goto_1

    :cond_4
    invoke-static {v1}, LO3/r0;->f(LV3/b;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public static final c(Ljava/lang/Class;Lt4/m;Lp4/f;LX3/C;Lp4/a;LE3/c;)LU3/a;
    .locals 13

    move-object v0, p1

    const-string v1, "moduleAnchor"

    move-object v2, p0

    invoke-static {p0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "proto"

    invoke-static {p1, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nameResolver"

    move-object v4, p2

    invoke-static {p2, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "typeTable"

    move-object/from16 v6, p3

    invoke-static {v6, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "metadataVersion"

    move-object/from16 v8, p4

    invoke-static {v8, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, LO3/j0;->a(Ljava/lang/Class;)LZ3/f;

    move-result-object v1

    instance-of v2, v0, Ln4/y;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Ln4/y;

    iget-object v2, v2, Ln4/y;->l:Ljava/util/List;

    :goto_0
    move-object v11, v2

    goto :goto_1

    :cond_0
    instance-of v2, v0, Ln4/G;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Ln4/G;

    iget-object v2, v2, Ln4/G;->l:Ljava/util/List;

    goto :goto_0

    :goto_1
    new-instance v12, LF4/k;

    iget-object v3, v1, LZ3/f;->a:LF4/i;

    sget-object v7, Lp4/h;->a:Lp4/h;

    const-string v1, "typeParameters"

    invoke-static {v11, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v5, v3, LF4/i;->b:LU3/x;

    move-object v2, v12

    move-object v4, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p4

    invoke-direct/range {v2 .. v11}, LF4/k;-><init>(LF4/i;Lp4/f;LU3/j;LX3/C;Lp4/h;Lp4/a;Ll4/e;LF4/F;Ljava/util/List;)V

    new-instance v1, LF4/u;

    invoke-direct {v1, v12}, LF4/u;-><init>(LF4/k;)V

    move-object/from16 v2, p5

    invoke-interface {v2, v1, p1}, LE3/c;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LU3/a;

    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final d(LU3/b;)LU3/J;
    .locals 1

    const-string v0, "$this$instanceReceiverParameter"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, LU3/a;->C()LU3/J;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, LU3/j;->g()LU3/j;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, LU3/e;

    invoke-interface {p0}, LU3/e;->y0()LU3/J;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final e(Ljava/lang/ClassLoader;Ls4/b;I)Ljava/lang/Class;
    .locals 3

    sget-object v0, LT3/d;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ls4/b;->b()Ls4/c;

    move-result-object v0

    invoke-virtual {v0}, Ls4/c;->i()Ls4/e;

    move-result-object v0

    const-string v1, "kotlinClassId.asSingleFqName().toUnsafe()"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, LT3/d;->f(Ls4/e;)Ls4/b;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Ls4/b;->g()Ls4/c;

    move-result-object v0

    invoke-virtual {v0}, Ls4/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ls4/b;->h()Ls4/c;

    move-result-object p1

    invoke-virtual {p1}, Ls4/c;->b()Ljava/lang/String;

    move-result-object p1

    const-string v1, "kotlin"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "LongArray"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-class p0, [J

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "FloatArray"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-class p0, [F

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "IntArray"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-class p0, [I

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "Array"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-class p0, [Ljava/lang/Object;

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "DoubleArray"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-class p0, [D

    goto :goto_1

    :sswitch_5
    const-string v1, "ByteArray"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-class p0, [B

    goto :goto_1

    :sswitch_6
    const-string v1, "CharArray"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-class p0, [C

    goto :goto_1

    :sswitch_7
    const-string v1, "ShortArray"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-class p0, [S

    goto :goto_1

    :sswitch_8
    const-string v1, "BooleanArray"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-class p0, [Z

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x24

    invoke-static {p1, v0, v2}, LV4/u;->k0(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-lez p2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-static {p2, v1}, LV4/u;->j0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x4c

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3b

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    invoke-static {p1, p0}, LR3/f;->b0(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    :goto_1
    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x35c13ccf -> :sswitch_8
        -0x2d7eb8a3 -> :sswitch_7
        -0x2d0e4b7d -> :sswitch_6
        -0x47759ef -> :sswitch_5
        0x15568e8 -> :sswitch_4
        0x3c98239 -> :sswitch_3
        0x23deebca -> :sswitch_2
        0x388e557d -> :sswitch_1
        0x7d6d891d -> :sswitch_0
    .end sparse-switch
.end method

.method public static final f(LV3/b;)Ljava/lang/annotation/Annotation;
    .locals 7

    invoke-static {p0}, Lz4/e;->d(LV3/b;)LU3/e;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, LO3/r0;->g(LU3/e;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    if-eqz v0, :cond_6

    invoke-interface {p0}, LV3/b;->b()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls4/f;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lx4/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const-string v6, "annotationClass.classLoader"

    invoke-static {v5, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v5}, LO3/r0;->h(Lx4/g;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v4}, Ls4/f;->b()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lq3/f;

    invoke-direct {v5, v4, v3}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    move-object v5, v1

    :goto_2
    if-eqz v5, :cond_2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-static {v2}, Lr3/v;->h0(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-static {v0, v3, p0}, LK/I;->o(Ljava/lang/Class;Ljava/util/List;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/annotation/Annotation;

    return-object p0

    :cond_6
    return-object v1
.end method

.method public static final g(LU3/e;)Ljava/lang/Class;
    .locals 2

    const-string v0, "$this$toJavaClass"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, LU3/k;->i()LU3/L;

    move-result-object v0

    const-string v1, "source"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, v0, Ll4/l;

    if-eqz v1, :cond_0

    check-cast v0, Ll4/l;

    iget-object p0, v0, Ll4/l;->d:LZ3/c;

    iget-object p0, p0, LZ3/c;->a:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    instance-of v1, v0, LZ3/g;

    if-eqz v1, :cond_2

    check-cast v0, LZ3/g;

    iget-object p0, v0, LZ3/g;->d:La4/r;

    if-eqz p0, :cond_1

    check-cast p0, La4/n;

    iget-object p0, p0, La4/n;->a:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.runtime.structure.ReflectJavaClass"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p0}, Lz4/e;->f(LU3/g;)Ls4/b;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, La4/b;->d(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, LO3/r0;->e(Ljava/lang/ClassLoader;Ls4/b;I)Ljava/lang/Class;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final h(Lx4/g;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p0, Lx4/a;

    if-eqz v0, :cond_0

    check-cast p0, Lx4/a;

    iget-object p0, p0, Lx4/g;->a:Ljava/lang/Object;

    check-cast p0, LV3/b;

    invoke-static {p0}, LO3/r0;->f(LV3/b;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    goto/16 :goto_10

    :cond_0
    instance-of v0, p0, Lx4/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    check-cast p0, Lx4/b;

    instance-of v0, p0, LF4/m;

    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    check-cast v0, LF4/m;

    if-eqz v0, :cond_17

    iget-object v0, v0, LF4/m;->c:LJ4/C;

    if-eqz v0, :cond_17

    iget-object v3, p0, Lx4/g;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lx4/g;

    invoke-static {v5, p1}, LO3/r0;->h(Lx4/g;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    sget-object v3, LR3/j;->e:Ls4/f;

    invoke-virtual {v0}, LJ4/C;->q0()LJ4/M;

    move-result-object v3

    invoke-interface {v3}, LJ4/M;->e()LU3/g;

    move-result-object v3

    if-nez v3, :cond_3

    move-object v3, v2

    goto :goto_2

    :cond_3
    invoke-static {v3}, LR3/j;->q(LU3/g;)LR3/l;

    move-result-object v3

    :goto_2
    iget-object p0, p0, Lx4/g;->a:Ljava/lang/Object;

    if-nez v3, :cond_c

    invoke-static {v0}, LR3/j;->x(LJ4/C;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v0}, LJ4/C;->m0()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lr3/j;->J0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ4/P;

    invoke-virtual {v0}, LJ4/P;->b()LJ4/C;

    move-result-object v0

    const-string v3, "type.arguments.single().type"

    invoke-static {v0, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LJ4/C;->q0()LJ4/M;

    move-result-object v3

    invoke-interface {v3}, LJ4/M;->e()LU3/g;

    move-result-object v3

    instance-of v5, v3, LU3/e;

    if-nez v5, :cond_4

    move-object v3, v2

    :cond_4
    check-cast v3, LU3/e;

    if-eqz v3, :cond_a

    sget-object v5, LR3/o;->f:Ls4/e;

    invoke-static {v0, v5}, LR3/j;->C(LJ4/C;Ls4/e;)Z

    move-result v0

    if-eqz v0, :cond_6

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-array p1, p0, [Ljava/lang/String;

    :goto_3
    if-ge v1, p0, :cond_15

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Ljava/lang/String;

    aput-object v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    sget-object v0, LR3/o;->P:Ls4/e;

    invoke-static {v3, v0}, LR3/j;->b(LU3/e;Ls4/e;)Z

    move-result v0

    if-eqz v0, :cond_8

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-array p1, p0, [Ljava/lang/Class;

    :goto_4
    if-ge v1, p0, :cond_15

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    check-cast v0, Ljava/lang/Class;

    aput-object v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type java.lang.Class<*>"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    invoke-static {v3}, Lz4/e;->f(LU3/g;)Ls4/b;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-static {p1, v0, v1}, LO3/r0;->e(Ljava/lang/ClassLoader;Ls4/b;I)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_17

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_9

    move-object p1, p0

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_5
    if-ge v1, p0, :cond_15

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.Array<in kotlin.Any?>"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Not a class type: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Not an array type: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    new-instance p0, LW4/m;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :pswitch_0
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-array p1, p0, [D

    :goto_6
    if-ge v1, p0, :cond_15

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aput-wide v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_d
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.Double"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-array p1, p0, [J

    :goto_7
    if-ge v1, p0, :cond_15

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_e
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.Long"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-array p1, p0, [F

    :goto_8
    if-ge v1, p0, :cond_15

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_f
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-array p1, p0, [I

    :goto_9
    if-ge v1, p0, :cond_15

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_10
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_4
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-array p1, p0, [S

    :goto_a
    if-ge v1, p0, :cond_15

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    aput-short v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_11
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.Short"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_5
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-array p1, p0, [B

    :goto_b
    if-ge v1, p0, :cond_15

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    aput-byte v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_12
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.Byte"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_6
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-array p1, p0, [C

    :goto_c
    if-ge v1, p0, :cond_15

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    aput-char v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_13
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.Char"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_7
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-array p1, p0, [Z

    :goto_d
    if-ge v1, p0, :cond_15

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    aput-boolean v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_14
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    move-object p0, p1

    goto/16 :goto_10

    :cond_16
    instance-of v0, p0, Lx4/h;

    if-eqz v0, :cond_18

    check-cast p0, Lx4/h;

    iget-object p0, p0, Lx4/g;->a:Ljava/lang/Object;

    check-cast p0, Lq3/f;

    iget-object v0, p0, Lq3/f;->d:Ljava/lang/Object;

    check-cast v0, Ls4/b;

    iget-object p0, p0, Lq3/f;->e:Ljava/lang/Object;

    check-cast p0, Ls4/f;

    invoke-static {p1, v0, v1}, LO3/r0;->e(Ljava/lang/ClassLoader;Ls4/b;I)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_17

    invoke-virtual {p0}, Ls4/f;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    goto :goto_10

    :cond_17
    :goto_e
    move-object p0, v2

    goto :goto_10

    :cond_18
    instance-of v0, p0, Lx4/q;

    if-eqz v0, :cond_1c

    check-cast p0, Lx4/q;

    iget-object p0, p0, Lx4/g;->a:Ljava/lang/Object;

    check-cast p0, Lx4/p;

    instance-of v0, p0, Lx4/o;

    if-eqz v0, :cond_19

    check-cast p0, Lx4/o;

    iget-object p0, p0, Lx4/o;->a:Lx4/f;

    iget-object v0, p0, Lx4/f;->a:Ls4/b;

    iget p0, p0, Lx4/f;->b:I

    invoke-static {p1, v0, p0}, LO3/r0;->e(Ljava/lang/ClassLoader;Ls4/b;I)Ljava/lang/Class;

    move-result-object p0

    goto :goto_10

    :cond_19
    instance-of p1, p0, Lx4/n;

    if-eqz p1, :cond_1b

    check-cast p0, Lx4/n;

    iget-object p0, p0, Lx4/n;->a:LJ4/C;

    invoke-virtual {p0}, LJ4/C;->q0()LJ4/M;

    move-result-object p0

    invoke-interface {p0}, LJ4/M;->e()LU3/g;

    move-result-object p0

    instance-of p1, p0, LU3/e;

    if-nez p1, :cond_1a

    move-object p0, v2

    :cond_1a
    check-cast p0, LU3/e;

    if-eqz p0, :cond_17

    invoke-static {p0}, LO3/r0;->g(LU3/e;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_10

    :cond_1b
    new-instance p0, LW4/m;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1c
    instance-of p1, p0, Lx4/i;

    if-eqz p1, :cond_1d

    goto :goto_f

    :cond_1d
    instance-of p1, p0, Lx4/s;

    if-eqz p1, :cond_1e

    :goto_f
    goto :goto_e

    :cond_1e
    invoke-virtual {p0}, Lx4/g;->b()Ljava/lang/Object;

    move-result-object p0

    :goto_10
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

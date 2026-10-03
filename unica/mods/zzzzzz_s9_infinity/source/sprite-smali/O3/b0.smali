.class public final LO3/b0;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LO3/c0;


# direct methods
.method public synthetic constructor <init>(LO3/c0;I)V
    .locals 0

    iput p2, p0, LO3/b0;->d:I

    iput-object p1, p0, LO3/b0;->e:LO3/c0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 14

    const/4 v0, 0x3

    const/4 v1, 0x2

    iget-object v2, p0, LO3/b0;->e:LO3/c0;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget p0, p0, LO3/b0;->d:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, LO3/q0;->a:Ls4/b;

    invoke-virtual {v2}, LO3/c0;->i()LX3/L;

    move-result-object p0

    invoke-static {p0}, LO3/q0;->b(LX3/L;)LO3/n0;

    move-result-object p0

    instance-of v6, p0, LO3/k;

    if-eqz v6, :cond_b

    check-cast p0, LO3/k;

    sget-object v6, Lr4/h;->a:Lt4/i;

    iget-object v6, p0, LO3/k;->g:Ln4/G;

    iget-object v7, p0, LO3/k;->i:Lp4/f;

    iget-object v8, p0, LO3/k;->j:LX3/C;

    invoke-static {v6, v7, v8, v5}, Lr4/h;->b(Ln4/G;Lp4/f;LX3/C;Z)Lr4/d;

    move-result-object v7

    if-eqz v7, :cond_e

    iget-object p0, p0, LO3/k;->f:LX3/L;

    invoke-virtual {p0}, LX3/L;->f0()I

    move-result v8

    if-ne v8, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p0}, LX3/q;->g()LU3/j;

    move-result-object v8

    if-eqz v8, :cond_a

    invoke-static {v8}, Lv4/f;->l(LU3/j;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v8}, LU3/j;->g()LU3/j;

    move-result-object v1

    invoke-static {v1, v5}, Lv4/f;->n(LU3/j;I)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {v1, v0}, Lv4/f;->n(LU3/j;I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    check-cast v8, LU3/e;

    sget-object v0, LR3/d;->a:Ljava/util/LinkedHashSet;

    sget-object v0, LR3/d;->a:Ljava/util/LinkedHashSet;

    invoke-static {v8}, Lv4/f;->l(LU3/j;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, LR3/d;->a:Ljava/util/LinkedHashSet;

    invoke-static {v8}, Lz4/e;->f(LU3/g;)Ls4/b;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v1, v4

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ls4/b;->f()Ls4/b;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lr3/j;->p0(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v5

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_1
    if-nez v0, :cond_4

    :goto_2
    move v3, v5

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, LX3/q;->g()LU3/j;

    move-result-object v0

    invoke-static {v0}, Lv4/f;->l(LU3/j;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, LX3/L;->z:LX3/u;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, LD4/a;->p()LV3/h;

    move-result-object v0

    sget-object v1, Ld4/w;->a:Ls4/c;

    invoke-interface {v0, v1}, LV3/h;->e(Ls4/c;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v5

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, LD4/a;->p()LV3/h;

    move-result-object v0

    sget-object v1, Ld4/w;->a:Ls4/c;

    invoke-interface {v0, v1}, LV3/h;->e(Ls4/c;)Z

    move-result v0

    :goto_3
    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    :goto_4
    iget-object v0, v2, LO3/c0;->g:LO3/z;

    if-nez v3, :cond_9

    invoke-static {v6}, Lr4/h;->d(Ln4/G;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    check-cast p0, LX3/q;

    invoke-virtual {p0}, LX3/q;->g()LU3/j;

    move-result-object p0

    instance-of v1, p0, LU3/e;

    if-eqz v1, :cond_8

    check-cast p0, LU3/e;

    invoke-static {p0}, LO3/r0;->g(LU3/e;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_6

    :cond_8
    invoke-interface {v0}, LF3/d;->c()Ljava/lang/Class;

    move-result-object p0

    goto :goto_6

    :cond_9
    :goto_5
    invoke-interface {v0}, LF3/d;->c()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object p0

    :goto_6
    if-eqz p0, :cond_e

    :try_start_0
    iget-object v0, v7, Lr4/d;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :cond_a
    new-array p0, v0, [Ljava/lang/Object;

    const-string v0, "companionObject"

    aput-object v0, p0, v3

    const-string v0, "kotlin/reflect/jvm/internal/impl/load/java/DescriptorsJvmAbiUtil"

    aput-object v0, p0, v5

    const-string v0, "isClassCompanionObjectWithBackingFieldsInOuter"

    aput-object v0, p0, v1

    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    instance-of v0, p0, LO3/i;

    if-eqz v0, :cond_c

    check-cast p0, LO3/i;

    iget-object v4, p0, LO3/i;->e:Ljava/lang/reflect/Field;

    goto :goto_7

    :cond_c
    instance-of v0, p0, LO3/j;

    if-eqz v0, :cond_d

    goto :goto_7

    :cond_d
    instance-of p0, p0, LO3/l;

    if-eqz p0, :cond_f

    :catch_0
    :cond_e
    :goto_7
    return-object v4

    :cond_f
    new-instance p0, LW4/m;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :pswitch_0
    iget-object p0, v2, LO3/c0;->g:LO3/z;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v2, LO3/c0;->h:Ljava/lang/String;

    const-string v1, "name"

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v2, LO3/c0;->i:Ljava/lang/String;

    const-string v2, "signature"

    invoke-static {v1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, LO3/z;->d:LV4/l;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, LV4/l;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, "matcher(...)"

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_8

    :cond_10
    new-instance v4, LV4/j;

    invoke-direct {v4, v2, v1}, LV4/j;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V

    :goto_8
    if-eqz v4, :cond_13

    iget-object v0, v4, LV4/j;->c:LV4/i;

    if-nez v0, :cond_11

    new-instance v0, LV4/i;

    invoke-direct {v0, v4}, LV4/i;-><init>(LV4/j;)V

    iput-object v0, v4, LV4/j;->c:LV4/i;

    :cond_11
    iget-object v0, v4, LV4/j;->c:LV4/i;

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, LV4/i;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, LO3/z;->g(I)LX3/L;

    move-result-object v1

    if-eqz v1, :cond_12

    goto/16 :goto_c

    :cond_12
    new-instance v1, LD3/a;

    const-string v2, "Local property #"

    const-string v3, " not found in "

    invoke-static {v2, v0, v3}, LB/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, LF3/d;->c()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, LD3/a;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    invoke-static {v0}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v2

    invoke-virtual {p0, v2}, LO3/z;->j(Ls4/f;)Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, LX3/L;

    invoke-static {v6}, LO3/q0;->b(LX3/L;)LO3/n0;

    move-result-object v6

    invoke-virtual {v6}, LO3/n0;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_15
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const-string v4, ") not resolved in "

    const-string v6, "\' (JVM signature: "

    const-string v7, "Property \'"

    if-nez v2, :cond_1b

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v2, v5, :cond_1a

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, LX3/L;

    invoke-virtual {v9}, LX3/L;->b()LU3/n;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_16

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_17
    sget-object v3, LO3/x;->b:LO3/x;

    new-instance v8, Ljava/util/TreeMap;

    invoke-direct {v8, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v8, v2}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v8}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v2

    const-string v3, "properties\n             \u2026                }).values"

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lr3/j;->B0(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v5, :cond_18

    invoke-static {v2}, Lr3/j;->t0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, LX3/L;

    goto :goto_c

    :cond_18
    invoke-static {v0}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v2

    invoke-virtual {p0, v2}, LO3/z;->j(Ls4/f;)Ljava/util/Collection;

    move-result-object v8

    sget-object v12, LO3/c;->h:LO3/c;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v9, "\n"

    const/16 v13, 0x1e

    invoke-static/range {v8 .. v13}, Lr3/j;->A0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE3/b;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, LD3/a;

    invoke-static {v7, v0, v6, v1, v4}, LB/a;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3a

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_19

    const-string p0, " no members found"

    goto :goto_b

    :cond_19
    const-string p0, "\n"

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_b
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, LD3/a;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1a
    invoke-static {v3}, Lr3/j;->J0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, LX3/L;

    :goto_c
    return-object v1

    :cond_1b
    new-instance v2, LD3/a;

    invoke-static {v7, v0, v6, v1, v4}, LB/a;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, LD3/a;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

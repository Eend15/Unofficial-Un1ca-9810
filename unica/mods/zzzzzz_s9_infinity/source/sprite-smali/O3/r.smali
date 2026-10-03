.class public final LO3/r;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LO3/t;


# direct methods
.method public synthetic constructor <init>(LO3/t;I)V
    .locals 0

    iput p2, p0, LO3/r;->d:I

    iput-object p1, p0, LO3/r;->e:LO3/t;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 11

    const/16 v0, 0xb

    const/16 v1, 0xa

    const-string v2, "descriptor.staticScope"

    const/4 v3, 0x3

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    iget-object v9, p0, LO3/r;->e:LO3/t;

    iget v10, p0, LO3/r;->d:I

    packed-switch v10, :pswitch_data_0

    invoke-virtual {v9}, LO3/t;->a()LU3/e;

    move-result-object p0

    invoke-interface {p0}, LU3/e;->o()Ljava/util/List;

    move-result-object p0

    const-string v0, "descriptor.declaredTypeParameters"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LU3/O;

    new-instance v2, LO3/h0;

    const-string v3, "descriptor"

    invoke-static {v1, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v9, LO3/t;->m:LO3/v;

    invoke-direct {v2, v3, v1}, LO3/h0;-><init>(LO3/i0;LU3/O;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    :pswitch_0
    invoke-virtual {v9}, LO3/t;->a()LU3/e;

    move-result-object v0

    invoke-interface {v0}, LU3/g;->E()LJ4/M;

    move-result-object v0

    const-string v1, "descriptor.typeConstructor"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, LJ4/M;->f()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "descriptor.typeConstructor.supertypes"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LJ4/C;

    new-instance v3, LO3/g0;

    const-string v6, "kotlinType"

    invoke-static {v2, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, LF4/C;

    invoke-direct {v6, v2, v5, p0}, LF4/C;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-direct {v3, v2, v6}, LO3/g0;-><init>(LJ4/C;LE3/a;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v9}, LO3/t;->a()LU3/e;

    move-result-object p0

    if-eqz p0, :cond_7

    sget-object v0, LR3/j;->e:Ls4/f;

    sget-object v0, LR3/o;->a:Ls4/e;

    invoke-static {p0, v0}, LR3/j;->b(LU3/e;Ls4/e;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, LR3/o;->b:Ls4/e;

    invoke-static {p0, v0}, LR3/j;->b(LU3/e;Ls4/e;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LO3/g0;

    iget-object v0, v0, LO3/g0;->c:LJ4/C;

    invoke-static {v0}, Lv4/f;->c(LJ4/C;)LU3/e;

    move-result-object v0

    invoke-interface {v0}, LU3/e;->I()I

    move-result v0

    const-string v2, "DescriptorUtils.getClass\u2026ptorForType(it.type).kind"

    invoke-static {v0, v2}, LB/a;->y(ILjava/lang/String;)V

    if-eq v0, v7, :cond_4

    if-ne v0, v4, :cond_6

    goto :goto_2

    :cond_5
    :goto_3
    new-instance p0, LO3/g0;

    invoke-virtual {v9}, LO3/t;->a()LU3/e;

    move-result-object v0

    invoke-static {v0}, Lz4/e;->e(LU3/j;)LR3/j;

    move-result-object v0

    invoke-virtual {v0}, LR3/j;->e()LJ4/G;

    move-result-object v0

    sget-object v2, LO3/s;->d:LO3/s;

    invoke-direct {p0, v0, v2}, LO3/g0;-><init>(LJ4/C;LE3/a;)V

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_4
    invoke-static {v1}, LS4/m;->d(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_7
    const/16 p0, 0x6b

    invoke-static {p0}, LR3/j;->a(I)V

    throw v8

    :pswitch_1
    iget-object p0, v9, LO3/t;->m:LO3/v;

    iget-object p0, p0, LO3/v;->f:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_6

    :cond_8
    iget-object p0, v9, LO3/t;->m:LO3/v;

    invoke-virtual {p0}, LO3/v;->o()Ls4/b;

    move-result-object v0

    iget-boolean v1, v0, Ls4/b;->c:Z

    if-eqz v1, :cond_b

    iget-object p0, p0, LO3/v;->f:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v2, "$"

    if-eqz v1, :cond_9

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v0}, LV4/m;->I0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingConstructor()Ljava/lang/reflect/Constructor;

    move-result-object p0

    if-eqz p0, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v0}, LV4/m;->I0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_a
    invoke-static {v0}, LV4/m;->J0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_5
    move-object v8, p0

    goto :goto_6

    :cond_b
    invoke-virtual {v0}, Ls4/b;->i()Ls4/f;

    move-result-object p0

    invoke-virtual {p0}, Ls4/f;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "classId.shortClassName.asString()"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :goto_6
    return-object v8

    :pswitch_2
    invoke-virtual {v9}, LO3/t;->a()LU3/e;

    move-result-object p0

    invoke-interface {p0}, LU3/e;->s0()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "descriptor.sealedSubclasses"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LU3/e;

    if-eqz v1, :cond_e

    invoke-static {v1}, LO3/r0;->g(LU3/e;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_d

    new-instance v2, LO3/v;

    invoke-direct {v2, v1}, LO3/v;-><init>(Ljava/lang/Class;)V

    goto :goto_8

    :cond_d
    move-object v2, v8

    :goto_8
    if-eqz v2, :cond_c

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_e
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    return-object v0

    :pswitch_3
    iget-object p0, v9, LO3/t;->m:LO3/v;

    iget-object p0, p0, LO3/v;->f:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result p0

    if-eqz p0, :cond_10

    goto :goto_9

    :cond_10
    iget-object p0, v9, LO3/t;->m:LO3/v;

    invoke-virtual {p0}, LO3/v;->o()Ls4/b;

    move-result-object p0

    iget-boolean v0, p0, Ls4/b;->c:Z

    if-eqz v0, :cond_11

    goto :goto_9

    :cond_11
    invoke-virtual {p0}, Ls4/b;->b()Ls4/c;

    move-result-object p0

    invoke-virtual {p0}, Ls4/c;->b()Ljava/lang/String;

    move-result-object v8

    :goto_9
    return-object v8

    :pswitch_4
    invoke-virtual {v9}, LO3/t;->a()LU3/e;

    move-result-object p0

    invoke-interface {p0}, LU3/e;->Q()LC4/o;

    move-result-object p0

    invoke-static {p0, v8, v3}, Lw0/f;->w(LC4/q;LC4/f;I)Ljava/util/Collection;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, LU3/j;

    invoke-static {v2}, Lv4/f;->m(LU3/j;)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_13
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LU3/j;

    instance-of v2, v1, LU3/e;

    if-nez v2, :cond_15

    move-object v1, v8

    :cond_15
    check-cast v1, LU3/e;

    if-eqz v1, :cond_16

    invoke-static {v1}, LO3/r0;->g(LU3/e;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_c

    :cond_16
    move-object v1, v8

    :goto_c
    if-eqz v1, :cond_17

    new-instance v2, LO3/v;

    invoke-direct {v2, v1}, LO3/v;-><init>(Ljava/lang/Class;)V

    goto :goto_d

    :cond_17
    move-object v2, v8

    :goto_d
    if-eqz v2, :cond_14

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_18
    return-object p0

    :pswitch_5
    iget-object p0, v9, LO3/t;->m:LO3/v;

    invoke-virtual {p0}, LO3/v;->p()LU3/e;

    move-result-object v0

    invoke-interface {v0}, LU3/e;->U()LC4/o;

    move-result-object v0

    invoke-static {v0, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v7}, LO3/z;->h(LC4/o;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_6
    iget-object p0, v9, LO3/t;->m:LO3/v;

    invoke-virtual {p0}, LO3/v;->p()LU3/e;

    move-result-object v0

    invoke-interface {v0}, LU3/e;->n()LJ4/G;

    move-result-object v0

    invoke-virtual {v0}, LJ4/C;->l0()LC4/o;

    move-result-object v0

    invoke-virtual {p0, v0, v7}, LO3/z;->h(LC4/o;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_7
    iget-object p0, v9, LO3/t;->m:LO3/v;

    sget v0, LO3/v;->g:I

    invoke-virtual {p0}, LO3/v;->o()Ls4/b;

    move-result-object p0

    iget-object v0, v9, LO3/t;->m:LO3/v;

    iget-object v1, v0, LO3/v;->e:LO3/l0;

    invoke-virtual {v1}, LO3/l0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LO3/t;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, LO3/w;->c:[LL3/l;

    const/4 v9, 0x0

    aget-object v2, v2, v9

    iget-object v1, v1, LO3/w;->a:LO3/k0;

    invoke-virtual {v1}, LO3/k0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LZ3/f;

    iget-boolean v2, p0, Ls4/b;->c:Z

    if-eqz v2, :cond_19

    iget-object v1, v1, LZ3/f;->a:LF4/i;

    invoke-virtual {v1, p0}, LF4/i;->b(Ls4/b;)LU3/e;

    move-result-object p0

    goto :goto_e

    :cond_19
    iget-object v1, v1, LZ3/f;->a:LF4/i;

    iget-object v1, v1, LF4/i;->b:LU3/x;

    invoke-static {v1, p0}, LR3/f;->B(LU3/x;Ls4/b;)LU3/e;

    move-result-object p0

    :goto_e
    if-eqz p0, :cond_1a

    return-object p0

    :cond_1a
    iget-object p0, v0, LO3/v;->f:Ljava/lang/Class;

    invoke-static {p0}, LR3/f;->r(Ljava/lang/Class;)LZ3/c;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, v0, LZ3/c;->b:Lm4/b;

    iget-object v8, v0, Lm4/b;->a:Lm4/a;

    :cond_1b
    if-eqz v8, :cond_1f

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1e

    if-eq v0, v6, :cond_1f

    if-eq v0, v7, :cond_1d

    if-eq v0, v3, :cond_1c

    if-eq v0, v5, :cond_1d

    if-eq v0, v4, :cond_1d

    new-instance p0, LW4/m;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This class is an internal synthetic class generated by the Kotlin compiler, such as an anonymous class for a lambda, a SAM wrapper, a callable reference, etc. It\'s not a Kotlin class or interface, so the reflection library has no idea what declarations does it have. Please use Java reflection to inspect this class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Packages and file facades are not yet supported in Kotlin reflection. Meanwhile please use Java reflection to inspect this class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    new-instance v0, LD3/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " (kind = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, LD3/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    new-instance v0, LD3/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unresolved class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, LD3/a;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_8
    iget-object p0, v9, LO3/t;->m:LO3/v;

    invoke-virtual {p0}, LO3/v;->p()LU3/e;

    move-result-object v0

    invoke-interface {v0}, LU3/e;->U()LC4/o;

    move-result-object v0

    invoke-static {v0, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v6}, LO3/z;->h(LC4/o;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_9
    iget-object p0, v9, LO3/t;->m:LO3/v;

    invoke-virtual {p0}, LO3/v;->p()LU3/e;

    move-result-object v0

    invoke-interface {v0}, LU3/e;->n()LJ4/G;

    move-result-object v0

    invoke-virtual {v0}, LJ4/C;->l0()LC4/o;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, LO3/z;->h(LC4/o;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, LO3/t;->n:[LL3/l;

    aget-object v1, p0, v1

    iget-object v1, v9, LO3/t;->g:LO3/k0;

    invoke-virtual {v1}, LO3/k0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    aget-object p0, p0, v0

    iget-object p0, v9, LO3/t;->h:LO3/k0;

    invoke-virtual {p0}, LO3/k0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {v1, p0}, Lr3/j;->G0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :pswitch_b
    iget-object p0, v9, LO3/t;->m:LO3/v;

    invoke-virtual {p0}, LO3/v;->e()Ljava/util/Collection;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LU3/i;

    new-instance v2, LO3/A;

    iget-object v3, v9, LO3/t;->m:LO3/v;

    invoke-direct {v2, v3, v1}, LO3/A;-><init>(LO3/z;LU3/s;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_20
    return-object v0

    :pswitch_c
    invoke-virtual {v9}, LO3/t;->a()LU3/e;

    move-result-object p0

    invoke-static {p0}, LO3/r0;->b(LV3/a;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, LO3/t;->n:[LL3/l;

    aget-object v0, p0, v0

    iget-object v0, v9, LO3/t;->h:LO3/k0;

    invoke-virtual {v0}, LO3/k0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    const/16 v1, 0xd

    aget-object p0, p0, v1

    iget-object p0, v9, LO3/t;->j:LO3/k0;

    invoke-virtual {p0}, LO3/k0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {v0, p0}, Lr3/j;->G0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, LO3/t;->n:[LL3/l;

    aget-object v0, p0, v1

    iget-object v0, v9, LO3/t;->g:LO3/k0;

    invoke-virtual {v0}, LO3/k0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    const/16 v1, 0xc

    aget-object p0, p0, v1

    iget-object p0, v9, LO3/t;->i:LO3/k0;

    invoke-virtual {p0}, LO3/k0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {v0, p0}, Lr3/j;->G0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :pswitch_f
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, LO3/t;->n:[LL3/l;

    const/16 v0, 0xe

    aget-object v0, p0, v0

    iget-object v0, v9, LO3/t;->k:LO3/k0;

    invoke-virtual {v0}, LO3/k0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    const/16 v1, 0xf

    aget-object p0, p0, v1

    iget-object p0, v9, LO3/t;->l:LO3/k0;

    invoke-virtual {p0}, LO3/k0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {v0, p0}, Lr3/j;->G0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

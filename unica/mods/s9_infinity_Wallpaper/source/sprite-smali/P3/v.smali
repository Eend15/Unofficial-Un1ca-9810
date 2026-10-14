.class public final LP3/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP3/f;


# instance fields
.field public final a:Lw0/s;

.field public final b:LP3/f;

.field public final c:Z


# direct methods
.method public constructor <init>(LP3/f;LU3/s;Z)V
    .locals 8

    const-string v0, "descriptor"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LP3/v;->b:LP3/f;

    iput-boolean p3, p0, LP3/v;->c:Z

    invoke-interface {p2}, LU3/a;->k()LJ4/C;

    move-result-object v0

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, LJ4/C;->q0()LJ4/M;

    move-result-object v0

    invoke-interface {v0}, LJ4/M;->e()LU3/g;

    move-result-object v0

    invoke-static {v0}, LK/I;->u0(LU3/j;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v2, "box-impl"

    invoke-static {v0, p2}, LK/I;->P(Ljava/lang/Class;LU3/b;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "getDeclaredMethod(\"box\" \u2026d(descriptor).returnType)"

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p0, LD3/a;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "No box method found in inline class: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " (calling "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, LD3/a;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {p2}, Lv4/j;->a(LU3/b;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    new-instance p1, Lw0/s;

    sget-object p2, LK3/c;->g:LK3/c;

    new-array p3, v3, [Ljava/lang/reflect/Method;

    invoke-direct {p1, p2, p3, v2}, Lw0/s;-><init>(LK3/c;[Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    goto/16 :goto_9

    :cond_1
    instance-of v0, p1, LP3/s;

    const-string v4, "descriptor.containingDeclaration"

    const/4 v5, -0x1

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    instance-of v0, p2, LU3/i;

    if-eqz v0, :cond_4

    instance-of p1, p1, LP3/e;

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    move v5, v3

    goto :goto_2

    :cond_4
    invoke-interface {p2}, LU3/a;->C()LU3/J;

    move-result-object v0

    if-eqz v0, :cond_3

    instance-of p1, p1, LP3/e;

    if-nez p1, :cond_3

    invoke-interface {p2}, LU3/j;->g()LU3/j;

    move-result-object p1

    invoke-static {p1, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lv4/j;->b(LU3/j;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v5, 0x1

    :goto_2
    if-eqz p3, :cond_6

    const/4 p1, 0x2

    goto :goto_3

    :cond_6
    move p1, v3

    :goto_3
    invoke-interface {p2}, LU3/s;->G()Z

    move-result p3

    add-int/2addr p3, p1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, LU3/a;->Y()LU3/J;

    move-result-object v0

    if-eqz v0, :cond_7

    check-cast v0, LX3/d;

    invoke-virtual {v0}, LX3/d;->j()LJ4/C;

    move-result-object v0

    goto :goto_4

    :cond_7
    move-object v0, v1

    :goto_4
    if-eqz v0, :cond_8

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    instance-of v0, p2, LU3/i;

    if-eqz v0, :cond_a

    move-object v0, p2

    check-cast v0, LU3/i;

    invoke-interface {v0}, LU3/i;->V()LU3/e;

    move-result-object v0

    const-string v4, "descriptor.constructedClass"

    invoke-static {v0, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, LU3/h;->y()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v0}, LU3/j;->g()LU3/j;

    move-result-object v0

    if-eqz v0, :cond_9

    check-cast v0, LU3/e;

    invoke-interface {v0}, LU3/e;->n()LJ4/G;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-interface {p2}, LU3/j;->g()LU3/j;

    move-result-object v0

    invoke-static {v0, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v4, v0, LU3/e;

    if-eqz v4, :cond_b

    invoke-static {v0}, Lv4/j;->b(LU3/j;)Z

    move-result v4

    if-eqz v4, :cond_b

    check-cast v0, LU3/e;

    invoke-interface {v0}, LU3/e;->n()LJ4/G;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_5
    invoke-interface {p2}, LU3/a;->n0()Ljava/util/List;

    move-result-object v0

    const-string v4, "descriptor.valueParameters"

    invoke-static {v0, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LX3/W;

    check-cast v4, LX3/X;

    invoke-virtual {v4}, LX3/X;->j()LJ4/C;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v5

    add-int/2addr v0, p3

    invoke-static {p0}, LK/I;->u(LP3/f;)I

    move-result p3

    if-ne p3, v0, :cond_f

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v4, v5

    invoke-static {p3, v4}, LK/I;->x0(II)LK3/c;

    move-result-object p3

    new-array v4, v0, [Ljava/lang/reflect/Method;

    :goto_7
    if-ge v3, v0, :cond_e

    iget v6, p3, LK3/a;->d:I

    if-gt v6, v3, :cond_d

    iget v6, p3, LK3/a;->e:I

    if-gt v3, v6, :cond_d

    sub-int v6, v3, v5

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LJ4/C;

    const-string v7, "$this$toInlineClass"

    invoke-static {v6, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, LJ4/C;->q0()LJ4/M;

    move-result-object v6

    invoke-interface {v6}, LJ4/M;->e()LU3/g;

    move-result-object v6

    invoke-static {v6}, LK/I;->u0(LU3/j;)Ljava/lang/Class;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-static {v6, p2}, LK/I;->P(Ljava/lang/Class;LU3/b;)Ljava/lang/reflect/Method;

    move-result-object v6

    goto :goto_8

    :cond_d
    move-object v6, v1

    :goto_8
    aput-object v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_e
    new-instance p1, Lw0/s;

    invoke-direct {p1, p3, v4, v2}, Lw0/s;-><init>(LK3/c;[Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    :goto_9
    iput-object p1, p0, LP3/v;->a:Lw0/s;

    return-void

    :cond_f
    new-instance p1, LD3/a;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Inconsistent number of parameters in the descriptor and Java reflection object: "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, LK/I;->u(LP3/f;)I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " != "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\nCalling: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\nParameter types: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, LP3/v;->b:LP3/f;

    invoke-interface {p2}, LP3/f;->l()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ")\nDefault: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, LP3/v;->c:Z

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, LD3/a;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final k()Ljava/lang/reflect/Type;
    .locals 0

    iget-object p0, p0, LP3/v;->b:LP3/f;

    invoke-interface {p0}, LP3/f;->k()Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method public final l()Ljava/util/List;
    .locals 0

    iget-object p0, p0, LP3/v;->b:LP3/f;

    invoke-interface {p0}, LP3/f;->l()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final m([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, LP3/v;->a:Lw0/s;

    iget-object v1, v0, Lw0/s;->a:Ljava/lang/Object;

    check-cast v1, LK3/c;

    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "java.util.Arrays.copyOf(this, size)"

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v3, v1, LK3/a;->d:I

    const/4 v4, 0x0

    iget v1, v1, LK3/a;->e:I

    if-gt v3, v1, :cond_c

    :goto_0
    iget-object v5, v0, Lw0/s;->b:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/reflect/Method;

    aget-object v5, v5, v3

    aget-object v6, p1, v3

    if-eqz v5, :cond_b

    if-eqz v6, :cond_0

    invoke-virtual {v5, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "method.returnType"

    invoke-static {v5, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, LO3/r0;->a:Ls4/c;

    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-eqz v6, :cond_a

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    move-object v6, v5

    goto/16 :goto_2

    :cond_1
    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    int-to-char v5, v7

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    goto :goto_1

    :cond_2
    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    int-to-byte v5, v7

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    goto :goto_1

    :cond_3
    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    int-to-short v5, v7

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    goto :goto_1

    :cond_4
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_1

    :cond_5
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    goto :goto_1

    :cond_6
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_1

    :cond_7
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    goto :goto_1

    :cond_8
    sget-object p0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Parameter with void type is illegal"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unknown primitive: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    move-object v6, v4

    :cond_b
    :goto_2
    aput-object v6, v2, v3

    if-eq v3, v1, :cond_c

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_c
    iget-object p0, p0, LP3/v;->b:LP3/f;

    invoke-interface {p0, v2}, LP3/f;->m([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, v0, Lw0/s;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/reflect/Method;

    if-eqz p1, :cond_d

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_d

    move-object p0, p1

    :cond_d
    return-object p0
.end method

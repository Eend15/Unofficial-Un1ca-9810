.class public abstract LO3/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF3/d;


# static fields
.field public static final d:LV4/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LV4/l;

    const-string v1, "<v#(\\d+)>"

    invoke-direct {v0, v1}, LV4/l;-><init>(Ljava/lang/String;)V

    sput-object v0, LO3/z;->d:LV4/l;

    return-void
.end method

.method public static l(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Method;
    .locals 7

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    aput-object p0, p2, v0

    :cond_0
    invoke-static {p0, p1, p2, p3}, LO3/z;->n(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1, p1, p2, p3, p4}, LO3/z;->l(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p0

    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, p0, v2

    const-string v4, "superInterface"

    invoke-static {v3, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, p1, p2, p3, p4}, LO3/z;->l(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_3

    return-object v4

    :cond_3
    if-eqz p4, :cond_4

    invoke-static {v3}, La4/b;->d(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "$DefaultImpls"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, LR3/f;->b0(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_4

    aput-object v3, p2, v0

    invoke-static {v4, p1, p2, p3}, LO3/z;->n(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_4

    return-object v3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static n(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v2, "result"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, p3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    const-string v1, "declaredMethods"

    invoke-static {p0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    const-string v4, "method"

    invoke-static {v3, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, p3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-static {v4, p2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    move-object v0, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    return-object v0
.end method


# virtual methods
.method public final d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 5

    const-string v0, "name"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "desc"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<init>"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p2}, LO3/z;->k(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, [Ljava/lang/Class;

    const/16 v3, 0x29

    const/4 v4, 0x6

    invoke-static {p2, v3, v2, v2, v4}, LV4/m;->u0(Ljava/lang/CharSequence;CIZI)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v4, p2}, LO3/z;->m(IILjava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0}, LO3/z;->i()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, p1, v0, p2, v2}, LO3/z;->l(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    invoke-virtual {p0}, LO3/z;->i()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result p0

    if-eqz p0, :cond_2

    const-class p0, Ljava/lang/Object;

    invoke-static {p0, p1, v0, p2, v2}, LO3/z;->l(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    return-object v1

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract e()Ljava/util/Collection;
.end method

.method public abstract f(Ls4/f;)Ljava/util/Collection;
.end method

.method public abstract g(I)LX3/L;
.end method

.method public final h(LC4/o;I)Ljava/util/List;
    .locals 7

    const-string v0, "scope"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "belonginess"

    invoke-static {p2, v0}, LB/a;->t(ILjava/lang/String;)V

    new-instance v0, LO3/y;

    invoke-direct {v0, p0}, LA1/e;-><init>(LO3/z;)V

    const/4 p0, 0x0

    const/4 v1, 0x3

    invoke-static {p1, p0, v1}, Lw0/f;->w(LC4/q;LC4/f;I)Ljava/util/Collection;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LU3/j;

    instance-of v3, v2, LU3/b;

    if-eqz v3, :cond_3

    move-object v3, v2

    check-cast v3, LU3/b;

    invoke-interface {v3}, LU3/v;->b()LU3/n;

    move-result-object v4

    sget-object v5, LU3/o;->h:LU3/n;

    invoke-static {v4, v5}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v3}, LU3/b;->f0()I

    move-result v3

    const-string v4, "member.kind"

    invoke-static {v3, v4}, LB/a;->y(ILjava/lang/String;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_1

    move v3, v6

    goto :goto_1

    :cond_1
    move v3, v5

    :goto_1
    if-ne p2, v6, :cond_2

    move v5, v6

    :cond_2
    if-ne v3, v5, :cond_3

    sget-object v3, Lq3/m;->a:Lq3/m;

    invoke-interface {v2, v0, v3}, LU3/j;->L(LU3/l;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LO3/p;

    goto :goto_2

    :cond_3
    move-object v2, p0

    :goto_2
    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-static {v1}, Lr3/j;->P0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public i()Ljava/lang/Class;
    .locals 2

    invoke-interface {p0}, LF3/d;->c()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, La4/b;->a:Ljava/util/List;

    const-string v1, "<this>"

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La4/b;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, LF3/d;->c()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public abstract j(Ls4/f;)Ljava/util/Collection;
.end method

.method public final k(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x29

    if-eq v3, v4, :cond_3

    move v3, v2

    :goto_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5b

    if-ne v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const-string v5, "VZCBSIFJD"

    invoke-static {v5, v4}, LV4/m;->p0(Ljava/lang/String;C)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    const/16 v3, 0x4c

    if-ne v4, v3, :cond_2

    const/16 v3, 0x3b

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {p1, v3, v2, v4, v5}, LV4/m;->u0(Ljava/lang/CharSequence;CIZI)I

    move-result v3

    add-int/2addr v3, v1

    :goto_2
    invoke-virtual {p0, v2, v3, p1}, LO3/z;->m(IILjava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v3

    goto :goto_0

    :cond_2
    new-instance p0, LD3/a;

    const-string v0, "Unknown type prefix in the method signature: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, LD3/a;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-object v0
.end method

.method public final m(IILjava/lang/String;)Ljava/lang/Class;
    .locals 2

    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x46

    if-eq v0, v1, :cond_7

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_6

    const/16 v1, 0x53

    if-eq v0, v1, :cond_5

    const/16 v1, 0x56

    if-eq v0, v1, :cond_4

    const/16 v1, 0x49

    if-eq v0, v1, :cond_3

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance p0, LD3/a;

    const-string p1, "Unknown type prefix in the method signature: "

    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, LD3/a;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :pswitch_1
    sget-object p0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :pswitch_2
    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1, p2, p3}, LO3/z;->m(IILjava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sget-object p1, LO3/r0;->a:Ls4/c;

    const-string p1, "$this$createArrayType"

    invoke-static {p0, p1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_2
    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_3
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_4
    sget-object p0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string p1, "Void.TYPE"

    invoke-static {p0, p1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_6
    invoke-interface {p0}, LF3/d;->c()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, La4/b;->d(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object p0

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p3, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, p2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x2f

    const/16 p3, 0x2e

    invoke-static {p1, p2, p3}, LV4/u;->k0(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string p1, "jClass.safeClassLoader.l\u2026d - 1).replace(\'/\', \'.\'))"

    invoke-static {p0, p1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

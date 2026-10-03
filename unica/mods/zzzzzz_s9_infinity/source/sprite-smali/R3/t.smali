.class public abstract LR3/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Set;

.field public static final b:Ljava/util/HashMap;

.field public static final c:Ljava/util/HashMap;

.field public static final d:Ljava/util/LinkedHashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    invoke-static {}, LR3/s;->values()[LR3/s;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v0, v4

    iget-object v5, v5, LR3/s;->e:Ls4/f;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lr3/j;->S0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, LR3/t;->a:Ljava/util/Set;

    invoke-static {}, LR3/r;->values()[LR3/r;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, v0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    iget-object v5, v5, LR3/r;->d:Ls4/f;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lr3/j;->S0(Ljava/lang/Iterable;)Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LR3/t;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LR3/t;->c:Ljava/util/HashMap;

    sget-object v0, LR3/r;->e:LR3/r;

    const-string v1, "ubyteArrayOf"

    invoke-static {v1}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v1

    new-instance v2, Lq3/f;

    invoke-direct {v2, v0, v1}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, LR3/r;->f:LR3/r;

    const-string v1, "ushortArrayOf"

    invoke-static {v1}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v1

    new-instance v4, Lq3/f;

    invoke-direct {v4, v0, v1}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, LR3/r;->g:LR3/r;

    const-string v1, "uintArrayOf"

    invoke-static {v1}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v1

    new-instance v5, Lq3/f;

    invoke-direct {v5, v0, v1}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, LR3/r;->h:LR3/r;

    const-string v1, "ulongArrayOf"

    invoke-static {v1}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v1

    new-instance v6, Lq3/f;

    invoke-direct {v6, v0, v1}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2, v4, v5, v6}, [Lq3/f;

    move-result-object v0

    invoke-static {v0}, Lr3/v;->c0([Lq3/f;)Ljava/util/HashMap;

    invoke-static {}, LR3/s;->values()[LR3/s;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    array-length v2, v0

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    iget-object v5, v5, LR3/s;->f:Ls4/b;

    invoke-virtual {v5}, Ls4/b;->i()Ls4/f;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    sput-object v1, LR3/t;->d:Ljava/util/LinkedHashSet;

    invoke-static {}, LR3/s;->values()[LR3/s;

    move-result-object v0

    array-length v1, v0

    :goto_3
    if-ge v3, v1, :cond_3

    aget-object v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    sget-object v4, LR3/t;->b:Ljava/util/HashMap;

    iget-object v5, v2, LR3/s;->f:Ls4/b;

    iget-object v6, v2, LR3/s;->d:Ls4/b;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, LR3/t;->c:Ljava/util/HashMap;

    iget-object v2, v2, LR3/s;->f:Ls4/b;

    invoke-virtual {v4, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    return-void
.end method

.method public static final a(LJ4/C;)Z
    .locals 3

    invoke-static {p0}, LJ4/Z;->l(LJ4/C;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, LJ4/C;->q0()LJ4/M;

    move-result-object p0

    invoke-interface {p0}, LJ4/M;->e()LU3/g;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-interface {p0}, LU3/j;->g()LU3/j;

    move-result-object v0

    instance-of v2, v0, LU3/B;

    if-eqz v2, :cond_2

    check-cast v0, LU3/B;

    check-cast v0, LX3/F;

    iget-object v0, v0, LX3/F;->h:Ls4/c;

    sget-object v2, LR3/p;->j:Ls4/c;

    invoke-static {v0, v2}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, LR3/t;->a:Ljava/util/Set;

    invoke-interface {p0}, LU3/j;->r()Ls4/f;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.class public abstract Ld4/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:Ljava/util/LinkedHashMap;

.field public static final c:Ljava/util/Set;

.field public static final d:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    sget-object v0, LR3/o;->j:Ls4/e;

    const-string v1, "name"

    invoke-static {v1}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v2

    invoke-virtual {v0, v2}, Ls4/e;->b(Ls4/f;)Ls4/e;

    move-result-object v2

    invoke-virtual {v2}, Ls4/e;->g()Ls4/c;

    move-result-object v2

    const-string v3, "child(Name.identifier(name)).toSafe()"

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v1

    new-instance v4, Lq3/f;

    invoke-direct {v4, v2, v1}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "ordinal"

    invoke-static {v1}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v2

    invoke-virtual {v0, v2}, Ls4/e;->b(Ls4/f;)Ls4/e;

    move-result-object v0

    invoke-virtual {v0}, Ls4/e;->g()Ls4/c;

    move-result-object v0

    invoke-static {v0, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v1

    new-instance v5, Lq3/f;

    invoke-direct {v5, v0, v1}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, LR3/o;->B:Ls4/c;

    const-string v1, "size"

    invoke-static {v1}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v2

    invoke-virtual {v0, v2}, Ls4/c;->c(Ls4/f;)Ls4/c;

    move-result-object v0

    invoke-static {v1}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v2

    new-instance v6, Lq3/f;

    invoke-direct {v6, v0, v2}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, LR3/o;->F:Ls4/c;

    invoke-static {v1}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v2

    invoke-virtual {v0, v2}, Ls4/c;->c(Ls4/f;)Ls4/c;

    move-result-object v2

    invoke-static {v1}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v1

    new-instance v7, Lq3/f;

    invoke-direct {v7, v2, v1}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, LR3/o;->e:Ls4/e;

    const-string v2, "length"

    invoke-static {v2}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v8

    invoke-virtual {v1, v8}, Ls4/e;->b(Ls4/f;)Ls4/e;

    move-result-object v1

    invoke-virtual {v1}, Ls4/e;->g()Ls4/c;

    move-result-object v1

    invoke-static {v1, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v2

    new-instance v8, Lq3/f;

    invoke-direct {v8, v1, v2}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "keys"

    invoke-static {v1}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls4/c;->c(Ls4/f;)Ls4/c;

    move-result-object v1

    const-string v2, "keySet"

    invoke-static {v2}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v2

    new-instance v9, Lq3/f;

    invoke-direct {v9, v1, v2}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "values"

    invoke-static {v1}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v2

    invoke-virtual {v0, v2}, Ls4/c;->c(Ls4/f;)Ls4/c;

    move-result-object v2

    invoke-static {v1}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v1

    new-instance v10, Lq3/f;

    invoke-direct {v10, v2, v1}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "entries"

    invoke-static {v1}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls4/c;->c(Ls4/f;)Ls4/c;

    move-result-object v0

    const-string v1, "entrySet"

    invoke-static {v1}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v1

    new-instance v11, Lq3/f;

    invoke-direct {v11, v0, v1}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v4 .. v11}, [Lq3/f;

    move-result-object v0

    invoke-static {v0}, Lr3/v;->f0([Lq3/f;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Ld4/h;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v3, Lq3/f;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls4/c;

    invoke-virtual {v4}, Ls4/c;->f()Ls4/f;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq3/f;

    iget-object v3, v2, Lq3/f;->e:Ljava/lang/Object;

    check-cast v3, Ls4/f;

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    check-cast v4, Ljava/util/List;

    iget-object v2, v2, Lq3/f;->d:Ljava/lang/Object;

    check-cast v2, Ls4/f;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Lr3/v;->d0(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    const-string v4, "<this>"

    invoke-static {v2, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lr3/j;->R0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lr3/j;->P0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    sput-object v1, Ld4/h;->b:Ljava/util/LinkedHashMap;

    sget-object v0, Ld4/h;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ld4/h;->c:Ljava/util/Set;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls4/c;

    invoke-virtual {v2}, Ls4/c;->f()Ls4/f;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    invoke-static {v1}, Lr3/j;->S0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ld4/h;->d:Ljava/util/Set;

    return-void
.end method

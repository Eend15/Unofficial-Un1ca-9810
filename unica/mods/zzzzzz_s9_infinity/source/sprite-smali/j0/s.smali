.class public abstract Lj0/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ll2/a; = null

.field public static b:LU3/w; = null

.field public static c:I = -0x1


# direct methods
.method public static final A(Landroid/content/Context;)V
    .locals 10

    const-string v0, "context"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "androidx.work.workdb"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "context.getDatabasePath(WORK_DATABASE_NAME)"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v1

    sget-object v3, Lo0/l;->a:Ljava/lang/String;

    const-string v4, "Migrating WorkDatabase to the no-backup directory"

    invoke-virtual {v1, v3, v4}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    sget-object v3, Lo0/a;->a:Lo0/a;

    invoke-virtual {v3, p0}, Lo0/a;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object p0, Lo0/l;->b:[Ljava/lang/String;

    array-length v0, p0

    invoke-static {v0}, Lr3/v;->d0(I)I

    move-result v0

    const/16 v3, 0x10

    if-ge v0, v3, :cond_0

    move v0, v3

    :cond_0
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    array-length v0, p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    aget-object v5, p0, v4

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lq3/f;

    invoke-direct {p0, v1, v2}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lr3/v;->e0(Lq3/f;)Ljava/util/Map;

    move-result-object p0

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0, v3}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v2

    sget-object v3, Lo0/l;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Over-writing contents of "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ln0/o;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Migrated "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "to "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Renaming "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " failed"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v1

    sget-object v2, Lo0/l;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method public static final B(Ln4/Q;LX3/C;)Ln4/Q;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Ln4/Q;->f:I

    and-int/lit16 v1, v0, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Ln4/Q;->p:Ln4/Q;

    goto :goto_0

    :cond_0
    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget p0, p0, Ln4/Q;->q:I

    invoke-virtual {p1, p0}, LX3/C;->a(I)Ln4/Q;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static E(Ljava/io/InputStream;)Lo4/a;
    .locals 4

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance p0, LK3/c;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1, v2}, LK3/a;-><init>(III)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, LK3/a;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    move-object v2, p0

    check-cast v2, LK3/b;

    iget-boolean v2, v2, LK3/b;->f:Z

    if-eqz v2, :cond_0

    move-object v2, p0

    check-cast v2, LK3/b;

    invoke-virtual {v2}, LK3/b;->b()I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [I

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    aput v2, p0, v1

    move v1, v3

    goto :goto_1

    :cond_1
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    new-instance v0, Lo4/a;

    invoke-direct {v0, p0}, Lo4/a;-><init>([I)V

    return-object v0
.end method

.method public static final F(Ln4/y;LX3/C;)Ln4/Q;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ln4/y;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Ln4/y;->m:Ln4/Q;

    goto :goto_0

    :cond_0
    iget v0, p0, Ln4/y;->f:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget p0, p0, Ln4/y;->n:I

    invoke-virtual {p1, p0}, LX3/C;->a(I)Ln4/Q;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final G(Ln4/y;LX3/C;)Ln4/Q;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Ln4/y;->f:I

    and-int/lit8 v1, v0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Ln4/y;->j:Ln4/Q;

    const-string p1, "returnType"

    invoke-static {p0, p1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget p0, p0, Ln4/y;->k:I

    invoke-virtual {p1, p0}, LX3/C;->a(I)Ln4/Q;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No returnType in ProtoBuf.Function"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final H(Ln4/G;LX3/C;)Ln4/Q;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Ln4/G;->f:I

    and-int/lit8 v1, v0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Ln4/G;->j:Ln4/Q;

    const-string p1, "returnType"

    invoke-static {p0, p1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget p0, p0, Ln4/G;->k:I

    invoke-virtual {p1, p0}, LX3/C;->a(I)Ln4/Q;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No returnType in ProtoBuf.Property"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final I(Ljava/util/Set;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Z)Ljava/lang/Object;
    .locals 1

    if-eqz p4, :cond_4

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p0, p1

    goto :goto_0

    :cond_0
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move-object p0, p2

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    invoke-static {p0, p1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p3, p2}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move-object p3, v0

    goto :goto_1

    :cond_2
    if-nez p3, :cond_3

    move-object p3, p0

    :cond_3
    :goto_1
    return-object p3

    :cond_4
    if-nez p3, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {p0, p3}, Lr3/y;->b0(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    move-result-object p0

    invoke-static {p0}, Lr3/j;->S0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Lr3/j;->K0(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final J(LU3/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "classDescriptor"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LT3/d;->a:Ljava/lang/String;

    invoke-static {p0}, Lz4/e;->g(LU3/j;)Ls4/c;

    move-result-object v0

    invoke-virtual {v0}, Ls4/c;->i()Ls4/e;

    move-result-object v0

    const-string v1, "fqNameSafe.toUnsafe()"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, LT3/d;->f(Ls4/e;)Ls4/b;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Ll4/d;->d:Ll4/d;

    invoke-static {p0, v0}, Lj0/s;->p(LU3/e;Ll4/d;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {v0}, LA4/b;->b(Ls4/b;)LA4/b;

    move-result-object p0

    invoke-virtual {p0}, LA4/b;->d()Ljava/lang/String;

    move-result-object p0

    const-string v0, "byClassId(it).internalName"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    const-string v0, "internalName"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2e

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final K(Ln4/Z;LX3/C;)Ln4/Q;
    .locals 3

    const-string v0, "typeTable"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Ln4/Z;->f:I

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Ln4/Z;->i:Ln4/Q;

    const-string p1, "type"

    invoke-static {p0, p1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget p0, p0, Ln4/Z;->j:I

    invoke-virtual {p1, p0}, LX3/C;->a(I)Ln4/Q;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No type in ProtoBuf.ValueParameter"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final L(Lo0/e;Landroidx/work/impl/WorkDatabase;Ln0/c;Ljava/util/List;Lw0/p;Ljava/util/LinkedHashSet;)V
    .locals 9

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->t()Lw0/q;

    move-result-object v0

    iget-object v6, p4, Lw0/p;->a:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lw0/q;->l(Ljava/lang/String;)Lw0/p;

    move-result-object v4

    if-eqz v4, :cond_6

    iget v0, v4, Lw0/p;->b:I

    invoke-static {v0}, Li4/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v4}, Lw0/p;->d()Z

    move-result v0

    invoke-virtual {p4}, Lw0/p;->d()Z

    move-result v1

    xor-int/2addr v0, v1

    if-nez v0, :cond_3

    invoke-virtual {p0, v6}, Lo0/e;->d(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/g;

    invoke-interface {v1, v6}, Lo0/g;->cancel(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lo0/p;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p4

    move-object v5, p3

    move-object v7, p5

    move v8, p0

    invoke-direct/range {v1 .. v8}, Lo0/p;-><init>(Landroidx/work/impl/WorkDatabase;Lw0/p;Lw0/p;Ljava/util/List;Ljava/lang/String;Ljava/util/LinkedHashSet;Z)V

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->c()V

    :try_start_0
    invoke-virtual {v0}, Lo0/p;->run()V

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->k()V

    if-nez p0, :cond_2

    invoke-static {p2, p1, p3}, Lo0/h;->a(Ln0/c;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->k()V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Can\'t update "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lw0/p;->d()Z

    move-result p2

    const-string p3, "OneTime"

    const-string p5, "Periodic"

    if-eqz p2, :cond_4

    move-object p2, p5

    goto :goto_1

    :cond_4
    move-object p2, p3

    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Worker to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lw0/p;->d()Z

    move-result p2

    if-eqz p2, :cond_5

    move-object p3, p5

    :cond_5
    const-string p2, " Worker. Update operation must preserve worker\'s type."

    invoke-static {p1, p3, p2}, LB/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Worker with "

    const-string p2, " doesn\'t exist"

    invoke-static {p1, v6, p2}, LB/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final a(Landroid/database/Cursor;Ljava/lang/String;)D
    .locals 4

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    move-wide p0, v0

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-static {p0}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object p0

    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    instance-of v0, p0, Lq3/g;

    if-eqz v0, :cond_1

    move-object p0, p1

    :cond_1
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 7

    const-string v0, "context"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getPackageName(...)"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lm3/d;->g(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;

    move-result-object v0

    const-string v1, "WPI"

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->getCertiType()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "signature mismatch(3): "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lj0/s;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->getCertificate()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "signature mismatch(2): "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    invoke-static {p0}, Lj0/s;->j(Landroid/content/Context;)I

    move-result v0

    if-ne v4, v0, :cond_5

    :goto_1
    move v3, v4

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "signature mismatch(1): "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "not in the list : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x3

    :goto_2
    return v3
.end method

.method public static final c(Landroid/database/Cursor;Ljava/lang/String;I)I
    .locals 2

    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    move p0, p2

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-static {p0}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object p0

    :goto_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    instance-of p2, p0, Lq3/g;

    if-eqz p2, :cond_1

    move-object p0, p1

    :cond_1
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public static d(LU3/w;Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    invoke-virtual {p0}, LU3/w;->b()Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    const-string p1, "build(...)"

    invoke-static {p0, p1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 5

    const-string v0, "context"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SHA-256"

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v1, 0x8000000

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    array-length v1, p0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    const-string v4, "digest(...)"

    invoke-static {v3, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, LV4/d;->d([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :goto_2
    invoke-static {p0}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    sget-object p1, Lr3/r;->d:Lr3/r;

    :cond_1
    return-object p1
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lw0/e;
    .locals 2

    const-string p2, "activeCp"

    invoke-static {p3, p2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lw0/e;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x86b

    if-eq v0, v1, :cond_4

    const/16 v1, 0x946

    if-eq v0, v1, :cond_2

    const/16 v1, 0x967

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "KR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, LG4/d;

    const/16 p1, 0x17

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LG4/d;-><init>(IZ)V

    goto :goto_1

    :cond_2
    const-string v0, "JP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Le3/a;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Le3/a;-><init>(BI)V

    iput p1, p0, Le3/a;->e:I

    goto :goto_1

    :cond_4
    const-string v0, "CN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :goto_0
    new-instance v0, Le3/a;

    invoke-direct {v0, p0, p1}, Le3/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v0

    goto :goto_1

    :cond_5
    new-instance p0, LU0/e;

    const/16 p1, 0x16

    invoke-direct {p0, p1}, LU0/e;-><init>(I)V

    :goto_1
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string p1, "KOR"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, LG4/d;

    const/16 p3, 0x16

    const/4 v0, 0x0

    invoke-direct {p1, p3, v0}, LG4/d;-><init>(IZ)V

    goto :goto_3

    :sswitch_1
    const-string p1, "JPN"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_2

    :sswitch_2
    const-string p1, "HUA"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, LU0/e;

    const/16 p3, 0x14

    invoke-direct {p1, p3}, LU0/e;-><init>(I)V

    goto :goto_3

    :sswitch_3
    const-string p1, "JPN_V4"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    :cond_7
    :goto_2
    new-instance p1, LG4/d;

    const/16 p3, 0x15

    const/4 v0, 0x0

    invoke-direct {p1, p3, v0}, LG4/d;-><init>(IZ)V

    goto :goto_3

    :cond_8
    new-instance p1, LU0/e;

    const/16 p3, 0x15

    invoke-direct {p1, p3}, LU0/e;-><init>(I)V

    :goto_3
    new-instance p3, LG4/d;

    const/16 v0, 0x14

    const/4 v1, 0x0

    invoke-direct {p3, v0, v1}, LG4/d;-><init>(IZ)V

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p0, p2, Lw0/e;->d:Ljava/lang/Object;

    iput-object p1, p2, Lw0/e;->e:Ljava/lang/Object;

    return-object p2

    :sswitch_data_0
    .sparse-switch
        -0x7d2d258b -> :sswitch_3
        0x118d4 -> :sswitch_2
        0x11fc8 -> :sswitch_1
        0x1236e -> :sswitch_0
    .end sparse-switch
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v2, "android.hardware.type.watch"

    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "com.samsung.android.watch.weather"

    goto :goto_0

    :cond_0
    const-string p0, "com.sec.android.daemonapp"

    :goto_0
    const/16 v2, 0x80

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int p0, v1

    goto :goto_1

    :catch_0
    :cond_1
    move p0, v0

    :goto_1
    const v1, 0x9c80740

    if-lt p0, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static h(Landroid/content/Context;)I
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getPackageName(...)"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lj0/s;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.samsung.feature.samsung_experience_mobile_lite"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz p0, :cond_2

    const-string v5, "0a012131b1bdf9e80ef97d37f3b48362be363a464c8445ecf83627ebe8493a1e"

    invoke-static {v4, v5}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    :cond_2
    const-string v5, "34df0e7a9f1cf1892e45c056b4973cd81ccf148a4050d11aea4ac5a65f900a42"

    invoke-static {v4, v5}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    :goto_0
    if-eqz v4, :cond_1

    move p0, v3

    goto :goto_2

    :cond_3
    :goto_1
    move p0, v2

    :goto_2
    if-eqz p0, :cond_4

    goto :goto_5

    :cond_4
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_4

    :cond_5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v4, "user"

    invoke-static {v1, v4}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "c8a2e9bccf597c2fb6dc66bee293fc13f2fc47ec77bc6b2b0d52c11f51192ab8"

    invoke-static {v0, v1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v3

    goto :goto_3

    :cond_7
    move v0, v2

    :goto_3
    if-eqz v0, :cond_6

    move v2, v3

    :cond_8
    :goto_4
    if-eqz v2, :cond_9

    goto :goto_5

    :cond_9
    const/4 v3, 0x2

    :goto_5
    return v3
.end method

.method public static final i(Landroid/database/Cursor;Ljava/lang/String;)F
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    move p0, v0

    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-static {p0}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object p0

    :goto_2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    instance-of v0, p0, Lq3/g;

    if-eqz v0, :cond_1

    move-object p0, p1

    :cond_1
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public static j(Landroid/content/Context;)I
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const-string v1, "getApplicationInfo(...)"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lj0/s;->h(Landroid/content/Context;)I

    move-result p0

    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Lq3/h;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to get signature type. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WPI"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    instance-of v1, p0, Lq3/g;

    if-eqz v1, :cond_3

    move-object p0, v0

    :cond_3
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public static k(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4

    const-string v0, "context"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lj0/s;->c:I

    if-gez v0, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const-string v1, "getApplicationInfo(...)"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".weather.key"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {p0, p1}, Lm3/d;->g(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->getKey()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_1
    const/4 p1, 0x0

    if-eqz v0, :cond_3

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "there is no command key : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WPI"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    sput p1, Lj0/s;->c:I

    :cond_5
    sget p0, Lj0/s;->c:I

    return p0
.end method

.method public static final l(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 2

    const-string v0, "possiblyPrimitiveType"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    check-cast p0, Ll4/i;

    instance-of p1, p0, Ll4/h;

    if-eqz p1, :cond_2

    move-object p1, p0

    check-cast p1, Ll4/h;

    iget-object p1, p1, Ll4/h;->i:LA4/c;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, LA4/c;->e()Ls4/c;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ls4/c;->b()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Ll4/d;->d(Ljava/lang/String;)Ll4/g;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x5

    invoke-static {p0}, LA4/b;->a(I)V

    throw p1

    :cond_1
    const/4 p0, 0x2

    invoke-static {p0}, LA4/b;->a(I)V

    throw p1

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static final p(LU3/e;Ll4/d;)Ljava/lang/String;
    .locals 4

    const-string v0, "klass"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeMappingConfiguration"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, LU3/j;->g()LU3/j;

    move-result-object v0

    const-string v1, "klass.containingDeclaration"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, LU3/j;->r()Ls4/f;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Ls4/h;->a:Ls4/f;

    iget-boolean v2, v1, Ls4/f;->e:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Ls4/h;->c:Ls4/f;

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ls4/f;->c()Ljava/lang/String;

    move-result-object v1

    instance-of v3, v0, LU3/B;

    if-eqz v3, :cond_2

    check-cast v0, LU3/B;

    check-cast v0, LX3/F;

    iget-object p0, v0, LX3/F;->h:Ls4/c;

    invoke-virtual {p0}, Ls4/c;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ls4/c;->b()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    const/16 v2, 0x2f

    invoke-static {p0, v0, v2}, LV4/u;->k0(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_2
    instance-of v3, v0, LU3/e;

    if-eqz v3, :cond_3

    move-object v2, v0

    check-cast v2, LU3/e;

    :cond_3
    if-eqz v2, :cond_4

    invoke-static {v2, p1}, Lj0/s;->p(LU3/e;Ll4/d;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x24

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected container: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const/4 p0, 0x0

    invoke-static {p0}, Ls4/h;->a(I)V

    throw v2
.end method

.method public static q(LU3/s;I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    const-string p1, "<this>"

    invoke-static {p0, p1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_3

    instance-of v0, p0, LU3/i;

    if-eqz v0, :cond_2

    const-string v0, "<init>"

    goto :goto_2

    :cond_2
    move-object v0, p0

    check-cast v0, LX3/p;

    invoke-virtual {v0}, LX3/p;->r()Ls4/f;

    move-result-object v0

    invoke-virtual {v0}, Ls4/f;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "name.asString()"

    invoke-static {v0, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, LU3/a;->Y()LU3/J;

    move-result-object v0

    sget-object v2, LS4/d;->d:LS4/d;

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    check-cast v0, LX3/d;

    invoke-virtual {v0}, LX3/d;->j()LJ4/C;

    move-result-object v0

    const-string v3, "it.type"

    invoke-static {v0, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Ll4/o;->k:Ll4/o;

    invoke-static {v0, v3, v2}, Lj0/s;->z(LJ4/C;Ll4/o;LE3/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll4/i;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-interface {p0}, LU3/a;->n0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LX3/W;

    check-cast v3, LX3/X;

    invoke-virtual {v3}, LX3/X;->j()LJ4/C;

    move-result-object v3

    const-string v4, "parameter.type"

    invoke-static {v3, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Ll4/o;->k:Ll4/o;

    invoke-static {v3, v4, v2}, Lj0/s;->z(LJ4/C;Ll4/o;LE3/d;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll4/i;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_5
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_8

    instance-of v0, p0, LU3/i;

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    invoke-interface {p0}, LU3/a;->k()LJ4/C;

    move-result-object v0

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    sget-object v1, LR3/j;->e:Ls4/f;

    sget-object v1, LR3/o;->d:Ls4/e;

    invoke-static {v0, v1}, LR3/j;->C(LJ4/C;Ls4/e;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, LU3/a;->k()LJ4/C;

    move-result-object v0

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-static {v0}, LJ4/Z;->e(LJ4/C;)Z

    move-result v0

    if-nez v0, :cond_7

    instance-of v0, p0, LX3/M;

    if-nez v0, :cond_7

    :goto_5
    const-string p0, "V"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_7
    invoke-interface {p0}, LU3/a;->k()LJ4/C;

    move-result-object p0

    invoke-static {p0}, LF3/k;->c(Ljava/lang/Object;)V

    sget-object v0, Ll4/o;->k:Ll4/o;

    invoke-static {p0, v0, v2}, Lj0/s;->z(LJ4/C;Ll4/o;LE3/d;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll4/i;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_8
    :goto_6
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, p1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final r(LU3/a;)Ljava/lang/String;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lv4/f;->o(LU3/j;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p0}, LU3/j;->g()LU3/j;

    move-result-object v0

    instance-of v2, v0, LU3/e;

    if-eqz v2, :cond_1

    check-cast v0, LU3/e;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    return-object v1

    :cond_2
    invoke-interface {v0}, LU3/j;->r()Ls4/f;

    move-result-object v2

    iget-boolean v2, v2, Ls4/f;->e:Z

    if-eqz v2, :cond_3

    return-object v1

    :cond_3
    invoke-interface {p0}, LU3/a;->a()LU3/a;

    move-result-object p0

    instance-of v2, p0, LX3/P;

    if-eqz v2, :cond_4

    check-cast p0, LX3/P;

    goto :goto_1

    :cond_4
    move-object p0, v1

    :goto_1
    if-nez p0, :cond_5

    return-object v1

    :cond_5
    const/4 v1, 0x3

    invoke-static {p0, v1}, Lj0/s;->q(LU3/s;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lj0/s;->J(LU3/e;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static s()Lk1/b;
    .locals 1

    new-instance v0, Lk1/b;

    invoke-direct {v0}, Lk1/b;-><init>()V

    return-object v0
.end method

.method public static final t(Landroid/database/Cursor;Ljava/lang/String;)J
    .locals 4

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    move-wide p0, v0

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-static {p0}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object p0

    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    instance-of v0, p0, Lq3/g;

    if-eqz v0, :cond_1

    move-object p0, p1

    :cond_1
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static final u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    move-object p0, v0

    goto :goto_2

    :goto_1
    invoke-static {p0}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object p0

    :cond_1
    :goto_2
    instance-of p1, p0, Lq3/g;

    if-eqz p1, :cond_2

    goto :goto_3

    :cond_2
    move-object v0, p0

    :goto_3
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static final v(LZ3/b;Ls4/b;)LZ3/c;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classId"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LZ3/b;->a(Ls4/b;)Landroidx/recyclerview/widget/y;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast p0, LZ3/c;

    :goto_0
    return-object p0
.end method

.method public static w(Lp4/g;)Ll4/m;
    .locals 3

    instance-of v0, p0, Lr4/e;

    const-string v1, "desc"

    const-string v2, "name"

    if-eqz v0, :cond_0

    check-cast p0, Lr4/e;

    iget-object v0, p0, Lr4/e;->b:Ljava/lang/String;

    invoke-static {v0, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lr4/e;->c:Ljava/lang/String;

    invoke-static {p0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ll4/m;

    invoke-static {p0, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ll4/m;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lr4/d;

    if-eqz v0, :cond_1

    check-cast p0, Lr4/d;

    iget-object v0, p0, Lr4/d;->b:Ljava/lang/String;

    invoke-static {v0, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lr4/d;->c:Ljava/lang/String;

    invoke-static {p0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ll4/m;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ll4/m;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_1
    new-instance p0, LW4/m;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public static final x(Lt4/m;Lt4/o;)Ljava/lang/Object;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extension"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lt4/m;->l(Lt4/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lt4/m;->k(Lt4/o;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final y(Lt4/m;Lt4/o;I)Ljava/lang/Object;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extension"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lt4/m;->o(Lt4/o;)V

    iget-object v0, p0, Lt4/m;->d:Lt4/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lt4/o;->d:Lt4/n;

    iget-boolean v2, v1, Lt4/n;->f:Z

    const-string v3, "getRepeatedField() can only be called on repeated fields."

    if-eqz v2, :cond_4

    iget-object v0, v0, Lt4/j;->a:Lt4/C;

    invoke-virtual {v0, v1}, Lt4/C;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge p2, v2, :cond_3

    invoke-virtual {p0, p1}, Lt4/m;->o(Lt4/o;)V

    iget-boolean p0, v1, Lt4/n;->f:Z

    if-eqz p0, :cond_2

    invoke-virtual {v0, v1}, Lt4/C;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lt4/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const/4 p0, 0x0

    :goto_1
    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final z(LJ4/C;Ll4/o;LE3/d;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    const-string v6, ", "

    const-string v7, "ClassicTypeSystemContext couldn\'t handle: "

    const-string v8, "receiver"

    sget-object v9, Ll4/d;->d:Ll4/d;

    const-string v10, "kotlinType"

    invoke-static {v0, v10}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "writeGenericType"

    invoke-static {v2, v10}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, LR3/f;->R(LJ4/C;)Z

    move-result v10

    if-eqz v10, :cond_1

    sget-object v3, LR3/q;->a:LX3/E;

    invoke-static/range {p0 .. p0}, LR3/f;->R(LJ4/C;)Z

    invoke-static/range {p0 .. p0}, LK/I;->v(LJ4/C;)LR3/j;

    move-result-object v5

    invoke-interface/range {p0 .. p0}, LV3/a;->p()LV3/h;

    move-result-object v6

    invoke-static/range {p0 .. p0}, LR3/f;->J(LJ4/C;)LJ4/C;

    move-result-object v7

    invoke-static/range {p0 .. p0}, LR3/f;->N(LJ4/C;)Ljava/util/List;

    move-result-object v3

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v3}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LJ4/P;

    invoke-virtual {v9}, LJ4/P;->b()LJ4/C;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v3, LV3/g;->a:LV3/f;

    sget-object v9, LR3/q;->a:LX3/E;

    invoke-virtual {v9}, LX3/E;->E()LJ4/M;

    move-result-object v9

    invoke-static/range {p0 .. p0}, LR3/f;->P(LJ4/C;)Z

    invoke-virtual/range {p0 .. p0}, LJ4/C;->m0()Ljava/util/List;

    move-result-object v10

    invoke-static {v10}, Lr3/j;->C0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LJ4/P;

    invoke-virtual {v10}, LJ4/P;->b()LJ4/C;

    move-result-object v10

    const-string v11, "arguments.last().type"

    invoke-static {v10, v11}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, LK/I;->e(LJ4/C;)LJ4/Q;

    move-result-object v10

    invoke-static {v10}, Lp4/g;->H(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-static {v9, v3, v10, v4}, LJ4/d;->p(LJ4/M;LV3/h;Ljava/util/List;Z)LJ4/G;

    move-result-object v3

    invoke-static {v8, v3}, Lr3/j;->H0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-static/range {p0 .. p0}, LK/I;->v(LJ4/C;)LR3/j;

    move-result-object v3

    invoke-virtual {v3}, LR3/j;->n()LJ4/G;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, LR3/f;->t(LR3/j;LV3/h;LJ4/C;Ljava/util/ArrayList;LJ4/C;Z)LJ4/G;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, LJ4/C;->z0()Z

    move-result v0

    invoke-virtual {v3, v0}, LJ4/G;->F0(Z)LJ4/G;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lj0/s;->z(LJ4/C;Ll4/o;LE3/d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v10, LK4/f;->e:LK4/f;

    invoke-virtual {v10, v0}, LK4/f;->U(LM4/c;)LM4/f;

    move-result-object v11

    invoke-static {v10, v11}, LK4/h;->B(LK4/c;LM4/f;)Z

    move-result v12

    const/4 v13, 0x4

    const/4 v14, 0x0

    const-string v15, "["

    if-nez v12, :cond_2

    goto/16 :goto_6

    :cond_2
    invoke-static {v11, v8}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v12, v11, LJ4/M;

    if-eqz v12, :cond_26

    move-object v12, v11

    check-cast v12, LJ4/M;

    invoke-interface {v12}, LJ4/M;->e()LU3/g;

    move-result-object v12

    if-eqz v12, :cond_25

    check-cast v12, LU3/e;

    invoke-static {v12}, LR3/j;->s(LU3/e;)LR3/l;

    move-result-object v12

    if-eqz v12, :cond_5

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    new-instance v0, LW4/m;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_0
    sget-object v5, Ll4/i;->h:Ll4/h;

    goto :goto_1

    :pswitch_1
    sget-object v5, Ll4/i;->g:Ll4/h;

    goto :goto_1

    :pswitch_2
    sget-object v5, Ll4/i;->f:Ll4/h;

    goto :goto_1

    :pswitch_3
    sget-object v5, Ll4/i;->e:Ll4/h;

    goto :goto_1

    :pswitch_4
    sget-object v5, Ll4/i;->d:Ll4/h;

    goto :goto_1

    :pswitch_5
    sget-object v5, Ll4/i;->c:Ll4/h;

    goto :goto_1

    :pswitch_6
    sget-object v5, Ll4/i;->b:Ll4/h;

    goto :goto_1

    :pswitch_7
    sget-object v5, Ll4/i;->a:Ll4/h;

    :goto_1
    invoke-static {v10, v0}, LK4/h;->K(LK4/c;LM4/c;)Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Ld4/x;->o:Ls4/c;

    const-string v7, "ENHANCED_NULLABILITY_ANNOTATION"

    invoke-static {v6, v7}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v0, v6}, LK4/h;->v(LK4/c;LJ4/C;Ls4/c;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    move v6, v4

    goto :goto_3

    :cond_4
    :goto_2
    move v6, v3

    :goto_3
    invoke-static {v5, v6}, Lj0/s;->l(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v14

    goto/16 :goto_6

    :cond_5
    invoke-static {v11, v8}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v10, v11, LJ4/M;

    if-eqz v10, :cond_24

    move-object v10, v11

    check-cast v10, LJ4/M;

    invoke-interface {v10}, LJ4/M;->e()LU3/g;

    move-result-object v10

    if-eqz v10, :cond_23

    check-cast v10, LU3/e;

    invoke-static {v10}, LR3/j;->q(LU3/g;)LR3/l;

    move-result-object v10

    if-eqz v10, :cond_7

    sget-object v5, LA4/c;->r:Ljava/util/EnumMap;

    invoke-virtual {v5, v10}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LA4/c;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, LA4/c;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v15}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ll4/d;->c(Ljava/lang/String;)Ll4/i;

    move-result-object v14

    goto/16 :goto_6

    :cond_6
    invoke-static {v13}, LA4/c;->a(I)V

    throw v14

    :cond_7
    invoke-static {v11, v8}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v10, v11, LJ4/M;

    if-eqz v10, :cond_22

    move-object v10, v11

    check-cast v10, LJ4/M;

    invoke-interface {v10}, LJ4/M;->e()LU3/g;

    move-result-object v10

    if-nez v10, :cond_9

    :cond_8
    move v10, v4

    goto :goto_4

    :cond_9
    invoke-static {v10}, LR3/j;->G(LU3/g;)Z

    move-result v10

    if-ne v10, v3, :cond_8

    move v10, v3

    :goto_4
    if-eqz v10, :cond_f

    invoke-static {v11, v8}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v8, v11, LJ4/M;

    if-eqz v8, :cond_e

    check-cast v11, LJ4/M;

    invoke-interface {v11}, LJ4/M;->e()LU3/g;

    move-result-object v6

    if-eqz v6, :cond_d

    check-cast v6, LU3/e;

    invoke-static {v6}, Lz4/e;->h(LU3/j;)Ls4/e;

    move-result-object v5

    sget-object v6, LT3/d;->a:Ljava/lang/String;

    invoke-static {v5}, LT3/d;->f(Ls4/e;)Ls4/b;

    move-result-object v5

    if-eqz v5, :cond_f

    iget-boolean v6, v1, Ll4/o;->g:Z

    if-nez v6, :cond_c

    sget-object v6, LT3/d;->l:Ljava/util/List;

    if-eqz v6, :cond_a

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_5

    :cond_a
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LT3/c;

    iget-object v7, v7, LT3/c;->a:Ls4/b;

    invoke-virtual {v7, v5}, Ls4/b;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    goto :goto_6

    :cond_c
    :goto_5
    invoke-static {v5}, LA4/b;->b(Ls4/b;)LA4/b;

    move-result-object v5

    invoke-virtual {v5}, LA4/b;->d()Ljava/lang/String;

    move-result-object v5

    const-string v6, "byClassId(classId).internalName"

    invoke-static {v5, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ll4/d;->d(Ljava/lang/String;)Ll4/g;

    move-result-object v14

    goto :goto_6

    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, LF3/t;->a:LF3/u;

    invoke-static {v2, v1, v0}, LB/a;->k(LF3/u;Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    :goto_6
    if-nez v14, :cond_21

    invoke-virtual/range {p0 .. p0}, LJ4/C;->q0()LJ4/M;

    move-result-object v5

    instance-of v6, v5, LJ4/B;

    if-eqz v6, :cond_11

    check-cast v5, LJ4/B;

    iget-object v0, v5, LJ4/B;->a:LJ4/C;

    if-eqz v0, :cond_10

    invoke-static {v0}, LK/I;->n0(LJ4/C;)LJ4/b0;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lj0/s;->z(LJ4/C;Ll4/o;LE3/d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_10
    iget-object v1, v5, LJ4/B;->b:Ljava/util/LinkedHashSet;

    const-string v0, "types"

    invoke-static {v1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/AssertionError;

    const/4 v4, 0x0

    const/16 v6, 0x3f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Lr3/j;->A0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE3/b;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "There should be no intersection type in existing descriptors, but found: "

    invoke-static {v1, v2}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_11
    invoke-interface {v5}, LJ4/M;->e()LU3/g;

    move-result-object v5

    if-eqz v5, :cond_20

    invoke-static {v5}, LJ4/v;->g(LU3/j;)Z

    move-result v6

    if-eqz v6, :cond_12

    const-string v0, "error/NonExistentClass"

    invoke-static {v0}, Ll4/d;->d(Ljava/lang/String;)Ll4/g;

    move-result-object v0

    check-cast v5, LU3/e;

    return-object v0

    :cond_12
    instance-of v6, v5, LU3/e;

    iget-boolean v7, v1, Ll4/o;->c:Z

    if-eqz v6, :cond_19

    invoke-static/range {p0 .. p0}, LR3/j;->x(LJ4/C;)Z

    move-result v8

    if-eqz v8, :cond_19

    invoke-virtual/range {p0 .. p0}, LJ4/C;->m0()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v3, :cond_18

    invoke-virtual/range {p0 .. p0}, LJ4/C;->m0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ4/P;

    invoke-virtual {v0}, LJ4/P;->b()LJ4/C;

    move-result-object v4

    const-string v5, "memberProjection.type"

    invoke-static {v4, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LJ4/P;->a()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_13

    const-string v0, "java/lang/Object"

    invoke-static {v0}, Ll4/d;->d(Ljava/lang/String;)Ll4/g;

    move-result-object v0

    goto :goto_8

    :cond_13
    invoke-virtual {v0}, LJ4/P;->a()I

    move-result v0

    const-string v5, "memberProjection.projectionKind"

    invoke-static {v0, v5}, LB/a;->y(ILjava/lang/String;)V

    if-eqz v7, :cond_14

    goto :goto_7

    :cond_14
    invoke-static {v0}, Lq/e;->c(I)I

    move-result v0

    if-eqz v0, :cond_16

    if-eq v0, v3, :cond_15

    iget-object v0, v1, Ll4/o;->f:Ll4/o;

    if-nez v0, :cond_17

    goto :goto_7

    :cond_15
    iget-object v0, v1, Ll4/o;->h:Ll4/o;

    if-nez v0, :cond_17

    goto :goto_7

    :cond_16
    iget-object v0, v1, Ll4/o;->i:Ll4/o;

    if-nez v0, :cond_17

    :goto_7
    move-object v0, v1

    :cond_17
    invoke-static {v4, v0, v2}, Lj0/s;->z(LJ4/C;Ll4/o;LE3/d;)Ljava/lang/Object;

    move-result-object v0

    :goto_8
    check-cast v0, Ll4/i;

    invoke-static {v0}, Ll4/d;->h(Ll4/i;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v15}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ll4/d;->c(Ljava/lang/String;)Ll4/i;

    move-result-object v0

    return-object v0

    :cond_18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "arrays must have one type argument"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    if-eqz v6, :cond_1d

    invoke-static {v5}, Lv4/j;->b(LU3/j;)Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-boolean v3, v1, Ll4/o;->b:Z

    if-nez v3, :cond_1a

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0, v3}, LJ4/c;->d(LM4/c;Ljava/util/HashSet;)LM4/c;

    move-result-object v3

    check-cast v3, LJ4/C;

    if-eqz v3, :cond_1a

    new-instance v0, Ll4/o;

    iget-object v4, v1, Ll4/o;->h:Ll4/o;

    const/16 v25, 0x200

    iget-boolean v15, v1, Ll4/o;->a:Z

    const/16 v16, 0x1

    iget-boolean v5, v1, Ll4/o;->c:Z

    iget-boolean v6, v1, Ll4/o;->d:Z

    iget-boolean v7, v1, Ll4/o;->e:Z

    iget-object v8, v1, Ll4/o;->f:Ll4/o;

    iget-boolean v9, v1, Ll4/o;->g:Z

    iget-object v1, v1, Ll4/o;->i:Ll4/o;

    const/16 v24, 0x0

    move-object v14, v0

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move-object/from16 v20, v8

    move/from16 v21, v9

    move-object/from16 v22, v4

    move-object/from16 v23, v1

    invoke-direct/range {v14 .. v25}, Ll4/o;-><init>(ZZZZZLl4/o;ZLl4/o;Ll4/o;ZI)V

    invoke-static {v3, v0, v2}, Lj0/s;->z(LJ4/C;Ll4/o;LE3/d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1a
    if-eqz v7, :cond_1b

    move-object v3, v5

    check-cast v3, LU3/e;

    sget-object v4, LR3/j;->e:Ls4/f;

    sget-object v4, LR3/o;->P:Ls4/e;

    invoke-static {v3, v4}, LR3/j;->b(LU3/e;Ls4/e;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const-string v3, "java/lang/Class"

    invoke-static {v3}, Ll4/d;->d(Ljava/lang/String;)Ll4/g;

    move-result-object v3

    goto :goto_9

    :cond_1b
    check-cast v5, LU3/e;

    invoke-interface {v5}, LU3/e;->a()LU3/e;

    move-result-object v3

    const-string v4, "descriptor.original"

    invoke-static {v3, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, LU3/e;->I()I

    move-result v3

    if-ne v3, v13, :cond_1c

    invoke-interface {v5}, LU3/j;->g()LU3/j;

    move-result-object v3

    move-object v5, v3

    check-cast v5, LU3/e;

    :cond_1c
    invoke-interface {v5}, LU3/e;->a()LU3/e;

    move-result-object v3

    const-string v4, "enumClassIfEnumEntry.original"

    invoke-static {v3, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v9}, Lj0/s;->p(LU3/e;Ll4/d;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ll4/d;->d(Ljava/lang/String;)Ll4/g;

    move-result-object v3

    :goto_9
    invoke-interface {v2, v0, v3, v1}, LE3/d;->a(LJ4/C;Ljava/lang/Object;Ll4/o;)Ljava/lang/Object;

    return-object v3

    :cond_1d
    instance-of v3, v5, LU3/O;

    if-eqz v3, :cond_1e

    check-cast v5, LU3/O;

    invoke-static {v5}, LK/I;->N(LU3/O;)LJ4/C;

    move-result-object v0

    sget-object v2, LS4/d;->d:LS4/d;

    invoke-static {v0, v1, v2}, Lj0/s;->z(LJ4/C;Ll4/o;LE3/d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1e
    instance-of v3, v5, LH4/v;

    if-eqz v3, :cond_1f

    iget-boolean v3, v1, Ll4/o;->j:Z

    if-eqz v3, :cond_1f

    check-cast v5, LH4/v;

    invoke-virtual {v5}, LH4/v;->I0()LJ4/G;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lj0/s;->z(LJ4/C;Ll4/o;LE3/d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1f
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Unknown type "

    invoke-static {v0, v2}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_20
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "no descriptor for type constructor of "

    invoke-static {v0, v2}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21
    iget-boolean v3, v1, Ll4/o;->a:Z

    invoke-static {v14, v3}, Lj0/s;->l(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v0, v3, v1}, LE3/d;->a(LJ4/C;Ljava/lang/Object;Ll4/o;)Ljava/lang/Object;

    return-object v3

    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, LF3/t;->a:LF3/u;

    invoke-static {v2, v1, v0}, LB/a;->k(LF3/u;Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_23
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, LF3/t;->a:LF3/u;

    invoke-static {v2, v1, v0}, LB/a;->k(LF3/u;Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_25
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, LF3/t;->a:LF3/u;

    invoke-static {v2, v1, v0}, LB/a;->k(LF3/u;Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

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


# virtual methods
.method public abstract C(Lp/f;Lp/f;)V
.end method

.method public abstract D(Lp/f;Ljava/lang/Thread;)V
.end method

.method public abstract m(Lp/g;Lp/c;Lp/c;)Z
.end method

.method public abstract n(Lp/g;Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public abstract o(Lp/g;Lp/f;Lp/f;)Z
.end method

.class public final La0/o;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, La0/o;->d:I

    iput-object p2, p0, La0/o;->e:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 14

    sget-object v0, Lr3/s;->d:Lr3/s;

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, La0/o;->e:Ljava/lang/Object;

    iget p0, p0, La0/o;->d:I

    packed-switch p0, :pswitch_data_0

    check-cast v5, Lx4/l;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v4

    :pswitch_0
    check-cast v5, LJ4/P;

    invoke-virtual {v5}, LJ4/P;->b()LJ4/C;

    move-result-object p0

    const-string v0, "this@createCapturedIfNeeded.type"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :pswitch_1
    check-cast v5, Lu4/g;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v5, Lu4/g;->a:Lu4/k;

    new-instance v0, Lu4/k;

    invoke-direct {v0}, Lu4/k;-><init>()V

    const-class v1, Lu4/k;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    const-string v6, "this::class.java.declaredFields"

    invoke-static {v5, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v6, v5

    move v7, v3

    :goto_0
    if-ge v7, v6, :cond_4

    aget-object v8, v5, v7

    add-int/2addr v7, v2

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v9

    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v8, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v8, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    instance-of v10, v9, Lu4/j;

    if-eqz v10, :cond_1

    check-cast v9, Lu4/j;

    goto :goto_1

    :cond_1
    move-object v9, v4

    :goto_1
    if-nez v9, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "field.name"

    invoke-static {v10, v11}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "is"

    invoke-static {v10, v12, v3}, LV4/u;->n0(Ljava/lang/String;Ljava/lang/String;Z)Z

    sget-object v10, LF3/t;->a:LF3/u;

    invoke-virtual {v10, v1}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v11}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_3

    invoke-virtual {v12, v3}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v11

    invoke-virtual {v12, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v12, v13}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_3
    const-string v11, "get"

    invoke-static {v12, v11}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    check-cast v10, LF3/d;

    invoke-interface {v10}, LF3/d;->c()Ljava/lang/Class;

    iget-object v9, v9, Lu4/j;->a:Ljava/lang/Object;

    new-instance v10, Lu4/j;

    invoke-direct {v10, v9, v9, v0}, Lu4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lu4/k;)V

    invoke-virtual {v8, v0, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lu4/k;->m()Ljava/util/Set;

    move-result-object p0

    sget-object v1, LR3/o;->p:Ls4/c;

    invoke-static {v1}, Lp4/g;->H(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {p0, v1}, Lr3/y;->c0(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/LinkedHashSet;

    move-result-object p0

    sget-object v1, Lu4/k;->U:[LL3/l;

    const/16 v3, 0x23

    aget-object v1, v1, v3

    iget-object v3, v0, Lu4/k;->J:Lu4/j;

    invoke-virtual {v3, v1, p0}, Lu4/j;->b(LL3/l;Ljava/lang/Object;)V

    iput-boolean v2, v0, Lu4/k;->a:Z

    new-instance p0, Lu4/g;

    invoke-direct {p0, v0}, Lu4/g;-><init>(Lu4/k;)V

    return-object p0

    :pswitch_2
    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast v5, [Ljava/lang/Object;

    invoke-static {v5}, LF3/k;->j([Ljava/lang/Object;)LF3/a;

    move-result-object p0

    return-object p0

    :pswitch_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Can\'t compute erased upper bound of type parameter `"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v5, Lw0/s;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x60

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LJ4/v;->c(Ljava/lang/String;)LJ4/p;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast v5, Lh4/d;

    iget-object p0, v5, Lh4/d;->c:Lh4/n;

    iget-object p0, p0, Lh4/n;->l:LI4/i;

    sget-object v0, Lh4/n;->p:[LL3/l;

    aget-object v0, v0, v3

    invoke-static {p0, v0}, Lw0/f;->C(LI4/m;LL3/l;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LZ3/c;

    iget-object v2, v5, Lh4/d;->b:Landroidx/recyclerview/widget/b;

    iget-object v2, v2, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v2, Lg4/a;

    iget-object v4, v5, Lh4/d;->c:Lh4/n;

    iget-object v2, v2, Lg4/a;->d:Ll4/c;

    invoke-virtual {v2, v4, v1}, Ll4/c;->a(LU3/B;LZ3/c;)LH4/s;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-static {v0}, LR3/f;->U(Ljava/util/ArrayList;)LS4/g;

    move-result-object p0

    new-array v0, v3, [LC4/o;

    invoke-virtual {p0, v0}, LS4/g;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_7

    check-cast p0, [LC4/o;

    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_6
    check-cast v5, Lf0/g;

    iget-object p0, v5, Lf0/g;->e:Ljava/lang/String;

    iget-object v7, v5, Lf0/g;->d:Landroid/content/Context;

    if-eqz p0, :cond_8

    iget-boolean p0, v5, Lf0/g;->g:Z

    if-eqz p0, :cond_8

    new-instance p0, Ljava/io/File;

    invoke-virtual {v7}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "context.noBackupFilesDir"

    invoke-static {v0, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v5, Lf0/g;->e:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Lf0/f;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Landroidx/recyclerview/widget/y;

    invoke-direct {v9, v1}, Landroidx/recyclerview/widget/y;-><init>(I)V

    iget-object v10, v5, Lf0/g;->f:La0/l;

    iget-boolean v11, v5, Lf0/g;->h:Z

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lf0/f;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/recyclerview/widget/y;La0/l;Z)V

    goto :goto_3

    :cond_8
    new-instance v0, Lf0/f;

    new-instance v9, Landroidx/recyclerview/widget/y;

    invoke-direct {v9, v1}, Landroidx/recyclerview/widget/y;-><init>(I)V

    iget-object v10, v5, Lf0/g;->f:La0/l;

    iget-boolean v11, v5, Lf0/g;->h:Z

    iget-object v8, v5, Lf0/g;->e:Ljava/lang/String;

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lf0/f;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/recyclerview/widget/y;La0/l;Z)V

    :goto_3
    iget-boolean p0, v5, Lf0/g;->j:Z

    invoke-virtual {v0, p0}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    return-object v0

    :pswitch_7
    check-cast v5, Le4/j;

    iget-object p0, v5, Le4/b;->d:Lj4/a;

    instance-of v1, p0, La4/g;

    if-eqz v1, :cond_9

    sget-object v1, Le4/e;->a:Ljava/lang/Object;

    check-cast p0, La4/g;

    invoke-virtual {p0}, La4/g;->a()Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Le4/e;->a(Ljava/util/List;)Lx4/b;

    move-result-object p0

    goto :goto_4

    :cond_9
    instance-of v1, p0, La4/s;

    if-eqz v1, :cond_a

    sget-object v1, Le4/e;->a:Ljava/lang/Object;

    invoke-static {p0}, Lp4/g;->H(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Le4/e;->a(Ljava/util/List;)Lx4/b;

    move-result-object p0

    goto :goto_4

    :cond_a
    move-object p0, v4

    :goto_4
    if-nez p0, :cond_b

    goto :goto_5

    :cond_b
    sget-object v1, Le4/c;->b:Ls4/f;

    new-instance v2, Lq3/f;

    invoke-direct {v2, v1, p0}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Lr3/v;->e0(Lq3/f;)Ljava/util/Map;

    move-result-object v4

    :goto_5
    if-eqz v4, :cond_c

    move-object v0, v4

    :cond_c
    return-object v0

    :pswitch_8
    sget-object p0, Le4/e;->a:Ljava/lang/Object;

    check-cast v5, Le4/i;

    iget-object p0, v5, Le4/b;->d:Lj4/a;

    instance-of v1, p0, La4/s;

    if-eqz v1, :cond_d

    check-cast p0, La4/s;

    goto :goto_6

    :cond_d
    move-object p0, v4

    :goto_6
    if-nez p0, :cond_e

    :goto_7
    move-object v1, v4

    goto :goto_8

    :cond_e
    sget-object v1, Le4/e;->b:Ljava/lang/Object;

    iget-object p0, p0, La4/s;->b:Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object p0

    invoke-virtual {p0}, Ls4/f;->b()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LV3/m;

    if-nez p0, :cond_f

    goto :goto_7

    :cond_f
    new-instance v1, Lx4/h;

    sget-object v2, LR3/o;->u:Ls4/c;

    invoke-static {v2}, Ls4/b;->j(Ls4/c;)Ls4/b;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lx4/h;-><init>(Ls4/b;Ls4/f;)V

    :goto_8
    if-nez v1, :cond_10

    goto :goto_9

    :cond_10
    sget-object p0, Le4/c;->c:Ls4/f;

    new-instance v2, Lq3/f;

    invoke-direct {v2, p0, v1}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Lr3/v;->e0(Lq3/f;)Ljava/util/Map;

    move-result-object v4

    :goto_9
    if-eqz v4, :cond_11

    move-object v0, v4

    :cond_11
    return-object v0

    :pswitch_9
    check-cast v5, Landroidx/lifecycle/W;

    invoke-static {v5}, Landroidx/lifecycle/K;->e(Landroidx/lifecycle/W;)Landroidx/lifecycle/M;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast v5, LF4/x;

    invoke-virtual {v5}, LF4/x;->d()Lf0/i;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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

.class public final LO3/H;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LO3/I;


# direct methods
.method public synthetic constructor <init>(LO3/I;I)V
    .locals 0

    iput p2, p0, LO3/H;->d:I

    iput-object p1, p0, LO3/H;->e:LO3/I;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    iget v0, p0, LO3/H;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LO3/H;->e:LO3/I;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, LO3/I;->i:[LL3/l;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, p0, LO3/I;->d:LO3/k0;

    invoke-virtual {v0}, LO3/k0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LZ3/c;

    if-eqz v0, :cond_a

    sget-object v2, LO3/w;->c:[LL3/l;

    aget-object v1, v2, v1

    iget-object p0, p0, LO3/w;->a:LO3/k0;

    invoke-virtual {p0}, LO3/k0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LZ3/f;

    iget-object p0, p0, LZ3/f;->b:Lw0/m;

    iget-object v1, p0, Lw0/m;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, v0, LZ3/c;->a:Ljava/lang/Class;

    invoke-static {v2}, La4/b;->a(Ljava/lang/Class;)Ls4/b;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-static {v2}, La4/b;->a(Ljava/lang/Class;)Ls4/b;

    move-result-object v2

    invoke-virtual {v2}, Ls4/b;->g()Ls4/c;

    move-result-object v2

    const-string v4, "fileClass.classId.packageFqName"

    invoke-static {v2, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, LZ3/c;->b:Lm4/b;

    sget-object v5, Lm4/a;->j:Lm4/a;

    iget-object v6, v4, Lm4/b;->a:Lm4/a;

    if-ne v6, v5, :cond_5

    const/4 v7, 0x0

    if-ne v6, v5, :cond_1

    iget-object v4, v4, Lm4/b;->c:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v4, v7

    :goto_0
    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v4}, Lr3/h;->b0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    :goto_1
    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    sget-object v7, Lr3/r;->d:Lr3/r;

    :goto_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, LA4/b;->c(Ljava/lang/String;)LA4/b;

    move-result-object v6

    new-instance v7, Ls4/c;

    const/16 v8, 0x2e

    iget-object v6, v6, LA4/b;->a:Ljava/lang/String;

    const/16 v9, 0x2f

    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ls4/c;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Ls4/b;->j(Ls4/c;)Ls4/b;

    move-result-object v6

    iget-object v7, p0, Lw0/m;->c:Ljava/lang/Object;

    check-cast v7, LZ3/b;

    invoke-static {v7, v6}, Lj0/s;->v(LZ3/b;Ls4/b;)LZ3/c;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-static {v0}, Lp4/g;->H(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    :cond_6
    new-instance v5, LT3/k;

    iget-object p0, p0, Lw0/m;->b:Ljava/lang/Object;

    check-cast p0, Ll4/c;

    invoke-virtual {p0}, Ll4/c;->c()LF4/i;

    move-result-object v6

    iget-object v6, v6, LF4/i;->b:LU3/x;

    const/4 v7, 0x1

    invoke-direct {v5, v6, v2, v7}, LT3/k;-><init>(LU3/x;Ls4/c;I)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LZ3/c;

    invoke-virtual {p0, v5, v7}, Ll4/c;->a(LU3/B;LZ3/c;)LH4/s;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    invoke-static {v6}, Lr3/j;->P0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "package "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lw0/f;->n(Ljava/lang/String;Ljava/util/List;)LC4/o;

    move-result-object p0

    invoke-virtual {v1, v3, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    move-object v4, v0

    goto :goto_5

    :cond_9
    move-object v4, p0

    :goto_5
    const-string p0, "cache.getOrPut(fileClass\u2026ileClass)\", scopes)\n    }"

    invoke-static {v4, p0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, LC4/o;

    goto :goto_6

    :cond_a
    sget-object v4, LC4/n;->b:LC4/n;

    :goto_6
    return-object v4

    :pswitch_0
    iget-object p0, p0, LO3/H;->e:LO3/I;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, LO3/I;->i:[LL3/l;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, p0, LO3/I;->d:LO3/k0;

    invoke-virtual {v0}, LO3/k0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LZ3/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    iget-object v0, v0, LZ3/c;->b:Lm4/b;

    sget-object v2, Lm4/a;->k:Lm4/a;

    iget-object v3, v0, Lm4/b;->a:Lm4/a;

    if-ne v3, v2, :cond_b

    iget-object v0, v0, Lm4/b;->f:Ljava/lang/String;

    goto :goto_7

    :cond_b
    move-object v0, v1

    :goto_7
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_c

    iget-object p0, p0, LO3/I;->h:LO3/K;

    iget-object p0, p0, LO3/K;->f:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-static {v0, v2, v1}, LV4/u;->k0(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    :cond_c
    return-object v1

    :pswitch_1
    iget-object p0, p0, LO3/H;->e:LO3/I;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, LO3/I;->i:[LL3/l;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object p0, p0, LO3/I;->d:LO3/k0;

    invoke-virtual {p0}, LO3/k0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LZ3/c;

    const/4 v0, 0x0

    if-eqz p0, :cond_d

    iget-object p0, p0, LZ3/c;->b:Lm4/b;

    iget-object v1, p0, Lm4/b;->c:[Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v2, p0, Lm4/b;->e:[Ljava/lang/String;

    if-eqz v2, :cond_d

    invoke-static {v1, v2}, Lr4/h;->h([Ljava/lang/String;[Ljava/lang/String;)Lq3/f;

    move-result-object v0

    iget-object v1, v0, Lq3/f;->d:Ljava/lang/Object;

    check-cast v1, Lr4/g;

    iget-object v0, v0, Lq3/f;->e:Ljava/lang/Object;

    check-cast v0, Ln4/C;

    new-instance v2, Lq3/k;

    iget-object p0, p0, Lm4/b;->b:Lr4/f;

    invoke-direct {v2, v1, v0, p0}, Lq3/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    :cond_d
    return-object v0

    :pswitch_2
    iget-object p0, p0, LO3/H;->e:LO3/I;

    iget-object v0, p0, LO3/I;->h:LO3/K;

    sget-object v1, LO3/I;->i:[LL3/l;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object p0, p0, LO3/I;->e:LO3/k0;

    invoke-virtual {p0}, LO3/k0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LC4/o;

    invoke-virtual {v0, p0, v2}, LO3/z;->h(LC4/o;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object p0, p0, LO3/H;->e:LO3/I;

    iget-object p0, p0, LO3/I;->h:LO3/K;

    iget-object p0, p0, LO3/K;->f:Ljava/lang/Class;

    invoke-static {p0}, LR3/f;->r(Ljava/lang/Class;)LZ3/c;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

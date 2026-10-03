.class public final Lw0/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;

.field public final i:Ljava/lang/Object;

.field public final j:Ljava/lang/Object;

.field public final k:Ljava/lang/Object;

.field public final l:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LU3/w;Landroid/content/ContentResolver;La5/a;La5/b;LZ4/c;La5/a;LZ4/b;LZ4/c;La5/b;La5/b;LZ4/b;LZ4/b;)V
    .locals 1

    const-string v0, "contentUri"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lw0/q;->a:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lw0/q;->b:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lw0/q;->c:Ljava/lang/Object;

    .line 5
    iput-object p4, p0, Lw0/q;->d:Ljava/lang/Object;

    .line 6
    iput-object p5, p0, Lw0/q;->e:Ljava/lang/Object;

    .line 7
    iput-object p6, p0, Lw0/q;->f:Ljava/lang/Object;

    .line 8
    iput-object p7, p0, Lw0/q;->g:Ljava/lang/Object;

    .line 9
    iput-object p8, p0, Lw0/q;->h:Ljava/lang/Object;

    .line 10
    iput-object p9, p0, Lw0/q;->i:Ljava/lang/Object;

    .line 11
    iput-object p10, p0, Lw0/q;->j:Ljava/lang/Object;

    .line 12
    iput-object p11, p0, Lw0/q;->k:Ljava/lang/Object;

    .line 13
    iput-object p12, p0, Lw0/q;->l:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase_Impl;)V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lw0/q;->a:Ljava/lang/Object;

    .line 16
    new-instance v0, Lw0/b;

    const/4 v1, 0x5

    .line 17
    invoke-direct {v0, p1, v1}, Lw0/b;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    .line 18
    iput-object v0, p0, Lw0/q;->b:Ljava/lang/Object;

    .line 19
    new-instance v0, Lw0/h;

    const/16 v1, 0x8

    .line 20
    invoke-direct {v0, p1, v1}, Lw0/h;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    .line 21
    iput-object v0, p0, Lw0/q;->c:Ljava/lang/Object;

    .line 22
    new-instance v0, Lw0/h;

    const/16 v1, 0x9

    .line 23
    invoke-direct {v0, p1, v1}, Lw0/h;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    .line 24
    iput-object v0, p0, Lw0/q;->d:Ljava/lang/Object;

    .line 25
    new-instance v0, Lw0/h;

    const/16 v1, 0xa

    .line 26
    invoke-direct {v0, p1, v1}, Lw0/h;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    .line 27
    iput-object v0, p0, Lw0/q;->e:Ljava/lang/Object;

    .line 28
    new-instance v0, Lw0/h;

    const/16 v1, 0xb

    .line 29
    invoke-direct {v0, p1, v1}, Lw0/h;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    .line 30
    iput-object v0, p0, Lw0/q;->f:Ljava/lang/Object;

    .line 31
    new-instance v0, Lw0/h;

    const/16 v1, 0xc

    .line 32
    invoke-direct {v0, p1, v1}, Lw0/h;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    .line 33
    iput-object v0, p0, Lw0/q;->g:Ljava/lang/Object;

    .line 34
    new-instance v0, Lw0/h;

    const/16 v1, 0xd

    .line 35
    invoke-direct {v0, p1, v1}, Lw0/h;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    .line 36
    iput-object v0, p0, Lw0/q;->h:Ljava/lang/Object;

    .line 37
    new-instance v0, Lw0/h;

    const/16 v1, 0xe

    .line 38
    invoke-direct {v0, p1, v1}, Lw0/h;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    .line 39
    iput-object v0, p0, Lw0/q;->i:Ljava/lang/Object;

    .line 40
    new-instance v0, Lw0/h;

    const/16 v1, 0xf

    .line 41
    invoke-direct {v0, p1, v1}, Lw0/h;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    .line 42
    iput-object v0, p0, Lw0/q;->j:Ljava/lang/Object;

    .line 43
    new-instance v0, Lw0/h;

    const/4 v1, 0x4

    .line 44
    invoke-direct {v0, p1, v1}, Lw0/h;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    .line 45
    iput-object v0, p0, Lw0/q;->k:Ljava/lang/Object;

    .line 46
    new-instance v0, Lw0/h;

    const/4 v1, 0x5

    .line 47
    invoke-direct {v0, p1, v1}, Lw0/h;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    .line 48
    iput-object v0, p0, Lw0/q;->l:Ljava/lang/Object;

    .line 49
    new-instance p0, Lw0/h;

    const/4 v0, 0x6

    .line 50
    invoke-direct {p0, p1, v0}, Lw0/h;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    .line 51
    new-instance p0, Lw0/h;

    const/4 v0, 0x7

    .line 52
    invoke-direct {p0, p1, v0}, Lw0/h;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    return-void
.end method


# virtual methods
.method public a(Ln/f;)V
    .locals 8

    invoke-virtual {p1}, Ln/f;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ln/c;

    iget-object v1, v0, Ln/c;->d:Ln/f;

    invoke-virtual {v1}, Ln/j;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget v2, p1, Ln/j;->f:I

    const/16 v3, 0x3e7

    const/4 v4, 0x0

    if-le v2, v3, :cond_4

    new-instance v0, Ln/f;

    invoke-direct {v0, v3}, Ln/j;-><init>(I)V

    iget v1, p1, Ln/j;->f:I

    move v2, v4

    move v5, v2

    :cond_1
    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p1, v2}, Ln/j;->f(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ln/j;->i(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v0, v6, v7}, Ln/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x1

    if-ne v5, v3, :cond_1

    invoke-virtual {p0, v0}, Lw0/q;->a(Ln/f;)V

    new-instance v0, Ln/f;

    invoke-direct {v0, v3}, Ln/j;-><init>(I)V

    move v5, v4

    goto :goto_0

    :cond_2
    if-lez v5, :cond_3

    invoke-virtual {p0, v0}, Lw0/q;->a(Ln/f;)V

    :cond_3
    return-void

    :cond_4
    const-string v2, "SELECT `progress`,`work_spec_id` FROM `WorkProgress` WHERE `work_spec_id` IN ("

    invoke-static {v2}, Lq/e;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Ln/j;->f:I

    invoke-static {v2, v1}, La4/x;->m(Ljava/lang/StringBuilder;I)V

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, La0/m;->h(ILjava/lang/String;)La0/m;

    move-result-object v1

    invoke-virtual {v0}, Ln/c;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x1

    :goto_1
    move-object v3, v0

    check-cast v3, Ln/b;

    invoke-virtual {v3}, Ln/b;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v3}, Ln/b;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_5

    invoke-virtual {v1, v2}, La0/m;->E(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v2, v3}, La0/m;->q(ILjava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    iget-object p0, p0, Lw0/q;->a:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-static {p0, v1, v4}, La4/x;->S(Landroidx/work/impl/WorkDatabase;La0/m;Z)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    const-string v0, "work_spec_id"

    invoke-static {p0, v0}, La4/x;->u(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-void

    :cond_7
    :goto_3
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ln/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    invoke-interface {p0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    goto :goto_4

    :cond_8
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    :goto_4
    invoke-static {v2}, Ln0/g;->a([B)Ln0/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_9
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-void

    :goto_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1
.end method

.method public b(Ln/f;)V
    .locals 8

    invoke-virtual {p1}, Ln/f;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ln/c;

    iget-object v1, v0, Ln/c;->d:Ln/f;

    invoke-virtual {v1}, Ln/j;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget v2, p1, Ln/j;->f:I

    const/16 v3, 0x3e7

    const/4 v4, 0x0

    if-le v2, v3, :cond_4

    new-instance v0, Ln/f;

    invoke-direct {v0, v3}, Ln/j;-><init>(I)V

    iget v1, p1, Ln/j;->f:I

    move v2, v4

    move v5, v2

    :cond_1
    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p1, v2}, Ln/j;->f(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ln/j;->i(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v0, v6, v7}, Ln/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x1

    if-ne v5, v3, :cond_1

    invoke-virtual {p0, v0}, Lw0/q;->b(Ln/f;)V

    new-instance v0, Ln/f;

    invoke-direct {v0, v3}, Ln/j;-><init>(I)V

    move v5, v4

    goto :goto_0

    :cond_2
    if-lez v5, :cond_3

    invoke-virtual {p0, v0}, Lw0/q;->b(Ln/f;)V

    :cond_3
    return-void

    :cond_4
    const-string v2, "SELECT `tag`,`work_spec_id` FROM `WorkTag` WHERE `work_spec_id` IN ("

    invoke-static {v2}, Lq/e;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Ln/j;->f:I

    invoke-static {v2, v1}, La4/x;->m(Ljava/lang/StringBuilder;I)V

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, La0/m;->h(ILjava/lang/String;)La0/m;

    move-result-object v1

    invoke-virtual {v0}, Ln/c;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x1

    :goto_1
    move-object v3, v0

    check-cast v3, Ln/b;

    invoke-virtual {v3}, Ln/b;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v3}, Ln/b;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_5

    invoke-virtual {v1, v2}, La0/m;->E(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v2, v3}, La0/m;->q(ILjava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    iget-object p0, p0, Lw0/q;->a:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-static {p0, v1, v4}, La4/x;->S(Landroidx/work/impl/WorkDatabase;La0/m;Z)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    const-string v0, "work_spec_id"

    invoke-static {p0, v0}, La4/x;->u(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-void

    :cond_7
    :goto_3
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ln/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    invoke-interface {p0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    goto :goto_4

    :cond_8
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_9
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-void

    :goto_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1
.end method

.method public c(Ljava/lang/String;)Lb5/b;
    .locals 27

    move-object/from16 v1, p0

    iget-object v0, v1, Lw0/q;->i:Ljava/lang/Object;

    check-cast v0, La5/b;

    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "COL_WEATHER_KEY=\"%s\""

    invoke-static {v3, v2}, LR3/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v2, v0, La5/b;->a:LU3/w;

    const-string v10, "weatherinfo"

    invoke-static {v2, v10}, Lj0/s;->d(LU3/w;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v2, "COL_WEATHER_KEY"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    iget-object v4, v0, La5/b;->b:Landroid/content/ContentResolver;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    sget-object v5, Lq3/m;->a:Lq3/m;

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v4, :cond_2

    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    move v0, v7

    :goto_0
    move v8, v0

    move-object v0, v5

    goto :goto_2

    :goto_1
    :try_start_1
    invoke-static {v0}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object v0

    move v8, v7

    :goto_2
    invoke-static {v0}, Lq3/h;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v9, "Cursor2WeatherExist"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_4

    :cond_1
    :goto_3
    invoke-static {v4, v6}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_5

    :goto_4
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v0

    move-object v2, v0

    invoke-static {v4, v1}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_2
    move v8, v7

    :goto_5
    if-lez v8, :cond_3

    const/4 v7, 0x1

    :cond_3
    if-nez v7, :cond_4

    goto/16 :goto_3a

    :cond_4
    iget-object v0, v1, Lw0/q;->c:Ljava/lang/Object;

    check-cast v0, La5/a;

    iget-object v4, v0, La5/a;->a:LU3/w;

    invoke-static {v4, v10}, Lj0/s;->d(LU3/w;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, LR3/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    iget-object v11, v0, La5/a;->b:Landroid/content/ContentResolver;

    const-string v16, "COL_WEATHER_ORDER ASC"

    const/4 v13, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_7

    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v4}, La5/a;->b(Landroid/database/Cursor;)Lc5/e;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    invoke-static {v4, v6}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v4, v0

    goto :goto_b

    :catchall_3
    move-exception v0

    goto :goto_6

    :cond_5
    move-object v0, v5

    goto :goto_7

    :goto_6
    :try_start_4
    invoke-static {v0}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object v0

    :goto_7
    invoke-static {v0}, Lq3/h;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v7, "Cursor2Forecast"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object v1, v0

    goto :goto_9

    :cond_6
    :goto_8
    invoke-static {v4, v6}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_a

    :goto_9
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :catchall_5
    move-exception v0

    move-object v2, v0

    invoke-static {v4, v1}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_7
    :goto_a
    move-object v4, v6

    :goto_b
    iget-object v0, v1, Lw0/q;->e:Ljava/lang/Object;

    check-cast v0, LZ4/c;

    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v3, v7}, LR3/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, v0, LZ4/c;->a:LU3/w;

    const-string v9, "weatherinfo_hour"

    invoke-static {v8, v9}, Lj0/s;->d(LU3/w;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v8, v0, LZ4/c;->b:Landroid/content/ContentResolver;

    const-string v13, "COL_HOURLY_TIME"

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_a

    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_c
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {v8}, LZ4/c;->d(Landroid/database/Cursor;)Lc5/f;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_c

    :catchall_6
    move-exception v0

    goto :goto_d

    :cond_8
    move-object v0, v5

    goto :goto_e

    :goto_d
    :try_start_7
    invoke-static {v0}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object v0

    :goto_e
    invoke-static {v0}, Lq3/h;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v9, "Cursor2Hourly"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_f

    :catchall_7
    move-exception v0

    move-object v1, v0

    goto :goto_10

    :cond_9
    :goto_f
    invoke-static {v8, v6}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_11

    :goto_10
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    :catchall_8
    move-exception v0

    move-object v2, v0

    invoke-static {v8, v1}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_a
    :goto_11
    iget-object v0, v1, Lw0/q;->d:Ljava/lang/Object;

    check-cast v0, La5/b;

    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v3, v8}, LR3/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, v0, La5/b;->a:LU3/w;

    const-string v10, "weatherinfo_daily"

    invoke-static {v9, v10}, Lj0/s;->d(LU3/w;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v9, v0, La5/b;->b:Landroid/content/ContentResolver;

    const-string v14, "COL_DAILY_TIME ASC"

    const/4 v11, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_d

    :try_start_9
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_12
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {v9}, La5/b;->a(Landroid/database/Cursor;)Lc5/c;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    goto :goto_12

    :catchall_9
    move-exception v0

    goto :goto_13

    :cond_b
    move-object v0, v5

    goto :goto_14

    :goto_13
    :try_start_a
    invoke-static {v0}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object v0

    :goto_14
    invoke-static {v0}, Lq3/h;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string v10, "Cursor2Daily"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    goto :goto_15

    :catchall_a
    move-exception v0

    move-object v1, v0

    goto :goto_16

    :cond_c
    :goto_15
    invoke-static {v9, v6}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_17

    :goto_16
    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    :catchall_b
    move-exception v0

    move-object v2, v0

    invoke-static {v9, v1}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_d
    :goto_17
    iget-object v0, v1, Lw0/q;->f:Ljava/lang/Object;

    check-cast v0, La5/a;

    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v3, v9}, LR3/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iget-object v9, v0, La5/a;->a:LU3/w;

    const-string v10, "weatherinfo_life"

    invoke-static {v9, v10}, Lj0/s;->d(LU3/w;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, v0, La5/a;->b:Landroid/content/ContentResolver;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_10

    :try_start_c
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_e

    :goto_18
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {v10}, La5/a;->c(Landroid/database/Cursor;)Lc5/g;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    goto :goto_18

    :catchall_c
    move-exception v0

    goto :goto_19

    :cond_e
    move-object v0, v5

    goto :goto_1a

    :goto_19
    :try_start_d
    invoke-static {v0}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object v0

    :goto_1a
    invoke-static {v0}, Lq3/h;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v11, "Cursor2LifeIndex"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    goto :goto_1b

    :catchall_d
    move-exception v0

    move-object v1, v0

    goto :goto_1c

    :cond_f
    :goto_1b
    invoke-static {v10, v6}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_1d

    :goto_1c
    :try_start_e
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v0

    move-object v2, v0

    invoke-static {v10, v1}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_10
    :goto_1d
    iget-object v0, v1, Lw0/q;->g:Ljava/lang/Object;

    check-cast v0, LZ4/b;

    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v3, v10}, LR3/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    iget-object v10, v0, LZ4/b;->a:LU3/w;

    const-string v11, "alert"

    invoke-static {v10, v11}, Lj0/s;->d(LU3/w;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, v0, LZ4/b;->b:Landroid/content/ContentResolver;

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_13

    :try_start_f
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_11

    :goto_1e
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {v11}, LZ4/b;->b(Landroid/database/Cursor;)Lc5/a;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    goto :goto_1e

    :catchall_f
    move-exception v0

    goto :goto_1f

    :cond_11
    move-object v0, v5

    goto :goto_20

    :goto_1f
    :try_start_10
    invoke-static {v0}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object v0

    :goto_20
    invoke-static {v0}, Lq3/h;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v12, "Cursor2Alert"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    goto :goto_21

    :catchall_10
    move-exception v0

    move-object v1, v0

    goto :goto_22

    :cond_12
    :goto_21
    invoke-static {v11, v6}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_23

    :goto_22
    :try_start_11
    throw v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    :catchall_11
    move-exception v0

    move-object v2, v0

    invoke-static {v11, v1}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_13
    :goto_23
    iget-object v0, v1, Lw0/q;->h:Ljava/lang/Object;

    check-cast v0, LZ4/c;

    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v3, v11}, LR3/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    iget-object v11, v0, LZ4/c;->a:LU3/w;

    const-string v12, "content"

    invoke-static {v11, v12}, Lj0/s;->d(LU3/w;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v12, v0, LZ4/c;->b:Landroid/content/ContentResolver;

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_16

    :try_start_12
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_14

    :goto_24
    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {v12}, LZ4/c;->c(Landroid/database/Cursor;)Lc5/b;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    goto :goto_24

    :catchall_12
    move-exception v0

    goto :goto_25

    :cond_14
    move-object v0, v5

    goto :goto_26

    :goto_25
    :try_start_13
    invoke-static {v0}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object v0

    :goto_26
    invoke-static {v0}, Lq3/h;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_15

    const-string v13, "Cursor2Content"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    goto :goto_27

    :catchall_13
    move-exception v0

    move-object v1, v0

    goto :goto_28

    :cond_15
    :goto_27
    invoke-static {v12, v6}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_29

    :goto_28
    :try_start_14
    throw v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_14

    :catchall_14
    move-exception v0

    move-object v2, v0

    invoke-static {v12, v1}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_16
    :goto_29
    iget-object v0, v1, Lw0/q;->j:Ljava/lang/Object;

    check-cast v0, La5/b;

    iget-object v12, v0, La5/b;->a:LU3/w;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v13, "weatherinfo_insight"

    invoke-static {v12, v13}, Lj0/s;->d(LU3/w;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const-string v12, "COL_WEATHER_KEY=\""

    const-string v14, "\""

    move-object/from16 v6, p1

    invoke-static {v12, v6, v14}, LB/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    iget-object v14, v0, La5/b;->b:Landroid/content/ContentResolver;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_19

    :try_start_15
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_17

    :goto_2a
    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {v12}, La5/b;->b(Landroid/database/Cursor;)Lc5/h;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_15

    goto :goto_2a

    :catchall_15
    move-exception v0

    goto :goto_2b

    :cond_17
    move-object v0, v5

    goto :goto_2c

    :goto_2b
    :try_start_16
    invoke-static {v0}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object v0

    :goto_2c
    invoke-static {v0}, Lq3/h;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_18

    const-string v14, "Cursor2InsightContent"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_16

    :cond_18
    const/4 v14, 0x0

    goto :goto_2d

    :catchall_16
    move-exception v0

    move-object v1, v0

    goto :goto_2e

    :goto_2d
    invoke-static {v12, v14}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_2f

    :goto_2e
    :try_start_17
    throw v1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_17

    :catchall_17
    move-exception v0

    move-object v2, v0

    invoke-static {v12, v1}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_19
    :goto_2f
    iget-object v0, v1, Lw0/q;->k:Ljava/lang/Object;

    check-cast v0, LZ4/b;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iget-object v12, v0, LZ4/b;->a:LU3/w;

    const-string v15, "weatherinfo_lifestyle"

    invoke-static {v12, v15}, Lj0/s;->d(LU3/w;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v3, v12}, LR3/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    iget-object v0, v0, LZ4/b;->b:Landroid/content/ContentResolver;

    const/16 v22, 0x0

    const/16 v24, 0x0

    const-string v25, "COL_LIFESTYLE_TYPE ASC"

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v25}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_1c

    :try_start_18
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1a

    :goto_30
    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {v12}, LZ4/b;->c(Landroid/database/Cursor;)Lc5/i;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_18

    goto :goto_30

    :catchall_18
    move-exception v0

    goto :goto_31

    :cond_1a
    move-object v0, v5

    goto :goto_32

    :goto_31
    :try_start_19
    invoke-static {v0}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object v0

    :goto_32
    invoke-static {v0}, Lq3/h;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1b

    const-string v15, "Cursor2LifeStyle"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_19

    :cond_1b
    const/4 v15, 0x0

    goto :goto_33

    :catchall_19
    move-exception v0

    move-object v1, v0

    goto :goto_34

    :goto_33
    invoke-static {v12, v15}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_35

    :goto_34
    :try_start_1a
    throw v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1a

    :catchall_1a
    move-exception v0

    move-object v2, v0

    invoke-static {v12, v1}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_1c
    :goto_35
    iget-object v0, v1, Lw0/q;->l:Ljava/lang/Object;

    check-cast v0, LZ4/b;

    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, LR3/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    iget-object v1, v0, LZ4/b;->a:LU3/w;

    const-string v3, "forecast_change"

    invoke-static {v1, v3}, Lj0/s;->d(LU3/w;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    iget-object v0, v0, LZ4/b;->b:Landroid/content/ContentResolver;

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v25}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1f

    :try_start_1b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance v0, Lc5/d;

    invoke-static {v1, v2}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v2, "COL_FORECAST_CHANGE_UUID"

    invoke-static {v1, v2}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v2, "COL_FORECAST_CHANGE_TITLE"

    invoke-static {v1, v2}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v2, "COL_FORECAST_CHANGE_DESCRIPTION"

    invoke-static {v1, v2}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v2, "COL_FORECAST_CHANGE_EXPIRE_TIME"

    invoke-static {v1, v2}, Lj0/s;->t(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v25

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v26}, Lc5/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1b

    goto :goto_36

    :catchall_1b
    move-exception v0

    :try_start_1c
    invoke-static {v0}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object v5

    :cond_1d
    const/4 v0, 0x0

    :goto_36
    invoke-static {v5}, Lq3/h;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1e

    const-string v3, "Cursor2ForecastChange"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1c

    :cond_1e
    const/4 v2, 0x0

    goto :goto_37

    :catchall_1c
    move-exception v0

    move-object v2, v0

    goto :goto_38

    :goto_37
    invoke-static {v1, v2}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v12, v0

    goto :goto_39

    :goto_38
    :try_start_1d
    throw v2
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1d

    :catchall_1d
    move-exception v0

    move-object v3, v0

    invoke-static {v1, v2}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    :cond_1f
    const/4 v2, 0x0

    move-object v12, v2

    :goto_39
    new-instance v0, Lb5/b;

    move-object v5, v0

    move-object v6, v4

    invoke-direct/range {v5 .. v14}, Lb5/b;-><init>(Lc5/e;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lc5/d;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object v6, v0

    :goto_3a
    return-object v6
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lw0/q;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->b()V

    iget-object p0, p0, Lw0/q;->d:Ljava/lang/Object;

    check-cast p0, Lw0/h;

    invoke-virtual {p0}, LF4/x;->a()Lf0/i;

    move-result-object v1

    const/4 v2, 0x1

    if-nez p1, :cond_0

    invoke-interface {v1, v2}, Le0/d;->E(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v1, v2, p1}, Le0/d;->q(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->c()V

    :try_start_0
    invoke-virtual {v1}, Lf0/i;->a()I

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->k()V

    invoke-virtual {p0, v1}, LF4/x;->h(Lf0/i;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->k()V

    invoke-virtual {p0, v1}, LF4/x;->h(Lf0/i;)V

    throw p1
.end method

.method public e()Ljava/util/ArrayList;
    .locals 71

    const-string v0, "SELECT * FROM workspec WHERE state=0 ORDER BY last_enqueue_time LIMIT ?"

    const/4 v1, 0x1

    invoke-static {v1, v0}, La0/m;->h(ILjava/lang/String;)La0/m;

    move-result-object v2

    const/16 v0, 0xc8

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, La0/m;->s(IJ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lw0/q;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->b()V

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, La4/x;->S(Landroidx/work/impl/WorkDatabase;La0/m;Z)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "id"

    invoke-static {v4, v0}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "state"

    invoke-static {v4, v5}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "worker_class_name"

    invoke-static {v4, v6}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "input_merger_class_name"

    invoke-static {v4, v7}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "input"

    invoke-static {v4, v8}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "output"

    invoke-static {v4, v9}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "initial_delay"

    invoke-static {v4, v10}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "interval_duration"

    invoke-static {v4, v11}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "flex_duration"

    invoke-static {v4, v12}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "run_attempt_count"

    invoke-static {v4, v13}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "backoff_policy"

    invoke-static {v4, v14}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "backoff_delay_duration"

    invoke-static {v4, v15}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v1, "last_enqueue_time"

    invoke-static {v4, v1}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v3, "minimum_retention_duration"

    invoke-static {v4, v3}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    const-string v2, "schedule_requested_at"

    invoke-static {v4, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "run_in_foreground"

    invoke-static {v4, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "out_of_quota_policy"

    invoke-static {v4, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "period_count"

    invoke-static {v4, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "generation"

    invoke-static {v4, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "required_network_type"

    invoke-static {v4, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "requires_charging"

    invoke-static {v4, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "requires_device_idle"

    invoke-static {v4, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "requires_battery_not_low"

    invoke-static {v4, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "requires_storage_not_low"

    invoke-static {v4, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    const-string v2, "trigger_content_update_delay"

    invoke-static {v4, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v27, v2

    const-string v2, "trigger_max_content_delay"

    invoke-static {v4, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v28, v2

    const-string v2, "content_uri_triggers"

    invoke-static {v4, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v29, v2

    new-instance v2, Ljava/util/ArrayList;

    move/from16 v30, v3

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    const/16 v31, 0x0

    if-eqz v3, :cond_0

    move-object/from16 v33, v31

    goto :goto_1

    :cond_0
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v33, v3

    :goto_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lp4/g;->E(I)I

    move-result v34

    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v35, v31

    goto :goto_2

    :cond_1
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v35, v3

    :goto_2
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v36, v31

    goto :goto_3

    :cond_2
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v36, v3

    :goto_3
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v3, v31

    goto :goto_4

    :cond_3
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    :goto_4
    invoke-static {v3}, Ln0/g;->a([B)Ln0/g;

    move-result-object v37

    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v3, v31

    goto :goto_5

    :cond_4
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    :goto_5
    invoke-static {v3}, Ln0/g;->a([B)Ln0/g;

    move-result-object v38

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v39

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v43

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v46

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lp4/g;->B(I)I

    move-result v47

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v48

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v50

    move/from16 v3, v30

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v52

    move/from16 v30, v0

    move/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v54

    move/from16 v17, v0

    move/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    if-eqz v18, :cond_5

    move/from16 v18, v0

    move/from16 v0, v19

    const/16 v56, 0x1

    goto :goto_6

    :cond_5
    move/from16 v18, v0

    move/from16 v0, v19

    const/16 v56, 0x0

    :goto_6
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Lp4/g;->D(I)I

    move-result v57

    move/from16 v19, v0

    move/from16 v0, v20

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v20, v0

    move/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v59

    move/from16 v21, v0

    move/from16 v0, v22

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    invoke-static/range {v22 .. v22}, Lp4/g;->C(I)I

    move-result v61

    move/from16 v22, v0

    move/from16 v0, v23

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    if-eqz v23, :cond_6

    move/from16 v23, v0

    move/from16 v0, v24

    const/16 v62, 0x1

    goto :goto_7

    :cond_6
    move/from16 v23, v0

    move/from16 v0, v24

    const/16 v62, 0x0

    :goto_7
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    if-eqz v24, :cond_7

    move/from16 v24, v0

    move/from16 v0, v25

    const/16 v63, 0x1

    goto :goto_8

    :cond_7
    move/from16 v24, v0

    move/from16 v0, v25

    const/16 v63, 0x0

    :goto_8
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    if-eqz v25, :cond_8

    move/from16 v25, v0

    move/from16 v0, v26

    const/16 v64, 0x1

    goto :goto_9

    :cond_8
    move/from16 v25, v0

    move/from16 v0, v26

    const/16 v64, 0x0

    :goto_9
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    if-eqz v26, :cond_9

    move/from16 v26, v0

    move/from16 v0, v27

    const/16 v65, 0x1

    goto :goto_a

    :cond_9
    move/from16 v26, v0

    move/from16 v0, v27

    const/16 v65, 0x0

    :goto_a
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v66

    move/from16 v27, v0

    move/from16 v0, v28

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v68

    move/from16 v28, v0

    move/from16 v0, v29

    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v29

    if-eqz v29, :cond_a

    goto :goto_b

    :cond_a
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v31

    :goto_b
    invoke-static/range {v31 .. v31}, Lp4/g;->h([B)Ljava/util/LinkedHashSet;

    move-result-object v70

    new-instance v45, Ln0/e;

    move-object/from16 v60, v45

    invoke-direct/range {v60 .. v70}, Ln0/e;-><init>(IZZZZJJLjava/util/Set;)V

    move/from16 v29, v0

    new-instance v0, Lw0/p;

    move-object/from16 v32, v0

    invoke-direct/range {v32 .. v59}, Lw0/p;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ln0/g;Ln0/g;JJJLn0/e;IIJJJJZIII)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v0, v30

    move/from16 v30, v3

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_c

    :cond_b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, La0/m;->j()V

    return-object v2

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    :goto_c
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, La0/m;->j()V

    throw v0
.end method

.method public f(I)Ljava/util/ArrayList;
    .locals 70

    const-string v0, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY last_enqueue_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND state NOT IN (2, 3, 5))"

    const/4 v1, 0x1

    invoke-static {v1, v0}, La0/m;->h(ILjava/lang/String;)La0/m;

    move-result-object v2

    move/from16 v0, p1

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, La0/m;->s(IJ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lw0/q;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->b()V

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, La4/x;->S(Landroidx/work/impl/WorkDatabase;La0/m;Z)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "id"

    invoke-static {v4, v0}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "state"

    invoke-static {v4, v5}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "worker_class_name"

    invoke-static {v4, v6}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "input_merger_class_name"

    invoke-static {v4, v7}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "input"

    invoke-static {v4, v8}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "output"

    invoke-static {v4, v9}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "initial_delay"

    invoke-static {v4, v10}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "interval_duration"

    invoke-static {v4, v11}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "flex_duration"

    invoke-static {v4, v12}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "run_attempt_count"

    invoke-static {v4, v13}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "backoff_policy"

    invoke-static {v4, v14}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "backoff_delay_duration"

    invoke-static {v4, v15}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v1, "last_enqueue_time"

    invoke-static {v4, v1}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v3, "minimum_retention_duration"

    invoke-static {v4, v3}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    const-string v2, "schedule_requested_at"

    invoke-static {v4, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 p1, v2

    const-string v2, "run_in_foreground"

    invoke-static {v4, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "out_of_quota_policy"

    invoke-static {v4, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "period_count"

    invoke-static {v4, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "generation"

    invoke-static {v4, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "required_network_type"

    invoke-static {v4, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "requires_charging"

    invoke-static {v4, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "requires_device_idle"

    invoke-static {v4, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "requires_battery_not_low"

    invoke-static {v4, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "requires_storage_not_low"

    invoke-static {v4, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "trigger_content_update_delay"

    invoke-static {v4, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    const-string v2, "trigger_max_content_delay"

    invoke-static {v4, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v27, v2

    const-string v2, "content_uri_triggers"

    invoke-static {v4, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v28, v2

    new-instance v2, Ljava/util/ArrayList;

    move/from16 v29, v3

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    const/16 v30, 0x0

    if-eqz v3, :cond_0

    move-object/from16 v32, v30

    goto :goto_1

    :cond_0
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v32, v3

    :goto_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lp4/g;->E(I)I

    move-result v33

    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v34, v30

    goto :goto_2

    :cond_1
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v34, v3

    :goto_2
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v35, v30

    goto :goto_3

    :cond_2
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v35, v3

    :goto_3
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v3, v30

    goto :goto_4

    :cond_3
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    :goto_4
    invoke-static {v3}, Ln0/g;->a([B)Ln0/g;

    move-result-object v36

    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v3, v30

    goto :goto_5

    :cond_4
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    :goto_5
    invoke-static {v3}, Ln0/g;->a([B)Ln0/g;

    move-result-object v37

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v45

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lp4/g;->B(I)I

    move-result v46

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v47

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v49

    move/from16 v3, v29

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v51

    move/from16 v29, v0

    move/from16 v0, p1

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v53

    move/from16 p1, v0

    move/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    if-eqz v17, :cond_5

    move/from16 v17, v0

    move/from16 v0, v18

    const/16 v55, 0x1

    goto :goto_6

    :cond_5
    move/from16 v17, v0

    move/from16 v0, v18

    const/16 v55, 0x0

    :goto_6
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Lp4/g;->D(I)I

    move-result v56

    move/from16 v18, v0

    move/from16 v0, v19

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v57

    move/from16 v19, v0

    move/from16 v0, v20

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v20, v0

    move/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    invoke-static/range {v21 .. v21}, Lp4/g;->C(I)I

    move-result v60

    move/from16 v21, v0

    move/from16 v0, v22

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    if-eqz v22, :cond_6

    move/from16 v22, v0

    move/from16 v0, v23

    const/16 v61, 0x1

    goto :goto_7

    :cond_6
    move/from16 v22, v0

    move/from16 v0, v23

    const/16 v61, 0x0

    :goto_7
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    if-eqz v23, :cond_7

    move/from16 v23, v0

    move/from16 v0, v24

    const/16 v62, 0x1

    goto :goto_8

    :cond_7
    move/from16 v23, v0

    move/from16 v0, v24

    const/16 v62, 0x0

    :goto_8
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    if-eqz v24, :cond_8

    move/from16 v24, v0

    move/from16 v0, v25

    const/16 v63, 0x1

    goto :goto_9

    :cond_8
    move/from16 v24, v0

    move/from16 v0, v25

    const/16 v63, 0x0

    :goto_9
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    if-eqz v25, :cond_9

    move/from16 v25, v0

    move/from16 v0, v26

    const/16 v64, 0x1

    goto :goto_a

    :cond_9
    move/from16 v25, v0

    move/from16 v0, v26

    const/16 v64, 0x0

    :goto_a
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v65

    move/from16 v26, v0

    move/from16 v0, v27

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v67

    move/from16 v27, v0

    move/from16 v0, v28

    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_a

    goto :goto_b

    :cond_a
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v30

    :goto_b
    invoke-static/range {v30 .. v30}, Lp4/g;->h([B)Ljava/util/LinkedHashSet;

    move-result-object v69

    new-instance v44, Ln0/e;

    move-object/from16 v59, v44

    invoke-direct/range {v59 .. v69}, Ln0/e;-><init>(IZZZZJJLjava/util/Set;)V

    move/from16 v28, v0

    new-instance v0, Lw0/p;

    move-object/from16 v31, v0

    invoke-direct/range {v31 .. v58}, Lw0/p;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ln0/g;Ln0/g;JJJLn0/e;IIJJJJZIII)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v0, v29

    move/from16 v29, v3

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_c

    :cond_b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, La0/m;->j()V

    return-object v2

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    :goto_c
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, La0/m;->j()V

    throw v0
.end method

.method public g()Ljava/util/ArrayList;
    .locals 70

    const-string v0, "SELECT * FROM workspec WHERE state=1"

    const/4 v1, 0x0

    invoke-static {v1, v0}, La0/m;->h(ILjava/lang/String;)La0/m;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lw0/q;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->b()V

    invoke-static {v0, v2, v1}, La4/x;->S(Landroidx/work/impl/WorkDatabase;La0/m;Z)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "id"

    invoke-static {v3, v0}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "state"

    invoke-static {v3, v4}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "worker_class_name"

    invoke-static {v3, v5}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "input_merger_class_name"

    invoke-static {v3, v6}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "input"

    invoke-static {v3, v7}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "output"

    invoke-static {v3, v8}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "initial_delay"

    invoke-static {v3, v9}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "interval_duration"

    invoke-static {v3, v10}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "flex_duration"

    invoke-static {v3, v11}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "run_attempt_count"

    invoke-static {v3, v12}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "backoff_policy"

    invoke-static {v3, v13}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "backoff_delay_duration"

    invoke-static {v3, v14}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "last_enqueue_time"

    invoke-static {v3, v15}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v1, "minimum_retention_duration"

    invoke-static {v3, v1}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    const-string v2, "schedule_requested_at"

    invoke-static {v3, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 p0, v2

    const-string v2, "run_in_foreground"

    invoke-static {v3, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "out_of_quota_policy"

    invoke-static {v3, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "period_count"

    invoke-static {v3, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "generation"

    invoke-static {v3, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "required_network_type"

    invoke-static {v3, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "requires_charging"

    invoke-static {v3, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "requires_device_idle"

    invoke-static {v3, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "requires_battery_not_low"

    invoke-static {v3, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "requires_storage_not_low"

    invoke-static {v3, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "trigger_content_update_delay"

    invoke-static {v3, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    const-string v2, "trigger_max_content_delay"

    invoke-static {v3, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v27, v2

    const-string v2, "content_uri_triggers"

    invoke-static {v3, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v28, v2

    new-instance v2, Ljava/util/ArrayList;

    move/from16 v29, v1

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    const/16 v30, 0x0

    if-eqz v1, :cond_0

    move-object/from16 v32, v30

    goto :goto_1

    :cond_0
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v32, v1

    :goto_1
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lp4/g;->E(I)I

    move-result v33

    invoke-interface {v3, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v34, v30

    goto :goto_2

    :cond_1
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v34, v1

    :goto_2
    invoke-interface {v3, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v35, v30

    goto :goto_3

    :cond_2
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v35, v1

    :goto_3
    invoke-interface {v3, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v1, v30

    goto :goto_4

    :cond_3
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    :goto_4
    invoke-static {v1}, Ln0/g;->a([B)Ln0/g;

    move-result-object v36

    invoke-interface {v3, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v1, v30

    goto :goto_5

    :cond_4
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    :goto_5
    invoke-static {v1}, Ln0/g;->a([B)Ln0/g;

    move-result-object v37

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v45

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lp4/g;->B(I)I

    move-result v46

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v47

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v49

    move/from16 v1, v29

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v51

    move/from16 v29, v0

    move/from16 v0, p0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v53

    move/from16 p0, v0

    move/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const/16 v31, 0x1

    if-eqz v17, :cond_5

    move/from16 v17, v0

    move/from16 v0, v18

    move/from16 v55, v31

    goto :goto_6

    :cond_5
    move/from16 v17, v0

    move/from16 v0, v18

    const/16 v55, 0x0

    :goto_6
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Lp4/g;->D(I)I

    move-result v56

    move/from16 v18, v0

    move/from16 v0, v19

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v57

    move/from16 v19, v0

    move/from16 v0, v20

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v20, v0

    move/from16 v0, v21

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    invoke-static/range {v21 .. v21}, Lp4/g;->C(I)I

    move-result v60

    move/from16 v21, v0

    move/from16 v0, v22

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    if-eqz v22, :cond_6

    move/from16 v22, v0

    move/from16 v0, v23

    move/from16 v61, v31

    goto :goto_7

    :cond_6
    move/from16 v22, v0

    move/from16 v0, v23

    const/16 v61, 0x0

    :goto_7
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    if-eqz v23, :cond_7

    move/from16 v23, v0

    move/from16 v0, v24

    move/from16 v62, v31

    goto :goto_8

    :cond_7
    move/from16 v23, v0

    move/from16 v0, v24

    const/16 v62, 0x0

    :goto_8
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    if-eqz v24, :cond_8

    move/from16 v24, v0

    move/from16 v0, v25

    move/from16 v63, v31

    goto :goto_9

    :cond_8
    move/from16 v24, v0

    move/from16 v0, v25

    const/16 v63, 0x0

    :goto_9
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    if-eqz v25, :cond_9

    move/from16 v25, v0

    move/from16 v0, v26

    move/from16 v64, v31

    goto :goto_a

    :cond_9
    move/from16 v25, v0

    move/from16 v0, v26

    const/16 v64, 0x0

    :goto_a
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v65

    move/from16 v26, v0

    move/from16 v0, v27

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v67

    move/from16 v27, v0

    move/from16 v0, v28

    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_a

    goto :goto_b

    :cond_a
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v30

    :goto_b
    invoke-static/range {v30 .. v30}, Lp4/g;->h([B)Ljava/util/LinkedHashSet;

    move-result-object v69

    new-instance v44, Ln0/e;

    move-object/from16 v59, v44

    invoke-direct/range {v59 .. v69}, Ln0/e;-><init>(IZZZZJJLjava/util/Set;)V

    move/from16 v28, v0

    new-instance v0, Lw0/p;

    move-object/from16 v31, v0

    invoke-direct/range {v31 .. v58}, Lw0/p;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ln0/g;Ln0/g;JJJLn0/e;IIJJJJZIII)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v0, v29

    move/from16 v29, v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_c

    :cond_b
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, La0/m;->j()V

    return-object v2

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    :goto_c
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, La0/m;->j()V

    throw v0
.end method

.method public h()Ljava/util/ArrayList;
    .locals 70

    const-string v0, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at<>-1"

    const/4 v1, 0x0

    invoke-static {v1, v0}, La0/m;->h(ILjava/lang/String;)La0/m;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lw0/q;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->b()V

    invoke-static {v0, v2, v1}, La4/x;->S(Landroidx/work/impl/WorkDatabase;La0/m;Z)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "id"

    invoke-static {v3, v0}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "state"

    invoke-static {v3, v4}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "worker_class_name"

    invoke-static {v3, v5}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "input_merger_class_name"

    invoke-static {v3, v6}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "input"

    invoke-static {v3, v7}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "output"

    invoke-static {v3, v8}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "initial_delay"

    invoke-static {v3, v9}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "interval_duration"

    invoke-static {v3, v10}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "flex_duration"

    invoke-static {v3, v11}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "run_attempt_count"

    invoke-static {v3, v12}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "backoff_policy"

    invoke-static {v3, v13}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "backoff_delay_duration"

    invoke-static {v3, v14}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "last_enqueue_time"

    invoke-static {v3, v15}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v1, "minimum_retention_duration"

    invoke-static {v3, v1}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    const-string v2, "schedule_requested_at"

    invoke-static {v3, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 p0, v2

    const-string v2, "run_in_foreground"

    invoke-static {v3, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "out_of_quota_policy"

    invoke-static {v3, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "period_count"

    invoke-static {v3, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "generation"

    invoke-static {v3, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "required_network_type"

    invoke-static {v3, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "requires_charging"

    invoke-static {v3, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "requires_device_idle"

    invoke-static {v3, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "requires_battery_not_low"

    invoke-static {v3, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "requires_storage_not_low"

    invoke-static {v3, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "trigger_content_update_delay"

    invoke-static {v3, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    const-string v2, "trigger_max_content_delay"

    invoke-static {v3, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v27, v2

    const-string v2, "content_uri_triggers"

    invoke-static {v3, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v28, v2

    new-instance v2, Ljava/util/ArrayList;

    move/from16 v29, v1

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    const/16 v30, 0x0

    if-eqz v1, :cond_0

    move-object/from16 v32, v30

    goto :goto_1

    :cond_0
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v32, v1

    :goto_1
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lp4/g;->E(I)I

    move-result v33

    invoke-interface {v3, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v34, v30

    goto :goto_2

    :cond_1
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v34, v1

    :goto_2
    invoke-interface {v3, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v35, v30

    goto :goto_3

    :cond_2
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v35, v1

    :goto_3
    invoke-interface {v3, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v1, v30

    goto :goto_4

    :cond_3
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    :goto_4
    invoke-static {v1}, Ln0/g;->a([B)Ln0/g;

    move-result-object v36

    invoke-interface {v3, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v1, v30

    goto :goto_5

    :cond_4
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    :goto_5
    invoke-static {v1}, Ln0/g;->a([B)Ln0/g;

    move-result-object v37

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v45

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lp4/g;->B(I)I

    move-result v46

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v47

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v49

    move/from16 v1, v29

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v51

    move/from16 v29, v0

    move/from16 v0, p0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v53

    move/from16 p0, v0

    move/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const/16 v31, 0x1

    if-eqz v17, :cond_5

    move/from16 v17, v0

    move/from16 v0, v18

    move/from16 v55, v31

    goto :goto_6

    :cond_5
    move/from16 v17, v0

    move/from16 v0, v18

    const/16 v55, 0x0

    :goto_6
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Lp4/g;->D(I)I

    move-result v56

    move/from16 v18, v0

    move/from16 v0, v19

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v57

    move/from16 v19, v0

    move/from16 v0, v20

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v20, v0

    move/from16 v0, v21

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    invoke-static/range {v21 .. v21}, Lp4/g;->C(I)I

    move-result v60

    move/from16 v21, v0

    move/from16 v0, v22

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    if-eqz v22, :cond_6

    move/from16 v22, v0

    move/from16 v0, v23

    move/from16 v61, v31

    goto :goto_7

    :cond_6
    move/from16 v22, v0

    move/from16 v0, v23

    const/16 v61, 0x0

    :goto_7
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    if-eqz v23, :cond_7

    move/from16 v23, v0

    move/from16 v0, v24

    move/from16 v62, v31

    goto :goto_8

    :cond_7
    move/from16 v23, v0

    move/from16 v0, v24

    const/16 v62, 0x0

    :goto_8
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    if-eqz v24, :cond_8

    move/from16 v24, v0

    move/from16 v0, v25

    move/from16 v63, v31

    goto :goto_9

    :cond_8
    move/from16 v24, v0

    move/from16 v0, v25

    const/16 v63, 0x0

    :goto_9
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    if-eqz v25, :cond_9

    move/from16 v25, v0

    move/from16 v0, v26

    move/from16 v64, v31

    goto :goto_a

    :cond_9
    move/from16 v25, v0

    move/from16 v0, v26

    const/16 v64, 0x0

    :goto_a
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v65

    move/from16 v26, v0

    move/from16 v0, v27

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v67

    move/from16 v27, v0

    move/from16 v0, v28

    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_a

    goto :goto_b

    :cond_a
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v30

    :goto_b
    invoke-static/range {v30 .. v30}, Lp4/g;->h([B)Ljava/util/LinkedHashSet;

    move-result-object v69

    new-instance v44, Ln0/e;

    move-object/from16 v59, v44

    invoke-direct/range {v59 .. v69}, Ln0/e;-><init>(IZZZZJJLjava/util/Set;)V

    move/from16 v28, v0

    new-instance v0, Lw0/p;

    move-object/from16 v31, v0

    invoke-direct/range {v31 .. v58}, Lw0/p;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ln0/g;Ln0/g;JJJLn0/e;IIJJJJZIII)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v0, v29

    move/from16 v29, v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_c

    :cond_b
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, La0/m;->j()V

    return-object v2

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    :goto_c
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, La0/m;->j()V

    throw v0
.end method

.method public i(Ljava/lang/String;)I
    .locals 2

    const-string v0, "SELECT state FROM workspec WHERE id=?"

    const/4 v1, 0x1

    invoke-static {v1, v0}, La0/m;->h(ILjava/lang/String;)La0/m;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, La0/m;->E(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, La0/m;->q(ILjava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lw0/q;->a:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->b()V

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, La4/x;->S(Landroidx/work/impl/WorkDatabase;La0/m;Z)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lp4/g;->E(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, La0/m;->j()V

    return p1

    :goto_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, La0/m;->j()V

    throw p1
.end method

.method public j(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3

    const-string v0, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    const/4 v1, 0x1

    invoke-static {v1, v0}, La0/m;->h(ILjava/lang/String;)La0/m;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, La0/m;->E(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, La0/m;->q(ILjava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lw0/q;->a:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->b()V

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, La4/x;->S(Landroidx/work/impl/WorkDatabase;La0/m;Z)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, La0/m;->j()V

    return-object v1

    :goto_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, La0/m;->j()V

    throw p1
.end method

.method public k(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3

    const-string v0, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)"

    const/4 v1, 0x1

    invoke-static {v1, v0}, La0/m;->h(ILjava/lang/String;)La0/m;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, La0/m;->E(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, La0/m;->q(ILjava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lw0/q;->a:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->b()V

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, La4/x;->S(Landroidx/work/impl/WorkDatabase;La0/m;Z)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, La0/m;->j()V

    return-object v1

    :goto_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, La0/m;->j()V

    throw p1
.end method

.method public l(Ljava/lang/String;)Lw0/p;
    .locals 58

    move-object/from16 v0, p1

    const-string v1, "SELECT * FROM workspec WHERE id=?"

    const/4 v2, 0x1

    invoke-static {v2, v1}, La0/m;->h(ILjava/lang/String;)La0/m;

    move-result-object v1

    if-nez v0, :cond_0

    invoke-virtual {v1, v2}, La0/m;->E(I)V

    :goto_0
    move-object/from16 v0, p0

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v2, v0}, La0/m;->q(ILjava/lang/String;)V

    goto :goto_0

    :goto_1
    iget-object v0, v0, Lw0/q;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->b()V

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, La4/x;->S(Landroidx/work/impl/WorkDatabase;La0/m;Z)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "id"

    invoke-static {v4, v0}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "state"

    invoke-static {v4, v5}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "worker_class_name"

    invoke-static {v4, v6}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "input_merger_class_name"

    invoke-static {v4, v7}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "input"

    invoke-static {v4, v8}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "output"

    invoke-static {v4, v9}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "initial_delay"

    invoke-static {v4, v10}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "interval_duration"

    invoke-static {v4, v11}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "flex_duration"

    invoke-static {v4, v12}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "run_attempt_count"

    invoke-static {v4, v13}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "backoff_policy"

    invoke-static {v4, v14}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "backoff_delay_duration"

    invoke-static {v4, v15}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "last_enqueue_time"

    invoke-static {v4, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "minimum_retention_duration"

    invoke-static {v4, v3}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    :try_start_1
    const-string v1, "schedule_requested_at"

    invoke-static {v4, v1}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 p1, v1

    const-string v1, "run_in_foreground"

    invoke-static {v4, v1}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "out_of_quota_policy"

    invoke-static {v4, v1}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "period_count"

    invoke-static {v4, v1}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "generation"

    invoke-static {v4, v1}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    const-string v1, "required_network_type"

    invoke-static {v4, v1}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v21, v1

    const-string v1, "requires_charging"

    invoke-static {v4, v1}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v22, v1

    const-string v1, "requires_device_idle"

    invoke-static {v4, v1}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v23, v1

    const-string v1, "requires_battery_not_low"

    invoke-static {v4, v1}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v24, v1

    const-string v1, "requires_storage_not_low"

    invoke-static {v4, v1}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v25, v1

    const-string v1, "trigger_content_update_delay"

    invoke-static {v4, v1}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v26, v1

    const-string v1, "trigger_max_content_delay"

    invoke-static {v4, v1}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v27, v1

    const-string v1, "content_uri_triggers"

    invoke-static {v4, v1}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v28

    const/16 v29, 0x0

    if-eqz v28, :cond_c

    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_1

    move-object/from16 v31, v29

    goto :goto_2

    :cond_1
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v31, v0

    :goto_2
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lp4/g;->E(I)I

    move-result v32

    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v33, v29

    goto :goto_3

    :cond_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v33, v0

    :goto_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v34, v29

    goto :goto_4

    :cond_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v34, v0

    :goto_4
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object/from16 v0, v29

    goto :goto_5

    :cond_4
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    :goto_5
    invoke-static {v0}, Ln0/g;->a([B)Ln0/g;

    move-result-object v35

    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v0, v29

    goto :goto_6

    :cond_5
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    :goto_6
    invoke-static {v0}, Ln0/g;->a([B)Ln0/g;

    move-result-object v36

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v39

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v44

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lp4/g;->B(I)I

    move-result v45

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v46

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v48

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v50

    move/from16 v0, p1

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v52

    move/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_6

    move/from16 v0, v18

    const/16 v54, 0x1

    goto :goto_7

    :cond_6
    move/from16 v0, v18

    const/16 v54, 0x0

    :goto_7
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lp4/g;->D(I)I

    move-result v55

    move/from16 v0, v19

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v56

    move/from16 v0, v20

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v57

    move/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lp4/g;->C(I)I

    move-result v6

    move/from16 v0, v22

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_7

    move/from16 v0, v23

    const/4 v7, 0x1

    goto :goto_8

    :cond_7
    move/from16 v0, v23

    const/4 v7, 0x0

    :goto_8
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_8

    move/from16 v0, v24

    const/4 v8, 0x1

    goto :goto_9

    :cond_8
    move/from16 v0, v24

    const/4 v8, 0x0

    :goto_9
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_9

    move/from16 v0, v25

    const/4 v9, 0x1

    goto :goto_a

    :cond_9
    move/from16 v0, v25

    const/4 v9, 0x0

    :goto_a
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_a

    move/from16 v0, v26

    const/4 v10, 0x1

    goto :goto_b

    :cond_a
    move/from16 v0, v26

    const/4 v10, 0x0

    :goto_b
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    move/from16 v0, v27

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-interface {v4, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_c

    :cond_b
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v29

    :goto_c
    invoke-static/range {v29 .. v29}, Lp4/g;->h([B)Ljava/util/LinkedHashSet;

    move-result-object v15

    new-instance v43, Ln0/e;

    move-object/from16 v5, v43

    invoke-direct/range {v5 .. v15}, Ln0/e;-><init>(IZZZZJJLjava/util/Set;)V

    new-instance v29, Lw0/p;

    move-object/from16 v30, v29

    invoke-direct/range {v30 .. v57}, Lw0/p;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ln0/g;Ln0/g;JJJLn0/e;IIJJJJZIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_d

    :catchall_0
    move-exception v0

    goto :goto_e

    :cond_c
    :goto_d
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, La0/m;->j()V

    return-object v29

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    :goto_e
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, La0/m;->j()V

    throw v0
.end method

.method public m(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7

    const-string v0, "SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    const/4 v1, 0x1

    invoke-static {v1, v0}, La0/m;->h(ILjava/lang/String;)La0/m;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, La0/m;->E(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, La0/m;->q(ILjava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lw0/q;->a:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->b()V

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, La4/x;->S(Landroidx/work/impl/WorkDatabase;La0/m;Z)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lp4/g;->E(I)I

    move-result v4

    new-instance v5, Lw0/n;

    const-string v6, "id"

    invoke-static {v3, v6}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v3, v5, Lw0/n;->a:Ljava/lang/String;

    iput v4, v5, Lw0/n;->b:I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, La0/m;->j()V

    return-object v2

    :goto_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, La0/m;->j()V

    throw p1
.end method

.method public n(Ljava/lang/String;J)V
    .locals 3

    iget-object v0, p0, Lw0/q;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->b()V

    iget-object p0, p0, Lw0/q;->k:Ljava/lang/Object;

    check-cast p0, Lw0/h;

    invoke-virtual {p0}, LF4/x;->a()Lf0/i;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2, p2, p3}, Le0/d;->s(IJ)V

    const/4 p2, 0x2

    if-nez p1, :cond_0

    invoke-interface {v1, p2}, Le0/d;->E(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v1, p2, p1}, Le0/d;->q(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->c()V

    :try_start_0
    invoke-virtual {v1}, Lf0/i;->a()I

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->k()V

    invoke-virtual {p0, v1}, LF4/x;->h(Lf0/i;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->k()V

    invoke-virtual {p0, v1}, LF4/x;->h(Lf0/i;)V

    throw p1
.end method

.method public o(Ljava/lang/String;J)V
    .locals 3

    iget-object v0, p0, Lw0/q;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->b()V

    iget-object p0, p0, Lw0/q;->h:Ljava/lang/Object;

    check-cast p0, Lw0/h;

    invoke-virtual {p0}, LF4/x;->a()Lf0/i;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2, p2, p3}, Le0/d;->s(IJ)V

    const/4 p2, 0x2

    if-nez p1, :cond_0

    invoke-interface {v1, p2}, Le0/d;->E(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v1, p2, p1}, Le0/d;->q(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->c()V

    :try_start_0
    invoke-virtual {v1}, Lf0/i;->a()I

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->k()V

    invoke-virtual {p0, v1}, LF4/x;->h(Lf0/i;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->k()V

    invoke-virtual {p0, v1}, LF4/x;->h(Lf0/i;)V

    throw p1
.end method

.method public p(Ljava/lang/String;Ln0/g;)V
    .locals 3

    iget-object v0, p0, Lw0/q;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->b()V

    iget-object p0, p0, Lw0/q;->g:Ljava/lang/Object;

    check-cast p0, Lw0/h;

    invoke-virtual {p0}, LF4/x;->a()Lf0/i;

    move-result-object v1

    invoke-static {p2}, Ln0/g;->e(Ln0/g;)[B

    move-result-object p2

    const/4 v2, 0x1

    if-nez p2, :cond_0

    invoke-interface {v1, v2}, Le0/d;->E(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v1, v2, p2}, Le0/d;->D(I[B)V

    :goto_0
    const/4 p2, 0x2

    if-nez p1, :cond_1

    invoke-interface {v1, p2}, Le0/d;->E(I)V

    goto :goto_1

    :cond_1
    invoke-interface {v1, p2, p1}, Le0/d;->q(ILjava/lang/String;)V

    :goto_1
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->c()V

    :try_start_0
    invoke-virtual {v1}, Lf0/i;->a()I

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->k()V

    invoke-virtual {p0, v1}, LF4/x;->h(Lf0/i;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->k()V

    invoke-virtual {p0, v1}, LF4/x;->h(Lf0/i;)V

    throw p1
.end method

.method public q(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lw0/q;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->b()V

    iget-object p0, p0, Lw0/q;->e:Ljava/lang/Object;

    check-cast p0, Lw0/h;

    invoke-virtual {p0}, LF4/x;->a()Lf0/i;

    move-result-object v1

    invoke-static {p1}, Lp4/g;->V(I)I

    move-result p1

    int-to-long v2, p1

    const/4 p1, 0x1

    invoke-interface {v1, p1, v2, v3}, Le0/d;->s(IJ)V

    const/4 p1, 0x2

    if-nez p2, :cond_0

    invoke-interface {v1, p1}, Le0/d;->E(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v1, p1, p2}, Le0/d;->q(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->c()V

    :try_start_0
    invoke-virtual {v1}, Lf0/i;->a()I

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->k()V

    invoke-virtual {p0, v1}, LF4/x;->h(Lf0/i;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->k()V

    invoke-virtual {p0, v1}, LF4/x;->h(Lf0/i;)V

    throw p1
.end method

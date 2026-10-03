.class public final Lc0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/util/AbstractSet;

.field public final d:Ljava/util/AbstractSet;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V
    .locals 1

    const-string v0, "foreignKeys"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc0/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lc0/e;->b:Ljava/lang/Object;

    iput-object p3, p0, Lc0/e;->c:Ljava/util/AbstractSet;

    iput-object p4, p0, Lc0/e;->d:Ljava/util/AbstractSet;

    return-void
.end method

.method public static final a(Lf0/c;Ljava/lang/String;)Lc0/e;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "type"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PRAGMA table_info(`"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "`)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lf0/c;->a0(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->getColumnCount()I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, "name"

    const/4 v9, 0x0

    if-gtz v5, :cond_0

    :try_start_1
    sget-object v2, Lr3/s;->d:Lr3/s;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3, v9}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_0
    move-object v1, v0

    goto/16 :goto_e

    :cond_0
    :try_start_2
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "notnull"

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v12, "pk"

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v13, "dflt_value"

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    new-instance v14, Ls3/f;

    invoke-direct {v14}, Ls3/f;-><init>()V

    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    if-eqz v16, :cond_1

    const/16 v19, 0x1

    goto :goto_2

    :cond_1
    const/16 v19, 0x0

    :goto_2
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-static {v15, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lc0/a;

    invoke-static {v6, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v22, 0x2

    move-object/from16 v16, v7

    move-object/from16 v17, v15

    move-object/from16 v18, v6

    invoke-direct/range {v16 .. v22}, Lc0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v14, v15, v7}, Ls3/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_2
    invoke-virtual {v14}, Ls3/f;->c()Ls3/f;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3, v9}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "PRAGMA foreign_key_list(`"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lf0/c;->a0(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_3
    const-string v5, "id"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "seq"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "table"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v10, "on_delete"

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "on_update"

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-static {v3}, La4/x;->U(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v12

    const/4 v13, -0x1

    invoke-interface {v3, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    new-instance v14, Ls3/i;

    invoke-direct {v14}, Ls3/i;-><init>()V

    :goto_4
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    if-eqz v15, :cond_3

    goto :goto_4

    :cond_3
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move/from16 v23, v5

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    move/from16 v24, v6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v25, v12

    move-object v12, v6

    check-cast v12, Lc0/c;

    iget v12, v12, Lc0/c;->d:I

    if-ne v12, v15, :cond_4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    move/from16 v6, v24

    move-object/from16 v12, v25

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto/16 :goto_d

    :cond_5
    move/from16 v24, v6

    move-object/from16 v25, v12

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc0/c;

    iget-object v12, v6, Lc0/c;->f:Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v6, Lc0/c;->g:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_6
    new-instance v5, Lc0/b;

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v12, "cursor.getString(tableColumnIndex)"

    invoke-static {v6, v12}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v15, "cursor.getString(onDeleteColumnIndex)"

    invoke-static {v12, v15}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move/from16 v26, v7

    const-string v7, "cursor.getString(onUpdateColumnIndex)"

    invoke-static {v15, v7}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v12

    move-object/from16 v19, v15

    move-object/from16 v20, v13

    move-object/from16 v21, v9

    invoke-direct/range {v16 .. v21}, Lc0/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v14, v5}, Ls3/i;->add(Ljava/lang/Object;)Z

    move/from16 v5, v23

    move/from16 v6, v24

    move-object/from16 v12, v25

    move/from16 v7, v26

    const/4 v9, 0x0

    const/4 v13, -0x1

    goto/16 :goto_4

    :cond_7
    invoke-static {v14}, Lp4/g;->g(Ls3/i;)Ls3/i;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v6, 0x0

    invoke-static {v3, v6}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "PRAGMA index_list(`"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lf0/c;->a0(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_4
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v6, "origin"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "unique"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const/4 v9, -0x1

    if-eq v4, v9, :cond_8

    if-eq v6, v9, :cond_8

    if-ne v7, v9, :cond_9

    :cond_8
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    new-instance v9, Ls3/i;

    invoke-direct {v9}, Ls3/i;-><init>()V

    :goto_7
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "c"

    invoke-virtual {v11, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    goto :goto_7

    :cond_a
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_b

    move v11, v12

    goto :goto_8

    :cond_b
    const/4 v11, 0x0

    :goto_8
    invoke-static {v10, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v10, v11}, La4/x;->V(Lf0/c;Ljava/lang/String;Z)Lc0/d;

    move-result-object v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v10, :cond_c

    const/4 v11, 0x0

    invoke-static {v3, v11}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const/4 v9, 0x0

    goto :goto_b

    :cond_c
    :try_start_5
    invoke-virtual {v9, v10}, Ls3/i;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto :goto_c

    :cond_d
    invoke-static {v9}, Lp4/g;->g(Ls3/i;)Ls3/i;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    :goto_9
    move-object v9, v0

    goto :goto_b

    :goto_a
    invoke-static {v3, v0}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_9

    :goto_b
    new-instance v0, Lc0/e;

    invoke-direct {v0, v1, v2, v5, v9}, Lc0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    return-object v0

    :goto_c
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    move-object v2, v0

    invoke-static {v3, v1}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :goto_d
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception v0

    move-object v2, v0

    invoke-static {v3, v1}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :goto_e
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catchall_5
    move-exception v0

    move-object v2, v0

    invoke-static {v3, v1}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lc0/e;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lc0/e;

    iget-object v1, p1, Lc0/e;->a:Ljava/lang/String;

    iget-object v3, p0, Lc0/e;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lc0/e;->b:Ljava/lang/Object;

    iget-object v3, p1, Lc0/e;->b:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lc0/e;->c:Ljava/util/AbstractSet;

    iget-object v3, p1, Lc0/e;->c:Ljava/util/AbstractSet;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lc0/e;->d:Ljava/util/AbstractSet;

    if-eqz p0, :cond_6

    iget-object p1, p1, Lc0/e;->d:Ljava/util/AbstractSet;

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_6
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lc0/e;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc0/e;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lc0/e;->c:Ljava/util/AbstractSet;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TableInfo{name=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lc0/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', columns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc0/e;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", foreignKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc0/e;->c:Ljava/util/AbstractSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", indices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lc0/e;->d:Ljava/util/AbstractSet;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

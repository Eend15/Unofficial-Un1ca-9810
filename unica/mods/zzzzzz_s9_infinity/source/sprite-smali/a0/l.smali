.class public final La0/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(IZ)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x8

    new-array p2, p1, [Lk5/i;

    iput-object p2, p0, La0/l;->b:Ljava/lang/Object;

    new-array p1, p1, [Lk5/i;

    iput-object p1, p0, La0/l;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, La0/l;->b:Ljava/lang/Object;

    check-cast p2, [Lk5/i;

    array-length v0, p2

    if-ge p1, v0, :cond_0

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    aput-object v0, p2, p1

    iget-object p2, p0, La0/l;->c:Ljava/lang/Object;

    check-cast p2, [Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    aput-object v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x4

    iput p1, p0, La0/l;->a:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)V
    .locals 7

    const-string v0, ":memory:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-gt v3, v0, :cond_5

    if-nez v4, :cond_0

    move v5, v3

    goto :goto_1

    :cond_0
    move v5, v0

    :goto_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    invoke-static {v5, v6}, LF3/k;->h(II)I

    move-result v5

    if-gtz v5, :cond_1

    move v5, v1

    goto :goto_2

    :cond_1
    move v5, v2

    :goto_2
    if-nez v4, :cond_3

    if-nez v5, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    :goto_3
    add-int/2addr v0, v1

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    const-string v0, "deleting the database file: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SupportSQLite"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    const-string v0, "delete failed: "

    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_4
    return-void
.end method


# virtual methods
.method public b(Lf0/c;)V
    .locals 0

    return-void
.end method

.method public c(Lf0/c;)V
    .locals 4

    const-string v0, "SELECT count(*) FROM sqlite_master WHERE name != \'android_metadata\'"

    invoke-virtual {p1, v0}, Lf0/c;->a0(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    move v1, v2

    :goto_0
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    iget-object p0, p0, La0/l;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/y;

    invoke-static {p1}, Landroidx/recyclerview/widget/y;->e(Lf0/c;)V

    if-nez v1, :cond_2

    invoke-static {p1}, Landroidx/recyclerview/widget/y;->k(Lf0/c;)LI/d;

    move-result-object v0

    iget-boolean v1, v0, LI/d;->e:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Pre-packaged database has an invalid schema: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, LI/d;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-virtual {p1, v0}, Lf0/c;->K(Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'5181942b9ebc31ce68dacb56c16fd79f\')"

    invoke-virtual {p1, v0}, Lf0/c;->K(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/WorkDatabase_Impl;

    iget-object p1, p0, Landroidx/work/impl/WorkDatabase;->f:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_2
    if-ge v2, p1, :cond_3

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-void

    :goto_3
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v0, p0}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public d(Lf0/c;)V
    .locals 9

    const-string v0, "SELECT 1 FROM sqlite_master WHERE type = \'table\' AND name=\'room_master_table\'"

    invoke-virtual {p1, v0}, Lf0/c;->a0(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_0
    move v1, v3

    :goto_0
    const/4 v4, 0x0

    invoke-static {v0, v4}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    if-eqz v1, :cond_3

    new-instance v0, LU3/w;

    const-string v1, "SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"

    invoke-direct {v0, v1}, LU3/w;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lf0/c;->Z(Le0/e;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_1
    move-object v1, v4

    :goto_1
    invoke-static {v0, v4}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string v0, "5181942b9ebc31ce68dacb56c16fd79f"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ae2044fb577e65ee8bb576ca48a2f06e"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Room cannot verify the data integrity. Looks like you\'ve changed schema but forgot to update the version number. You can simply fix this by increasing the version number. Expected identity hash: 5181942b9ebc31ce68dacb56c16fd79f, found: "

    invoke-static {p1, v1}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_2
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception p1

    invoke-static {v0, p0}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    invoke-static {p1}, Landroidx/recyclerview/widget/y;->k(Lf0/c;)LI/d;

    move-result-object v0

    iget-boolean v1, v0, LI/d;->e:Z

    if-eqz v1, :cond_7

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-virtual {p1, v0}, Lf0/c;->K(Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'5181942b9ebc31ce68dacb56c16fd79f\')"

    invoke-virtual {p1, v0}, Lf0/c;->K(Ljava/lang/String;)V

    :cond_4
    :goto_3
    iget-object v0, p0, La0/l;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/y;

    iget-object v1, v0, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/work/impl/WorkDatabase_Impl;

    iput-object p1, v1, Landroidx/work/impl/WorkDatabase;->a:Lf0/c;

    const-string v1, "PRAGMA foreign_keys = ON"

    invoke-virtual {p1, v1}, Lf0/c;->K(Ljava/lang/String;)V

    iget-object v1, v0, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Landroidx/work/impl/WorkDatabase;->d:La0/g;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v1, La0/g;->k:Ljava/lang/Object;

    monitor-enter v5

    :try_start_3
    iget-boolean v6, v1, La0/g;->f:Z

    if-eqz v6, :cond_5

    const-string v1, "ROOM"

    const-string v2, "Invalidation tracker is initialized twice :/."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    monitor-exit v5

    goto :goto_4

    :catchall_3
    move-exception p0

    goto :goto_6

    :cond_5
    :try_start_4
    const-string v6, "PRAGMA temp_store = MEMORY;"

    invoke-virtual {p1, v6}, Lf0/c;->K(Ljava/lang/String;)V

    const-string v6, "PRAGMA recursive_triggers=\'ON\';"

    invoke-virtual {p1, v6}, Lf0/c;->K(Ljava/lang/String;)V

    const-string v6, "CREATE TEMP TABLE room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)"

    invoke-virtual {p1, v6}, Lf0/c;->K(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, La0/g;->c(Lf0/c;)V

    const-string v6, "UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1"

    invoke-virtual {p1, v6}, Lf0/c;->h(Ljava/lang/String;)Lf0/i;

    move-result-object v6

    iput-object v6, v1, La0/g;->g:Lf0/i;

    iput-boolean v2, v1, La0/g;->f:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    monitor-exit v5

    :goto_4
    iget-object v1, v0, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/work/impl/WorkDatabase_Impl;

    iget-object v1, v1, Landroidx/work/impl/WorkDatabase;->f:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_5
    if-ge v3, v1, :cond_6

    iget-object v2, v0, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast v2, Landroidx/work/impl/WorkDatabase_Impl;

    iget-object v2, v2, Landroidx/work/impl/WorkDatabase;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo0/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lf0/c;->a()V

    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (last_enqueue_time + minimum_retention_duration) < "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-wide v7, Lo0/k;->a:J

    sub-long/2addr v5, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lf0/c;->K(Ljava/lang/String;)V

    invoke-virtual {p1}, Lf0/c;->b0()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    invoke-virtual {p1}, Lf0/c;->j()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :catchall_4
    move-exception p0

    invoke-virtual {p1}, Lf0/c;->j()V

    throw p0

    :cond_6
    iput-object v4, p0, La0/l;->b:Ljava/lang/Object;

    return-void

    :goto_6
    monitor-exit v5

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Pre-packaged database has an invalid schema: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, LI/d;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_7
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :catchall_5
    move-exception p1

    invoke-static {v0, p0}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public e(Lf0/c;II)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, La0/l;->b:Ljava/lang/Object;

    check-cast v4, La0/b;

    iget-object v5, v0, La0/l;->c:Ljava/lang/Object;

    check-cast v5, Landroidx/recyclerview/widget/y;

    const/4 v6, 0x0

    if-eqz v4, :cond_f

    iget-object v4, v4, La0/b;->h:Ljava/lang/Object;

    check-cast v4, La0/k;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x0

    if-ne v2, v3, :cond_0

    sget-object v4, Lr3/r;->d:Lr3/r;

    goto/16 :goto_6

    :cond_0
    if-le v3, v2, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    move v9, v6

    :goto_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move v11, v2

    :cond_2
    if-eqz v9, :cond_3

    if-ge v11, v3, :cond_9

    goto :goto_1

    :cond_3
    if-le v11, v3, :cond_9

    :goto_1
    iget-object v12, v4, La0/k;->a:Ljava/util/LinkedHashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/TreeMap;

    if-nez v12, :cond_4

    :goto_2
    move-object v4, v7

    goto :goto_6

    :cond_4
    if-eqz v9, :cond_5

    invoke-virtual {v12}, Ljava/util/TreeMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v13

    goto :goto_3

    :cond_5
    invoke-virtual {v12}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    const-string v15, "targetVersion"

    if-eqz v9, :cond_7

    add-int/lit8 v8, v11, 0x1

    invoke-static {v14, v15}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-gt v8, v15, :cond_6

    if-gt v15, v3, :cond_6

    goto :goto_4

    :cond_7
    invoke-static {v14, v15}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-gt v3, v8, :cond_6

    if-ge v8, v11, :cond_6

    :goto_4
    invoke-virtual {v12, v14}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v8, 0x1

    goto :goto_5

    :cond_8
    move v8, v6

    :goto_5
    if-nez v8, :cond_2

    goto :goto_2

    :cond_9
    move-object v4, v10

    :goto_6
    if-eqz v4, :cond_f

    new-instance v0, Ls3/c;

    const/16 v2, 0xa

    invoke-direct {v0, v2}, Ls3/c;-><init>(I)V

    const-string v2, "SELECT name FROM sqlite_master WHERE type = \'trigger\'"

    invoke-virtual {v1, v2}, Lf0/c;->a0(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    :goto_7
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ls3/c;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :goto_8
    move-object v1, v0

    goto/16 :goto_b

    :catchall_0
    move-exception v0

    goto :goto_8

    :cond_a
    invoke-static {v2, v7}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lp4/g;->f(Ls3/c;)Ls3/c;

    move-result-object v0

    invoke-virtual {v0, v6}, Ls3/c;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_b
    :goto_9
    move-object v2, v0

    check-cast v2, Ls3/a;

    invoke-virtual {v2}, Ls3/a;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v2}, Ls3/a;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "triggerName"

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "room_fts_content_sync_"

    invoke-static {v2, v3, v6}, LV4/u;->n0(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "DROP TRIGGER IF EXISTS "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lf0/c;->K(Ljava/lang/String;)V

    goto :goto_9

    :cond_c
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb0/a;

    invoke-virtual {v2, v1}, Lb0/a;->a(Lf0/c;)V

    goto :goto_a

    :cond_d
    invoke-static/range {p1 .. p1}, Landroidx/recyclerview/widget/y;->k(Lf0/c;)LI/d;

    move-result-object v0

    iget-boolean v2, v0, LI/d;->e:Z

    if-eqz v2, :cond_e

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-virtual {v1, v0}, Lf0/c;->K(Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'5181942b9ebc31ce68dacb56c16fd79f\')"

    invoke-virtual {v1, v0}, Lf0/c;->K(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Migration didn\'t properly handle: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, LI/d;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_b
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-static {v2, v1}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    :cond_f
    iget-object v0, v0, La0/l;->b:Ljava/lang/Object;

    check-cast v0, La0/b;

    if-eqz v0, :cond_14

    const/4 v4, 0x0

    if-le v2, v3, :cond_10

    iget-boolean v7, v0, La0/b;->e:Z

    if-eqz v7, :cond_10

    goto :goto_c

    :cond_10
    iget-boolean v7, v0, La0/b;->d:Z

    if-eqz v7, :cond_12

    iget-object v0, v0, La0/b;->n:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_11

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_11
    const/4 v4, 0x1

    :cond_12
    :goto_c
    if-nez v4, :cond_14

    const-string v0, "DROP TABLE IF EXISTS `Dependency`"

    invoke-virtual {v1, v0}, Lf0/c;->K(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `WorkSpec`"

    invoke-virtual {v1, v0}, Lf0/c;->K(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `WorkTag`"

    invoke-virtual {v1, v0}, Lf0/c;->K(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `SystemIdInfo`"

    invoke-virtual {v1, v0}, Lf0/c;->K(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `WorkName`"

    invoke-virtual {v1, v0}, Lf0/c;->K(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `WorkProgress`"

    invoke-virtual {v1, v0}, Lf0/c;->K(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `Preference`"

    invoke-virtual {v1, v0}, Lf0/c;->K(Ljava/lang/String;)V

    iget-object v0, v5, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase_Impl;

    iget-object v2, v0, Landroidx/work/impl/WorkDatabase;->f:Ljava/util/ArrayList;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_d
    if-ge v6, v2, :cond_13

    iget-object v3, v0, Landroidx/work/impl/WorkDatabase;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/b;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_13
    invoke-static/range {p1 .. p1}, Landroidx/recyclerview/widget/y;->e(Lf0/c;)V

    :goto_e
    return-void

    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "A migration from "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

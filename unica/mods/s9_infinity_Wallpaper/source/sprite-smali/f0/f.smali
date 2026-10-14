.class public final Lf0/f;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field public static final synthetic k:I


# instance fields
.field public final d:Landroid/content/Context;

.field public final e:Landroidx/recyclerview/widget/y;

.field public final f:La0/l;

.field public final g:Z

.field public h:Z

.field public final i:Lg0/a;

.field public j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/recyclerview/widget/y;La0/l;Z)V
    .locals 7

    const-string v0, "callback"

    invoke-static {p4, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lf0/d;

    invoke-direct {v6, p4, p3}, Lf0/d;-><init>(La0/l;Landroidx/recyclerview/widget/y;)V

    const/4 v4, 0x0

    iget v5, p4, La0/l;->a:I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    iput-object p1, p0, Lf0/f;->d:Landroid/content/Context;

    iput-object p3, p0, Lf0/f;->e:Landroidx/recyclerview/widget/y;

    iput-object p4, p0, Lf0/f;->f:La0/l;

    iput-boolean p5, p0, Lf0/f;->g:Z

    new-instance p3, Lg0/a;

    if-nez p2, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "randomUUID().toString()"

    invoke-static {p2, p4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    const-string p4, "context.cacheDir"

    invoke-static {p1, p4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    invoke-direct {p3, p2, p1, p4}, Lg0/a;-><init>(Ljava/lang/String;Ljava/io/File;Z)V

    iput-object p3, p0, Lf0/f;->i:Lg0/a;

    return-void
.end method


# virtual methods
.method public final a(Z)Lf0/c;
    .locals 3

    iget-object v0, p0, Lf0/f;->i:Lg0/a;

    :try_start_0
    iget-boolean v1, p0, Lf0/f;->j:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lg0/a;->a(Z)V

    iput-boolean v2, p0, Lf0/f;->h:Z

    invoke-virtual {p0, p1}, Lf0/f;->j(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-boolean v2, p0, Lf0/f;->h:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lf0/f;->close()V

    invoke-virtual {p0, p1}, Lf0/f;->a(Z)Lf0/c;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lg0/a;->b()V

    return-object p0

    :cond_1
    :try_start_1
    invoke-virtual {p0, v1}, Lf0/f;->g(Landroid/database/sqlite/SQLiteDatabase;)Lf0/c;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Lg0/a;->b()V

    return-object p0

    :goto_1
    invoke-virtual {v0}, Lg0/a;->b()V

    throw p0
.end method

.method public final close()V
    .locals 3

    iget-object v0, p0, Lf0/f;->i:Lg0/a;

    :try_start_0
    iget-boolean v1, v0, Lg0/a;->a:Z

    invoke-virtual {v0, v1}, Lg0/a;->a(Z)V

    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    iget-object v1, p0, Lf0/f;->e:Landroidx/recyclerview/widget/y;

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lf0/f;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lg0/a;->b()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lg0/a;->b()V

    throw p0
.end method

.method public final g(Landroid/database/sqlite/SQLiteDatabase;)Lf0/c;
    .locals 1

    const-string v0, "sqLiteDatabase"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lf0/f;->e:Landroidx/recyclerview/widget/y;

    invoke-static {p0, p1}, Le0/a;->P(Landroidx/recyclerview/widget/y;Landroid/database/sqlite/SQLiteDatabase;)Lf0/c;

    move-result-object p0

    return-object p0
.end method

.method public final h(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    const-string v0, "{\n                super.\u2026eDatabase()\n            }"

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public final j(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lf0/f;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid database parent file, not a directory: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SupportSQLite"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lf0/f;->h(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    const-wide/16 v2, 0x1f4

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :try_start_2
    invoke-virtual {p0, p1}, Lf0/f;->h(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object p0

    :catchall_1
    move-exception v2

    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    instance-of v3, v2, Lf0/e;

    if-eqz v3, :cond_3

    check-cast v2, Lf0/e;

    iget v3, v2, Lf0/e;->d:I

    invoke-static {v3}, Lq/e;->c(I)I

    move-result v3

    iget-object v2, v2, Lf0/e;->e:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    instance-of v3, v2, Landroid/database/sqlite/SQLiteException;

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    throw v2

    :cond_2
    throw v2

    :cond_3
    instance-of v3, v2, Landroid/database/sqlite/SQLiteException;

    if-eqz v3, :cond_5

    if-eqz v0, :cond_4

    iget-boolean v3, p0, Lf0/f;->g:Z

    if-eqz v3, :cond_4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    :try_start_3
    invoke-virtual {p0, p1}, Lf0/f;->h(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_3
    .catch Lf0/e; {:try_start_3 .. :try_end_3} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    iget-object p0, p0, Lf0/e;->e:Ljava/lang/Throwable;

    throw p0

    :cond_4
    throw v2

    :cond_5
    throw v2
.end method

.method public final onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lf0/f;->f:La0/l;

    invoke-virtual {p0, p1}, Lf0/f;->g(Landroid/database/sqlite/SQLiteDatabase;)Lf0/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Lf0/e;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0}, Lf0/e;-><init>(ILjava/lang/Throwable;)V

    throw p1
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "sqLiteDatabase"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lf0/f;->f:La0/l;

    invoke-virtual {p0, p1}, Lf0/f;->g(Landroid/database/sqlite/SQLiteDatabase;)Lf0/c;

    move-result-object p0

    invoke-virtual {v0, p0}, La0/l;->c(Lf0/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Lf0/e;

    const/4 v0, 0x2

    invoke-direct {p1, v0, p0}, Lf0/e;-><init>(ILjava/lang/Throwable;)V

    throw p1
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf0/f;->h:Z

    :try_start_0
    iget-object v0, p0, Lf0/f;->f:La0/l;

    invoke-virtual {p0, p1}, Lf0/f;->g(Landroid/database/sqlite/SQLiteDatabase;)Lf0/c;

    move-result-object p0

    invoke-virtual {v0, p0, p2, p3}, La0/l;->e(Lf0/c;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Lf0/e;

    const/4 p2, 0x4

    invoke-direct {p1, p2, p0}, Lf0/e;-><init>(ILjava/lang/Throwable;)V

    throw p1
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lf0/f;->h:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lf0/f;->f:La0/l;

    invoke-virtual {p0, p1}, Lf0/f;->g(Landroid/database/sqlite/SQLiteDatabase;)Lf0/c;

    move-result-object p1

    invoke-virtual {v0, p1}, La0/l;->d(Lf0/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance p1, Lf0/e;

    const/4 v0, 0x5

    invoke-direct {p1, v0, p0}, Lf0/e;-><init>(ILjava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lf0/f;->j:Z

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const-string v0, "sqLiteDatabase"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf0/f;->h:Z

    :try_start_0
    iget-object v0, p0, Lf0/f;->f:La0/l;

    invoke-virtual {p0, p1}, Lf0/f;->g(Landroid/database/sqlite/SQLiteDatabase;)Lf0/c;

    move-result-object p0

    invoke-virtual {v0, p0, p2, p3}, La0/l;->e(Lf0/c;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Lf0/e;

    const/4 p2, 0x3

    invoke-direct {p1, p2, p0}, Lf0/e;-><init>(ILjava/lang/Throwable;)V

    throw p1
.end method

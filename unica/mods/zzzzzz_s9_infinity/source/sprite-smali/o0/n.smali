.class public final Lo0/n;
.super Lj0/s;
.source "SourceFile"


# static fields
.field public static n:Lo0/n;

.field public static o:Lo0/n;

.field public static final p:Ljava/lang/Object;


# instance fields
.field public final d:Landroid/content/Context;

.field public final e:Ln0/c;

.field public final f:Landroidx/work/impl/WorkDatabase;

.field public final g:Ln1/a;

.field public final h:Ljava/util/List;

.field public final i:Lo0/e;

.field public final j:Lx0/h;

.field public k:Z

.field public l:Landroid/content/BroadcastReceiver$PendingResult;

.field public final m:Lw0/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkManagerImpl"

    invoke-static {v0}, Ln0/o;->f(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lo0/n;->n:Lo0/n;

    sput-object v0, Lo0/n;->o:Lo0/n;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo0/n;->p:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ln0/c;Ln1/a;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Ln0/x;->workmanager_test_configuration:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v8, Ln1/a;->a:Ljava/lang/Object;

    check-cast v4, Landroidx/appcompat/app/o;

    const-string v5, "context"

    invoke-static {v3, v5}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "queryExecutor"

    invoke-static {v4, v5}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    new-instance v2, La0/j;

    invoke-direct {v2, v3, v5}, La0/j;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-boolean v10, v2, La0/j;->i:Z

    goto :goto_0

    :cond_0
    const-string v2, "androidx.work.workdb"

    invoke-static {v2}, LV4/m;->x0(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_28

    new-instance v6, La0/j;

    invoke-direct {v6, v3, v2}, La0/j;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v2, LV2/b;

    const/16 v11, 0xf

    invoke-direct {v2, v11, v3}, LV2/b;-><init>(ILjava/lang/Object;)V

    iput-object v2, v6, La0/j;->h:LV2/b;

    move-object v2, v6

    :goto_0
    iput-object v4, v2, La0/j;->f:Ljava/util/concurrent/Executor;

    sget-object v4, Lo0/b;->a:Lo0/b;

    iget-object v6, v2, La0/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lo0/d;->g:Lo0/d;

    filled-new-array {v4}, [Lb0/a;

    move-result-object v4

    invoke-virtual {v2, v4}, La0/j;->a([Lb0/a;)V

    new-instance v4, Lo0/f;

    const/4 v11, 0x2

    const/4 v15, 0x3

    invoke-direct {v4, v3, v11, v15}, Lo0/f;-><init>(Landroid/content/Context;II)V

    filled-new-array {v4}, [Lb0/a;

    move-result-object v4

    invoke-virtual {v2, v4}, La0/j;->a([Lb0/a;)V

    sget-object v4, Lo0/d;->h:Lo0/d;

    filled-new-array {v4}, [Lb0/a;

    move-result-object v4

    invoke-virtual {v2, v4}, La0/j;->a([Lb0/a;)V

    sget-object v4, Lo0/d;->i:Lo0/d;

    filled-new-array {v4}, [Lb0/a;

    move-result-object v4

    invoke-virtual {v2, v4}, La0/j;->a([Lb0/a;)V

    new-instance v4, Lo0/f;

    const/4 v12, 0x5

    const/4 v13, 0x6

    invoke-direct {v4, v3, v12, v13}, Lo0/f;-><init>(Landroid/content/Context;II)V

    filled-new-array {v4}, [Lb0/a;

    move-result-object v4

    invoke-virtual {v2, v4}, La0/j;->a([Lb0/a;)V

    sget-object v4, Lo0/d;->j:Lo0/d;

    filled-new-array {v4}, [Lb0/a;

    move-result-object v4

    invoke-virtual {v2, v4}, La0/j;->a([Lb0/a;)V

    sget-object v4, Lo0/d;->k:Lo0/d;

    filled-new-array {v4}, [Lb0/a;

    move-result-object v4

    invoke-virtual {v2, v4}, La0/j;->a([Lb0/a;)V

    sget-object v4, Lo0/d;->l:Lo0/d;

    filled-new-array {v4}, [Lb0/a;

    move-result-object v4

    invoke-virtual {v2, v4}, La0/j;->a([Lb0/a;)V

    new-instance v4, Lo0/f;

    invoke-direct {v4, v3}, Lo0/f;-><init>(Landroid/content/Context;)V

    filled-new-array {v4}, [Lb0/a;

    move-result-object v4

    invoke-virtual {v2, v4}, La0/j;->a([Lb0/a;)V

    new-instance v4, Lo0/f;

    const/16 v12, 0xa

    const/16 v13, 0xb

    invoke-direct {v4, v3, v12, v13}, Lo0/f;-><init>(Landroid/content/Context;II)V

    filled-new-array {v4}, [Lb0/a;

    move-result-object v3

    invoke-virtual {v2, v3}, La0/j;->a([Lb0/a;)V

    sget-object v3, Lo0/d;->d:Lo0/d;

    filled-new-array {v3}, [Lb0/a;

    move-result-object v3

    invoke-virtual {v2, v3}, La0/j;->a([Lb0/a;)V

    sget-object v3, Lo0/d;->e:Lo0/d;

    filled-new-array {v3}, [Lb0/a;

    move-result-object v3

    invoke-virtual {v2, v3}, La0/j;->a([Lb0/a;)V

    sget-object v3, Lo0/d;->f:Lo0/d;

    filled-new-array {v3}, [Lb0/a;

    move-result-object v3

    invoke-virtual {v2, v3}, La0/j;->a([Lb0/a;)V

    iput-boolean v9, v2, La0/j;->k:Z

    iput-boolean v10, v2, La0/j;->l:Z

    iget-object v3, v2, La0/j;->f:Ljava/util/concurrent/Executor;

    if-nez v3, :cond_1

    iget-object v4, v2, La0/j;->g:Ljava/util/concurrent/Executor;

    if-nez v4, :cond_1

    sget-object v3, Ll/a;->f:LY/b;

    iput-object v3, v2, La0/j;->g:Ljava/util/concurrent/Executor;

    iput-object v3, v2, La0/j;->f:Ljava/util/concurrent/Executor;

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    iget-object v4, v2, La0/j;->g:Ljava/util/concurrent/Executor;

    if-nez v4, :cond_2

    iput-object v3, v2, La0/j;->g:Ljava/util/concurrent/Executor;

    goto :goto_1

    :cond_2
    if-nez v3, :cond_3

    iget-object v3, v2, La0/j;->g:Ljava/util/concurrent/Executor;

    iput-object v3, v2, La0/j;->f:Ljava/util/concurrent/Executor;

    :cond_3
    :goto_1
    iget-object v3, v2, La0/j;->p:Ljava/util/HashSet;

    iget-object v4, v2, La0/j;->o:Ljava/util/LinkedHashSet;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    goto :goto_2

    :cond_4
    const-string v0, "Inconsistency detected. A Migration was supplied to addMigration(Migration... migrations) that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(int... startVersions). Start version: "

    invoke-static {v12, v0}, Li4/b;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    iget-object v3, v2, La0/j;->h:LV2/b;

    if-nez v3, :cond_6

    new-instance v3, LG4/d;

    const/16 v12, 0x18

    invoke-direct {v3, v12, v9}, LG4/d;-><init>(IZ)V

    :cond_6
    move-object v14, v3

    iget-wide v12, v2, La0/j;->m:J

    const-wide/16 v16, 0x0

    cmp-long v3, v12, v16

    const-string v12, "Required value was null."

    if-lez v3, :cond_8

    iget-object v0, v2, La0/j;->b:Ljava/lang/String;

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create auto-closing database for an in-memory database."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v3, La0/b;

    iget-boolean v13, v2, La0/j;->i:Z

    iget v11, v2, La0/j;->j:I

    if-eqz v11, :cond_27

    iget-object v5, v2, La0/j;->a:Landroid/content/Context;

    if-eq v11, v10, :cond_9

    move/from16 v18, v11

    goto :goto_3

    :cond_9
    const-string v11, "activity"

    invoke-virtual {v5, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    const-string v15, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-static {v11, v15}, LF3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Landroid/app/ActivityManager;

    invoke-virtual {v11}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v11

    if-nez v11, :cond_a

    const/16 v18, 0x3

    goto :goto_3

    :cond_a
    const/16 v18, 0x2

    :goto_3
    iget-object v15, v2, La0/j;->f:Ljava/util/concurrent/Executor;

    if-eqz v15, :cond_26

    iget-object v11, v2, La0/j;->g:Ljava/util/concurrent/Executor;

    if-eqz v11, :cond_25

    iget-boolean v12, v2, La0/j;->k:Z

    iget-boolean v9, v2, La0/j;->l:Z

    iget-object v1, v2, La0/j;->d:Ljava/util/ArrayList;

    iget-object v10, v2, La0/j;->e:Ljava/util/ArrayList;

    move/from16 v16, v13

    iget-object v13, v2, La0/j;->b:Ljava/lang/String;

    iget-object v2, v2, La0/j;->n:La0/k;

    move-object/from16 v20, v11

    move-object v11, v3

    move/from16 v21, v12

    move-object v12, v5

    move/from16 v5, v16

    move-object/from16 v19, v15

    const/4 v0, 0x3

    move-object v15, v2

    move-object/from16 v16, v6

    move/from16 v17, v5

    move/from16 v22, v9

    move-object/from16 v23, v4

    move-object/from16 v24, v1

    move-object/from16 v25, v10

    invoke-direct/range {v11 .. v25}, La0/b;-><init>(Landroid/content/Context;Ljava/lang/String;Le0/b;La0/k;Ljava/util/ArrayList;ZILjava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZLjava/util/LinkedHashSet;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    const-string v1, ".canonicalName"

    const-class v2, Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v4

    invoke-static {v4}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, LF3/k;->c(Ljava/lang/Object;)V

    const-string v6, "fullPackage"

    invoke-static {v4, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v9, 0x1

    add-int/2addr v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "this as java.lang.String).substring(startIndex)"

    invoke-static {v5, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_4
    const/16 v6, 0x5f

    const/16 v9, 0x2e

    invoke-static {v5, v9, v6}, LV4/u;->k0(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v5

    const-string v6, "_Impl"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_c

    move-object v4, v5

    goto :goto_5

    :cond_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_5
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const/4 v9, 0x1

    invoke-static {v4, v9, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    const-string v6, "null cannot be cast to non-null type java.lang.Class<T of androidx.room.Room.getGeneratedImplementation>"

    invoke-static {v4, v6}, LF3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v1

    check-cast v9, Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9, v3}, Landroidx/work/impl/WorkDatabase;->e(La0/b;)Le0/c;

    move-result-object v1

    iput-object v1, v9, Landroidx/work/impl/WorkDatabase;->c:Le0/c;

    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->i()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    iget-object v5, v9, Landroidx/work/impl/WorkDatabase;->g:Ljava/util/LinkedHashMap;

    iget-object v6, v3, La0/b;->k:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    if-eqz v4, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, -0x1

    add-int/2addr v10, v11

    if-ltz v10, :cond_f

    :goto_7
    add-int/lit8 v12, v10, -0x1

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-virtual {v2, v10}, Ljava/util/BitSet;->set(I)V

    goto :goto_9

    :cond_d
    if-gez v12, :cond_e

    goto :goto_8

    :cond_e
    move v10, v12

    const/4 v11, -0x1

    goto :goto_7

    :cond_f
    :goto_8
    const/4 v10, -0x1

    :goto_9
    if-ltz v10, :cond_10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "A required auto migration spec ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") is missing in the database configuration."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, -0x1

    add-int/2addr v1, v4

    if-ltz v1, :cond_14

    :goto_a
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_13

    if-gez v6, :cond_12

    goto :goto_b

    :cond_12
    move v1, v6

    const/4 v4, -0x1

    goto :goto_a

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected auto migration specs found. Annotate AutoMigrationSpec implementation with @ProvidedAutoMigrationSpec annotation or remove this spec from the builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_b
    invoke-virtual {v9, v5}, Landroidx/work/impl/WorkDatabase;->g(Ljava/util/LinkedHashMap;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb0/a;

    iget v4, v2, Lb0/a;->a:I

    iget-object v5, v3, La0/b;->h:Ljava/lang/Object;

    check-cast v5, La0/k;

    iget-object v6, v5, La0/k;->a:Ljava/util/LinkedHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_16

    sget-object v4, Lr3/s;->d:Lr3/s;

    :cond_16
    iget v6, v2, Lb0/a;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_d

    :cond_17
    const/4 v4, 0x0

    :goto_d
    if-nez v4, :cond_15

    filled-new-array {v2}, [Lb0/a;

    move-result-object v2

    invoke-virtual {v5, v2}, La0/k;->a([Lb0/a;)V

    goto :goto_c

    :cond_18
    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->h()Le0/c;

    move-result-object v1

    const-class v2, La0/n;

    invoke-static {v2, v1}, Landroidx/work/impl/WorkDatabase;->q(Ljava/lang/Class;Le0/c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La0/n;

    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->h()Le0/c;

    move-result-object v1

    const-class v2, La0/a;

    invoke-static {v2, v1}, Landroidx/work/impl/WorkDatabase;->q(Ljava/lang/Class;Le0/c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La0/a;

    iget v1, v3, La0/b;->c:I

    if-ne v1, v0, :cond_19

    const/4 v0, 0x1

    goto :goto_e

    :cond_19
    const/4 v0, 0x0

    :goto_e
    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->h()Le0/c;

    move-result-object v1

    invoke-interface {v1, v0}, Le0/c;->setWriteAheadLoggingEnabled(Z)V

    iget-object v0, v3, La0/b;->i:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, v9, Landroidx/work/impl/WorkDatabase;->f:Ljava/util/ArrayList;

    iget-object v0, v3, La0/b;->l:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, v9, Landroidx/work/impl/WorkDatabase;->b:Ljava/util/concurrent/Executor;

    const-string v0, "executor"

    iget-object v1, v3, La0/b;->m:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Executor;

    invoke-static {v1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iget-boolean v0, v3, La0/b;->b:Z

    iput-boolean v0, v9, Landroidx/work/impl/WorkDatabase;->e:Z

    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->j()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    iget-object v4, v3, La0/b;->j:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, -0x1

    add-int/2addr v10, v11

    if-ltz v10, :cond_1d

    :goto_10
    add-int/lit8 v12, v10, -0x1

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_1b

    invoke-virtual {v1, v10}, Ljava/util/BitSet;->set(I)V

    move v11, v10

    goto :goto_12

    :cond_1b
    if-gez v12, :cond_1c

    goto :goto_11

    :cond_1c
    move v10, v12

    const/4 v11, -0x1

    goto :goto_10

    :cond_1d
    :goto_11
    const/4 v11, -0x1

    :goto_12
    if-ltz v11, :cond_1e

    const/4 v10, 0x1

    goto :goto_13

    :cond_1e
    const/4 v10, 0x0

    :goto_13
    if-eqz v10, :cond_1f

    iget-object v10, v9, Landroidx/work/impl/WorkDatabase;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "A required type converter ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is missing in the database configuration."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_20
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, -0x1

    add-int/2addr v0, v2

    if-ltz v0, :cond_23

    :goto_14
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_22

    if-gez v3, :cond_21

    goto :goto_15

    :cond_21
    move v0, v3

    goto :goto_14

    :cond_22
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected type converter "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". Annotate TypeConverter class with @ProvidedTypeConverter annotation or remove this converter from the builder."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_23
    :goto_15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ln0/o;

    iget v2, v7, Ln0/c;->g:I

    invoke-direct {v1, v2}, Ln0/o;-><init>(I)V

    sget-object v3, Ln0/o;->b:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    sput-object v1, Ln0/o;->c:Ln0/o;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v1, Lw0/i;

    invoke-direct {v1, v0, v8}, Lw0/i;-><init>(Landroid/content/Context;Ln1/a;)V

    move-object/from16 v10, p0

    iput-object v1, v10, Lo0/n;->m:Lw0/i;

    sget-object v2, Lo0/h;->a:Ljava/lang/String;

    new-instance v2, Lr0/b;

    invoke-direct {v2, v0, v10}, Lr0/b;-><init>(Landroid/content/Context;Lo0/n;)V

    const-class v3, Landroidx/work/impl/background/systemjob/SystemJobService;

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Lx0/l;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v3

    sget-object v4, Lo0/h;->a:Ljava/lang/String;

    const-string v5, "Created SystemJobScheduler and enabled SystemJobService"

    invoke-virtual {v3, v4, v5}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lp0/b;

    invoke-direct {v3, v0, v7, v1, v10}, Lp0/b;-><init>(Landroid/content/Context;Ln0/c;Lw0/i;Lo0/n;)V

    filled-new-array {v2, v3}, [Lo0/g;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v11, Lo0/e;

    move-object v1, v11

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v9

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lo0/e;-><init>(Landroid/content/Context;Ln0/c;Ln1/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v10, Lo0/n;->d:Landroid/content/Context;

    iput-object v7, v10, Lo0/n;->e:Ln0/c;

    iput-object v8, v10, Lo0/n;->g:Ln1/a;

    iput-object v9, v10, Lo0/n;->f:Landroidx/work/impl/WorkDatabase;

    iput-object v0, v10, Lo0/n;->h:Ljava/util/List;

    iput-object v11, v10, Lo0/n;->i:Lo0/e;

    new-instance v0, Lx0/h;

    const/4 v2, 0x1

    invoke-direct {v0, v9, v2}, Lx0/h;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    iput-object v0, v10, Lo0/n;->j:Lx0/h;

    const/4 v0, 0x0

    iput-boolean v0, v10, Lo0/n;->k:Z

    invoke-static {v1}, Lo0/m;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, v10, Lo0/n;->g:Ln1/a;

    new-instance v2, Lx0/e;

    invoke-direct {v2, v1, v10}, Lx0/e;-><init>(Landroid/content/Context;Lo0/n;)V

    invoke-virtual {v0, v2}, Ln1/a;->f(Ljava/lang/Runnable;)V

    return-void

    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot initialize WorkManager in direct boot mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to create an instance of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot access the constructor "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Cannot find implementation for "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    throw v5

    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot build a database with null or empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static N(Landroid/content/Context;)Lo0/n;
    .locals 2

    sget-object v0, Lo0/n;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Lo0/n;->n:Lo0/n;

    if-eqz v1, :cond_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    sget-object v1, Lo0/n;->o:Lo0/n;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-nez v1, :cond_2

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    instance-of v1, p0, Ln0/b;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Ln0/b;

    check-cast v1, Lcom/samsung/android/wallpaper/live/SpriteWallpaperApp;

    invoke-virtual {v1}, Lcom/samsung/android/wallpaper/live/SpriteWallpaperApp;->a()Ln0/c;

    move-result-object v1

    invoke-static {p0, v1}, Lo0/n;->O(Landroid/content/Context;Ln0/c;)V

    invoke-static {p0}, Lo0/n;->N(Landroid/content/Context;)Lo0/n;

    move-result-object v1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v1

    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public static O(Landroid/content/Context;Ln0/c;)V
    .locals 6

    sget-object v0, Lo0/n;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo0/n;->n:Lo0/n;

    if-eqz v1, :cond_1

    sget-object v2, Lo0/n;->o:Lo0/n;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Lo0/n;->o:Lo0/n;

    if-nez v1, :cond_2

    new-instance v1, Lo0/n;

    new-instance v2, Ln1/a;

    iget-object v3, p1, Ln0/c;->b:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, v2, Ln1/a;->b:Ljava/lang/Object;

    new-instance v4, LH/o;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v2}, LH/o;-><init>(ILjava/lang/Object;)V

    iput-object v4, v2, Ln1/a;->c:Ljava/lang/Object;

    new-instance v4, Landroidx/appcompat/app/o;

    invoke-direct {v4, v3}, Landroidx/appcompat/app/o;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v4, v2, Ln1/a;->a:Ljava/lang/Object;

    invoke-direct {v1, p0, p1, v2}, Lo0/n;-><init>(Landroid/content/Context;Ln0/c;Ln1/a;)V

    sput-object v1, Lo0/n;->o:Lo0/n;

    :cond_2
    sget-object p0, Lo0/n;->o:Lo0/n;

    sput-object p0, Lo0/n;->n:Lo0/n;

    :cond_3
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final M(Ljava/lang/String;)Lw0/e;
    .locals 2

    new-instance v0, Lx0/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lx0/b;-><init>(Lo0/n;Ljava/lang/Object;I)V

    iget-object p0, p0, Lo0/n;->g:Ln1/a;

    invoke-virtual {p0, v0}, Ln1/a;->f(Ljava/lang/Runnable;)V

    iget-object p0, v0, Lx0/b;->d:Lw0/e;

    return-object p0
.end method

.method public final P()V
    .locals 2

    sget-object v0, Lo0/n;->p:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lo0/n;->k:Z

    iget-object v1, p0, Lo0/n;->l:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    const/4 v1, 0x0

    iput-object v1, p0, Lo0/n;->l:Landroid/content/BroadcastReceiver$PendingResult;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final Q()V
    .locals 4

    iget-object v0, p0, Lo0/n;->f:Landroidx/work/impl/WorkDatabase;

    iget-object v1, p0, Lo0/n;->d:Landroid/content/Context;

    sget-object v2, Lr0/b;->h:Ljava/lang/String;

    const-string v2, "jobscheduler"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobScheduler;

    if-eqz v2, :cond_0

    invoke-static {v1, v2}, Lr0/b;->b(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getId()I

    move-result v3

    invoke-static {v2, v3}, Lr0/b;->a(Landroid/app/job/JobScheduler;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->t()Lw0/q;

    move-result-object v1

    iget-object v2, v1, Lw0/q;->a:Ljava/lang/Object;

    check-cast v2, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->b()V

    iget-object v1, v1, Lw0/q;->l:Ljava/lang/Object;

    check-cast v1, Lw0/h;

    invoke-virtual {v1}, LF4/x;->a()Lf0/i;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->c()V

    :try_start_0
    invoke-virtual {v3}, Lf0/i;->a()I

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->k()V

    invoke-virtual {v1, v3}, LF4/x;->h(Lf0/i;)V

    iget-object v1, p0, Lo0/n;->e:Ln0/c;

    iget-object p0, p0, Lo0/n;->h:Ljava/util/List;

    invoke-static {v1, v0, p0}, Lo0/h;->a(Ln0/c;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->k()V

    invoke-virtual {v1, v3}, LF4/x;->h(Lf0/i;)V

    throw p0
.end method

.method public final R(Lo0/i;LG4/d;)V
    .locals 3

    iget-object v0, p0, Lo0/n;->g:Ln1/a;

    new-instance v1, LH/p;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, LH/p;-><init>(I)V

    iput-object p0, v1, LH/p;->e:Ljava/lang/Object;

    iput-object p1, v1, LH/p;->f:Ljava/lang/Object;

    iput-object p2, v1, LH/p;->g:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ln1/a;->f(Ljava/lang/Runnable;)V

    return-void
.end method

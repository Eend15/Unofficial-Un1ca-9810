.class public final LK2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK2/a;


# instance fields
.field public final synthetic a:I

.field public final b:LO2/a;

.field public final c:LC2/b;

.field public final d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LO2/a;LC2/b;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, LK2/e;->a:I

    iput-object p1, p0, LK2/e;->b:LO2/a;

    iput-object p2, p0, LK2/e;->c:LC2/b;

    iput-object p3, p0, LK2/e;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LO2/a;LC2/b;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LK2/e;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, LK2/e;->d:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, LK2/e;->b:LO2/a;

    .line 5
    iput-object p3, p0, LK2/e;->c:LC2/b;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget v4, v1, LK2/e;->a:I

    packed-switch v4, :pswitch_data_0

    const-string v4, "context"

    invoke-static {v0, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v1, LK2/e;->b:LO2/a;

    invoke-virtual {v4}, LO2/a;->b()LS2/b;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "handleCall, "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "QueryGenerateStateCallHandler"

    invoke-virtual {v5, v7, v6}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lw0/f;->s(Landroid/os/Bundle;)LH2/a;

    move-result-object v2

    iget-wide v5, v2, LH2/a;->b:J

    const-string v8, "id"

    invoke-virtual {v3, v8, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget v8, v2, LH2/a;->c:I

    const-string v9, "which"

    invoke-virtual {v3, v9, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "generate_image_"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Lo0/n;->N(Landroid/content/Context;)Lo0/n;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, LH/p;

    invoke-direct {v11, v10, v9}, LH/p;-><init>(Lo0/n;Ljava/lang/String;)V

    iget-object v9, v10, Lo0/n;->g:Ln1/a;

    iget-object v9, v9, Ln1/a;->a:Ljava/lang/Object;

    check-cast v9, Landroidx/appcompat/app/o;

    invoke-virtual {v9, v11}, Landroidx/appcompat/app/o;->execute(Ljava/lang/Runnable;)V

    const-string v9, "getWorkInfosByTag(...)"

    iget-object v10, v11, LH/p;->e:Ljava/lang/Object;

    check-cast v10, Ly0/k;

    invoke-static {v10, v9}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Ly0/i;->get()Ljava/lang/Object;

    move-result-object v9

    const-string v10, "get(...)"

    invoke-static {v9, v10}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Iterable;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x2

    const-string v14, "is_running"

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ln0/y;

    iget v10, v10, Ln0/y;->b:I

    const-string v15, "getState(...)"

    invoke-static {v10, v15}, LB/a;->y(ILjava/lang/String;)V

    invoke-virtual {v4}, LO2/a;->b()LS2/b;

    move-result-object v15

    invoke-static {v10}, Li4/b;->n(I)Ljava/lang/String;

    move-result-object v13

    const-string v12, "checkState, state: "

    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v7, v12}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v10, v11, :cond_0

    const/4 v11, 0x1

    goto :goto_1

    :cond_0
    const/4 v11, 0x0

    :goto_1
    invoke-virtual {v3, v14, v11}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    const/4 v12, 0x1

    goto :goto_2

    :cond_1
    const/4 v12, 0x0

    :goto_2
    const-string v10, "is_scheduled"

    invoke-virtual {v3, v10, v12}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const-string v9, "activity"

    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v9, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-static {v0, v9}, LF3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v9, 0x32

    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningServiceInfo;

    const-class v10, Lcom/samsung/android/wallpaper/magician/core/weather/service/GenerateAllService;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    iget-object v12, v9, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v4}, LO2/a;->b()LS2/b;

    move-result-object v0

    const-string v10, "isServiceRunning true"

    invoke-virtual {v0, v7, v10}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, v9, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_5

    const/4 v0, 0x1

    invoke-virtual {v3, v14, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_4

    :cond_5
    const/4 v0, 0x1

    :goto_4
    new-instance v9, Ljava/io/File;

    iget-object v10, v1, LK2/e;->c:LC2/b;

    invoke-virtual {v10, v8, v5, v6}, LC2/b;->b(IJ)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_9

    array-length v6, v5

    if-le v6, v0, :cond_6

    array-length v6, v5

    sub-int/2addr v6, v0

    goto :goto_5

    :cond_6
    const/4 v6, 0x0

    :goto_5
    iget-boolean v0, v2, LH2/a;->s:Z

    if-eqz v0, :cond_7

    goto :goto_6

    :cond_7
    const/16 v11, 0x10

    :goto_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v8, v5

    const/4 v13, 0x0

    :goto_7
    if-ge v13, v8, :cond_8

    aget-object v9, v5, v13

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_8
    const-string v5, "generated_count"

    invoke-virtual {v3, v5, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "total_count"

    invoke-virtual {v3, v5, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "generated_key_list"

    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "generated_uri_list"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, v1, LK2/e;->d:Ljava/lang/Object;

    check-cast v0, LF2/h;

    iget-object v0, v0, LF2/h;->a:LE2/b;

    iget-object v0, v0, LE2/b;->a:LX2/a;

    invoke-interface {v0}, LX2/a;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lvm_version"

    invoke-virtual {v3, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-string v0, "provider_call_result"

    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v4}, LO2/a;->b()LS2/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleCall, request success, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string v4, "context"

    invoke-static {v0, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, LK2/e;->b:LO2/a;

    invoke-virtual {v0}, LO2/a;->b()LS2/b;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "handleCall, "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "GenerateSingleImageCallHandler"

    invoke-virtual {v4, v6, v5}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lw0/f;->s(Landroid/os/Bundle;)LH2/a;

    move-result-object v2

    iget-wide v4, v2, LH2/a;->b:J

    const-string v7, "id"

    invoke-virtual {v3, v7, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget v7, v2, LH2/a;->c:I

    const-string v8, "which"

    invoke-virtual {v3, v8, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v8, v2, LH2/a;->j:Landroid/os/ParcelFileDescriptor;

    if-eqz v8, :cond_b

    iget-object v9, v2, LH2/a;->n:Ljava/lang/String;

    const/4 v10, 0x0

    if-eqz v9, :cond_a

    iget-object v9, v2, LH2/a;->o:Ljava/lang/String;

    if-eqz v9, :cond_a

    iget-object v9, v1, LK2/e;->d:Ljava/lang/Object;

    check-cast v9, LL2/b;

    const/16 v11, 0xca

    invoke-virtual {v9, v11}, LL2/b;->a(I)LL2/a;

    move-result-object v9

    if-eqz v9, :cond_a

    invoke-virtual {v0}, LO2/a;->a()LU0/e;

    move-result-object v11

    iget-object v1, v1, LK2/e;->c:LC2/b;

    invoke-virtual {v1, v7, v4, v5}, LC2/b;->g(IJ)Ljava/lang/String;

    move-result-object v12

    new-array v13, v10, [Ljava/lang/String;

    invoke-static {v12, v13}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v12

    const-string v13, "get(...)"

    invoke-static {v12, v13}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v11, v8, v12, v14}, LU0/e;->e(Landroid/os/ParcelFileDescriptor;Ljava/nio/file/Path;Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;

    invoke-virtual {v0}, LO2/a;->a()LU0/e;

    move-result-object v8

    invoke-virtual {v1, v7, v4, v5}, LC2/b;->d(IJ)Ljava/lang/String;

    move-result-object v11

    new-array v10, v10, [Ljava/lang/String;

    invoke-static {v11, v10}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v10

    invoke-static {v10, v13}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v12, v2, LH2/a;->k:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v8, v12, v10, v11}, LU0/e;->e(Landroid/os/ParcelFileDescriptor;Ljava/nio/file/Path;Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;

    invoke-virtual {v1, v7, v4, v5}, LC2/b;->g(IJ)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, LH2/a;->l:Ljava/lang/String;

    invoke-virtual {v1, v7, v4, v5}, LC2/b;->d(IJ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, LH2/a;->m:Ljava/lang/String;

    new-instance v1, LF2/a;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4}, LF2/a;-><init>(LH2/a;I)V

    iget-object v4, v9, LL2/a;->a:Landroid/content/Context;

    invoke-static {v4}, Lo0/n;->N(Landroid/content/Context;)Lo0/n;

    move-result-object v4

    invoke-static {v2}, LM2/f;->c(LH2/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lo0/n;->M(Ljava/lang/String;)Lw0/e;

    invoke-virtual {v9, v1}, LL2/a;->a(LF2/a;)V

    const/4 v10, 0x1

    :cond_a
    const-string v1, "provider_call_result"

    invoke-virtual {v3, v1, v10}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    if-nez v10, :cond_b

    invoke-virtual {v0}, LO2/a;->b()LS2/b;

    move-result-object v0

    const-string v1, "handleCall, generate failed"

    invoke-virtual {v0, v6, v1}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void

    :pswitch_1
    const-string v4, "context"

    invoke-static {v0, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v1, LK2/e;->b:LO2/a;

    invoke-virtual {v4}, LO2/a;->b()LS2/b;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "handleCall, "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ExportGeneratedFilesCallHandler"

    invoke-virtual {v0, v6, v5}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lw0/f;->s(Landroid/os/Bundle;)LH2/a;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    iget-object v5, v1, LK2/e;->c:LC2/b;

    iget v7, v0, LH2/a;->c:I

    iget-wide v8, v0, LH2/a;->b:J

    invoke-virtual {v5, v7, v8, v9}, LC2/b;->b(IJ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_10

    array-length v10, v2

    const/4 v12, 0x0

    :goto_8
    if-ge v12, v10, :cond_10

    aget-object v0, v2, v12

    invoke-virtual {v4}, LO2/a;->c()LG4/d;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    iget-object v15, v1, LK2/e;->d:Ljava/lang/Object;

    check-cast v15, Landroid/content/Context;

    const-string v11, "fileName"

    invoke-static {v13, v11}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "_display_name"

    invoke-virtual {v11, v5, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mime_type"

    const-string v13, "image/jpeg"

    invoke-virtual {v11, v5, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "relative_path"

    invoke-virtual {v11, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v5, "is_pending"

    invoke-virtual {v11, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    :try_start_0
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "video"

    invoke-static {v13, v1}, LV4/m;->o0(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :cond_c
    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v15, v0, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    if-eqz v1, :cond_e

    :try_start_1
    const-string v0, "rwt"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object/from16 v16, v2

    const/4 v13, 0x0

    :try_start_2
    invoke-virtual {v15, v1, v0, v13}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-static {v2}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    const/16 v0, 0x800

    move/from16 v17, v10

    :try_start_4
    new-array v10, v0, [B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object/from16 v19, v4

    move-object/from16 v18, v6

    :goto_9
    const/4 v6, 0x0

    :try_start_5
    invoke-virtual {v14, v10, v6, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    const/4 v0, -0x1

    if-eq v4, v0, :cond_d

    :try_start_6
    invoke-virtual {v13, v10, v6, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/16 v0, 0x800

    goto :goto_9

    :catchall_0
    move-exception v0

    move-object v4, v0

    const/4 v6, 0x0

    goto :goto_f

    :cond_d
    :try_start_7
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const/4 v4, 0x0

    :try_start_8
    invoke-static {v13, v4}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-static {v2, v4}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    const/4 v6, 0x0

    :try_start_a
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v15, v1, v11, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_14

    :catch_0
    move-exception v0

    goto/16 :goto_13

    :catch_1
    move-exception v0

    :goto_a
    const/4 v6, 0x0

    goto/16 :goto_13

    :catchall_1
    move-exception v0

    :goto_b
    const/4 v6, 0x0

    :goto_c
    move-object v4, v0

    goto :goto_10

    :catchall_2
    move-exception v0

    :goto_d
    const/4 v6, 0x0

    :goto_e
    move-object v4, v0

    goto :goto_f

    :catchall_3
    move-exception v0

    goto :goto_e

    :catchall_4
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v18, v6

    goto :goto_d

    :goto_f
    :try_start_b
    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :catchall_5
    move-exception v0

    move-object v5, v0

    :try_start_c
    invoke-static {v13, v4}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :catchall_6
    move-exception v0

    goto :goto_c

    :catchall_7
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v18, v6

    move/from16 v17, v10

    goto :goto_b

    :goto_10
    :try_start_d
    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    :catchall_8
    move-exception v0

    move-object v5, v0

    :try_start_e
    invoke-static {v2, v4}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    :catch_2
    move-exception v0

    :goto_11
    move-object/from16 v19, v4

    move-object/from16 v18, v6

    move/from16 v17, v10

    goto :goto_a

    :catch_3
    move-exception v0

    move-object/from16 v16, v2

    goto :goto_11

    :cond_e
    move-object/from16 v16, v2

    move-object/from16 v19, v4

    move-object/from16 v18, v6

    move/from16 v17, v10

    const/4 v6, 0x0

    :try_start_f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to create new Image MediaStore record."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4

    :catch_4
    move-exception v0

    :goto_12
    const/4 v1, 0x0

    goto :goto_13

    :catch_5
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v19, v4

    move-object/from16 v18, v6

    move/from16 v17, v10

    const/4 v6, 0x0

    goto :goto_12

    :goto_13
    if-eqz v1, :cond_f

    const/4 v2, 0x0

    invoke-virtual {v15, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_14
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move/from16 v10, v17

    move-object/from16 v6, v18

    move-object/from16 v4, v19

    goto/16 :goto_8

    :cond_10
    move-object/from16 v19, v4

    move-object/from16 v18, v6

    const-string v0, "id"

    invoke-virtual {v3, v0, v8, v9}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "which"

    invoke-virtual {v3, v0, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "provider_call_result"

    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual/range {v19 .. v19}, LO2/a;->b()LS2/b;

    move-result-object v0

    const-string v1, "handleCall, request success"

    move-object/from16 v2, v18

    invoke-virtual {v0, v2, v1}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

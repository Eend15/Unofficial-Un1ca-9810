.class public final LK2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK2/a;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:LO2/a;

.field public final c:LC2/b;

.field public final d:LL2/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;LO2/a;LC2/b;LL2/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK2/f;->a:Landroid/content/Context;

    iput-object p2, p0, LK2/f;->b:LO2/a;

    iput-object p3, p0, LK2/f;->c:LC2/b;

    iput-object p4, p0, LK2/f;->d:LL2/b;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-string v2, "context"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, LK2/f;->b:LO2/a;

    invoke-virtual {v2}, LO2/a;->b()LS2/b;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "handleCall "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v6, p2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "GenerateAllImagesCallHandler"

    invoke-virtual {v4, v7, v5}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lw0/f;->s(Landroid/os/Bundle;)LH2/a;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    iget-object v6, v0, LK2/f;->c:LC2/b;

    iget v8, v4, LH2/a;->c:I

    invoke-virtual {v6, v8}, LC2/b;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    iget-wide v9, v4, LH2/a;->b:J

    const-string v11, "_"

    const-string v12, "generate_image_"

    if-eqz v5, :cond_2

    array-length v13, v5

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v13, :cond_2

    aget-object v15, v5, v14

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, LO2/a;->b()LS2/b;

    move-result-object v3

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v16, v5

    const-string v5, "cancelPreviousScheduled, cancel id "

    invoke-static {v5, v6}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v7, v5}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lo0/n;->N(Landroid/content/Context;)Lo0/n;

    move-result-object v3

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getName(...)"

    invoke-static {v5, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    move/from16 v17, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lo0/n;->M(Ljava/lang/String;)Lw0/e;

    const/16 v3, 0x11

    if-ne v8, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v15}, LB3/j;->K(Ljava/io/File;)Z

    goto :goto_1

    :cond_1
    move-object/from16 v16, v5

    move/from16 v17, v13

    :goto_1
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, p1

    move-object/from16 v5, v16

    move/from16 v13, v17

    goto :goto_0

    :cond_2
    const-string v3, "id"

    invoke-virtual {v1, v3, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v5, "which"

    invoke-virtual {v1, v5, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v6, v4, LH2/a;->r:Z

    const-string v13, "provider_call_result"

    if-nez v6, :cond_3

    invoke-virtual {v2}, LO2/a;->b()LS2/b;

    move-result-object v0

    const-string v3, "handleCall, this is an indoor image. ignored it!"

    invoke-virtual {v0, v7, v3}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_3
    iget-object v6, v4, LH2/a;->j:Landroid/os/ParcelFileDescriptor;

    iget v14, v4, LH2/a;->e:I

    const/16 v15, 0x12c

    if-ne v14, v15, :cond_5

    iget-object v11, v0, LK2/f;->a:Landroid/content/Context;

    const-string v12, "startGenerateAllService start, "

    if-nez v6, :cond_4

    invoke-virtual {v2}, LO2/a;->d()LU0/e;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v2, "startGenerateAllService, sourceFd is null"

    invoke-virtual {v0, v7, v2, v3}, LU0/e;->y(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_4
    invoke-virtual {v0, v4}, LK2/f;->b(LH2/a;)V

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v6, Lcom/samsung/android/wallpaper/magician/core/weather/service/GenerateAllService;

    invoke-direct {v0, v11, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "fg_service_working_type"

    const/16 v14, 0x64

    invoke-virtual {v0, v6, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "caller_package_name"

    iget-object v15, v4, LH2/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v6, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "engine_type"

    iget v5, v4, LH2/a;->d:I

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "source_path"

    iget-object v5, v4, LH2/a;->l:Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "source_alpha_path"

    iget-object v5, v4, LH2/a;->m:Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "is_night"

    iget-boolean v5, v4, LH2/a;->s:Z

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "generating_count_at_once"

    invoke-virtual {v0, v3, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "force_square_generate"

    iget-boolean v4, v4, LH2/a;->t:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2}, LO2/a;->d()LU0/e;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v7, v4, v6}, LU0/e;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v11, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v2}, LO2/a;->d()LU0/e;

    move-result-object v2

    const-string v3, "startGenerateAllService, error: "

    invoke-static {v3, v0}, LB/a;->l(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v7, v0, v4}, LU0/e;->y(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v6, v3

    :goto_2
    invoke-virtual {v1, v13, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    :cond_5
    const/4 v3, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lo0/n;->N(Landroid/content/Context;)Lo0/n;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, LH/p;

    invoke-direct {v9, v8, v5}, LH/p;-><init>(Lo0/n;Ljava/lang/String;)V

    iget-object v5, v8, Lo0/n;->g:Ln1/a;

    iget-object v5, v5, Ln1/a;->a:Ljava/lang/Object;

    check-cast v5, Landroidx/appcompat/app/o;

    invoke-virtual {v5, v9}, Landroidx/appcompat/app/o;->execute(Ljava/lang/Runnable;)V

    iget-object v5, v9, LH/p;->e:Ljava/lang/Object;

    check-cast v5, Ly0/k;

    invoke-virtual {v5}, Ly0/i;->get()Ljava/lang/Object;

    move-result-object v5

    const-string v8, "get(...)"

    invoke-static {v5, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ln0/y;

    iget v8, v8, Ln0/y;->b:I

    const-string v9, "getState(...)"

    invoke-static {v8, v9}, LB/a;->y(ILjava/lang/String;)V

    const/4 v9, 0x2

    if-eq v8, v9, :cond_7

    const/4 v9, 0x1

    if-ne v8, v9, :cond_6

    :cond_7
    invoke-virtual {v2}, LO2/a;->b()LS2/b;

    move-result-object v0

    const-string v4, "handleCall, has scheduled. ignored it!"

    invoke-virtual {v0, v7, v4}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_3
    move v6, v3

    goto :goto_4

    :cond_9
    const/4 v9, 0x1

    if-eqz v6, :cond_8

    iget-object v5, v0, LK2/f;->d:LL2/b;

    invoke-virtual {v5, v14}, LL2/b;->a(I)LL2/a;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v0, v4}, LK2/f;->b(LH2/a;)V

    new-instance v0, LF2/a;

    const/4 v3, 0x1

    invoke-direct {v0, v4, v3}, LF2/a;-><init>(LH2/a;I)V

    iget-object v3, v5, LL2/a;->a:Landroid/content/Context;

    invoke-static {v3}, Lo0/n;->N(Landroid/content/Context;)Lo0/n;

    move-result-object v3

    invoke-static {v4}, LM2/f;->c(LH2/a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lo0/n;->M(Ljava/lang/String;)Lw0/e;

    invoke-virtual {v5, v0}, LL2/a;->a(LF2/a;)V

    move v6, v9

    :goto_4
    invoke-virtual {v1, v13, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    if-nez v6, :cond_a

    invoke-virtual {v2}, LO2/a;->b()LS2/b;

    move-result-object v0

    const-string v1, "handleCall, request failed"

    invoke-virtual {v0, v7, v1}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public final b(LH2/a;)V
    .locals 10

    iget v0, p1, LH2/a;->c:I

    iget-object v1, p0, LK2/f;->c:LC2/b;

    iget-wide v2, p1, LH2/a;->b:J

    invoke-virtual {v1, v0, v2, v3}, LC2/b;->g(IJ)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    iget-object p0, p0, LK2/f;->b:LO2/a;

    const-string v5, "get(...)"

    const/4 v6, 0x0

    if-nez v4, :cond_0

    invoke-virtual {p0}, LO2/a;->a()LU0/e;

    move-result-object v4

    new-array v7, v6, [Ljava/lang/String;

    invoke-static {v0, v7}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v7

    invoke-static {v7, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, p1, LH2/a;->j:Landroid/os/ParcelFileDescriptor;

    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v4, v8, v7, v9}, LU0/e;->e(Landroid/os/ParcelFileDescriptor;Ljava/nio/file/Path;Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;

    :cond_0
    iput-object v0, p1, LH2/a;->l:Ljava/lang/String;

    iget v0, p1, LH2/a;->c:I

    invoke-virtual {v1, v0, v2, v3}, LC2/b;->d(IJ)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, LO2/a;->a()LU0/e;

    move-result-object p0

    new-array v1, v6, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v3, p1, LH2/a;->k:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, v3, v1, v2}, LU0/e;->e(Landroid/os/ParcelFileDescriptor;Ljava/nio/file/Path;Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;

    :cond_1
    iput-object v0, p1, LH2/a;->m:Ljava/lang/String;

    return-void
.end method

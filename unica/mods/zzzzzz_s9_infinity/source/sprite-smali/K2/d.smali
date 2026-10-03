.class public final LK2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK2/a;


# instance fields
.field public final synthetic a:I

.field public final b:LO2/a;

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LO2/a;LC2/b;I)V
    .locals 0

    .line 1
    iput p3, p0, LK2/d;->a:I

    iput-object p1, p0, LK2/d;->b:LO2/a;

    iput-object p2, p0, LK2/d;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LO2/a;LC2/b;)V
    .locals 0

    const/4 p3, 0x3

    iput p3, p0, LK2/d;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, LK2/d;->c:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, LK2/d;->b:LO2/a;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget v4, v0, LK2/d;->a:I

    packed-switch v4, :pswitch_data_0

    const-string v4, "context"

    invoke-static {v1, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, LK2/d;->b:LO2/a;

    invoke-virtual {v4}, LO2/a;->b()LS2/b;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "handleCall, "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CancelGenerateCallHandler"

    invoke-virtual {v5, v7, v6}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lw0/f;->s(Landroid/os/Bundle;)LH2/a;

    move-result-object v2

    iget v5, v2, LH2/a;->c:I

    iget-wide v8, v2, LH2/a;->b:J

    iget v6, v2, LH2/a;->e:I

    const/16 v10, 0x12c

    const-string v11, "which"

    const-string v12, "id"

    if-ne v6, v10, :cond_0

    iget-object v0, v0, LK2/d;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    const-string v1, "cancelForegroundService start, "

    const/4 v6, 0x0

    :try_start_0
    new-instance v10, Landroid/content/Intent;

    const-class v13, Lcom/samsung/android/wallpaper/magician/core/weather/service/GenerateAllService;

    invoke-direct {v10, v0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v10}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v13, "fg_service_working_type"

    const/16 v14, 0xc8

    invoke-virtual {v10, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v13, "caller_package_name"

    iget-object v2, v2, LH2/a;->a:Ljava/lang/String;

    invoke-virtual {v10, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v10, v12, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {v10, v11, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v4}, LO2/a;->d()LU0/e;

    move-result-object v10

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v13, v6, [Ljava/lang/Object;

    invoke-virtual {v10, v7, v1, v13}, LU0/e;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v4}, LO2/a;->d()LU0/e;

    move-result-object v1

    const-string v2, "cancelForegroundService, error: "

    invoke-static {v2, v0}, LB/a;->l(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v7, v0, v2}, LU0/e;->y(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static/range {p1 .. p1}, Lo0/n;->N(Landroid/content/Context;)Lo0/n;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "generate_image_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo0/n;->M(Ljava/lang/String;)Lw0/e;

    move-result-object v0

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v3, v12, v8, v9}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v3, v11, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "provider_call_result"

    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v4}, LO2/a;->b()LS2/b;

    move-result-object v0

    const-string v1, "handleCall, request success"

    invoke-virtual {v0, v7, v1}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string v4, "context"

    invoke-static {v1, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lw0/f;->s(Landroid/os/Bundle;)LH2/a;

    move-result-object v1

    iget-wide v4, v1, LH2/a;->b:J

    const-string v2, "id"

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget v2, v1, LH2/a;->c:I

    const-string v6, "which"

    invoke-virtual {v3, v6, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v6, v0, LK2/d;->b:LO2/a;

    invoke-virtual {v6}, LO2/a;->b()LS2/b;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "handleCall, "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "GetGeneratedImageCallHandler"

    invoke-virtual {v7, v9, v8}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    const-string v8, "provider_call_result"

    const/4 v10, 0x0

    if-gtz v7, :cond_1

    invoke-virtual {v3, v8, v10}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_8

    :cond_1
    iget-boolean v7, v1, LH2/a;->s:Z

    const-string v11, "none"

    if-eqz v7, :cond_2

    iput-object v11, v1, LH2/a;->n:Ljava/lang/String;

    :cond_2
    iget-object v7, v1, LH2/a;->n:Ljava/lang/String;

    if-eqz v7, :cond_e

    iget-object v15, v1, LH2/a;->o:Ljava/lang/String;

    if-eqz v15, :cond_e

    new-instance v14, Ljava/io/File;

    iget-object v0, v0, LK2/d;->c:Ljava/lang/Object;

    check-cast v0, LC2/b;

    iget v13, v1, LH2/a;->c:I

    move-object/from16 p2, v11

    iget-wide v10, v1, LH2/a;->b:J

    move-object v12, v0

    move/from16 v22, v2

    move-object v2, v14

    move-object v14, v7

    move-object/from16 p0, v15

    move-wide/from16 v16, v10

    invoke-virtual/range {v12 .. v17}, LC2/b;->f(ILjava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-boolean v10, v1, LH2/a;->u:Z

    if-eqz v10, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_3

    const/4 v10, 0x0

    invoke-virtual {v3, v8, v10}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_8

    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_b

    iget-object v2, v1, LH2/a;->n:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v11, -0x520be778

    if-eq v10, v11, :cond_8

    const v11, 0x63f6418

    if-eq v10, v11, :cond_6

    const v11, 0x49eb37c4    # 1926904.5f

    if-eq v10, v11, :cond_4

    goto :goto_1

    :cond_4
    const-string v10, "morning"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v7, "sunrise"

    :cond_5
    :goto_1
    move-object/from16 v10, p0

    move-object/from16 v2, p2

    goto :goto_2

    :cond_6
    const-string v10, "night"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    const-string v7, "midnight"

    goto :goto_1

    :cond_8
    const-string v10, "evening"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_1

    :cond_9
    const-string v7, "sunset"

    goto :goto_1

    :goto_2
    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    move-object v11, v2

    goto :goto_3

    :cond_a
    move-object v11, v10

    :goto_3
    new-instance v14, Ljava/io/File;

    iget v2, v1, LH2/a;->c:I

    iget-wide v12, v1, LH2/a;->b:J

    move-object/from16 v16, v0

    move/from16 v17, v2

    move-object/from16 v18, v7

    move-object/from16 v19, v11

    move-wide/from16 v20, v12

    invoke-virtual/range {v16 .. v21}, LC2/b;->f(ILjava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v14, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, LO2/a;->b()LS2/b;

    move-result-object v2

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    const-string v12, "alternative file: "

    invoke-static {v12, v10}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    move-object/from16 v10, p0

    move-object v14, v2

    move-object/from16 v18, v7

    move-object/from16 v19, v10

    :goto_4
    new-instance v2, Ljava/io/File;

    iget v7, v1, LH2/a;->c:I

    iget-wide v10, v1, LH2/a;->b:J

    move-object/from16 v16, v0

    move/from16 v17, v7

    move-wide/from16 v20, v10

    invoke-virtual/range {v16 .. v21}, LC2/b;->e(ILjava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v7, "requested_alpha_uri"

    const-string v10, "requested_uri"

    const/4 v11, 0x1

    if-eqz v1, :cond_c

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v6}, LO2/a;->b()LS2/b;

    move-result-object v0

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v12, "bg existed, "

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",fg existed, "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v14}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v10, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/high16 v0, 0x10000000

    invoke-static {v14, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    const-string v4, "open(...)"

    invoke-static {v1, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "requested_fd"

    invoke-virtual {v3, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v3, v7, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-static {v2, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-static {v0, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "requested_alpha_fd"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :goto_5
    move v10, v11

    goto :goto_7

    :cond_c
    invoke-virtual {v6}, LO2/a;->b()LS2/b;

    move-result-object v1

    const-string v2, "bg is NOT existed, original will be return"

    invoke-virtual {v1, v9, v2}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    move/from16 v2, v22

    invoke-virtual {v0, v2, v4, v5}, LC2/b;->g(IJ)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v3, v10, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move v10, v11

    goto :goto_6

    :cond_d
    const/4 v10, 0x0

    :goto_6
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0, v2, v4, v5}, LC2/b;->d(IJ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_5

    :cond_e
    const/4 v10, 0x0

    :cond_f
    :goto_7
    invoke-virtual {v3, v8, v10}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    if-nez v10, :cond_10

    invoke-virtual {v6}, LO2/a;->d()LU0/e;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "handleCall, file is not existed"

    invoke-virtual {v0, v9, v2, v1}, LU0/e;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    :goto_8
    return-void

    :pswitch_1
    const-string v4, "context"

    invoke-static {v1, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, LK2/d;->b:LO2/a;

    invoke-virtual {v1}, LO2/a;->b()LS2/b;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "handleCall, "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DeleteGeneratedImageCallHandler"

    invoke-virtual {v4, v6, v5}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lw0/f;->s(Landroid/os/Bundle;)LH2/a;

    move-result-object v2

    iget-wide v4, v2, LH2/a;->b:J

    const-string v7, "id"

    invoke-virtual {v3, v7, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget v2, v2, LH2/a;->c:I

    const-string v7, "which"

    invoke-virtual {v3, v7, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v7, Ljava/io/File;

    iget-object v0, v0, LK2/d;->c:Ljava/lang/Object;

    check-cast v0, LC2/b;

    invoke-virtual {v0, v2, v4, v5}, LC2/b;->b(IJ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, LO2/a;->b()LS2/b;

    move-result-object v0

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v4, "delete, "

    invoke-static {v4, v2}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, LB3/j;->K(Ljava/io/File;)Z

    move-result v0

    const-string v2, "provider_call_result"

    invoke-virtual {v3, v2, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v0, :cond_11

    invoke-virtual {v1}, LO2/a;->b()LS2/b;

    move-result-object v0

    const-string v1, "handleCall, request success"

    invoke-virtual {v0, v6, v1}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_11
    invoke-virtual {v1}, LO2/a;->b()LS2/b;

    move-result-object v0

    const-string v1, "handleCall, request failed"

    invoke-virtual {v0, v6, v1}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-void

    :pswitch_2
    const-string v4, "context"

    invoke-static {v1, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, LK2/d;->b:LO2/a;

    invoke-virtual {v4}, LO2/a;->b()LS2/b;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "handleCall, "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ClearGeneratedImageCallHandler"

    invoke-virtual {v5, v7, v6}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lw0/f;->s(Landroid/os/Bundle;)LH2/a;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lo0/n;->N(Landroid/content/Context;)Lo0/n;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "generate_image_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, v2, LH2/a;->b:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, LH2/a;->c:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lo0/n;->M(Ljava/lang/String;)Lw0/e;

    const-string v1, "id"

    invoke-virtual {v3, v1, v8, v9}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "which"

    invoke-virtual {v3, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Ljava/io/File;

    iget-object v0, v0, LK2/d;->c:Ljava/lang/Object;

    check-cast v0, LC2/b;

    invoke-virtual {v0, v2, v8, v9}, LC2/b;->b(IJ)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v5, 0x0

    if-eqz v1, :cond_14

    array-length v6, v1

    move v10, v5

    :goto_a
    if-ge v5, v6, :cond_13

    aget-object v10, v1, v5

    invoke-virtual {v0, v2, v8, v9}, LC2/b;->g(IJ)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v2, v8, v9}, LC2/b;->d(IJ)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_12

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v11}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_12

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v12}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_12

    invoke-virtual {v4}, LO2/a;->b()LS2/b;

    move-result-object v11

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    const-string v13, "delete, "

    invoke-static {v13, v12}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v7, v12}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_12
    add-int/lit8 v5, v5, 0x1

    const/4 v10, 0x1

    goto :goto_a

    :cond_13
    move v5, v10

    :cond_14
    const-string v0, "provider_call_result"

    invoke-virtual {v3, v0, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    if-nez v5, :cond_15

    invoke-virtual {v4}, LO2/a;->b()LS2/b;

    move-result-object v0

    const-string v1, "handleCall, request failed"

    invoke-virtual {v0, v7, v1}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_15
    invoke-virtual {v4}, LO2/a;->b()LS2/b;

    move-result-object v0

    const-string v1, "handleCall, request success"

    invoke-virtual {v0, v7, v1}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

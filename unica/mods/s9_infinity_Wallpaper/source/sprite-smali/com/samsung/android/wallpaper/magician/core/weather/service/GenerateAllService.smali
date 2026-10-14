.class public final Lcom/samsung/android/wallpaper/magician/core/weather/service/GenerateAllService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/samsung/android/wallpaper/magician/core/weather/service/GenerateAllService;",
        "Landroid/app/Service;",
        "<init>",
        "()V",
        "WallpaperMagician_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public d:LF2/d;

.field public e:LI2/b;

.field public f:LO2/b;

.field public g:LW4/x;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()LO2/a;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wallpaper/magician/core/weather/service/GenerateAllService;->f:LO2/b;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "utils"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    new-instance p0, LD3/a;

    const-string p1, "An operation is not implemented: Not Supported"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onCreate()V
    .locals 23

    move-object/from16 v0, p0

    new-instance v1, LG4/d;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, LG4/d;-><init>(IZ)V

    new-instance v2, LA1/e;

    invoke-direct {v2, v0}, LA1/e;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lo1/b;

    invoke-direct {v3, v2, v1}, Lo1/b;-><init>(LA1/e;LG4/d;)V

    new-instance v1, LU0/e;

    const/4 v4, 0x2

    invoke-direct {v1, v4}, LU0/e;-><init>(I)V

    new-instance v4, LD2/b;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v14, LG4/d;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-direct {v14, v5, v6}, LG4/d;-><init>(IZ)V

    new-instance v5, LU0/e;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, LU0/e;-><init>(I)V

    new-instance v15, LD2/a;

    const/4 v6, 0x1

    invoke-direct {v15, v3, v6}, LD2/a;-><init>(Lo1/b;I)V

    new-instance v13, LD2/a;

    const/4 v6, 0x0

    invoke-direct {v13, v3, v6}, LD2/a;-><init>(Lo1/b;I)V

    new-instance v6, LC2/c;

    const/4 v7, 0x0

    invoke-direct {v6, v15, v7}, LC2/c;-><init>(Lo3/a;I)V

    new-instance v7, LD2/f;

    const/4 v8, 0x0

    invoke-direct {v7, v14, v15, v13, v8}, LD2/f;-><init>(LG4/d;Lo3/a;Lh3/b;I)V

    new-instance v12, LB2/c;

    const/4 v8, 0x2

    invoke-direct {v12, v14, v7, v8}, LB2/c;-><init>(Ljava/lang/Object;Lo3/a;I)V

    new-instance v11, LB2/a;

    const/4 v7, 0x1

    invoke-direct {v11, v7, v3}, LB2/a;-><init>(ILjava/lang/Object;)V

    new-instance v16, LD2/g;

    const/16 v17, 0x0

    move-object/from16 v7, v16

    move-object v8, v5

    move-object v9, v15

    move-object v10, v11

    move-object/from16 v18, v11

    move-object v11, v13

    move-object/from16 v19, v12

    move/from16 v12, v17

    invoke-direct/range {v7 .. v12}, LD2/g;-><init>(LU0/e;Lo3/a;Lh3/b;Lh3/b;I)V

    new-instance v17, LD2/g;

    const/4 v12, 0x1

    move-object/from16 v7, v17

    move-object v8, v5

    move-object v9, v15

    move-object/from16 v10, v18

    move-object v11, v13

    invoke-direct/range {v7 .. v12}, LD2/g;-><init>(LU0/e;Lo3/a;Lh3/b;Lh3/b;I)V

    new-instance v11, LD2/c;

    const/4 v10, 0x0

    move-object v5, v11

    move-object/from16 v18, v6

    move-object v6, v4

    move-object v7, v15

    move-object v8, v13

    move-object/from16 v9, v18

    invoke-direct/range {v5 .. v10}, LD2/c;-><init>(LD2/b;Lo3/a;Lh3/b;LC2/c;I)V

    new-instance v12, LD2/c;

    const/4 v10, 0x1

    move-object v5, v12

    move-object v6, v4

    move-object v7, v15

    move-object v8, v13

    move-object/from16 v9, v18

    invoke-direct/range {v5 .. v10}, LD2/c;-><init>(LD2/b;Lo3/a;Lh3/b;LC2/c;I)V

    new-instance v10, LD2/c;

    const/16 v20, 0x2

    move-object v5, v10

    move-object v6, v4

    move-object v7, v15

    move-object v8, v13

    move-object/from16 v9, v18

    move-object v4, v10

    move/from16 v10, v20

    invoke-direct/range {v5 .. v10}, LD2/c;-><init>(LD2/b;Lo3/a;Lh3/b;LC2/c;I)V

    new-instance v10, LB2/b;

    const/16 v5, 0x8

    invoke-direct {v10, v11, v12, v4, v5}, LB2/b;-><init>(Ljava/lang/Object;Lo3/a;Lh3/b;I)V

    new-instance v20, LD2/d;

    const/16 v21, 0x1

    move-object/from16 v4, v20

    move-object v5, v1

    move-object v6, v15

    move-object v7, v13

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v19, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    move-object/from16 v12, v19

    move-object/from16 v22, v3

    move-object v3, v13

    move/from16 v13, v21

    invoke-direct/range {v4 .. v13}, LD2/d;-><init>(LU0/e;Lo3/a;Lh3/b;LC2/c;Lh3/b;LD2/g;LD2/g;LB2/b;I)V

    new-instance v4, LD2/f;

    const/4 v5, 0x1

    invoke-direct {v4, v14, v15, v3, v5}, LD2/f;-><init>(LG4/d;Lo3/a;Lh3/b;I)V

    new-instance v9, LB2/c;

    const/4 v5, 0x3

    invoke-direct {v9, v14, v4, v5}, LB2/c;-><init>(Ljava/lang/Object;Lo3/a;I)V

    new-instance v21, LD2/d;

    const/4 v13, 0x2

    move-object/from16 v4, v21

    move-object v5, v1

    move-object v6, v15

    move-object v7, v3

    move-object/from16 v8, v18

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    move-object/from16 v12, v19

    invoke-direct/range {v4 .. v13}, LD2/d;-><init>(LU0/e;Lo3/a;Lh3/b;LC2/c;Lh3/b;LD2/g;LD2/g;LB2/b;I)V

    new-instance v4, LD2/f;

    const/4 v5, 0x2

    invoke-direct {v4, v14, v15, v3, v5}, LD2/f;-><init>(LG4/d;Lo3/a;Lh3/b;I)V

    new-instance v9, LB2/c;

    const/4 v5, 0x1

    invoke-direct {v9, v14, v4, v5}, LB2/c;-><init>(Ljava/lang/Object;Lo3/a;I)V

    new-instance v14, LD2/d;

    const/4 v13, 0x0

    move-object v4, v14

    move-object v5, v1

    move-object v6, v15

    move-object v7, v3

    move-object/from16 v8, v18

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    move-object/from16 v12, v19

    invoke-direct/range {v4 .. v13}, LD2/d;-><init>(LU0/e;Lo3/a;Lh3/b;LC2/c;Lh3/b;LD2/g;LD2/g;LB2/b;I)V

    new-instance v1, LF2/d;

    invoke-static/range {v20 .. v20}, Lh3/a;->a(Lh3/b;)Lh3/a;

    move-result-object v3

    invoke-static/range {v21 .. v21}, Lh3/a;->a(Lh3/b;)Lh3/a;

    move-result-object v4

    invoke-static {v14}, Lh3/a;->a(Lh3/b;)Lh3/a;

    move-result-object v5

    invoke-direct {v1, v3, v4, v5}, LF2/d;-><init>(Lh3/a;Lh3/a;Lh3/a;)V

    iput-object v1, v0, Lcom/samsung/android/wallpaper/magician/core/weather/service/GenerateAllService;->d:LF2/d;

    invoke-static {v2}, LB2/d;->a(LA1/e;)Landroid/content/Context;

    move-result-object v1

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual/range {v22 .. v22}, Lo1/b;->e()LO2/b;

    move-result-object v4

    new-instance v5, LI2/b;

    invoke-direct {v5, v1, v3, v4}, LI2/b;-><init>(Landroid/content/Context;Landroid/os/Handler;LO2/a;)V

    iput-object v5, v0, Lcom/samsung/android/wallpaper/magician/core/weather/service/GenerateAllService;->e:LI2/b;

    invoke-static {v2}, LB2/d;->a(LA1/e;)Landroid/content/Context;

    invoke-virtual/range {v22 .. v22}, Lo1/b;->e()LO2/b;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/wallpaper/magician/core/weather/service/GenerateAllService;->f:LO2/b;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v1, v2}, LF3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/NotificationManager;

    new-instance v2, Landroid/app/NotificationChannel;

    const-string v3, "generate_all_service"

    const-string v4, "Wallpaper Generating Service"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v4, "Generate images for photo ambient wallpaper"

    invoke-virtual {v2, v4}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    invoke-virtual {v2, v4}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7}, Landroid/app/Notification;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v7, Landroid/app/Notification;->when:J

    const/4 v8, -0x1

    iput v8, v7, Landroid/app/Notification;->audioStreamType:I

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const-string v10, "Wallpaper Generating..."

    sget v11, LA2/a;->ic_wallpapers:I

    iput v11, v7, Landroid/app/Notification;->icon:I

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    new-instance v12, Landroid/app/Notification$Builder;

    invoke-direct {v12, v0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-wide v13, v7, Landroid/app/Notification;->when:J

    invoke-virtual {v12, v13, v14}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v13

    iget v14, v7, Landroid/app/Notification;->icon:I

    iget v15, v7, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {v13, v14, v15}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v13

    iget-object v14, v7, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v13

    iget-object v14, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v13

    iget-object v14, v7, Landroid/app/Notification;->vibrate:[J

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v13

    iget v14, v7, Landroid/app/Notification;->ledARGB:I

    iget v4, v7, Landroid/app/Notification;->ledOnMS:I

    iget v9, v7, Landroid/app/Notification;->ledOffMS:I

    invoke-virtual {v13, v14, v4, v9}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v9, v7, Landroid/app/Notification;->flags:I

    and-int/2addr v5, v9

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v7, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v7, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v7, Landroid/app/Notification;->defaults:I

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v7, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v7, Landroid/app/Notification;->flags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v4, v15, v5}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v5, v5, v5}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    invoke-virtual {v12, v15}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    invoke-virtual {v12, v15}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_b

    const/4 v4, 0x1

    invoke-virtual {v12, v4}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v12, v5}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v12, v15}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    invoke-virtual {v12, v15}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    invoke-virtual {v12, v5}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v12, v15}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    invoke-virtual {v12, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    invoke-virtual {v12, v15}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    iget-object v1, v7, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v4, v7, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v12, v1, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v12, v4}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_4

    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v4, "android.car.EXTENSIONS"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_5

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    :cond_5
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gtz v9, :cond_6

    const-string v6, "invisible_actions"

    invoke-virtual {v5, v6, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v7, v6, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v11, v4, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    throw v15

    :cond_7
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_8
    move-object v1, v15

    :goto_5
    invoke-virtual {v12, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    invoke-virtual {v12, v15}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Landroid/app/Notification$Builder;->setBadgeIconType(I)Landroid/app/Notification$Builder;

    invoke-virtual {v12, v15}, Landroid/app/Notification$Builder;->setSettingsText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v12, v15}, Landroid/app/Notification$Builder;->setShortcutId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    const-wide/16 v4, 0x0

    invoke-virtual {v12, v4, v5}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    invoke-virtual {v12, v1}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v12, v15}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v1, v1, v1}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_a

    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Landroid/app/Notification$Builder;->setAllowSystemGeneratedContextualActions(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v12, v15}, Landroid/app/Notification$Builder;->setBubbleMetadata(Landroid/app/Notification$BubbleMetadata;)Landroid/app/Notification$Builder;

    invoke-virtual {v12, v2}, Landroid/app/Notification$Builder;->setForegroundServiceBehavior(I)Landroid/app/Notification$Builder;

    invoke-virtual {v12}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    const v2, 0x134b3d1

    invoke-virtual {v0, v2, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0
.end method

.method public final onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/magician/core/weather/service/GenerateAllService;->a()LO2/a;

    move-result-object p0

    invoke-virtual {p0}, LO2/a;->d()LU0/e;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "GenerateAllService"

    const-string v2, "onDestroy"

    invoke-virtual {p0, v1, v2, v0}, LU0/e;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wallpaper/magician/core/weather/service/GenerateAllService;->a()LO2/a;

    move-result-object v2

    invoke-virtual {v2}, LO2/a;->d()LU0/e;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onStartCommand, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "GenerateAllService"

    invoke-virtual {v2, v7, v3, v6}, LU0/e;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x2

    if-nez v1, :cond_0

    return v2

    :cond_0
    new-instance v3, LH2/a;

    move-object v8, v3

    const-string v6, "caller_package_name"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v9, v6

    const-string v10, "id"

    const-wide/16 v14, -0x1

    invoke-virtual {v1, v10, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    move-wide v10, v12

    const-string v14, "which"

    invoke-virtual {v1, v14, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    move-wide/from16 v33, v12

    move v12, v14

    const-string v13, "engine_type"

    const/16 v14, 0x65

    invoke-virtual {v1, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    move v13, v15

    const-string v14, "scheduling_type"

    const/16 v2, 0xc8

    invoke-virtual {v1, v14, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    const-wide/16 v35, -0x1

    const-string v5, "fg_service_working_type"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    move v5, v15

    move v15, v2

    move/from16 p3, v5

    const-string v5, "generating_type"

    const/16 v0, 0xc9

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    const-string v0, "need_constraint"

    const/4 v5, 0x1

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    const-string v0, "generating_count_at_once"

    const/16 v5, 0x14

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    const-string v0, "source_fd"

    const-class v5, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/ParcelFileDescriptor;

    const-string v0, "source_alpha_fd"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/os/ParcelFileDescriptor;

    const-string v0, "source_path"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v0, "source_alpha_path"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v0, "time"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v0, "weather"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v0, "current_time"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v0, "current_weather"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v0, "is_outdoor"

    const/4 v5, 0x1

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v27

    const-string v0, "is_night"

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v28

    const-string v0, "force_square_generate"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v29

    const-string v0, "generated_file_only"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v30

    const-string v0, "scheduling_time"

    move-object/from16 v37, v6

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v0, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v31

    invoke-direct/range {v8 .. v32}, LH2/a;-><init>(Ljava/lang/String;JIIIIIZILandroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZJ)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wallpaper/magician/core/weather/service/GenerateAllService;->a()LO2/a;

    move-result-object v0

    invoke-virtual {v0}, LO2/a;->d()LU0/e;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v7, v1, v5}, LU0/e;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v37, :cond_1

    move-wide/from16 v0, v33

    cmp-long v4, v0, v35

    if-nez v4, :cond_2

    :cond_1
    move-object/from16 v0, p0

    const/4 v1, 0x2

    goto/16 :goto_2

    :cond_2
    const/16 v4, 0x64

    const/4 v5, 0x0

    if-ne v2, v4, :cond_6

    iget-object v2, v3, LH2/a;->l:Ljava/lang/String;

    if-nez v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wallpaper/magician/core/weather/service/GenerateAllService;->a()LO2/a;

    move-result-object v0

    invoke-virtual {v0}, LO2/a;->d()LU0/e;

    move-result-object v0

    const/4 v2, 0x0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "onStartCommand, path is null"

    invoke-virtual {v0, v7, v2, v1}, LU0/e;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->stopSelf()V

    const/4 v0, 0x2

    return v0

    :cond_3
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wallpaper/magician/core/weather/service/GenerateAllService;->a()LO2/a;

    move-result-object v4

    invoke-virtual {v4}, LO2/a;->d()LU0/e;

    move-result-object v4

    const-string v6, "generateAll, "

    invoke-static {v6, v0, v1}, Li4/b;->f(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v7, v0, v1}, LU0/e;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/wallpaper/magician/core/weather/service/GenerateAllService;->g:LW4/x;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, LW4/Y;->a()Z

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wallpaper/magician/core/weather/service/GenerateAllService;->a()LO2/a;

    move-result-object v0

    invoke-virtual {v0}, LO2/a;->d()LU0/e;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "generateAll, this is running"

    invoke-virtual {v0, v7, v2, v1}, LU0/e;->y(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v1, v3, LH2/a;->l:Ljava/lang/String;

    if-nez v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wallpaper/magician/core/weather/service/GenerateAllService;->a()LO2/a;

    move-result-object v0

    invoke-virtual {v0}, LO2/a;->d()LU0/e;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "generateAll, data is invalid"

    invoke-virtual {v0, v7, v2, v1}, LU0/e;->y(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    sget-object v1, LW4/B;->b:Lkotlinx/coroutines/scheduling/c;

    invoke-static {v1}, LW4/u;->a(Lu3/i;)Lkotlinx/coroutines/internal/c;

    move-result-object v1

    new-instance v2, LN2/a;

    invoke-direct {v2, v0, v3, v5}, LN2/a;-><init>(Lcom/samsung/android/wallpaper/magician/core/weather/service/GenerateAllService;LH2/a;Lu3/d;)V

    invoke-static {v1, v2}, LW4/u;->h(LW4/t;LE3/c;)LW4/x;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/wallpaper/magician/core/weather/service/GenerateAllService;->g:LW4/x;

    :goto_0
    const/4 v1, 0x2

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/wallpaper/magician/core/weather/service/GenerateAllService;->d:LF2/d;

    if-eqz v1, :cond_9

    move/from16 v2, p3

    invoke-virtual {v1, v2}, LF2/d;->a(I)LF2/c;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v2, LF2/a;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, LF2/a;-><init>(LH2/a;I)V

    invoke-virtual {v1, v2}, LF2/c;->g(LF2/a;)V

    :cond_7
    iget-object v1, v0, Lcom/samsung/android/wallpaper/magician/core/weather/service/GenerateAllService;->g:LW4/x;

    if-eqz v1, :cond_8

    invoke-static {v1}, LW4/u;->b(LW4/P;)V

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    :goto_1
    return v1

    :cond_9
    const-string v0, "generateAllUseCaseFactory"

    invoke-static {v0}, LF3/k;->m(Ljava/lang/String;)V

    throw v5

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->stopSelf()V

    return v1
.end method

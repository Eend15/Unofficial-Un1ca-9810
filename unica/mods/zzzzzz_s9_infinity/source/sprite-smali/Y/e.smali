.class public final synthetic LY/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, LY/e;->d:I

    iput-object p1, p0, LY/e;->e:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget v0, p0, LY/e;->d:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "androidx.appcompat.app.AppLocalesMetadataHolderService"

    iget-object p0, p0, LY/e;->e:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_b

    sget-object v1, Landroidx/appcompat/app/q;->h:Ln/g;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ln/b;

    invoke-direct {v3, v1}, Ln/b;-><init>(Ln/g;)V

    :cond_0
    invoke-virtual {v3}, Ln/b;->hasNext()Z

    move-result v1

    const-string v4, "locale"

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v3}, Ln/b;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/app/q;

    if-eqz v1, :cond_0

    check-cast v1, Landroidx/appcompat/app/F;

    iget-object v1, v1, Landroidx/appcompat/app/F;->l:Landroid/content/Context;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v5

    :goto_0
    if-eqz v1, :cond_2

    invoke-static {v1}, Landroidx/appcompat/app/n;->a(Ljava/lang/Object;)Landroid/os/LocaleList;

    move-result-object v1

    new-instance v3, LG/e;

    new-instance v6, LG/f;

    invoke-direct {v6, v1}, LG/f;-><init>(Landroid/os/LocaleList;)V

    invoke-direct {v3, v6}, LG/e;-><init>(LG/f;)V

    goto :goto_1

    :cond_2
    sget-object v3, LG/e;->b:LG/e;

    :goto_1
    iget-object v1, v3, LG/e;->a:LG/f;

    iget-object v1, v1, LG/f;->a:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Lz/b;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v3, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v6, "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    invoke-virtual {p0, v6}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v6
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-interface {v7, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    :cond_3
    :goto_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    if-eq v9, v2, :cond_6

    const/4 v10, 0x3

    if-ne v9, v10, :cond_4

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    if-le v11, v8, :cond_6

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_7

    :cond_4
    :goto_3
    if-eq v9, v10, :cond_3

    const/4 v10, 0x4

    if-ne v9, v10, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "locales"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v8, "application_locales"

    invoke-interface {v7, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    if-eqz v6, :cond_7

    :goto_4
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_9

    :catch_0
    :try_start_4
    const-string v5, "AppLocalesStorageHelper"

    const-string v7, "Reading app Locales : Unable to parse through file :androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v6, :cond_7

    goto :goto_4

    :catch_1
    :cond_7
    :goto_5
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_6

    :cond_8
    const-string v5, "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    invoke-virtual {p0, v5}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    :goto_6
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_8

    :goto_7
    if-eqz v6, :cond_9

    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catch_2
    :cond_9
    :try_start_7
    throw p0

    :catch_3
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_8
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-static {v3}, Landroidx/appcompat/app/m;->a(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v3

    invoke-static {v1, v3}, Landroidx/appcompat/app/n;->b(Ljava/lang/Object;Landroid/os/LocaleList;)V

    goto :goto_a

    :goto_9
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw p0

    :cond_a
    :goto_a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0, v2, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :cond_b
    sput-boolean v2, Landroidx/appcompat/app/q;->g:Z

    return-void

    :pswitch_0
    new-instance v0, LY/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LY/b;-><init>(I)V

    sget-object v1, LY/d;->a:LG4/d;

    const/4 v2, 0x0

    iget-object p0, p0, LY/e;->e:Landroid/content/Context;

    invoke-static {p0, v0, v1, v2}, LY/d;->b(Landroid/content/Context;Ljava/util/concurrent/Executor;LY/c;Z)V

    return-void

    :pswitch_1
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    new-instance v1, LY/e;

    iget-object p0, p0, LY/e;->e:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, LY/e;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

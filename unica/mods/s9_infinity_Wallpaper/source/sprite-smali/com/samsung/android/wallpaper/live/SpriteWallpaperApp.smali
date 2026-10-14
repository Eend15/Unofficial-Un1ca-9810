.class public Lcom/samsung/android/wallpaper/live/SpriteWallpaperApp;
.super Landroid/app/Application;
.source "SourceFile"

# interfaces
.implements Ln0/b;


# static fields
.field public static d:Landroidx/recyclerview/widget/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ln0/c;
    .locals 14

    const/4 v0, 0x3

    new-instance v1, La0/l;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, La0/l;-><init>(IZ)V

    sget v4, Lf2/g;->a:I

    sget-boolean v4, Li1/a;->b:Z

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v4, "context"

    invoke-static {p0, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lj0/s;->a:Ll2/a;

    if-nez v4, :cond_0

    sget-object v13, Lcom/samsung/android/wallpaper/live/SpriteWallpaperApp;->d:Landroidx/recyclerview/widget/b;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, LT2/b;

    invoke-direct {v6, p0, v0}, LT2/b;-><init>(Landroid/content/Context;I)V

    new-instance v7, LG4/d;

    const/4 p0, 0x1

    invoke-direct {v7, p0, v3}, LG4/d;-><init>(IZ)V

    new-instance v8, LG4/d;

    const/4 p0, 0x4

    invoke-direct {v8, p0, v3}, LG4/d;-><init>(IZ)V

    new-instance v9, LU0/e;

    invoke-direct {v9, v2}, LU0/e;-><init>(I)V

    new-instance v10, LD2/b;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    new-instance v11, LG4/d;

    invoke-direct {v11, v0, v3}, LG4/d;-><init>(IZ)V

    new-instance v12, LU0/e;

    invoke-direct {v12, v0}, LU0/e;-><init>(I)V

    new-instance v4, Ll2/a;

    move-object v5, v4

    invoke-direct/range {v5 .. v13}, Ll2/a;-><init>(LT2/b;LG4/d;LG4/d;LU0/e;LD2/b;LG4/d;LU0/e;Landroidx/recyclerview/widget/b;)V

    sput-object v4, Lj0/s;->a:Ll2/a;

    :cond_0
    new-instance p0, LD2/n;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    iget-object v3, v4, Ll2/a;->I:LD2/d;

    const-class v5, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v4, Ll2/a;->N:LB2/b;

    const-class v5, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateSingleWorker;

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    :goto_0
    iget-object v3, v4, Ll2/a;->c:Lh3/b;

    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    iget-object v5, v4, Ll2/a;->c:Lh3/b;

    invoke-interface {v5}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    iget-object v4, v4, Ll2/a;->b:LG4/d;

    invoke-static {v4, v5}, LB2/c;->a(LG4/d;Landroid/content/Context;)LJ2/a;

    move-result-object v5

    invoke-static {v4, v3, v5}, LB2/b;->a(LG4/d;Landroid/content/Context;LT2/a;)LO2/b;

    move-result-object v3

    invoke-direct {p0, v2, v3}, LD2/n;-><init>(Ljava/util/Map;LO2/b;)V

    iput-object p0, v1, La0/l;->b:Ljava/lang/Object;

    iput v0, v1, La0/l;->a:I

    new-instance p0, Li1/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v1, La0/l;->c:Ljava/lang/Object;

    :cond_2
    new-instance p0, Ln0/c;

    invoke-direct {p0, v1}, Ln0/c;-><init>(La0/l;)V

    return-object p0
.end method

.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    new-instance p1, Landroidx/recyclerview/widget/y;

    const/16 v0, 0x10

    invoke-direct {p1, v0, p0}, Landroidx/recyclerview/widget/y;-><init>(ILjava/lang/Object;)V

    new-instance p0, Landroidx/recyclerview/widget/b;

    invoke-direct {p0}, Landroidx/recyclerview/widget/b;-><init>()V

    new-instance v0, LD2/e;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, LD2/e;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Lh3/a;->c(Lh3/b;)Lh3/b;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    new-instance v1, Lh2/d;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lh2/d;-><init>(Lh3/b;I)V

    new-instance v2, LB2/c;

    const/4 v3, 0x5

    invoke-direct {v2, v0, v1, v3}, LB2/c;-><init>(Ljava/lang/Object;Lo3/a;I)V

    iput-object v2, p0, Landroidx/recyclerview/widget/b;->f:Ljava/lang/Object;

    new-instance v1, Lh2/d;

    const/4 v3, 0x3

    invoke-direct {v1, v0, v3}, Lh2/d;-><init>(Lh3/b;I)V

    new-instance v3, LB2/b;

    const/16 v4, 0xb

    invoke-direct {v3, v0, v1, v2, v4}, LB2/b;-><init>(Ljava/lang/Object;Lo3/a;Lh3/b;I)V

    invoke-static {v3}, Lh3/a;->c(Lh3/b;)Lh3/b;

    move-result-object v0

    iget-object v1, p0, Landroidx/recyclerview/widget/b;->f:Ljava/lang/Object;

    check-cast v1, LB2/c;

    new-instance v2, LB2/c;

    const/4 v3, 0x6

    invoke-direct {v2, v1, v0, v3}, LB2/c;-><init>(Ljava/lang/Object;Lo3/a;I)V

    invoke-static {v2}, Lh3/a;->c(Lh3/b;)Lh3/b;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/b;->g:Ljava/lang/Object;

    new-instance v0, LB2/a;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, LB2/a;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Lh3/a;->c(Lh3/b;)Lh3/b;

    move-result-object v0

    new-instance v1, Lh2/d;

    const/4 v2, 0x5

    invoke-direct {v1, p1, v0, v2}, Lh2/d;-><init>(Landroidx/recyclerview/widget/y;Lh3/b;I)V

    invoke-static {v1}, Lh3/a;->c(Lh3/b;)Lh3/b;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/b;->h:Ljava/lang/Object;

    new-instance v0, LB2/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, LB2/a;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Lh3/a;->c(Lh3/b;)Lh3/b;

    move-result-object v0

    new-instance v1, Lh2/d;

    const/4 v2, 0x4

    invoke-direct {v1, p1, v0, v2}, Lh2/d;-><init>(Landroidx/recyclerview/widget/y;Lh3/b;I)V

    invoke-static {v1}, Lh3/a;->c(Lh3/b;)Lh3/b;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/b;->i:Ljava/lang/Object;

    sput-object p0, Lcom/samsung/android/wallpaper/live/SpriteWallpaperApp;->d:Landroidx/recyclerview/widget/b;

    return-void
.end method

.method public final onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    sget-object v0, Lf2/j;->a:Lf2/d;

    invoke-static {v0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->setLogDispatcher(LM1/j;)V

    sget-object v0, Lf2/j;->b:Lf2/i;

    invoke-static {v0}, Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog;->setLogDispatcher(Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog$ILog;)V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "SpriteWallpaperApp"

    const-string v3, "onCreate"

    invoke-static {v2, v3, v1}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.samsung.android.wallpaper.live"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string v0, "."

    const-string v1, ""

    invoke-static {p0, v0, v1}, LV4/u;->l0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sput-object p0, LU0/e;->e:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "Unknown"

    sput-object p0, LU0/e;->e:Ljava/lang/String;

    :cond_1
    :goto_1
    return-void
.end method

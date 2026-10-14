.class public final Lcom/samsung/android/wallpaper/live/weather/daemon/receiver/MagicianReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/samsung/android/wallpaper/live/weather/daemon/receiver/MagicianReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "<init>",
        "()V",
        "SpriteWallpaper_release"
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
.field public a:Lk2/b;

.field public b:Lh2/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lj0/s;->a:Ll2/a;

    if-nez v0, :cond_0

    sget-object v9, Lcom/samsung/android/wallpaper/live/SpriteWallpaperApp;->d:Landroidx/recyclerview/widget/b;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, LT2/b;

    const/4 v0, 0x3

    invoke-direct {v2, p1, v0}, LT2/b;-><init>(Landroid/content/Context;I)V

    new-instance v3, LG4/d;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-direct {v3, p1, v0}, LG4/d;-><init>(IZ)V

    new-instance v4, LG4/d;

    const/4 p1, 0x4

    const/4 v0, 0x0

    invoke-direct {v4, p1, v0}, LG4/d;-><init>(IZ)V

    new-instance v5, LU0/e;

    const/4 p1, 0x2

    invoke-direct {v5, p1}, LU0/e;-><init>(I)V

    new-instance v6, LD2/b;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    new-instance v7, LG4/d;

    const/4 p1, 0x3

    const/4 v0, 0x0

    invoke-direct {v7, p1, v0}, LG4/d;-><init>(IZ)V

    new-instance v8, LU0/e;

    const/4 p1, 0x3

    invoke-direct {v8, p1}, LU0/e;-><init>(I)V

    new-instance v0, Ll2/a;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Ll2/a;-><init>(LT2/b;LG4/d;LG4/d;LU0/e;LD2/b;LG4/d;LU0/e;Landroidx/recyclerview/widget/b;)V

    sput-object v0, Lj0/s;->a:Ll2/a;

    :cond_0
    new-instance p1, Lk2/b;

    iget-object v1, v0, Ll2/a;->o:Lh3/b;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lj2/b;

    invoke-virtual {v0}, Ll2/a;->a()Li2/a;

    move-result-object v3

    new-instance v4, Lp2/a;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iget-object v1, v0, Ll2/a;->p:Lh3/b;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lp2/d;

    iget-object v1, v0, Ll2/a;->q:Lh3/b;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ly2/d;

    iget-object v1, v0, Ll2/a;->a:Landroidx/recyclerview/widget/b;

    iget-object v1, v1, Landroidx/recyclerview/widget/b;->i:Ljava/lang/Object;

    check-cast v1, Lh3/b;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, LW4/t;

    invoke-static {v7}, Le0/a;->t(Ljava/lang/Object;)V

    iget-object v1, v0, Ll2/a;->e:Lh3/b;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lh2/b;

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lk2/b;-><init>(Lj2/b;Li2/a;Lp2/a;Lp2/d;Ly2/d;LW4/t;Lh2/b;)V

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/weather/daemon/receiver/MagicianReceiver;->a:Lk2/b;

    iget-object p1, v0, Ll2/a;->e:Lh3/b;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh2/b;

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/weather/daemon/receiver/MagicianReceiver;->b:Lh2/b;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string v0, "com.samsung.android.wallpaper.magician.action.GENERATE_RESULT"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/weather/daemon/receiver/MagicianReceiver;->b:Lh2/b;

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "which"

    const-string v3, "generate_result_code"

    if-eqz v1, :cond_1

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "id"

    invoke-virtual {v1, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "generated_uri"

    const-class v9, Landroid/net/Uri;

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, ".../"

    const-string v5, "content://com.samsung.android.wallpaper.magician.weather.file/"

    invoke-static {v1, v5, v4}, LV4/u;->l0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    const-string v4, "result: "

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "MagicianReceiver"

    invoke-virtual {p1, v4, v1}, Lh2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x190

    invoke-virtual {p2, v3, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string p1, "result code : "

    invoke-static {v8, p1}, Li4/b;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v4, p1, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p1, 0x64

    if-eq v8, p1, :cond_2

    const/16 p1, 0x96

    if-eq v8, p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/weather/daemon/receiver/MagicianReceiver;->a:Lk2/b;

    if-eqz p0, :cond_5

    const/4 p1, -0x1

    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string v0, "generated_key"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Handle magician response. which="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", generatedKey = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "HandleMagicianWallpaperGenerated"

    invoke-static {v1, p2, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eq v7, p1, :cond_4

    invoke-static {}, Lp2/a;->b()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Lk2/a;

    const/4 v10, 0x0

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lk2/a;-><init>(Lk2/b;IILjava/lang/String;Lu3/d;)V

    iget-object p0, p0, Lk2/b;->e:LW4/t;

    invoke-static {p0, p1}, LW4/u;->h(LW4/t;LE3/c;)LW4/x;

    goto :goto_2

    :cond_4
    :goto_1
    const-string p1, ">>> Skip update SR BG. which are different or invalid. response which="

    invoke-static {v7, p1}, Li4/b;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lk2/b;->f:Lh2/b;

    invoke-virtual {p0, v1, p1}, Lh2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string p0, "handleMagicianWallpaperGenerated"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-string p0, "dumpUtil"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_2
    return-void
.end method

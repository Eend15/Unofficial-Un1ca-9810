.class public final Lm2/e;
.super Lw3/g;
.source "SourceFile"

# interfaces
.implements LE3/c;


# instance fields
.field public final synthetic d:Lm2/n;


# direct methods
.method public constructor <init>(Lm2/n;Lu3/d;)V
    .locals 0

    iput-object p1, p0, Lm2/e;->d:Lm2/n;

    invoke-direct {p0, p2}, Lw3/g;-><init>(Lu3/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lu3/d;)Lu3/d;
    .locals 0

    new-instance p1, Lm2/e;

    iget-object p0, p0, Lm2/e;->d:Lm2/n;

    invoke-direct {p1, p0, p2}, Lm2/e;-><init>(Lm2/n;Lu3/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LW4/t;

    check-cast p2, Lu3/d;

    invoke-virtual {p0, p1, p2}, Lm2/e;->create(Ljava/lang/Object;Lu3/d;)Lu3/d;

    move-result-object p0

    check-cast p0, Lm2/e;

    sget-object p1, Lq3/m;->a:Lq3/m;

    invoke-virtual {p0, p1}, Lm2/e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lv3/a;->d:Lv3/a;

    invoke-static {p1}, Lp4/g;->X(Ljava/lang/Object;)V

    sget p1, Lm2/n;->O:I

    iget-object p0, p0, Lm2/e;->d:Lm2/n;

    invoke-virtual {p0}, Lm2/n;->i()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "cancelGenerateSRImages"

    invoke-static {p1, v2, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lm2/n;->e()Lq2/a;

    move-result-object p1

    iget-boolean v1, p0, Lm2/n;->b:Z

    invoke-virtual {p1, v1}, Lq2/a;->a(Z)Landroidx/recyclerview/widget/y;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p1, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/i;

    invoke-virtual {p1}, Lkotlinx/coroutines/flow/i;->i()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv2/a;

    if-eqz p1, :cond_4

    iget-wide v1, p1, Lv2/a;->i:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_4

    invoke-virtual {p0}, Lm2/n;->g()Lj2/b;

    move-result-object p1

    invoke-virtual {p0}, Lm2/n;->e()Lq2/a;

    move-result-object v3

    iget v3, v3, Lq2/a;->b:I

    invoke-static {}, Lf2/g;->c()Z

    move-result v4

    const-string v5, "MagicianRepository"

    iget-object v6, p1, Lj2/b;->a:Landroid/content/Context;

    if-eqz v4, :cond_2

    invoke-static {v6, v3}, Lcom/samsung/android/wallpaper/live/util/WallpaperManagerHelper;->getWallpaperExtras(Landroid/content/Context;I)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v7, "weatherId"

    invoke-virtual {v4, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v7, v7, v1

    if-nez v7, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "cancelGenerate skip, wm["

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "], req["

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v5, p1, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v4, p1, Lj2/b;->b:Li2/a;

    invoke-virtual {v4, v3, v0}, Li2/a;->K0(IZ)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v7, "id"

    invoke-virtual {v4, v7, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "which"

    invoke-virtual {v4, v1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "call : cancel_generate, with : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v5, v1, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object p1, p1, Lj2/b;->d:LK2/b;

    const-string v1, "cancel_generate"

    invoke-virtual {p1, v1}, LK2/b;->a(Ljava/lang/String;)LK2/a;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1, v6, v4, v0}, LK2/a;->a(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;)V

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lm2/n;->o()V

    :cond_4
    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0
.end method

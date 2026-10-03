.class public abstract Landroidx/appcompat/app/B;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/appcompat/app/B;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/F;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/app/B;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/W;LG/c;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/appcompat/app/B;->a:Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Landroidx/appcompat/app/B;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/B;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/app/A;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/app/B;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/appcompat/app/F;

    iget-object v1, v1, Landroidx/appcompat/app/F;->l:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/app/B;->a:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/B;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/W;

    iget-object v1, v0, Landroidx/fragment/app/W;->e:Ljava/util/HashSet;

    iget-object p0, p0, Landroidx/appcompat/app/B;->b:Ljava/lang/Object;

    check-cast p0, LG/c;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/W;->b()V

    :cond_0
    return-void
.end method

.method public abstract e()Landroid/content/IntentFilter;
.end method

.method public abstract f()I
.end method

.method public g(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 2

    instance-of v0, p1, LE/a;

    if-eqz v0, :cond_2

    check-cast p1, LE/a;

    iget-object v0, p0, Landroidx/appcompat/app/B;->b:Ljava/lang/Object;

    check-cast v0, Ln/j;

    if-nez v0, :cond_0

    new-instance v0, Ln/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln/j;-><init>(I)V

    iput-object v0, p0, Landroidx/appcompat/app/B;->b:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/B;->b:Ljava/lang/Object;

    check-cast v0, Ln/j;

    invoke-virtual {v0, p1}, Ln/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    if-nez v0, :cond_1

    new-instance v0, Lk/q;

    iget-object v1, p0, Landroidx/appcompat/app/B;->a:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lk/q;-><init>(Landroid/content/Context;LE/a;)V

    iget-object p0, p0, Landroidx/appcompat/app/B;->b:Ljava/lang/Object;

    check-cast p0, Ln/j;

    invoke-virtual {p0, p1, v0}, Ln/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    :cond_2
    return-object p1
.end method

.method public abstract h()V
.end method

.method public i()V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/app/B;->c()V

    invoke-virtual {p0}, Landroidx/appcompat/app/B;->e()Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/IntentFilter;->countActions()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/app/B;->a:Ljava/lang/Object;

    check-cast v1, Landroidx/appcompat/app/A;

    if-nez v1, :cond_1

    new-instance v1, Landroidx/appcompat/app/A;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Landroidx/appcompat/app/A;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Landroidx/appcompat/app/B;->a:Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Landroidx/appcompat/app/B;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/appcompat/app/F;

    iget-object v1, v1, Landroidx/appcompat/app/F;->l:Landroid/content/Context;

    iget-object p0, p0, Landroidx/appcompat/app/B;->a:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/app/A;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

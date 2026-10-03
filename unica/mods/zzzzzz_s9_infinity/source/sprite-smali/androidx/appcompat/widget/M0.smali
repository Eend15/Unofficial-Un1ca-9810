.class public final Landroidx/appcompat/widget/M0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/h;


# instance fields
.field public final synthetic d:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/Toolbar;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/M0;->d:Landroidx/appcompat/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public G(Lk/j;)V
    .locals 2

    iget-object p0, p0, Landroidx/appcompat/widget/M0;->d:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->w:Landroidx/appcompat/widget/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/l;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->J:LK/j;

    iget-object v0, v0, LK/j;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LK/k;

    check-cast v1, Landroidx/fragment/app/E;

    iget-object v1, v1, Landroidx/fragment/app/E;->a:Landroidx/fragment/app/L;

    invoke-virtual {v1}, Landroidx/fragment/app/L;->s()Z

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->R:Landroidx/appcompat/app/L;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/L;->G(Lk/j;)V

    :cond_2
    return-void
.end method

.method public q(Lk/j;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/M0;->d:Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->R:Landroidx/appcompat/app/L;

    const/4 p0, 0x0

    return p0
.end method

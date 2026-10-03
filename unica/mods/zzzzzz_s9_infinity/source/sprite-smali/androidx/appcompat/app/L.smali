.class public final Landroidx/appcompat/app/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/h;


# instance fields
.field public final synthetic d:Landroidx/appcompat/app/M;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/M;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/L;->d:Landroidx/appcompat/app/M;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public G(Lk/j;)V
    .locals 3

    iget-object p0, p0, Landroidx/appcompat/app/L;->d:Landroidx/appcompat/app/M;

    iget-object v0, p0, Landroidx/appcompat/app/M;->a:Landroidx/appcompat/widget/T0;

    iget-object v0, v0, Landroidx/appcompat/widget/T0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->p()Z

    move-result v0

    iget-object p0, p0, Landroidx/appcompat/app/M;->b:Landroidx/appcompat/app/y;

    const/16 v1, 0x6c

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, p1}, Landroidx/appcompat/app/y;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1}, Landroidx/appcompat/app/y;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1, p1}, Landroidx/appcompat/app/y;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public q(Lk/j;Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

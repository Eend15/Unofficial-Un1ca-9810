.class public final Landroidx/appcompat/widget/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final d:Landroidx/appcompat/widget/f;

.field public final synthetic e:Landroidx/appcompat/widget/l;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/l;Landroidx/appcompat/widget/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/h;->e:Landroidx/appcompat/widget/l;

    iput-object p2, p0, Landroidx/appcompat/widget/h;->d:Landroidx/appcompat/widget/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/h;->e:Landroidx/appcompat/widget/l;

    iget-object v1, v0, Landroidx/appcompat/widget/l;->f:Lk/j;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lk/j;->e:Lk/h;

    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Lk/h;->G(Lk/j;)V

    :cond_0
    iget-object v1, v0, Landroidx/appcompat/widget/l;->k:Lk/x;

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Landroidx/appcompat/widget/h;->d:Landroidx/appcompat/widget/f;

    invoke-virtual {p0}, Lk/t;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lk/t;->e:Landroid/view/View;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v1, v1}, Lk/t;->d(IIZZ)V

    :goto_0
    iput-object p0, v0, Landroidx/appcompat/widget/l;->t:Landroidx/appcompat/widget/f;

    :cond_3
    :goto_1
    const/4 p0, 0x0

    iput-object p0, v0, Landroidx/appcompat/widget/l;->v:Landroidx/appcompat/widget/h;

    return-void
.end method

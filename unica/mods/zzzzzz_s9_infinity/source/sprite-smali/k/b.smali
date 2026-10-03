.class public final Lk/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lk/c;

.field public final synthetic e:Lk/l;

.field public final synthetic f:Lk/j;

.field public final synthetic g:Landroidx/recyclerview/widget/y;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/y;Lk/c;Lk/l;Lk/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk/b;->g:Landroidx/recyclerview/widget/y;

    iput-object p2, p0, Lk/b;->d:Lk/c;

    iput-object p3, p0, Lk/b;->e:Lk/l;

    iput-object p4, p0, Lk/b;->f:Lk/j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lk/b;->d:Lk/c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lk/b;->g:Landroidx/recyclerview/widget/y;

    iget-object v2, v1, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast v2, Lk/d;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lk/d;->C:Z

    iget-object v0, v0, Lk/c;->b:Lk/j;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lk/j;->c(Z)V

    iget-object v0, v1, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast v0, Lk/d;

    iput-boolean v2, v0, Lk/d;->C:Z

    :cond_0
    iget-object v0, p0, Lk/b;->e:Lk/l;

    invoke-virtual {v0}, Lk/l;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lk/l;->hasSubMenu()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lk/b;->f:Lk/j;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lk/j;->q(Landroid/view/MenuItem;Lk/v;I)Z

    :cond_1
    return-void
.end method

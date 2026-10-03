.class public final LP1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final e:Landroid/view/View;

.field public final f:La2/d;

.field public g:Z

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/view/View;La2/d;I)V
    .locals 0

    iput p4, p0, LP1/b;->d:I

    iput-object p1, p0, LP1/b;->h:Ljava/lang/Object;

    iput-object p2, p0, LP1/b;->e:Landroid/view/View;

    iput-object p3, p0, LP1/b;->f:La2/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, LP1/b;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LP1/b;->f:La2/d;

    iget v1, v0, La2/d;->f:I

    iget-object v2, v0, La2/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    iput v1, v0, La2/d;->f:I

    iget-boolean v2, v0, La2/d;->g:Z

    if-nez v2, :cond_0

    iput-boolean v1, p0, LP1/b;->g:Z

    goto :goto_1

    :cond_0
    iget-object v1, v0, La2/d;->e:Ljava/util/ArrayList;

    iget v2, v0, La2/d;->f:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, La2/d;->f:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, La2/b;

    iget-object v1, p0, LP1/b;->e:Landroid/view/View;

    instance-of v2, v1, LU1/b;

    if-eqz v2, :cond_1

    check-cast v1, LU1/b;

    iget-object v2, v0, La2/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, LU1/b;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object v2, v0, La2/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v1, p0, LP1/b;->h:Ljava/lang/Object;

    check-cast v1, Ln1/a;

    iget-object v2, v1, Ln1/a;->c:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Ln1/a;->c:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    iget-boolean v2, p0, LP1/b;->g:Z

    if-eqz v2, :cond_3

    iget-object v1, v1, Ln1/a;->c:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    iget v0, v0, La2/b;->b:I

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, LP1/b;->f:La2/d;

    iget v1, v0, La2/d;->f:I

    iget-object v2, v0, La2/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_4

    const/4 v1, 0x0

    iput v1, v0, La2/d;->f:I

    iget-boolean v2, v0, La2/d;->g:Z

    if-nez v2, :cond_4

    iput-boolean v1, p0, LP1/b;->g:Z

    goto :goto_3

    :cond_4
    iget-object v1, v0, La2/d;->e:Ljava/util/ArrayList;

    iget v2, v0, La2/d;->f:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, La2/d;->f:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, La2/b;

    iget-object v1, p0, LP1/b;->e:Landroid/view/View;

    instance-of v2, v1, LR1/c;

    if-eqz v2, :cond_5

    check-cast v1, LR1/c;

    iget-object v2, v0, La2/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, LR1/c;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_5
    iget-object v2, v0, La2/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    iget-object v1, p0, LP1/b;->h:Ljava/lang/Object;

    check-cast v1, Lw0/m;

    iget-object v2, v1, Lw0/m;->d:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v1, Lw0/m;->d:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_6
    iget-boolean v2, p0, LP1/b;->g:Z

    if-eqz v2, :cond_7

    iget-object v1, v1, Lw0/m;->d:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    iget v0, v0, La2/b;->b:I

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

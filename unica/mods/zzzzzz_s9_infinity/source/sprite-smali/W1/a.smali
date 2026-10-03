.class public final synthetic LW1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:LW1/c;

.field public final synthetic e:F

.field public final synthetic f:F


# direct methods
.method public synthetic constructor <init>(LW1/c;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LW1/a;->d:LW1/c;

    iput p2, p0, LW1/a;->e:F

    iput p3, p0, LW1/a;->f:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, LW1/a;->d:LW1/c;

    iget-boolean v1, v0, LW1/c;->z:Z

    const/4 v2, 0x0

    const-string v3, "viewPool"

    if-nez v1, :cond_2

    iget-object v1, v0, LW1/c;->m:LX1/i;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LX1/i;->g()V

    :cond_0
    iget-object v1, v0, LW1/c;->o:LS2/b;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, LS2/b;->k()V

    goto :goto_0

    :cond_1
    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_0
    iget-object v1, v0, LW1/c;->j:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    const/high16 v4, -0x1000000

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v4, v0, LW1/c;->s:LH1/a;

    sget-object v5, LH1/a;->h:LH1/a;

    const/4 v6, 0x0

    if-ne v4, v5, :cond_5

    iget v4, p0, LW1/a;->e:F

    cmpg-float v5, v4, v6

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    iget p0, p0, LW1/a;->f:F

    cmpg-float v5, p0, v6

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    iget-object v5, v0, LW1/c;->B:Landroid/graphics/PointF;

    iput v4, v5, Landroid/graphics/PointF;->x:F

    iget v4, v0, LW1/c;->E:F

    add-float/2addr v4, p0

    iput v4, v5, Landroid/graphics/PointF;->y:F

    goto :goto_1

    :cond_5
    iget-object p0, v0, LW1/c;->B:Landroid/graphics/PointF;

    iput v6, p0, Landroid/graphics/PointF;->x:F

    iget v4, v0, LW1/c;->E:F

    iput v4, p0, Landroid/graphics/PointF;->y:F

    :goto_1
    iget-object p0, v0, LW1/c;->B:Landroid/graphics/PointF;

    iget v4, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v4, p0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p0, v0, LW1/c;->o:LS2/b;

    if-eqz p0, :cond_7

    iget-object p0, p0, LS2/b;->d:Ljava/lang/Object;

    check-cast p0, Landroid/widget/FrameLayout;

    if-eqz p0, :cond_6

    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    iget-object p0, v0, LW1/c;->j:Landroid/view/SurfaceHolder;

    if-eqz p0, :cond_8

    invoke-interface {p0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_7
    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v2

    :cond_8
    :goto_2
    return-void
.end method

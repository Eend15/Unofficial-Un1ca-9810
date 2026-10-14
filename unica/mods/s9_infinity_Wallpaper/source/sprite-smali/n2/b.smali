.class public abstract Ln2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lo2/a;

.field public b:I


# direct methods
.method public constructor <init>(Lo2/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln2/b;->a:Lo2/a;

    const/4 p1, 0x5

    iput p1, p0, Ln2/b;->b:I

    return-void
.end method


# virtual methods
.method public abstract a(I)I
.end method

.method public abstract b(Landroid/graphics/Canvas;)V
.end method

.method public abstract c()V
.end method

.method public d()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public abstract g()V
.end method

.method public abstract h(Landroid/util/SizeF;)V
.end method

.method public abstract i(J)V
.end method

.method public final j(ILjava/lang/String;)I
    .locals 5

    iget-object v0, p0, Ln2/b;->a:Lo2/a;

    iget-object v1, v0, Lo2/a;->a:Landroid/util/SizeF;

    invoke-static {}, Lf2/g;->b()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    iget-boolean v1, v0, Lo2/a;->c:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x11

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    goto :goto_1

    :cond_2
    invoke-static {}, Lf2/g;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v1, 0x12

    if-ne p1, v1, :cond_3

    const/4 v4, 0x3

    goto :goto_1

    :cond_3
    const/4 v4, 0x4

    goto :goto_1

    :cond_4
    invoke-static {}, Lf2/g;->f()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {v1}, Landroid/util/SizeF;->getWidth()F

    move-result p1

    invoke-virtual {v1}, Landroid/util/SizeF;->getHeight()F

    move-result v2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_5

    goto :goto_0

    :cond_5
    move v4, v3

    :goto_0
    const/high16 p1, 0x452f0000    # 2800.0f

    if-eqz v4, :cond_7

    invoke-virtual {v1}, Landroid/util/SizeF;->getWidth()F

    move-result v1

    cmpl-float p1, v1, p1

    if-nez p1, :cond_6

    const/16 v4, 0x8

    goto :goto_1

    :cond_6
    const/4 v4, 0x6

    goto :goto_1

    :cond_7
    invoke-virtual {v1}, Landroid/util/SizeF;->getHeight()F

    move-result v1

    cmpl-float p1, v1, p1

    if-nez p1, :cond_8

    const/16 v4, 0x9

    goto :goto_1

    :cond_8
    const/4 v4, 0x7

    goto :goto_1

    :cond_9
    const/4 v4, 0x5

    :goto_1
    iput v4, p0, Ln2/b;->b:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "updateCurrentDeviceAndState, deviceAndState:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", displayConfig:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget p0, p0, Ln2/b;->b:I

    return p0
.end method

.method public abstract k(Landroid/graphics/Bitmap;)V
.end method

.method public abstract l(Ljava/lang/Integer;)V
.end method

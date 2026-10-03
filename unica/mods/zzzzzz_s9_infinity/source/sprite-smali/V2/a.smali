.class public final synthetic LV2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE3/b;


# instance fields
.field public final synthetic d:LV2/c;

.field public final synthetic e:Lcom/samsung/android/sdk/scs/base/tasks/Task;

.field public final synthetic f:LF3/s;

.field public final synthetic g:LE2/a;

.field public final synthetic h:Z

.field public final synthetic i:I

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(LV2/c;Lcom/samsung/android/sdk/scs/base/tasks/Task;LF3/s;LE2/a;ZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LV2/a;->d:LV2/c;

    iput-object p2, p0, LV2/a;->e:Lcom/samsung/android/sdk/scs/base/tasks/Task;

    iput-object p3, p0, LV2/a;->f:LF3/s;

    iput-object p4, p0, LV2/a;->g:LE2/a;

    iput-boolean p5, p0, LV2/a;->h:Z

    iput p6, p0, LV2/a;->i:I

    iput p7, p0, LV2/a;->j:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    check-cast p1, Lcom/samsung/android/sdk/scs/base/tasks/Task;

    const-string v0, "it"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LV2/a;->d:LV2/c;

    iget-object v1, v0, LV2/c;->b:LO2/a;

    invoke-virtual {v1}, LO2/a;->d()LU0/e;

    move-result-object v1

    iget-object v2, v0, LV2/c;->d:Ljava/lang/String;

    iget-object v3, p0, LV2/a;->e:Lcom/samsung/android/sdk/scs/base/tasks/Task;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->isSuccessful()Z

    move-result v4

    invoke-virtual {v3}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->isComplete()Z

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " generate, id:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", success:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", complete:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "Img2WeatherScsImpl"

    invoke-virtual {v1, v6, v2, v5}, LU0/e;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, v0, LV2/c;->d:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->isSuccessful()Z

    move-result v2

    iget-object v5, p0, LV2/a;->g:LE2/a;

    iget-object v0, v0, LV2/c;->b:LO2/a;

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorResult;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorResult;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "outputBitmap"

    const-class v7, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iget-object v3, p0, LV2/a;->f:LF3/s;

    iput-object v2, v3, LF3/s;->d:Ljava/lang/Object;

    invoke-virtual {v0}, LO2/a;->d()LU0/e;

    move-result-object v2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorResult;->getResult()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_1

    :cond_1
    move-object v7, v1

    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " generate, result status: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v6, v7, v8}, LU0/e;->o(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorResult;->getResult()I

    move-result p1

    if-ne p1, v2, :cond_3

    new-instance p1, LX2/b;

    iget-boolean v1, p0, LV2/a;->h:Z

    const-string v6, "element"

    if-eqz v1, :cond_2

    invoke-virtual {v0}, LO2/a;->a()LU0/e;

    move-result-object v1

    invoke-virtual {v0}, LO2/a;->a()LU0/e;

    iget-object v0, v3, LF3/s;->d:Ljava/lang/Object;

    invoke-static {v0, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/graphics/Bitmap;

    iget v3, p0, LV2/a;->i:I

    iget p0, p0, LV2/a;->j:I

    invoke-static {v0, v3, p0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string v0, "createScaledBitmap(...)"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p0}, LK/I;->f(LU0/e;Landroid/graphics/Bitmap;)Ljava/io/ByteArrayInputStream;

    move-result-object p0

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, LO2/a;->a()LU0/e;

    move-result-object p0

    iget-object v0, v3, LF3/s;->d:Ljava/lang/Object;

    invoke-static {v0, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {p0, v0}, LK/I;->f(LU0/e;Landroid/graphics/Bitmap;)Ljava/io/ByteArrayInputStream;

    move-result-object p0

    :goto_2
    invoke-direct {p1, v4, p0}, LX2/b;-><init>(ILjava/io/InputStream;)V

    goto :goto_3

    :cond_3
    new-instance p1, LX2/b;

    invoke-direct {p1, v2, v1}, LX2/b;-><init>(ILjava/io/InputStream;)V

    :goto_3
    invoke-virtual {v5, p1}, LE2/a;->accept(Ljava/lang/Object;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p0

    new-instance p1, LX2/b;

    const/4 v2, 0x2

    invoke-direct {p1, v2, v1}, LX2/b;-><init>(ILjava/io/InputStream;)V

    invoke-virtual {v5, p1}, LE2/a;->accept(Ljava/lang/Object;)V

    invoke-virtual {v0}, LO2/a;->d()LU0/e;

    move-result-object p1

    const-string v0, "generate failed, "

    invoke-static {v0, p0}, LB/a;->l(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v6, p0, v0}, LU0/e;->y(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4
    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0
.end method

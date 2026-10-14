.class public final LV2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX2/a;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:LO2/a;

.field public final c:Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerator;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;LO2/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LV2/c;->a:Landroid/content/Context;

    iput-object p2, p0, LV2/c;->b:LO2/a;

    const/4 p2, 0x4

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/visual/RequestType;->ONDEVICE:Lcom/samsung/android/sdk/scs/ai/visual/RequestType;

    invoke-static {p1, p2, v0}, Lcom/samsung/android/sdk/scs/ai/AiServices;->getImageEditorGenerator(Landroid/content/Context;ILcom/samsung/android/sdk/scs/ai/visual/RequestType;)Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerator;

    move-result-object p1

    iput-object p1, p0, LV2/c;->c:Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerator;

    return-void
.end method


# virtual methods
.method public final cancel(J)V
    .locals 2

    iget-object p1, p0, LV2/c;->b:LO2/a;

    invoke-virtual {p1}, LO2/a;->d()LU0/e;

    move-result-object p1

    iget-object p2, p0, LV2/c;->d:Ljava/lang/String;

    const-string v0, "cancel, id:"

    invoke-static {v0, p2}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Img2WeatherScsImpl"

    invoke-virtual {p1, v1, p2, v0}, LU0/e;->o(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, LV2/c;->d:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p2, p0, LV2/c;->c:Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerator;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerator;->cancel(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, LV2/c;->d:Ljava/lang/String;

    return-void
.end method

.method public final generate(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/function/Consumer;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    move/from16 v3, p9

    iget-object v4, v0, LV2/c;->b:LO2/a;

    invoke-virtual {v4}, LO2/a;->d()LU0/e;

    move-result-object v5

    const-string v6, "generate: ["

    const-string v7, ", "

    invoke-static {v6, v2, v7, v1, v7}, LB/a;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "] start"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    const-string v9, "Img2WeatherScsImpl"

    invoke-virtual {v5, v9, v6, v8}, LU0/e;->o(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static/range {p5 .. p5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static/range {p6 .. p6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    new-instance v11, LF3/s;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v12

    if-nez v12, :cond_0

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_0
    const/4 v13, 0x1

    invoke-virtual {v5, v12, v13}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v12

    iput-object v12, v11, LF3/s;->d:Ljava/lang/Object;

    invoke-virtual {v4}, LO2/a;->d()LU0/e;

    move-result-object v12

    const-string v13, "generate, original: "

    const-string v14, "x"

    invoke-static {v13, v14, v8, v10}, LB/a;->m(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v13

    new-array v15, v7, [Ljava/lang/Object;

    invoke-virtual {v12, v9, v13, v15}, LU0/e;->o(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v3, :cond_1

    invoke-virtual {v4}, LO2/a;->a()LU0/e;

    invoke-static {v5}, LU0/e;->q(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4}, LO2/a;->a()LU0/e;

    const-string v12, "element"

    invoke-static {v6, v12}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, LU0/e;->q(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v4}, LO2/a;->a()LU0/e;

    iget-object v13, v11, LF3/s;->d:Ljava/lang/Object;

    invoke-static {v13, v12}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Landroid/graphics/Bitmap;

    invoke-static {v13}, LU0/e;->q(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v12

    iput-object v12, v11, LF3/s;->d:Ljava/lang/Object;

    invoke-virtual {v4}, LO2/a;->d()LU0/e;

    move-result-object v12

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    const-string v3, "generate, square: "

    invoke-static {v3, v14, v13, v15}, LB/a;->m(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    new-array v13, v7, [Ljava/lang/Object;

    invoke-virtual {v12, v9, v3, v13}, LU0/e;->o(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v12, "inputType"

    const-string v13, "bitmap"

    invoke-virtual {v3, v12, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "generateMode"

    const-string v13, "mask"

    invoke-virtual {v3, v12, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "inputBitmap"

    invoke-virtual {v3, v12, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v12, "alphaBitmap"

    invoke-virtual {v3, v12, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v12, "time"

    invoke-virtual {v3, v12, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "weather"

    invoke-virtual {v3, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, LO2/a;->d()LU0/e;

    move-result-object v4

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "inputBitmap "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v9, v1, v2}, LU0/e;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;

    invoke-direct {v1}, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;-><init>()V

    iget-object v2, v0, LV2/c;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;->setPackageName(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;->build()Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo;

    move-result-object v1

    iget-object v2, v0, LV2/c;->c:Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerator;

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerator;->generate(Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo;Landroid/os/Bundle;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getTaskId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, LV2/c;->d:Ljava/lang/String;

    new-instance v2, LV2/a;

    move-object/from16 v3, p10

    check-cast v3, LE2/a;

    move-object/from16 p1, v2

    move-object/from16 p2, p0

    move-object/from16 p3, v1

    move-object/from16 p4, v11

    move-object/from16 p5, v3

    move/from16 p6, p9

    move/from16 p7, v8

    move/from16 p8, v10

    invoke-direct/range {p1 .. p8}, LV2/a;-><init>(LV2/c;Lcom/samsung/android/sdk/scs/base/tasks/Task;LF3/s;LE2/a;ZII)V

    new-instance v0, LV2/b;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2}, LV2/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->addOnCompleteListener(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    return-void
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "SCS"

    return-object p0
.end method

.method public final initialize()Z
    .locals 6

    iget-object v0, p0, LV2/c;->b:LO2/a;

    invoke-virtual {v0}, LO2/a;->d()LU0/e;

    move-result-object v1

    iget-object v2, p0, LV2/c;->a:Landroid/content/Context;

    const-string v3, "FEATURE_WALLPAPER"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/scs/base/feature/Feature;->checkFeature(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const-string v3, "initialize "

    invoke-static {v2, v3}, Li4/b;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Img2WeatherScsImpl"

    invoke-virtual {v1, v5, v2, v4}, LU0/e;->o(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, LV2/c;->c:Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerator;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerator;->prepare()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/base/tasks/Tasks;->await(Lcom/samsung/android/sdk/scs/base/tasks/Task;)Ljava/lang/Object;

    invoke-virtual {v0}, LO2/a;->d()LU0/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "initialize, "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v5, v1, v2}, LU0/e;->o(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final mixImages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LX2/b;
    .locals 10

    const-string v0, "inputPath1"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LV2/c;->b:LO2/a;

    invoke-virtual {v0}, LO2/a;->d()LU0/e;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mixImages: ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] start"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "Img2WeatherScsImpl"

    invoke-virtual {v1, v7, v2, v6}, LU0/e;->o(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;

    invoke-direct {v2}, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;-><init>()V

    iget-object v6, p0, LV2/c;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;->setPackageName(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;->build()Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo;

    move-result-object v2

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v8, "inputType"

    const-string v9, "bitmap"

    invoke-virtual {v6, v8, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "generateMode"

    const-string v9, "mix"

    invoke-virtual {v6, v8, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "inputBitmap"

    invoke-virtual {v6, v8, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "alphaBitmap"

    invoke-virtual {v6, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "time"

    invoke-virtual {v6, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "weather"

    invoke-virtual {v6, p1, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, LV2/c;->c:Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerator;

    invoke-virtual {p0, v2, v6}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerator;->generate(Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo;Landroid/os/Bundle;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/base/tasks/Tasks;->await(Lcom/samsung/android/sdk/scs/base/tasks/Task;)Ljava/lang/Object;

    invoke-virtual {v0}, LO2/a;->d()LU0/e;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->isSuccessful()Z

    move-result p2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->isComplete()Z

    move-result v2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, " mixImages, success: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", complete: "

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v7, p2, v2}, LU0/e;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorResult;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorResult;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p1, "outputBitmap"

    const-class p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    new-instance p1, LX2/b;

    invoke-virtual {v0}, LO2/a;->a()LU0/e;

    move-result-object p2

    invoke-static {p0}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-static {p2, p0}, LK/I;->f(LU0/e;Landroid/graphics/Bitmap;)Ljava/io/ByteArrayInputStream;

    move-result-object p0

    invoke-direct {p1, v5, p0}, LX2/b;-><init>(ILjava/io/InputStream;)V

    return-object p1

    :cond_2
    invoke-virtual {v0}, LO2/a;->d()LU0/e;

    move-result-object p0

    new-array p1, v5, [Ljava/lang/Object;

    const-string p2, "mixImage failed"

    invoke-virtual {p0, v7, p2, p1}, LU0/e;->y(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, LO2/a;->d()LU0/e;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] finished"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v7, p1, p2}, LU0/e;->o(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, LX2/b;

    invoke-virtual {v0}, LO2/a;->a()LU0/e;

    move-result-object p1

    invoke-static {v1}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-static {p1, v1}, LK/I;->f(LU0/e;Landroid/graphics/Bitmap;)Ljava/io/ByteArrayInputStream;

    move-result-object p1

    invoke-direct {p0, v5, p1}, LX2/b;-><init>(ILjava/io/InputStream;)V

    return-object p0
.end method

.method public final release()V
    .locals 4

    iget-object v0, p0, LV2/c;->b:LO2/a;

    invoke-virtual {v0}, LO2/a;->d()LU0/e;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Img2WeatherScsImpl"

    const-string v3, "release"

    invoke-virtual {v0, v2, v3, v1}, LU0/e;->o(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, LV2/c;->c:Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerator;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerator;->release()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    return-void
.end method

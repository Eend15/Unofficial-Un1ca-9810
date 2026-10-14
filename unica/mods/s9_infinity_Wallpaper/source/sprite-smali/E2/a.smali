.class public final synthetic LE2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, LE2/a;->a:I

    iput-object p1, p0, LE2/a;->b:Ljava/lang/Object;

    iput-object p3, p0, LE2/a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, LE2/a;->a:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, LF2/e;

    const-string v2, "it"

    invoke-static {v1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, LE2/a;->b:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateSingleWorker;

    iget-object v3, v2, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateSingleWorker;->j:LO2/a;

    invoke-virtual {v3}, LO2/a;->d()LU0/e;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v1, LF2/e;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, LF2/e;->b:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "GenerateSingleWorker"

    invoke-virtual {v3, v8, v4, v7}, LU0/e;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v3, 0x64

    if-ne v5, v3, :cond_0

    new-instance v3, Ln0/l;

    sget-object v4, Ln0/g;->c:Ln0/g;

    invoke-direct {v3, v4}, Ln0/l;-><init>(Ln0/g;)V

    iget-object v0, v0, LE2/a;->c:Ljava/lang/Object;

    check-cast v0, LF3/s;

    iput-object v3, v0, LF3/s;->d:Ljava/lang/Object;

    :cond_0
    iget-object v0, v2, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateSingleWorker;->m:LH2/a;

    iget-object v3, v0, LH2/a;->n:Ljava/lang/String;

    const-string v4, "_"

    invoke-static {v3, v4}, Lq/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, LH2/a;->o:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v16

    new-instance v3, LI2/a;

    iget-object v8, v0, LH2/a;->a:Ljava/lang/String;

    invoke-static {v8}, LF3/k;->c(Ljava/lang/Object;)V

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget-wide v9, v0, LH2/a;->b:J

    iget v11, v0, LH2/a;->c:I

    iget v12, v1, LF2/e;->a:I

    move-object v7, v3

    invoke-direct/range {v7 .. v16}, LI2/a;-><init>(Ljava/lang/String;JIILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, v2, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateSingleWorker;->l:LI2/f;

    invoke-interface {v0, v3}, LI2/f;->a(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, LE2/d;

    const-string v2, "result"

    invoke-static {v1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, LE2/a;->b:Ljava/lang/Object;

    check-cast v2, LF2/f;

    iget-object v2, v2, LF2/f;->a:LO2/a;

    invoke-virtual {v2}, LO2/a;->d()LU0/e;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "generate, response "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, LE2/d;->c:Ljava/io/InputStream;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "GenerateImageUseCase"

    invoke-virtual {v2, v5, v3, v4}, LU0/e;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v0, LE2/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->put(Ljava/lang/Object;)V

    return-void

    :pswitch_1
    move-object/from16 v1, p1

    check-cast v1, LE2/d;

    const-string v2, "result"

    invoke-static {v1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, LE2/a;->b:Ljava/lang/Object;

    check-cast v2, LF2/c;

    iget-object v2, v2, LF2/c;->a:LO2/a;

    invoke-virtual {v2}, LO2/a;->d()LU0/e;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "generate, result from consumer: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "GenerateAllImagesUseCase"

    invoke-virtual {v2, v5, v3, v4}, LU0/e;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v0, LE2/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->put(Ljava/lang/Object;)V

    return-void

    :pswitch_2
    move-object/from16 v1, p1

    check-cast v1, LX2/b;

    const-string v2, "generateResult"

    invoke-static {v1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, v1, LX2/b;->a:I

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/16 v2, 0x190

    goto :goto_0

    :cond_1
    const/16 v2, 0x12c

    goto :goto_0

    :cond_2
    const/16 v2, 0x64

    :goto_0
    new-instance v3, LE2/d;

    iget-object v4, v0, LE2/a;->c:Ljava/lang/Object;

    check-cast v4, LE2/c;

    iget-wide v4, v4, LE2/c;->a:J

    iget-object v1, v1, LX2/b;->b:Ljava/io/InputStream;

    invoke-direct {v3, v4, v5, v2, v1}, LE2/d;-><init>(JILjava/io/InputStream;)V

    iget-object v0, v0, LE2/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Consumer;

    invoke-interface {v0, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic LM1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# instance fields
.field public final synthetic a:[Landroid/graphics/Bitmap;

.field public final synthetic b:[Z

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>([Landroid/graphics/Bitmap;[ZLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM1/f;->a:[Landroid/graphics/Bitmap;

    iput-object p2, p0, LM1/f;->b:[Z

    iput-object p3, p0, LM1/f;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onPixelCopyFinished(I)V
    .locals 6

    iget-object v0, p0, LM1/f;->a:[Landroid/graphics/Bitmap;

    iget-object v1, p0, LM1/f;->b:[Z

    iget-object p0, p0, LM1/f;->c:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const-string v3, "DisplayUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "copySurfaceToBitmapSync : copy failed. code="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    aget-object p1, v0, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p1, 0x0

    aput-object p1, v0, v2

    :cond_0
    const/4 p1, 0x1

    aput-boolean p1, v1, v2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

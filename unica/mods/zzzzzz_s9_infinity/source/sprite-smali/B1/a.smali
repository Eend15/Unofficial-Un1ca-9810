.class public final synthetic LB1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0

    iput p2, p0, LB1/a;->d:I

    iput-object p1, p0, LB1/a;->e:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, LB1/a;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LB1/a;->e:Landroid/graphics/Bitmap;

    invoke-static {p0}, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientProvider;->a(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_0
    iget-object p0, p0, LB1/a;->e:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :pswitch_1
    iget-object p0, p0, LB1/a;->e:Landroid/graphics/Bitmap;

    invoke-static {p0}, Lcom/samsung/android/wallpaper/live/suitcase/provider/PhysicsProvider;->a(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_2
    iget-object p0, p0, LB1/a;->e:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :pswitch_3
    iget-object p0, p0, LB1/a;->e:Landroid/graphics/Bitmap;

    invoke-static {p0}, Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityThumbnail;->b(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_4
    iget-object p0, p0, LB1/a;->e:Landroid/graphics/Bitmap;

    invoke-static {p0}, Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityThumbnail;->a(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_5
    iget-object p0, p0, LB1/a;->e:Landroid/graphics/Bitmap;

    invoke-static {p0}, Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldThumbnail;->a(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_6
    iget-object p0, p0, LB1/a;->e:Landroid/graphics/Bitmap;

    invoke-static {p0}, Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldThumbnail;->b(Landroid/graphics/Bitmap;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

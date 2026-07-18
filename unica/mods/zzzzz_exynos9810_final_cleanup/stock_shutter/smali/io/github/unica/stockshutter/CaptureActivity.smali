.class public final Lio/github/unica/stockshutter/CaptureActivity;
.super Landroid/app/Activity;
.source "CaptureActivity.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# static fields
.field public static final EXTRA_FACING:Ljava/lang/String; = "facing"

.field public static final EXTRA_ZOOM:Ljava/lang/String; = "zoom"

.field private static final GIVE_UP_MS:J = 0x2ee0L

.field private static final PERMISSION_REQUEST:I = 0x7

.field private static final SAMSUNG_DUAL_CAMERA_DISABLE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private static final SAMSUNG_ZOOM_RATIO:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "StockShutterBridge"


# instance fields
.field private activeArray:Landroid/graphics/Rect;

.field private appliedZoom:F

.field private final availabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field private camera:Landroid/hardware/camera2/CameraDevice;

.field private cameraId:Ljava/lang/String;

.field private captureSent:Z

.field private completed:Z

.field private fallbackWideId:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private jpegSize:Landroid/util/Size;

.field private manager:Landroid/hardware/camera2/CameraManager;

.field private opening:Z

.field private previewSize:Landroid/util/Size;

.field private previewSurface:Landroid/view/Surface;

.field private reader:Landroid/media/ImageReader;

.field private sensorOrientation:I

.field private session:Landroid/hardware/camera2/CameraCaptureSession;

.field private final shutterSound:Landroid/media/MediaActionSound;

.field private startedAt:J

.field private teleFallbackUsed:Z

.field private thread:Landroid/os/HandlerThread;

.field private tinyPreview:Landroid/view/TextureView;

.field private wantedLensFacing:I

.field private wantedZoom:F


# direct methods
.method public static synthetic $r8$lambda$6-UNEKDTPpBoiaV_YjJ-RHXc3JI(Landroid/util/Size;)J
    .locals 2

    invoke-static {p0}, Lio/github/unica/stockshutter/CaptureActivity;->area(Landroid/util/Size;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic $r8$lambda$MMpvrWlVlVw-P1zxb0plZIcx2Iw(Lio/github/unica/stockshutter/CaptureActivity;Landroid/media/ImageReader;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/github/unica/stockshutter/CaptureActivity;->onImage(Landroid/media/ImageReader;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SeW4Da494vOn2ILmGedQWoKR6Q8(Lio/github/unica/stockshutter/CaptureActivity;)V
    .locals 0

    invoke-direct {p0}, Lio/github/unica/stockshutter/CaptureActivity;->finishAndReturn()V

    return-void
.end method

.method public static synthetic $r8$lambda$wEocrXG_Xogp5pCynBKKrfLT9ZE(Lio/github/unica/stockshutter/CaptureActivity;)V
    .locals 0

    invoke-direct {p0}, Lio/github/unica/stockshutter/CaptureActivity;->tryOpenCamera()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 55
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "samsung.android.scaler.zoomRatio"

    const-class v2, Ljava/lang/Float;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lio/github/unica/stockshutter/CaptureActivity;->SAMSUNG_ZOOM_RATIO:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 57
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "samsung.android.control.dualCameraDisable"

    const-class v2, Ljava/lang/Byte;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lio/github/unica/stockshutter/CaptureActivity;->SAMSUNG_DUAL_CAMERA_DISABLE:Landroid/hardware/camera2/CaptureRequest$Key;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    new-instance v0, Landroid/media/MediaActionSound;

    invoke-direct {v0}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v0, p0, Lio/github/unica/stockshutter/CaptureActivity;->shutterSound:Landroid/media/MediaActionSound;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 78
    iput v0, p0, Lio/github/unica/stockshutter/CaptureActivity;->appliedZoom:F

    .line 86
    new-instance v0, Lio/github/unica/stockshutter/CaptureActivity$1;

    invoke-direct {v0, p0}, Lio/github/unica/stockshutter/CaptureActivity$1;-><init>(Lio/github/unica/stockshutter/CaptureActivity;)V

    iput-object v0, p0, Lio/github/unica/stockshutter/CaptureActivity;->availabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    return-void
.end method

.method static synthetic access$000(Lio/github/unica/stockshutter/CaptureActivity;)Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lio/github/unica/stockshutter/CaptureActivity;->cameraId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lio/github/unica/stockshutter/CaptureActivity;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lio/github/unica/stockshutter/CaptureActivity;->tryOpenCamera()V

    return-void
.end method

.method static synthetic access$1000(Lio/github/unica/stockshutter/CaptureActivity;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lio/github/unica/stockshutter/CaptureActivity;->retryOpen()V

    return-void
.end method

.method static synthetic access$1100(Lio/github/unica/stockshutter/CaptureActivity;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lio/github/unica/stockshutter/CaptureActivity;->teleFallbackUsed:Z

    return p0
.end method

.method static synthetic access$1200(Lio/github/unica/stockshutter/CaptureActivity;)Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lio/github/unica/stockshutter/CaptureActivity;->fallbackWideId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lio/github/unica/stockshutter/CaptureActivity;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lio/github/unica/stockshutter/CaptureActivity;->fallbackToWide(I)V

    return-void
.end method

.method static synthetic access$200(Lio/github/unica/stockshutter/CaptureActivity;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 51
    iget-object p0, p0, Lio/github/unica/stockshutter/CaptureActivity;->camera:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method static synthetic access$202(Lio/github/unica/stockshutter/CaptureActivity;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 51
    iput-object p1, p0, Lio/github/unica/stockshutter/CaptureActivity;->camera:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$300(Lio/github/unica/stockshutter/CaptureActivity;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lio/github/unica/stockshutter/CaptureActivity;->completed:Z

    return p0
.end method

.method static synthetic access$402(Lio/github/unica/stockshutter/CaptureActivity;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 51
    iput-object p1, p0, Lio/github/unica/stockshutter/CaptureActivity;->session:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$500(Lio/github/unica/stockshutter/CaptureActivity;)F
    .locals 0

    .line 51
    iget p0, p0, Lio/github/unica/stockshutter/CaptureActivity;->appliedZoom:F

    return p0
.end method

.method static synthetic access$600(Lio/github/unica/stockshutter/CaptureActivity;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lio/github/unica/stockshutter/CaptureActivity;->capture()V

    return-void
.end method

.method static synthetic access$700(Lio/github/unica/stockshutter/CaptureActivity;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lio/github/unica/stockshutter/CaptureActivity;->fail(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$802(Lio/github/unica/stockshutter/CaptureActivity;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lio/github/unica/stockshutter/CaptureActivity;->opening:Z

    return p1
.end method

.method static synthetic access$900(Lio/github/unica/stockshutter/CaptureActivity;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lio/github/unica/stockshutter/CaptureActivity;->createSession()V

    return-void
.end method

.method private applyZoom(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 5

    .line 476
    :try_start_0
    sget-object v0, Lio/github/unica/stockshutter/CaptureActivity;->SAMSUNG_ZOOM_RATIO:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v1, p0, Lio/github/unica/stockshutter/CaptureActivity;->appliedZoom:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 477
    sget-object v0, Lio/github/unica/stockshutter/CaptureActivity;->SAMSUNG_DUAL_CAMERA_DISABLE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 479
    const-string v1, "StockShutterBridge"

    const-string v2, "Samsung zoom vendor tags unavailable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 481
    :goto_0
    iget-object v0, p0, Lio/github/unica/stockshutter/CaptureActivity;->activeArray:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    iget v1, p0, Lio/github/unica/stockshutter/CaptureActivity;->appliedZoom:F

    const v2, 0x3f8020c5    # 1.001f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    goto :goto_1

    .line 482
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lio/github/unica/stockshutter/CaptureActivity;->appliedZoom:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 483
    iget-object v2, p0, Lio/github/unica/stockshutter/CaptureActivity;->activeArray:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lio/github/unica/stockshutter/CaptureActivity;->appliedZoom:F

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    and-int/lit8 v0, v0, -0x2

    and-int/lit8 v2, v2, -0x2

    .line 486
    iget-object v3, p0, Lio/github/unica/stockshutter/CaptureActivity;->activeArray:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lio/github/unica/stockshutter/CaptureActivity;->activeArray:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v4, v0

    div-int/2addr v4, v1

    add-int/2addr v3, v4

    .line 487
    iget-object v4, p0, Lio/github/unica/stockshutter/CaptureActivity;->activeArray:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object p0, p0, Lio/github/unica/stockshutter/CaptureActivity;->activeArray:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    sub-int/2addr p0, v2

    div-int/2addr p0, v1

    add-int/2addr v4, p0

    .line 488
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v1, Landroid/graphics/Rect;

    add-int/2addr v0, v3

    add-int/2addr v2, v4

    invoke-direct {v1, v3, v4, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, p0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private static area(Landroid/util/Size;)J
    .locals 4

    .line 521
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    int-to-long v2, p0

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private buildTransparentSurface()V
    .locals 4

    .line 120
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 121
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 122
    new-instance v1, Landroid/view/TextureView;

    invoke-direct {v1, p0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lio/github/unica/stockshutter/CaptureActivity;->tinyPreview:Landroid/view/TextureView;

    const v2, 0x3c23d70a    # 0.01f

    .line 123
    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setAlpha(F)V

    .line 124
    iget-object v1, p0, Lio/github/unica/stockshutter/CaptureActivity;->tinyPreview:Landroid/view/TextureView;

    invoke-virtual {v1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 125
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x2

    const v3, 0x800033

    invoke-direct {v1, v2, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 126
    iget-object v2, p0, Lio/github/unica/stockshutter/CaptureActivity;->tinyPreview:Landroid/view/TextureView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    invoke-virtual {p0, v0}, Lio/github/unica/stockshutter/CaptureActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private capture()V
    .locals 4

    .line 399
    iget-boolean v0, p0, Lio/github/unica/stockshutter/CaptureActivity;->captureSent:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/github/unica/stockshutter/CaptureActivity;->completed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/github/unica/stockshutter/CaptureActivity;->camera:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lio/github/unica/stockshutter/CaptureActivity;->session:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/github/unica/stockshutter/CaptureActivity;->reader:Landroid/media/ImageReader;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 400
    iput-boolean v1, p0, Lio/github/unica/stockshutter/CaptureActivity;->captureSent:Z

    const/4 v2, 0x2

    .line 402
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 403
    iget-object v2, p0, Lio/github/unica/stockshutter/CaptureActivity;->reader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 404
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 405
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 406
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 407
    invoke-direct {p0, v0}, Lio/github/unica/stockshutter/CaptureActivity;->applyZoom(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 408
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0}, Lio/github/unica/stockshutter/CaptureActivity;->jpegOrientation()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 409
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v2, 0x5f

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 410
    iget-object v1, p0, Lio/github/unica/stockshutter/CaptureActivity;->session:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    new-instance v2, Lio/github/unica/stockshutter/CaptureActivity$4;

    invoke-direct {v2, p0}, Lio/github/unica/stockshutter/CaptureActivity$4;-><init>(Lio/github/unica/stockshutter/CaptureActivity;)V

    iget-object v3, p0, Lio/github/unica/stockshutter/CaptureActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 417
    const-string v1, "Still request failed"

    invoke-direct {p0, v1, v0}, Lio/github/unica/stockshutter/CaptureActivity;->fail(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static choosePreview([Landroid/util/Size;)Landroid/util/Size;
    .locals 6

    .line 267
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    const/16 v5, 0x280

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v4

    const/16 v5, 0x1e0

    if-ne v4, v5, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 268
    :cond_1
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lio/github/unica/stockshutter/CaptureActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lio/github/unica/stockshutter/CaptureActivity$$ExternalSyntheticLambda0;-><init>()V

    .line 269
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lio/github/unica/stockshutter/CaptureActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lio/github/unica/stockshutter/CaptureActivity$$ExternalSyntheticLambda1;-><init>()V

    .line 270
    invoke-static {v2}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->min(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v0

    aget-object p0, p0, v1

    .line 271
    invoke-virtual {v0, p0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Size;

    return-object p0
.end method

.method private declared-synchronized closeCamera()V
    .locals 2

    monitor-enter p0

    .line 508
    :try_start_0
    iget-object v0, p0, Lio/github/unica/stockshutter/CaptureActivity;->session:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 509
    :try_start_1
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 510
    :catch_0
    :try_start_2
    iget-object v0, p0, Lio/github/unica/stockshutter/CaptureActivity;->session:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 511
    :catch_1
    :try_start_3
    iget-object v0, p0, Lio/github/unica/stockshutter/CaptureActivity;->session:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 512
    iput-object v1, p0, Lio/github/unica/stockshutter/CaptureActivity;->session:Landroid/hardware/camera2/CameraCaptureSession;

    .line 514
    :cond_0
    iget-object v0, p0, Lio/github/unica/stockshutter/CaptureActivity;->reader:Landroid/media/ImageReader;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    iput-object v1, p0, Lio/github/unica/stockshutter/CaptureActivity;->reader:Landroid/media/ImageReader;

    .line 515
    :cond_1
    iget-object v0, p0, Lio/github/unica/stockshutter/CaptureActivity;->previewSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lio/github/unica/stockshutter/CaptureActivity;->previewSurface:Landroid/view/Surface;

    .line 516
    :cond_2
    iget-object v0, p0, Lio/github/unica/stockshutter/CaptureActivity;->camera:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    iput-object v1, p0, Lio/github/unica/stockshutter/CaptureActivity;->camera:Landroid/hardware/camera2/CameraDevice;

    :cond_3
    const/4 v0, 0x0

    .line 517
    iput-boolean v0, p0, Lio/github/unica/stockshutter/CaptureActivity;->opening:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 518
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method private configureCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;[Landroid/util/Size;[Landroid/util/Size;)V
    .locals 1

    .line 251
    iput-object p1, p0, Lio/github/unica/stockshutter/CaptureActivity;->cameraId:Ljava/lang/String;

    .line 252
    invoke-static {p3}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lio/github/unica/stockshutter/CaptureActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lio/github/unica/stockshutter/CaptureActivity$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p3, p3, v0

    invoke-virtual {p1, p3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Size;

    iput-object p1, p0, Lio/github/unica/stockshutter/CaptureActivity;->jpegSize:Landroid/util/Size;

    .line 253
    invoke-static {p4}, Lio/github/unica/stockshutter/CaptureActivity;->choosePreview([Landroid/util/Size;)Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lio/github/unica/stockshutter/CaptureActivity;->previewSize:Landroid/util/Size;

    .line 254
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/16 p1, 0x5a

    goto :goto_0

    .line 255
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    iput p1, p0, Lio/github/unica/stockshutter/CaptureActivity;->sensorOrientation:I

    .line 256
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iput-object p1, p0, Lio/github/unica/stockshutter/CaptureActivity;->activeArray:Landroid/graphics/Rect;

    return-void
.end method

.method private createSession()V
    .locals 7

    .line 346
    iget-object v0, p0, Lio/github/unica/stockshutter/CaptureActivity;->camera:Landroid/hardware/camera2/CameraDevice;

    .line 347
    iget-object v1, p0, Lio/github/unica/stockshutter/CaptureActivity;->tinyPreview:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 348
    iget-object v2, p0, Lio/github/unica/stockshutter/CaptureActivity;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 351
    :cond_0
    :try_start_0
    iget-object v3, p0, Lio/github/unica/stockshutter/CaptureActivity;->previewSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object v4, p0, Lio/github/unica/stockshutter/CaptureActivity;->previewSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 352
    new-instance v3, Landroid/view/Surface;

    invoke-direct {v3, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v3, p0, Lio/github/unica/stockshutter/CaptureActivity;->previewSurface:Landroid/view/Surface;

    .line 353
    iget-object v1, p0, Lio/github/unica/stockshutter/CaptureActivity;->jpegSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v3, p0, Lio/github/unica/stockshutter/CaptureActivity;->jpegSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    const/16 v4, 0x100

    const/4 v5, 0x1

    invoke-static {v1, v3, v4, v5}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    iput-object v1, p0, Lio/github/unica/stockshutter/CaptureActivity;->reader:Landroid/media/ImageReader;

    .line 355
    new-instance v3, Lio/github/unica/stockshutter/CaptureActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lio/github/unica/stockshutter/CaptureActivity$$ExternalSyntheticLambda4;-><init>(Lio/github/unica/stockshutter/CaptureActivity;)V

    invoke-virtual {v1, v3, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 356
    invoke-virtual {v0, v5}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 357
    iget-object v3, p0, Lio/github/unica/stockshutter/CaptureActivity;->previewSurface:Landroid/view/Surface;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 358
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 359
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 360
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 361
    invoke-direct {p0, v1}, Lio/github/unica/stockshutter/CaptureActivity;->applyZoom(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    const/4 v3, 0x2

    .line 362
    new-array v3, v3, [Landroid/view/Surface;

    iget-object v4, p0, Lio/github/unica/stockshutter/CaptureActivity;->previewSurface:Landroid/view/Surface;

    const/4 v6, 0x0

    aput-object v4, v3, v6

    iget-object v4, p0, Lio/github/unica/stockshutter/CaptureActivity;->reader:Landroid/media/ImageReader;

    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lio/github/unica/stockshutter/CaptureActivity$3;

    invoke-direct {v4, p0, v0, v1, v2}, Lio/github/unica/stockshutter/CaptureActivity$3;-><init>(Lio/github/unica/stockshutter/CaptureActivity;Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/os/Handler;)V

    invoke-virtual {v0, v3, v4, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 394
    const-string v1, "Could not configure helper session"

    invoke-direct {p0, v1, v0}, Lio/github/unica/stockshutter/CaptureActivity;->fail(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private fail(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 498
    iget-boolean v0, p0, Lio/github/unica/stockshutter/CaptureActivity;->completed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 499
    iput-boolean v0, p0, Lio/github/unica/stockshutter/CaptureActivity;->completed:Z

    .line 500
    const-string v0, "StockShutterBridge"

    if-eqz p2, :cond_1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :goto_0
    new-instance p2, Lio/github/unica/stockshutter/CaptureActivity$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0, p1}, Lio/github/unica/stockshutter/CaptureActivity$$ExternalSyntheticLambda7;-><init>(Lio/github/unica/stockshutter/CaptureActivity;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lio/github/unica/stockshutter/CaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private fallbackToWide(I)V
    .locals 6

    const-string v0, "Physical tele alias failed with error "

    .line 326
    :try_start_0
    iget-object v1, p0, Lio/github/unica/stockshutter/CaptureActivity;->manager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lio/github/unica/stockshutter/CaptureActivity;->fallbackWideId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    .line 327
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-eqz v2, :cond_1

    .line 330
    iget-object v3, p0, Lio/github/unica/stockshutter/CaptureActivity;->fallbackWideId:Ljava/lang/String;

    const/16 v4, 0x100

    .line 331
    invoke-virtual {v2, v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v4

    const-class v5, Landroid/graphics/SurfaceTexture;

    .line 332
    invoke-virtual {v2, v5}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v2

    .line 330
    invoke-direct {p0, v3, v1, v4, v2}, Lio/github/unica/stockshutter/CaptureActivity;->configureCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;[Landroid/util/Size;[Landroid/util/Size;)V

    .line 333
    iget v2, p0, Lio/github/unica/stockshutter/CaptureActivity;->wantedZoom:F

    iput v2, p0, Lio/github/unica/stockshutter/CaptureActivity;->appliedZoom:F

    .line 334
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 335
    iget v2, p0, Lio/github/unica/stockshutter/CaptureActivity;->appliedZoom:F

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lio/github/unica/stockshutter/CaptureActivity;->appliedZoom:F

    :cond_0
    const/4 v1, 0x1

    .line 336
    iput-boolean v1, p0, Lio/github/unica/stockshutter/CaptureActivity;->teleFallbackUsed:Z

    .line 337
    const-string v1, "StockShutterBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; retrying logical Samsung camera with dual-camera switching enabled"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-direct {p0}, Lio/github/unica/stockshutter/CaptureActivity;->retryOpen()V

    return-void

    .line 328
    :cond_1
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const-string v1, "Wide camera has no stream map"

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Camera open error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lio/github/unica/stockshutter/CaptureActivity;->fail(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private finishAndReturn()V
    .locals 1

    .line 492
    invoke-direct {p0}, Lio/github/unica/stockshutter/CaptureActivity;->closeCamera()V

    .line 493
    invoke-virtual {p0}, Lio/github/unica/stockshutter/CaptureActivity;->finish()V

    const/4 v0, 0x0

    .line 494
    invoke-virtual {p0, v0, v0}, Lio/github/unica/stockshutter/CaptureActivity;->overridePendingTransition(II)V

    return-void
.end method

.method private jpegOrientation()I
    .locals 2

    .line 466
    invoke-virtual {p0}, Lio/github/unica/stockshutter/CaptureActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x5a

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/16 v0, 0xb4

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const/16 v0, 0x10e

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 470
    :goto_0
    iget v1, p0, Lio/github/unica/stockshutter/CaptureActivity;->wantedLensFacing:I

    if-nez v1, :cond_3

    neg-int v0, v0

    .line 471
    :cond_3
    iget p0, p0, Lio/github/unica/stockshutter/CaptureActivity;->sensorOrientation:I

    add-int/2addr p0, v0

    add-int/lit16 p0, p0, 0x168

    rem-int/lit16 p0, p0, 0x168

    return p0
.end method

.method static synthetic lambda$choosePreview$1(Landroid/util/Size;)Z
    .locals 2

    .line 269
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    const/16 v1, 0x500

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    const/16 v0, 0x3c0

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private onImage(Landroid/media/ImageReader;)V
    .locals 6

    const-string v0, "Invalid JPEG: "

    const/4 v1, 0x0

    .line 424
    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    if-eqz v1, :cond_2

    .line 438
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    return-void

    .line 426
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    const/4 v2, 0x0

    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 427
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    new-array v4, v3, [B

    .line 428
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x4

    if-lt v3, p1, :cond_1

    .line 429
    aget-byte p1, v4, v2

    const/16 v2, 0xff

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_1

    const/4 p1, 0x1

    aget-byte v5, v4, p1

    and-int/2addr v2, v5

    const/16 v5, 0xd8

    if-ne v2, v5, :cond_1

    .line 432
    invoke-direct {p0, v4}, Lio/github/unica/stockshutter/CaptureActivity;->save([B)V

    .line 433
    iput-boolean p1, p0, Lio/github/unica/stockshutter/CaptureActivity;->completed:Z

    .line 434
    new-instance p1, Lio/github/unica/stockshutter/CaptureActivity$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lio/github/unica/stockshutter/CaptureActivity$$ExternalSyntheticLambda6;-><init>(Lio/github/unica/stockshutter/CaptureActivity;)V

    invoke-virtual {p0, p1}, Lio/github/unica/stockshutter/CaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 438
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    return-void

    .line 430
    :cond_1
    :try_start_2
    new-instance p1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 436
    :try_start_3
    const-string v0, "JPEG save failed"

    invoke-direct {p0, v0, p1}, Lio/github/unica/stockshutter/CaptureActivity;->fail(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    .line 438
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    :cond_2
    return-void

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 439
    :cond_3
    throw p0
.end method

.method private static opticalPower(Landroid/hardware/camera2/CameraCharacteristics;)F
    .locals 3

    .line 260
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 261
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SizeF;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 262
    array-length v2, v0

    if-eqz v2, :cond_1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/util/SizeF;->getWidth()F

    move-result v2

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 263
    aget v0, v0, v1

    invoke-virtual {p0}, Landroid/util/SizeF;->getWidth()F

    move-result p0

    div-float/2addr v0, p0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method private retryOpen()V
    .locals 5

    .line 315
    iget-object v0, p0, Lio/github/unica/stockshutter/CaptureActivity;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 316
    iget-boolean v1, p0, Lio/github/unica/stockshutter/CaptureActivity;->completed:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 317
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lio/github/unica/stockshutter/CaptureActivity;->startedAt:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x2ee0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    .line 318
    const-string v0, "Camera stayed busy"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/github/unica/stockshutter/CaptureActivity;->fail(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    .line 320
    :cond_1
    new-instance v1, Lio/github/unica/stockshutter/CaptureActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lio/github/unica/stockshutter/CaptureActivity$$ExternalSyntheticLambda3;-><init>(Lio/github/unica/stockshutter/CaptureActivity;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private save([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 443
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IMG_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd_HHmmss_SSS"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 445
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 444
    const-string v2, "_display_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const-string v1, "mime_type"

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Camera"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "relative_path"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 448
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_pending"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 449
    invoke-virtual {p0}, Lio/github/unica/stockshutter/CaptureActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "external_primary"

    .line 450
    invoke-static {v3}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 449
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 452
    :try_start_0
    invoke-virtual {p0}, Lio/github/unica/stockshutter/CaptureActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "w"

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    .line 454
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    .line 455
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 459
    :cond_0
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x0

    .line 460
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 461
    invoke-virtual {p0}, Lio/github/unica/stockshutter/CaptureActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, p1, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 462
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Saved "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lio/github/unica/stockshutter/CaptureActivity;->jpegSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lio/github/unica/stockshutter/CaptureActivity;->jpegSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StockShutterBridge"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 453
    :cond_1
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    const-string v2, "MediaStore output unavailable"

    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz v3, :cond_2

    .line 452
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_5
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 456
    invoke-virtual {p0}, Lio/github/unica/stockshutter/CaptureActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 457
    instance-of p0, p1, Ljava/io/IOException;

    if-eqz p0, :cond_3

    check-cast p1, Ljava/io/IOException;

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    move-object p1, p0

    :goto_2
    throw p1

    .line 451
    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "MediaStore insert failed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private selectCamera()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 181
    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v2, v0, Lio/github/unica/stockshutter/CaptureActivity;->manager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 182
    iget v2, v0, Lio/github/unica/stockshutter/CaptureActivity;->wantedLensFacing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 185
    const-string v2, "21"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 186
    const-string v2, "50"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    const/high16 v5, -0x40800000    # -1.0f

    move-object v6, v2

    move v7, v4

    move v8, v5

    move-object v4, v6

    move-object v5, v4

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/16 v10, 0x100

    const-string v12, "StockShutterBridge"

    if-eqz v9, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 191
    :try_start_0
    iget-object v13, v0, Lio/github/unica/stockshutter/CaptureActivity;->manager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v13, v9}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v13
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    sget-object v14, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v13, v14}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 196
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v3, "Candidate camera "

    invoke-direct {v15, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v11, " facing="

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, " power="

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v13}, Lio/github/unica/stockshutter/CaptureActivity;->opticalPower(Landroid/hardware/camera2/CameraCharacteristics;)F

    move-result v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v14, :cond_9

    .line 197
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget v14, v0, Lio/github/unica/stockshutter/CaptureActivity;->wantedLensFacing:I

    if-eq v11, v14, :cond_1

    goto/16 :goto_4

    .line 198
    :cond_1
    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v13, v11}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-nez v11, :cond_2

    .line 200
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, " has no stream map"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 203
    :cond_2
    invoke-virtual {v11, v10}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v10

    .line 204
    const-class v14, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v11, v14}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v11

    .line 205
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, " jpeg="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v10, :cond_3

    const/4 v14, 0x0

    goto :goto_1

    :cond_3
    array-length v14, v10

    :goto_1
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, " preview="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v11, :cond_4

    const/4 v14, 0x0

    goto :goto_2

    .line 206
    :cond_4
    array-length v14, v11

    :goto_2
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 205
    invoke-static {v12, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_9

    .line 207
    array-length v3, v10

    if-eqz v3, :cond_9

    if-eqz v11, :cond_9

    array-length v3, v11

    if-nez v3, :cond_5

    goto :goto_4

    .line 208
    :cond_5
    iget v3, v0, Lio/github/unica/stockshutter/CaptureActivity;->wantedLensFacing:I

    if-nez v3, :cond_6

    .line 209
    invoke-direct {v0, v9, v13, v10, v11}, Lio/github/unica/stockshutter/CaptureActivity;->configureCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;[Landroid/util/Size;[Landroid/util/Size;)V

    .line 210
    iget v1, v0, Lio/github/unica/stockshutter/CaptureActivity;->wantedZoom:F

    iput v1, v0, Lio/github/unica/stockshutter/CaptureActivity;->appliedZoom:F

    return-void

    .line 213
    :cond_6
    invoke-static {v13}, Lio/github/unica/stockshutter/CaptureActivity;->opticalPower(Landroid/hardware/camera2/CameraCharacteristics;)F

    move-result v3

    cmpg-float v10, v3, v7

    if-gez v10, :cond_7

    move v7, v3

    move-object v4, v9

    move-object v2, v13

    :cond_7
    cmpl-float v10, v3, v8

    if-lez v10, :cond_8

    move v8, v3

    :goto_3
    move-object v6, v9

    move-object v5, v13

    goto :goto_4

    :cond_8
    if-nez v10, :cond_9

    if-eqz v6, :cond_9

    .line 223
    invoke-virtual {v9, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_9

    goto :goto_3

    :catch_0
    :cond_9
    :goto_4
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_a
    if-eqz v2, :cond_10

    .line 231
    iput-object v4, v0, Lio/github/unica/stockshutter/CaptureActivity;->fallbackWideId:Ljava/lang/String;

    div-float/2addr v8, v7

    .line 233
    iget v1, v0, Lio/github/unica/stockshutter/CaptureActivity;->wantedZoom:F

    const v3, 0x3fe66666    # 1.8f

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_b

    if-eqz v5, :cond_b

    const v1, 0x3fb33333    # 1.4f

    cmpl-float v1, v8, v1

    if-ltz v1, :cond_b

    const/4 v3, 0x1

    goto :goto_5

    :cond_b
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_c

    move-object v2, v5

    :cond_c
    if-eqz v3, :cond_d

    move-object v4, v6

    .line 236
    :cond_d
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 237
    invoke-virtual {v1, v10}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v5

    const-class v6, Landroid/graphics/SurfaceTexture;

    .line 238
    invoke-virtual {v1, v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v1

    .line 237
    invoke-direct {v0, v4, v2, v5, v1}, Lio/github/unica/stockshutter/CaptureActivity;->configureCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;[Landroid/util/Size;[Landroid/util/Size;)V

    .line 239
    iget v1, v0, Lio/github/unica/stockshutter/CaptureActivity;->wantedZoom:F

    if-eqz v3, :cond_e

    div-float/2addr v1, v8

    :cond_e
    iput v1, v0, Lio/github/unica/stockshutter/CaptureActivity;->appliedZoom:F

    const/high16 v3, 0x3f800000    # 1.0f

    .line 240
    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lio/github/unica/stockshutter/CaptureActivity;->appliedZoom:F

    .line 241
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    if-eqz v1, :cond_f

    .line 242
    iget v2, v0, Lio/github/unica/stockshutter/CaptureActivity;->appliedZoom:F

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lio/github/unica/stockshutter/CaptureActivity;->appliedZoom:F

    .line 243
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Selected camera "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lio/github/unica/stockshutter/CaptureActivity;->cameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requestedZoom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lio/github/unica/stockshutter/CaptureActivity;->wantedZoom:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " appliedZoom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lio/github/unica/stockshutter/CaptureActivity;->appliedZoom:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " opticalFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 247
    :cond_10
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No camera for facing "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lio/github/unica/stockshutter/CaptureActivity;->wantedLensFacing:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-direct {v1, v2, v0}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private startThread()V
    .locals 4

    .line 131
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "StockShutterCamera2"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/github/unica/stockshutter/CaptureActivity;->thread:Landroid/os/HandlerThread;

    .line 132
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 133
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lio/github/unica/stockshutter/CaptureActivity;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/github/unica/stockshutter/CaptureActivity;->handler:Landroid/os/Handler;

    .line 134
    iget-object v1, p0, Lio/github/unica/stockshutter/CaptureActivity;->manager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lio/github/unica/stockshutter/CaptureActivity;->availabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    .line 135
    iget-object v0, p0, Lio/github/unica/stockshutter/CaptureActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lio/github/unica/stockshutter/CaptureActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lio/github/unica/stockshutter/CaptureActivity$$ExternalSyntheticLambda2;-><init>(Lio/github/unica/stockshutter/CaptureActivity;)V

    const-wide/16 v2, 0x2ee0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private tryOpenCamera()V
    .locals 2

    .line 276
    iget-object v0, p0, Lio/github/unica/stockshutter/CaptureActivity;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 277
    iget-boolean v1, p0, Lio/github/unica/stockshutter/CaptureActivity;->completed:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lio/github/unica/stockshutter/CaptureActivity;->opening:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/github/unica/stockshutter/CaptureActivity;->camera:Landroid/hardware/camera2/CameraDevice;

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/github/unica/stockshutter/CaptureActivity;->cameraId:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/github/unica/stockshutter/CaptureActivity;->tinyPreview:Landroid/view/TextureView;

    .line 278
    invoke-virtual {v1}, Landroid/view/TextureView;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.permission.CAMERA"

    .line 279
    invoke-virtual {p0, v1}, Lio/github/unica/stockshutter/CaptureActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 280
    iput-boolean v1, p0, Lio/github/unica/stockshutter/CaptureActivity;->opening:Z

    .line 281
    new-instance v1, Lio/github/unica/stockshutter/CaptureActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v0}, Lio/github/unica/stockshutter/CaptureActivity$$ExternalSyntheticLambda5;-><init>(Lio/github/unica/stockshutter/CaptureActivity;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method synthetic lambda$fail$3$io-github-unica-stockshutter-CaptureActivity(Ljava/lang/String;)V
    .locals 1

    .line 0
    const/4 v0, 0x1

    .line 502
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 503
    invoke-direct {p0}, Lio/github/unica/stockshutter/CaptureActivity;->finishAndReturn()V

    return-void
.end method

.method synthetic lambda$startThread$0$io-github-unica-stockshutter-CaptureActivity()V
    .locals 2

    .line 136
    iget-boolean v0, p0, Lio/github/unica/stockshutter/CaptureActivity;->completed:Z

    if-nez v0, :cond_0

    const-string v0, "Timed out waiting for Samsung Camera to release the HAL"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/github/unica/stockshutter/CaptureActivity;->fail(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$tryOpenCamera$2$io-github-unica-stockshutter-CaptureActivity(Landroid/os/Handler;)V
    .locals 3

    .line 283
    :try_start_0
    iget-object v0, p0, Lio/github/unica/stockshutter/CaptureActivity;->manager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lio/github/unica/stockshutter/CaptureActivity;->cameraId:Ljava/lang/String;

    new-instance v2, Lio/github/unica/stockshutter/CaptureActivity$2;

    invoke-direct {v2, p0}, Lio/github/unica/stockshutter/CaptureActivity$2;-><init>(Lio/github/unica/stockshutter/CaptureActivity;)V

    invoke-virtual {v0, v1, v2, p1}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p1, 0x0

    .line 308
    iput-boolean p1, p0, Lio/github/unica/stockshutter/CaptureActivity;->opening:Z

    .line 309
    invoke-direct {p0}, Lio/github/unica/stockshutter/CaptureActivity;->retryOpen()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 95
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lio/github/unica/stockshutter/CaptureActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 p1, 0x0

    .line 97
    invoke-virtual {p0, p1, p1}, Lio/github/unica/stockshutter/CaptureActivity;->overridePendingTransition(II)V

    .line 98
    invoke-virtual {p0}, Lio/github/unica/stockshutter/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "facing"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p1

    .line 100
    :goto_0
    iput v0, p0, Lio/github/unica/stockshutter/CaptureActivity;->wantedLensFacing:I

    .line 101
    const-string v0, "camera"

    invoke-virtual {p0, v0}, Lio/github/unica/stockshutter/CaptureActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lio/github/unica/stockshutter/CaptureActivity;->manager:Landroid/hardware/camera2/CameraManager;

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lio/github/unica/stockshutter/CaptureActivity;->startedAt:J

    .line 103
    iget-object v0, p0, Lio/github/unica/stockshutter/CaptureActivity;->shutterSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0, p1}, Landroid/media/MediaActionSound;->load(I)V

    .line 104
    iget-object v0, p0, Lio/github/unica/stockshutter/CaptureActivity;->shutterSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0, p1}, Landroid/media/MediaActionSound;->play(I)V

    .line 105
    invoke-virtual {p0}, Lio/github/unica/stockshutter/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "zoom"

    const/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lio/github/unica/stockshutter/CaptureActivity;->wantedZoom:F

    .line 106
    invoke-direct {p0}, Lio/github/unica/stockshutter/CaptureActivity;->buildTransparentSurface()V

    .line 107
    invoke-direct {p0}, Lio/github/unica/stockshutter/CaptureActivity;->startThread()V

    .line 109
    :try_start_0
    invoke-direct {p0}, Lio/github/unica/stockshutter/CaptureActivity;->selectCamera()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    const-string v0, "android.permission.CAMERA"

    invoke-virtual {p0, v0}, Lio/github/unica/stockshutter/CaptureActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    new-array v1, v1, [Ljava/lang/String;

    aput-object v0, v1, p1

    const/4 p1, 0x7

    invoke-virtual {p0, v1, p1}, Lio/github/unica/stockshutter/CaptureActivity;->requestPermissions([Ljava/lang/String;I)V

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 111
    const-string v0, "No matching camera"

    invoke-direct {p0, v0, p1}, Lio/github/unica/stockshutter/CaptureActivity;->fail(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v0, 0x1

    .line 151
    iput-boolean v0, p0, Lio/github/unica/stockshutter/CaptureActivity;->completed:Z

    .line 152
    invoke-direct {p0}, Lio/github/unica/stockshutter/CaptureActivity;->closeCamera()V

    .line 153
    iget-object v0, p0, Lio/github/unica/stockshutter/CaptureActivity;->manager:Landroid/hardware/camera2/CameraManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/github/unica/stockshutter/CaptureActivity;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 154
    :try_start_0
    iget-object v1, p0, Lio/github/unica/stockshutter/CaptureActivity;->availabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :catch_0
    :cond_0
    iget-object v0, p0, Lio/github/unica/stockshutter/CaptureActivity;->thread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_1
    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lio/github/unica/stockshutter/CaptureActivity;->handler:Landroid/os/Handler;

    .line 158
    iput-object v0, p0, Lio/github/unica/stockshutter/CaptureActivity;->thread:Landroid/os/HandlerThread;

    .line 159
    iget-object v0, p0, Lio/github/unica/stockshutter/CaptureActivity;->shutterSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 160
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 146
    invoke-direct {p0}, Lio/github/unica/stockshutter/CaptureActivity;->closeCamera()V

    .line 147
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 165
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 p2, 0x7

    if-ne p1, p2, :cond_0

    .line 166
    const-string p1, "android.permission.CAMERA"

    invoke-virtual {p0, p1}, Lio/github/unica/stockshutter/CaptureActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    .line 168
    invoke-direct {p0}, Lio/github/unica/stockshutter/CaptureActivity;->tryOpenCamera()V

    return-void

    .line 170
    :cond_0
    const-string p1, "Camera permission denied"

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lio/github/unica/stockshutter/CaptureActivity;->fail(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 141
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 142
    iget-object v0, p0, Lio/github/unica/stockshutter/CaptureActivity;->tinyPreview:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lio/github/unica/stockshutter/CaptureActivity;->tryOpenCamera()V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 524
    invoke-direct {p0}, Lio/github/unica/stockshutter/CaptureActivity;->tryOpenCamera()V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

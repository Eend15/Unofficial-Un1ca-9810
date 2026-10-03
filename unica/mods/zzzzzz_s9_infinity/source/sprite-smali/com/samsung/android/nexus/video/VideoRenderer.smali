.class public final Lcom/samsung/android/nexus/video/VideoRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/nexus/video/VideoRenderer$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0014\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0017\u0018\u0000 Z2\u00020\u0001:\u0001ZB!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tB\u0019\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0008\u0010\nJ\u0019\u0010\u000e\u001a\u00020\r2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\'\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001f\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\r\u0010\u001a\u001a\u00020\r\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\r\u0010\u001c\u001a\u00020\r\u00a2\u0006\u0004\u0008\u001c\u0010\u001bJ\r\u0010\u001d\u001a\u00020\r\u00a2\u0006\u0004\u0008\u001d\u0010\u001bJ\r\u0010\u001e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u001e\u0010\u001bJ\r\u0010\u001f\u001a\u00020\r\u00a2\u0006\u0004\u0008\u001f\u0010\u001bJ\r\u0010 \u001a\u00020\r\u00a2\u0006\u0004\u0008 \u0010\u001bJ\u0015\u0010#\u001a\u00020\r2\u0006\u0010\"\u001a\u00020!\u00a2\u0006\u0004\u0008#\u0010$J\u0015\u0010&\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020%\u00a2\u0006\u0004\u0008&\u0010\'J\u001d\u0010#\u001a\u00020\r2\u0006\u0010\"\u001a\u00020!2\u0006\u0010\u0007\u001a\u00020%\u00a2\u0006\u0004\u0008#\u0010(J\u0015\u0010+\u001a\u00020\r2\u0006\u0010*\u001a\u00020)\u00a2\u0006\u0004\u0008+\u0010,J\u0015\u0010/\u001a\u00020\r2\u0006\u0010.\u001a\u00020-\u00a2\u0006\u0004\u0008/\u00100J%\u0010/\u001a\u00020\r2\u0006\u0010.\u001a\u00020-2\u0006\u00102\u001a\u0002012\u0006\u00103\u001a\u000201\u00a2\u0006\u0004\u0008/\u00104J\u0015\u00107\u001a\u00020\r2\u0006\u00106\u001a\u000205\u00a2\u0006\u0004\u00087\u00108J\r\u00109\u001a\u00020-\u00a2\u0006\u0004\u00089\u0010:J\u000f\u0010;\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008;\u0010\u001bJ\u0017\u0010>\u001a\u00020\r2\u0006\u0010=\u001a\u00020<H\u0002\u00a2\u0006\u0004\u0008>\u0010?R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010@R\u0014\u0010B\u001a\u00020A8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008B\u0010CR\u0016\u0010E\u001a\u00020D8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008E\u0010FR\u0018\u0010G\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008G\u0010HR$\u00103\u001a\u0002012\u0006\u0010I\u001a\u0002018F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008J\u0010K\"\u0004\u0008L\u0010MR$\u0010P\u001a\u0002012\u0006\u0010I\u001a\u0002018F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008N\u0010K\"\u0004\u0008O\u0010MR$\u0010S\u001a\u0002012\u0006\u0010I\u001a\u0002018F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008Q\u0010K\"\u0004\u0008R\u0010MR$\u0010V\u001a\u0002012\u0006\u0010I\u001a\u0002018F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008T\u0010K\"\u0004\u0008U\u0010MR\u0011\u0010Y\u001a\u00020D8F\u00a2\u0006\u0006\u001a\u0004\u0008W\u0010X\u00a8\u0006["
    }
    d2 = {
        "Lcom/samsung/android/nexus/video/VideoRenderer;",
        "Landroid/opengl/GLSurfaceView$Renderer;",
        "Landroid/content/Context;",
        "context",
        "Landroid/opengl/GLSurfaceView;",
        "surfaceView",
        "Landroid/graphics/Rect;",
        "boundRect",
        "<init>",
        "(Landroid/content/Context;Landroid/opengl/GLSurfaceView;Landroid/graphics/Rect;)V",
        "(Landroid/content/Context;Landroid/opengl/GLSurfaceView;)V",
        "Ljavax/microedition/khronos/opengles/GL10;",
        "p0",
        "Lq3/m;",
        "onDrawFrame",
        "(Ljavax/microedition/khronos/opengles/GL10;)V",
        "gl",
        "",
        "width",
        "height",
        "onSurfaceChanged",
        "(Ljavax/microedition/khronos/opengles/GL10;II)V",
        "Ljavax/microedition/khronos/egl/EGLConfig;",
        "p1",
        "onSurfaceCreated",
        "(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V",
        "onDestroy",
        "()V",
        "reset",
        "invalidate",
        "startPlay",
        "stopPlay",
        "pausePlay",
        "Landroid/net/Uri;",
        "uri",
        "setMediaSource",
        "(Landroid/net/Uri;)V",
        "Landroid/graphics/RectF;",
        "setBoundRect",
        "(Landroid/graphics/RectF;)V",
        "(Landroid/net/Uri;Landroid/graphics/RectF;)V",
        "Landroid/content/res/AssetFileDescriptor;",
        "afd",
        "setMediaSourceAfd",
        "(Landroid/content/res/AssetFileDescriptor;)V",
        "",
        "enabled",
        "setHdrModeEnabled",
        "(Z)V",
        "",
        "saturation",
        "contrast",
        "(ZFF)V",
        "",
        "hsvColorFilter",
        "setHsvColorFilter",
        "([F)V",
        "getHdrModeEnabled",
        "()Z",
        "generateLayer",
        "",
        "msg",
        "loggingError",
        "(Ljava/lang/String;)V",
        "Landroid/opengl/GLSurfaceView;",
        "Lcom/samsung/android/nexus/base/layer/LayerContainer;",
        "mContainer",
        "Lcom/samsung/android/nexus/base/layer/LayerContainer;",
        "Lcom/samsung/android/nexus/video/VideoLayer;",
        "mLayer",
        "Lcom/samsung/android/nexus/video/VideoLayer;",
        "mBoundRect",
        "Landroid/graphics/RectF;",
        "value",
        "getContrast",
        "()F",
        "setContrast",
        "(F)V",
        "getHsvHue",
        "setHsvHue",
        "hsvHue",
        "getHsvSaturation",
        "setHsvSaturation",
        "hsvSaturation",
        "getHsvValue",
        "setHsvValue",
        "hsvValue",
        "getVideoLayer",
        "()Lcom/samsung/android/nexus/video/VideoLayer;",
        "videoLayer",
        "Companion",
        "NexusVideo-3.0.1_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/nexus/video/VideoRenderer$Companion;

.field private static final DEFAULT_CONTRAST:F = 1.6f

.field private static final DEFAULT_SATURATION:F = 0.7f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBoundRect:Landroid/graphics/RectF;

.field private final mContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

.field private mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

.field private final surfaceView:Landroid/opengl/GLSurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/nexus/video/VideoRenderer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/nexus/video/VideoRenderer$Companion;-><init>(LF3/f;)V

    sput-object v0, Lcom/samsung/android/nexus/video/VideoRenderer;->Companion:Lcom/samsung/android/nexus/video/VideoRenderer$Companion;

    const-string v0, "VideoRenderer"

    sput-object v0, Lcom/samsung/android/nexus/video/VideoRenderer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "surfaceView"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/nexus/video/VideoRenderer;-><init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;Landroid/graphics/Rect;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;Landroid/graphics/Rect;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "surfaceView"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->surfaceView:Landroid/opengl/GLSurfaceView;

    .line 3
    new-instance v0, Lcom/samsung/android/nexus/base/layer/LayerContainer;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/nexus/base/layer/LayerContainer;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->setRenderMode(I)V

    .line 5
    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    if-eqz p3, :cond_0

    .line 6
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mBoundRect:Landroid/graphics/RectF;

    :cond_0
    const/4 p3, 0x2

    .line 7
    invoke-virtual {p2, p3}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 8
    invoke-virtual {p2, p0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 9
    invoke-virtual {p2, p1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 10
    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoRenderer;->generateLayer()V

    return-void
.end method

.method private final generateLayer()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->removeAllLayers()V

    new-instance v0, Lcom/samsung/android/nexus/video/VideoLayer;

    invoke-direct {v0}, Lcom/samsung/android/nexus/video/VideoLayer;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    invoke-virtual {v1, v0}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->addLayer(Lcom/samsung/android/nexus/base/layer/BaseLayer;)Z

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer;->setLooping(Z)V

    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    return-void
.end method

.method private final loggingError(Ljava/lang/String;)V
    .locals 0

    sget-object p0, Lcom/samsung/android/nexus/video/VideoRenderer;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final getContrast()F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->getContrast()F

    move-result p0

    return p0

    :cond_0
    const-string p0, "mLayer"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getHdrModeEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->getHdrModeEnabled()Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "mLayer"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getHsvHue()F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->getHsvHue()F

    move-result p0

    return p0

    :cond_0
    const-string p0, "mLayer"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getHsvSaturation()F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->getHsvSaturation()F

    move-result p0

    return p0

    :cond_0
    const-string p0, "mLayer"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getHsvValue()F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->getHsvValue()F

    move-result p0

    return p0

    :cond_0
    const-string p0, "mLayer"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getVideoLayer()Lcom/samsung/android/nexus/video/VideoLayer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mLayer"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final invalidate()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->surfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method

.method public final onDestroy()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->removeAllLayers()V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->draw()V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1

    const-string v0, "gl"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->setSize(II)V

    iget-object p1, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mBoundRect:Landroid/graphics/RectF;

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/RectF;

    int-to-float p2, p2

    int-to-float p3, p3

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mBoundRect:Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/video/VideoRenderer;->setBoundRect(Landroid/graphics/RectF;)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    const-string p0, "gl"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "p1"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final pausePlay()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoLayer;->pausePlayer()V

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->setRenderMode(I)V

    return-void

    :cond_0
    const-string p0, "mLayer"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final reset()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->reset()V

    return-void

    :cond_0
    const-string p0, "mLayer"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final setBoundRect(Landroid/graphics/RectF;)V
    .locals 1

    const-string v0, "boundRect"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mBoundRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/video/VideoLayer;->setBoundRect(Landroid/graphics/RectF;)V

    return-void

    :cond_0
    const-string p0, "mLayer"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final setContrast(F)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/video/VideoLayer;->setContrast(F)V

    return-void

    :cond_0
    const-string p0, "mLayer"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final setHdrModeEnabled(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    if-eqz p0, :cond_0

    const v0, 0x3f333333    # 0.7f

    const v1, 0x3fcccccd    # 1.6f

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer;->setHdrModeEnabled(ZFF)V

    return-void

    :cond_0
    const-string p0, "mLayer"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final setHdrModeEnabled(ZFF)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/nexus/video/VideoLayer;->setHdrModeEnabled(ZFF)V

    return-void

    :cond_0
    const-string p0, "mLayer"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final setHsvColorFilter([F)V
    .locals 1

    const-string v0, "hsvColorFilter"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/video/VideoLayer;->setHsvFilterColor([F)V

    return-void

    :cond_0
    const-string p0, "mLayer"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final setHsvHue(F)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/video/VideoLayer;->setHsvHue(F)V

    return-void

    :cond_0
    const-string p0, "mLayer"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final setHsvSaturation(F)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/video/VideoLayer;->setHsvSaturation(F)V

    return-void

    :cond_0
    const-string p0, "mLayer"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final setHsvValue(F)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/video/VideoLayer;->setHsvValue(F)V

    return-void

    :cond_0
    const-string p0, "mLayer"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final setMediaSource(Landroid/net/Uri;)V
    .locals 1

    const-string v0, "uri"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/video/VideoLayer;->setMediaSource(Landroid/net/Uri;)V

    return-void

    :cond_0
    const-string p0, "mLayer"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final setMediaSource(Landroid/net/Uri;Landroid/graphics/RectF;)V
    .locals 1

    const-string v0, "uri"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boundRect"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/samsung/android/nexus/video/VideoRenderer;->setBoundRect(Landroid/graphics/RectF;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/video/VideoRenderer;->setMediaSource(Landroid/net/Uri;)V

    return-void
.end method

.method public final setMediaSourceAfd(Landroid/content/res/AssetFileDescriptor;)V
    .locals 1

    const-string v0, "afd"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/video/VideoLayer;->setMediaSource(Landroid/content/res/AssetFileDescriptor;)V

    return-void

    :cond_0
    const-string p0, "mLayer"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final startPlay()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->setRenderMode(I)V

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->startPlayer()V

    return-void

    :cond_0
    const-string p0, "mLayer"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final stopPlay()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoLayer;->stopPlayer()V

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->setRenderMode(I)V

    return-void

    :cond_0
    const-string p0, "mLayer"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

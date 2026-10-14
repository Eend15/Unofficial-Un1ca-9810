.class public final synthetic Lcom/samsung/android/nexus/video/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field public final synthetic a:Lcom/samsung/android/nexus/video/VideoGL;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/nexus/video/VideoGL;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/nexus/video/a;->a:Lcom/samsung/android/nexus/video/VideoGL;

    return-void
.end method


# virtual methods
.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/a;->a:Lcom/samsung/android/nexus/video/VideoGL;

    invoke-static {p0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->a(Lcom/samsung/android/nexus/video/VideoGL;Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.class public Lcom/samsung/android/nexus/egl/world/BaseWorld;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BOTTOM:I = 0x2

.field public static final FAR:I = 0x5

.field public static final LEFT:I = 0x0

.field public static final NEAR:I = 0x4

.field public static final RIGHT:I = 0x1

.field public static final TOP:I = 0x3


# instance fields
.field protected mCoordinates:[F

.field protected mMVMatrix:[F

.field protected mMVPMatrix:[F

.field protected mModelMatrix:[F

.field protected mProjectionMatrix:[F

.field protected mViewMatrix:[F


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mProjectionMatrix:[F

    new-array v2, v0, [F

    iput-object v2, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mViewMatrix:[F

    new-array v2, v0, [F

    iput-object v2, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mModelMatrix:[F

    new-array v2, v0, [F

    iput-object v2, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mMVMatrix:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mMVPMatrix:[F

    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v1, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mViewMatrix:[F

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object p0, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mModelMatrix:[F

    invoke-static {p0, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method


# virtual methods
.method public getCoordinates()[F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mCoordinates:[F

    return-object p0
.end method

.method public rotate(FFFF)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mModelMatrix:[F

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    return-void
.end method

.method public scale(FFF)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mModelMatrix:[F

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    return-void
.end method

.method public sendParams(Lcom/samsung/android/nexus/egl/core/Shader;)V
    .locals 12

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mMVMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mViewMatrix:[F

    iget-object v4, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mModelMatrix:[F

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v6, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mMVPMatrix:[F

    iget-object v8, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mProjectionMatrix:[F

    iget-object v10, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mMVMatrix:[F

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget v0, p1, Lcom/samsung/android/nexus/egl/core/Shader;->modelMatrixHandle:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_1

    iget-object v3, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mMVMatrix:[F

    invoke-static {v0, v1, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    :cond_1
    iget p1, p1, Lcom/samsung/android/nexus/egl/core/Shader;->mvpMatrixHandle:I

    if-ltz p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mMVPMatrix:[F

    invoke-static {p1, v1, v2, p0, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    :cond_2
    return-void
.end method

.method public setIdentity()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mModelMatrix:[F

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method public translate(FFF)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mModelMatrix:[F

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method

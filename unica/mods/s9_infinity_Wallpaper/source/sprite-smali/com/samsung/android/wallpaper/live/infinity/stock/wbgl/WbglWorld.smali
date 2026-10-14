.class public abstract Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorld;
.super Ljava/lang/Object;
.source "WbglWorld.java"


# static fields
.field public static final BOTTOM:I = 0x2

.field public static final FAR:I = 0x5

.field public static final LEFT:I = 0x0

.field public static final NEAR:I = 0x4

.field public static final RIGHT:I = 0x1

.field public static final TOP:I = 0x3


# instance fields
.field protected mCoordinates:[F

.field protected mModelMatrix:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 13
    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorld;->mModelMatrix:[F

    return-void
.end method


# virtual methods
.method public getCoordinates()[F
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorld;->mCoordinates:[F

    return-object p0
.end method

.method public rotate(FFFF)V
    .locals 6

    .line 25
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorld;->mModelMatrix:[F

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

    .line 29
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorld;->mModelMatrix:[F

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    return-void
.end method

.method public setIdentity()V
    .locals 1

    .line 17
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorld;->mModelMatrix:[F

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method public abstract setupMatrices(I)V
.end method

.method public translate(FFF)V
    .locals 1

    .line 21
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorld;->mModelMatrix:[F

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method

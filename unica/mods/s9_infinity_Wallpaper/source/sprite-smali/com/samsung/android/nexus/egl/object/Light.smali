.class public Lcom/samsung/android/nexus/egl/object/Light;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final B:I = 0x2

.field public static final G:I = 0x1

.field public static final R:I = 0x0

.field public static final X:I = 0x0

.field public static final Y:I = 0x1

.field public static final Z:I = 0x2


# instance fields
.field public diffuseColor:[F

.field public lightPosition:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0, v0}, Lcom/samsung/android/nexus/egl/object/Light;-><init>(FFF)V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 7

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/nexus/egl/object/Light;-><init>(FFFFFF)V

    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 4
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/samsung/android/nexus/egl/object/Light;->lightPosition:[F

    .line 5
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/nexus/egl/object/Light;->diffuseColor:[F

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/nexus/egl/object/Light;->setLightPosition(FFF)V

    .line 7
    invoke-virtual {p0, p4, p5, p6}, Lcom/samsung/android/nexus/egl/object/Light;->setDiffuseColor(FFF)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public clone()Lcom/samsung/android/nexus/egl/object/Light;
    .locals 2

    .line 2
    new-instance v0, Lcom/samsung/android/nexus/egl/object/Light;

    invoke-direct {v0}, Lcom/samsung/android/nexus/egl/object/Light;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/samsung/android/nexus/egl/object/Light;->lightPosition:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/samsung/android/nexus/egl/object/Light;->lightPosition:[F

    .line 4
    iget-object p0, p0, Lcom/samsung/android/nexus/egl/object/Light;->diffuseColor:[F

    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    iput-object p0, v0, Lcom/samsung/android/nexus/egl/object/Light;->diffuseColor:[F

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/nexus/egl/object/Light;->clone()Lcom/samsung/android/nexus/egl/object/Light;

    move-result-object p0

    return-object p0
.end method

.method public sendParameters(Lcom/samsung/android/nexus/egl/core/Shader;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/samsung/android/nexus/egl/core/Shader;->lightPosHandle:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_1

    iget-object v3, p0, Lcom/samsung/android/nexus/egl/object/Light;->lightPosition:[F

    invoke-static {v0, v2, v3, v1}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    :cond_1
    iget p1, p1, Lcom/samsung/android/nexus/egl/core/Shader;->diffuseColorHandle:I

    if-ltz p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/nexus/egl/object/Light;->diffuseColor:[F

    invoke-static {p1, v2, p0, v1}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    :cond_2
    return-void
.end method

.method public setDiffuseColor(FFF)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/nexus/egl/object/Light;->diffuseColor:[F

    const/4 v0, 0x0

    aput p1, p0, v0

    const/4 p1, 0x1

    aput p2, p0, p1

    const/4 p1, 0x2

    aput p3, p0, p1

    return-void
.end method

.method public setLightPosition(FFF)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/nexus/egl/object/Light;->lightPosition:[F

    const/4 v0, 0x0

    aput p1, p0, v0

    const/4 p1, 0x1

    aput p2, p0, p1

    const/4 p1, 0x2

    aput p3, p0, p1

    return-void
.end method

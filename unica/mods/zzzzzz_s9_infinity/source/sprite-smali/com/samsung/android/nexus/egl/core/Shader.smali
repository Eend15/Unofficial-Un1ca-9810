.class public Lcom/samsung/android/nexus/egl/core/Shader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final HANDLE_DIFFUSE_COLOR:Ljava/lang/String; = "uDiffuseColor"

.field public static final HANDLE_LIGHT_POS:Ljava/lang/String; = "uLightPos"

.field public static final HANDLE_MODEL_MATRIX:Ljava/lang/String; = "uModelMatrix"

.field public static final HANDLE_MVP_MATRIX:Ljava/lang/String; = "uMvpMatrix"

.field public static final HANDLE_PROJECTION_MATRIX:Ljava/lang/String; = "uProjectionMatrix"

.field public static final HANDLE_VIEW_MATRIX:Ljava/lang/String; = "uViewMatrix"

.field private static final TAG:Ljava/lang/String; = "Shader"


# instance fields
.field public diffuseColorHandle:I

.field public lightPosHandle:I

.field private mFragmentShaderId:I

.field private mHandleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mProgramId:I

.field private mResources:Landroid/content/res/Resources;

.field private mVertexShaderId:I

.field public modelMatrixHandle:I

.field public mvpMatrixHandle:I

.field public projectionMatrixHandle:I

.field public viewMatrixHandle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/samsung/android/nexus/egl/core/Shader;->loadProgramFromRawResource(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/samsung/android/nexus/egl/core/Shader;->loadProgramFromRawResource(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object p3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/nexus/egl/core/Shader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mResources:Landroid/content/res/Resources;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mProgramId:I

    .line 7
    iput v0, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mVertexShaderId:I

    .line 8
    iput v0, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mFragmentShaderId:I

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mHandleMap:Ljava/util/Map;

    if-eqz p1, :cond_1

    .line 10
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mResources:Landroid/content/res/Resources;

    .line 12
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/nexus/egl/core/Shader;->setShader(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    const-string p1, "uModelMatrix"

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/egl/core/Shader;->loadHandle(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/nexus/egl/core/Shader;->modelMatrixHandle:I

    .line 14
    const-string p1, "uViewMatrix"

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/egl/core/Shader;->loadHandle(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/nexus/egl/core/Shader;->viewMatrixHandle:I

    .line 15
    const-string p1, "uProjectionMatrix"

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/egl/core/Shader;->loadHandle(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/nexus/egl/core/Shader;->projectionMatrixHandle:I

    .line 16
    const-string p1, "uMvpMatrix"

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/egl/core/Shader;->loadHandle(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mvpMatrixHandle:I

    .line 17
    const-string p1, "uLightPos"

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/egl/core/Shader;->loadHandle(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/nexus/egl/core/Shader;->lightPosHandle:I

    .line 18
    const-string p1, "uDiffuseColor"

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/egl/core/Shader;->loadHandle(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/nexus/egl/core/Shader;->diffuseColorHandle:I

    :cond_1
    :goto_0
    return-void
.end method

.method public static loadProgramFromRawResource(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_6
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    if-eqz p0, :cond_0

    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p0

    :try_start_8
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_2
    throw p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :goto_3
    sget-object p1, Lcom/samsung/android/nexus/egl/core/Shader;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Load program : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static loadShader(ILjava/lang/String;)I
    .locals 4

    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glCreateShader type = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "glShaderSource id = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)I

    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "glCompileShader id = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)I

    const/4 p1, 0x1

    new-array p1, p1, [I

    const v1, 0x8b81

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget p1, p1, v2

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/nexus/egl/core/Shader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Could not compile shader "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move v0, v2

    :cond_0
    return v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v0, "glUseProgram : release"

    invoke-static {v0}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mProgramId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "glDeleteProgram id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mProgramId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mVertexShaderId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "glDeleteShader : vertex id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mVertexShaderId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mFragmentShaderId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "glDeleteShader : fragment id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mFragmentShaderId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)I

    return-void
.end method

.method public createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const v0, 0x8b31

    invoke-static {v0, p1}, Lcom/samsung/android/nexus/egl/core/Shader;->loadShader(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mVertexShaderId:I

    const p1, 0x8b30

    invoke-static {p1, p2}, Lcom/samsung/android/nexus/egl/core/Shader;->loadShader(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mFragmentShaderId:I

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mProgramId:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "glCreateProgram id = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mProgramId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)I

    iget p1, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mProgramId:I

    if-eqz p1, :cond_0

    iget p2, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mVertexShaderId:I

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string p1, "glAttachShader : vertex"

    invoke-static {p1}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)I

    iget p1, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mProgramId:I

    iget p2, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mFragmentShaderId:I

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string p1, "glAttachShader : fragment"

    invoke-static {p1}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)I

    iget p1, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mProgramId:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const-string p1, "glLinkProgram"

    invoke-static {p1}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)I

    const/4 p1, 0x1

    new-array p2, p1, [I

    iget v0, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mProgramId:I

    const v1, 0x8b82

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget p2, p2, v2

    if-eq p2, p1, :cond_0

    sget-object p1, Lcom/samsung/android/nexus/egl/core/Shader;->TAG:Ljava/lang/String;

    const-string p2, "Could not link program: "

    invoke-static {p1, p2}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget p2, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mProgramId:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mProgramId:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    iput v2, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mProgramId:I

    :cond_0
    iget p0, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mProgramId:I

    return p0
.end method

.method public getAttributeHandle(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mHandleMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/egl/core/Shader;->loadAttributeHandle(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getHandle(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mHandleMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/egl/core/Shader;->loadHandle(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getShaderProgram()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mProgramId:I

    return p0
.end method

.method public getUniformHandle(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mHandleMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/egl/core/Shader;->loadUniformHandle(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public isValidHandle(I)Z
    .locals 0

    if-gez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public loadAttributeHandle(Ljava/lang/String;)I
    .locals 4

    iget v0, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mProgramId:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/samsung/android/nexus/egl/core/Shader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load attribute handle for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mHandleMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public loadHandle(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/egl/core/Shader;->loadUniformHandle(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x61

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/egl/core/Shader;->loadAttributeHandle(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public loadUniformHandle(Ljava/lang/String;)I
    .locals 4

    iget v0, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mProgramId:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/samsung/android/nexus/egl/core/Shader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load uniform handle for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mHandleMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public setShader(II)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mResources:Landroid/content/res/Resources;

    .line 2
    invoke-static {v0, p1}, Lcom/samsung/android/nexus/egl/core/Shader;->loadProgramFromRawResource(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mResources:Landroid/content/res/Resources;

    .line 3
    invoke-static {v0, p2}, Lcom/samsung/android/nexus/egl/core/Shader;->loadProgramFromRawResource(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/nexus/egl/core/Shader;->setShader(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setShader(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/nexus/egl/core/Shader;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mProgramId:I

    return p1
.end method

.method public unUseProgram()V
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method

.method public useProgram()V
    .locals 0

    iget p0, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mProgramId:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method

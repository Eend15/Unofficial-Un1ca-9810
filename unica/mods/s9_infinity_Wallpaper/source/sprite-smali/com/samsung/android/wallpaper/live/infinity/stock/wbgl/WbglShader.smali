.class public Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;
.super Ljava/lang/Object;
.source "WbglShader.java"


# static fields
.field public static final HANDLE_WORLD_MATRIX:Ljava/lang/String; = "uWorldMatrix"

.field private static final TAG:Ljava/lang/String; = "WbglShader"


# instance fields
.field private mFragmentShaderId:I

.field private mHandleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mProgramId:I

.field private mResources:Landroid/content/res/Resources;

.field private mVertexShaderId:I

.field public worldMatrixHandle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->mResources:Landroid/content/res/Resources;

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->mProgramId:I

    .line 33
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->mVertexShaderId:I

    .line 34
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->mFragmentShaderId:I

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->mHandleMap:Ljava/util/HashMap;

    if-nez p1, :cond_0

    return-void

    .line 43
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->mResources:Landroid/content/res/Resources;

    .line 45
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->setShader(II)I

    const-string/jumbo p1, "uWorldMatrix"

    .line 47
    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->loadHandle(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->worldMatrixHandle:I

    return-void
.end method

.method protected static loadProgramFromRawResource(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1

    .line 170
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    .line 171
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 174
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    .line 175
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 176
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 177
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 178
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 180
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 183
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 184
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 186
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 189
    :goto_0
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected static loadShader(ILjava/lang/String;)I
    .locals 3

    .line 150
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 153
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 154
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const v2, 0x8b81

    .line 157
    invoke-static {v0, v2, p1, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 158
    aget p1, p1, v1

    if-nez p1, :cond_0

    .line 159
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not compile shader "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WbglShader"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move v0, v1

    :cond_0
    return v0
.end method


# virtual methods
.method protected createProgram(II)I
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->mResources:Landroid/content/res/Resources;

    .line 126
    invoke-static {v0, p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->loadProgramFromRawResource(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x8b31

    .line 125
    invoke-static {v0, p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->loadShader(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->mVertexShaderId:I

    .line 127
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->mResources:Landroid/content/res/Resources;

    .line 128
    invoke-static {p1, p2}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->loadProgramFromRawResource(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object p1

    const p2, 0x8b30

    .line 127
    invoke-static {p2, p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->loadShader(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->mFragmentShaderId:I

    .line 130
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->mProgramId:I

    .line 131
    iget p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->mProgramId:I

    if-eqz p1, :cond_0

    .line 132
    iget p2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->mVertexShaderId:I

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 133
    iget p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->mProgramId:I

    iget p2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->mFragmentShaderId:I

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 134
    iget p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->mProgramId:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p1, 0x1

    new-array p2, p1, [I

    .line 137
    iget v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->mProgramId:I

    const v1, 0x8b82

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 138
    aget p2, p2, v2

    if-eq p2, p1, :cond_0

    const-string p1, "WbglShader"

    const-string p2, "Could not link program: "

    .line 139
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget p2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->mProgramId:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->mProgramId:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 142
    iput v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->mProgramId:I

    .line 146
    :cond_0
    iget p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->mProgramId:I

    return p0
.end method

.method public getAttributeHandle(Ljava/lang/String;)I
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->mHandleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_1

    .line 78
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->loadAttributeHandle(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    const/4 p0, -0x1

    return p0

    .line 82
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getHandle(Ljava/lang/String;)I
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->mHandleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_1

    .line 58
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->loadHandle(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    const/4 p0, -0x1

    return p0

    .line 62
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getShaderProgram()I
    .locals 0

    .line 113
    iget p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->mProgramId:I

    return p0
.end method

.method public getUniformHandle(Ljava/lang/String;)I
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->mHandleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_1

    .line 68
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->loadUniformHandle(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    const/4 p0, -0x1

    return p0

    .line 72
    :cond_2
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
    .locals 2

    .line 102
    iget v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->mProgramId:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    .line 103
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->mHandleMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public loadHandle(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_0

    .line 87
    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->loadUniformHandle(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 88
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x61

    if-ne v0, v1, :cond_1

    .line 89
    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->loadAttributeHandle(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public loadUniformHandle(Ljava/lang/String;)I
    .locals 2

    .line 96
    iget v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->mProgramId:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 97
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->mHandleMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public releaseShader()V
    .locals 1

    const/4 v0, 0x0

    .line 117
    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 118
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 119
    iget v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->mProgramId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 120
    iget v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->mVertexShaderId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 121
    iget p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->mFragmentShaderId:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    return-void
.end method

.method public setShader(II)I
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->createProgram(II)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->mProgramId:I

    .line 52
    iget p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->mProgramId:I

    return p0
.end method

.method public useProgram()V
    .locals 0

    .line 196
    iget p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->mProgramId:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method

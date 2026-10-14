.class public Lcom/samsung/android/nexus/egl/data/NexusFileLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BYTES_PER_FLOAT:I = 0x4

.field public static final BYTES_PER_INT:I = 0x4

.field public static final BYTES_PER_SHORT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "NexusFileLoader"

.field public static final TYPE_FLOAT:I = 0x1

.field public static final TYPE_INT:I = 0x2

.field public static final TYPE_SHORT:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static loadDataBuffer(Ljava/io/InputStream;ILjava/lang/Object;I)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-array p3, p3, [B

    :try_start_0
    invoke-virtual {p0, p3}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/nexus/egl/data/NexusFileLoader;->TAG:Ljava/lang/String;

    const-string v1, "Load data buffer error."

    invoke-static {v0, v1, p0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object p3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    check-cast p2, [S

    invoke-virtual {p1, p2}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    goto :goto_1

    :cond_1
    const/4 p3, 0x1

    if-ne p1, p3, :cond_2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    check-cast p2, [F

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p1

    check-cast p2, [I

    invoke-virtual {p1, p2}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    :goto_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-void
.end method

.method public static parseData(Landroid/content/Context;I)Lcom/samsung/android/nexus/egl/data/ShapeData;
    .locals 1

    if-eqz p0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/nexus/egl/data/NexusFileLoader;->parseData(Landroid/content/Context;Ljava/io/InputStream;)Lcom/samsung/android/nexus/egl/data/ShapeData;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseData(Landroid/content/Context;Ljava/io/InputStream;)Lcom/samsung/android/nexus/egl/data/ShapeData;
    .locals 7

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    sget-object p0, Lcom/samsung/android/nexus/egl/data/NexusFileLoader;->TAG:Ljava/lang/String;

    const-string v0, "parse data start."

    invoke-static {p0, v0}, Lcom/samsung/android/nexus/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance p0, Lcom/samsung/android/nexus/egl/data/ShapeData;

    invoke-direct {p0}, Lcom/samsung/android/nexus/egl/data/ShapeData;-><init>()V

    const/4 v0, 0x6

    .line 4
    new-array v1, v0, [I

    const/4 v2, 0x2

    const/16 v3, 0x18

    .line 5
    invoke-static {p1, v2, v1, v3}, Lcom/samsung/android/nexus/egl/data/NexusFileLoader;->loadDataBuffer(Ljava/io/InputStream;ILjava/lang/Object;I)V

    .line 6
    invoke-virtual {p0, v1}, Lcom/samsung/android/nexus/egl/data/ShapeData;->setDataSize([I)V

    .line 7
    iget v1, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->indexDataSize:I

    div-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->totalVertexCnt:I

    .line 8
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->boundaryData:[F

    const/4 v1, 0x1

    .line 9
    invoke-static {p1, v1, v0, v3}, Lcom/samsung/android/nexus/egl/data/NexusFileLoader;->loadDataBuffer(Ljava/io/InputStream;ILjava/lang/Object;I)V

    .line 10
    iget-boolean v0, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->hasLight:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 11
    new-instance v0, Lcom/samsung/android/nexus/egl/object/Light;

    invoke-direct {v0}, Lcom/samsung/android/nexus/egl/object/Light;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->light:Lcom/samsung/android/nexus/egl/object/Light;

    const/4 v0, 0x3

    .line 12
    new-array v0, v0, [F

    const/16 v4, 0xc

    .line 13
    invoke-static {p1, v1, v0, v4}, Lcom/samsung/android/nexus/egl/data/NexusFileLoader;->loadDataBuffer(Ljava/io/InputStream;ILjava/lang/Object;I)V

    .line 14
    iget-object v4, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->light:Lcom/samsung/android/nexus/egl/object/Light;

    aget v5, v0, v3

    aget v6, v0, v1

    aget v0, v0, v2

    invoke-virtual {v4, v5, v6, v0}, Lcom/samsung/android/nexus/egl/object/Light;->setDiffuseColor(FFF)V

    .line 15
    :cond_1
    iget v0, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->indexDataSize:I

    div-int/lit8 v2, v0, 0x2

    new-array v2, v2, [S

    iput-object v2, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->indexData:[S

    .line 16
    iget v4, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->vertexDataSize:I

    div-int/lit8 v4, v4, 0x4

    new-array v4, v4, [F

    iput-object v4, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->vertexData:[F

    .line 17
    iget v4, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->textureCoordDataSize:I

    div-int/lit8 v4, v4, 0x4

    new-array v4, v4, [F

    iput-object v4, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->textureCoordData:[F

    .line 18
    invoke-static {p1, v3, v2, v0}, Lcom/samsung/android/nexus/egl/data/NexusFileLoader;->loadDataBuffer(Ljava/io/InputStream;ILjava/lang/Object;I)V

    .line 19
    iget-object v0, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->vertexData:[F

    iget v2, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->vertexDataSize:I

    invoke-static {p1, v1, v0, v2}, Lcom/samsung/android/nexus/egl/data/NexusFileLoader;->loadDataBuffer(Ljava/io/InputStream;ILjava/lang/Object;I)V

    .line 20
    iget-object v0, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->textureCoordData:[F

    iget v2, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->textureCoordDataSize:I

    invoke-static {p1, v1, v0, v2}, Lcom/samsung/android/nexus/egl/data/NexusFileLoader;->loadDataBuffer(Ljava/io/InputStream;ILjava/lang/Object;I)V

    .line 21
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 22
    sget-object v0, Lcom/samsung/android/nexus/egl/data/NexusFileLoader;->TAG:Ljava/lang/String;

    const-string v1, "Close input stream in parse data error."

    invoke-static {v0, v1, p1}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    :goto_0
    sget-object p1, Lcom/samsung/android/nexus/egl/data/NexusFileLoader;->TAG:Ljava/lang/String;

    const-string v0, "parse data end"

    invoke-static {p1, v0}, Lcom/samsung/android/nexus/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

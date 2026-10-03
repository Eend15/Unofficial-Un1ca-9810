.class public Lcom/samsung/android/nexus/base/layer/NexusLayerParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mColor:I

.field private mGravity:I

.field private mHeight:I

.field private mPadding:Landroid/graphics/Rect;

.field private mWidth:I

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mWidth:I

    .line 11
    iput p2, p0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mHeight:I

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mY:I

    iput p1, p0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mX:I

    iput p1, p0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mGravity:I

    .line 13
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mPadding:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mColor:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;-><init>(II)V

    .line 16
    iput p3, p0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mGravity:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/nexus/base/layer/NexusLayerParams;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget v0, p1, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mWidth:I

    iput v0, p0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mWidth:I

    .line 3
    iget v0, p1, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mHeight:I

    iput v0, p0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mHeight:I

    .line 4
    iget v0, p1, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mGravity:I

    iput v0, p0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mGravity:I

    .line 5
    iget v0, p1, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mX:I

    iput v0, p0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mX:I

    .line 6
    iget v0, p1, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mY:I

    iput v0, p0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mY:I

    .line 7
    iget-object v0, p1, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mPadding:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mPadding:Landroid/graphics/Rect;

    .line 8
    iget p1, p1, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mColor:I

    iput p1, p0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mColor:I

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mColor:I

    return p0
.end method

.method public getGravity()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mGravity:I

    return p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mHeight:I

    return p0
.end method

.method public getPadding()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mPadding:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mWidth:I

    return p0
.end method

.method public getX()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mX:I

    return p0
.end method

.method public getY()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mY:I

    return p0
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mColor:I

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mGravity:I

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mHeight:I

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mPadding:Landroid/graphics/Rect;

    iput p1, p0, Landroid/graphics/Rect;->left:I

    .line 2
    iput p2, p0, Landroid/graphics/Rect;->top:I

    .line 3
    iput p3, p0, Landroid/graphics/Rect;->right:I

    .line 4
    iput p4, p0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public setPadding(Landroid/graphics/Rect;)V
    .locals 3

    .line 5
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->setPadding(IIII)V

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mWidth:I

    return-void
.end method

.method public setX(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mX:I

    return-void
.end method

.method public setY(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mY:I

    return-void
.end method

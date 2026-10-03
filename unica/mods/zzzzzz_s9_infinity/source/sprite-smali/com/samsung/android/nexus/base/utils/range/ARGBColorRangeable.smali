.class public Lcom/samsung/android/nexus/base/utils/range/ARGBColorRangeable;
.super Lcom/samsung/android/nexus/base/utils/range/ColorRangeable;
.source "SourceFile"


# instance fields
.field private mA:Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

.field private mB:Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

.field private mG:Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

.field private mR:Lcom/samsung/android/nexus/base/utils/range/IntRangeable;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/nexus/base/utils/range/ColorRangeable;-><init>()V

    .line 2
    new-instance v0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    const/16 v1, 0xff

    invoke-direct {v0, v1}, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/nexus/base/utils/range/ARGBColorRangeable;->mA:Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    .line 3
    new-instance v0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/nexus/base/utils/range/ARGBColorRangeable;->mR:Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    .line 4
    new-instance v0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/nexus/base/utils/range/ARGBColorRangeable;->mG:Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    .line 5
    new-instance v0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/nexus/base/utils/range/ARGBColorRangeable;->mB:Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    return-void
.end method

.method public constructor <init>(IIIIIIII)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/samsung/android/nexus/base/utils/range/ColorRangeable;-><init>()V

    .line 9
    invoke-virtual/range {p0 .. p8}, Lcom/samsung/android/nexus/base/utils/range/ARGBColorRangeable;->setColorRange(IIIIIIII)Lcom/samsung/android/nexus/base/utils/range/ARGBColorRangeable;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/nexus/base/utils/range/ARGBColorRangeable;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/samsung/android/nexus/base/utils/range/ColorRangeable;-><init>()V

    .line 7
    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/base/utils/range/ARGBColorRangeable;->set(Lcom/samsung/android/nexus/base/utils/range/ARGBColorRangeable;)V

    return-void
.end method


# virtual methods
.method public getClone()Lcom/samsung/android/nexus/base/utils/range/ColorRangeable;
    .locals 1

    new-instance v0, Lcom/samsung/android/nexus/base/utils/range/ARGBColorRangeable;

    invoke-direct {v0, p0}, Lcom/samsung/android/nexus/base/utils/range/ARGBColorRangeable;-><init>(Lcom/samsung/android/nexus/base/utils/range/ARGBColorRangeable;)V

    return-object v0
.end method

.method public next()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/nexus/base/utils/range/ARGBColorRangeable;->mA:Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->get()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/nexus/base/utils/range/ARGBColorRangeable;->mR:Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    invoke-virtual {v1}, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->get()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/nexus/base/utils/range/ARGBColorRangeable;->mG:Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    invoke-virtual {v2}, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->get()I

    move-result v2

    iget-object p0, p0, Lcom/samsung/android/nexus/base/utils/range/ARGBColorRangeable;->mB:Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->get()I

    move-result p0

    invoke-static {v0, v1, v2, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public set(Lcom/samsung/android/nexus/base/utils/range/ARGBColorRangeable;)V
    .locals 1

    iget v0, p1, Lcom/samsung/android/nexus/base/utils/range/ColorRangeable;->mColor:I

    iput v0, p0, Lcom/samsung/android/nexus/base/utils/range/ColorRangeable;->mColor:I

    iget-boolean v0, p1, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->mIsSingleValue:Z

    iput-boolean v0, p0, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->mIsSingleValue:Z

    iget-object v0, p1, Lcom/samsung/android/nexus/base/utils/range/ARGBColorRangeable;->mA:Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->clone()Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/nexus/base/utils/range/ARGBColorRangeable;->mA:Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    iget-object v0, p1, Lcom/samsung/android/nexus/base/utils/range/ARGBColorRangeable;->mR:Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->clone()Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/nexus/base/utils/range/ARGBColorRangeable;->mR:Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    iget-object v0, p1, Lcom/samsung/android/nexus/base/utils/range/ARGBColorRangeable;->mG:Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->clone()Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/nexus/base/utils/range/ARGBColorRangeable;->mG:Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    iget-object p1, p1, Lcom/samsung/android/nexus/base/utils/range/ARGBColorRangeable;->mB:Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    invoke-virtual {p1}, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->clone()Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/nexus/base/utils/range/ARGBColorRangeable;->mB:Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->update()V

    return-void
.end method

.method public setColorRange(IIIIIIII)Lcom/samsung/android/nexus/base/utils/range/ARGBColorRangeable;
    .locals 1

    new-instance v0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/nexus/base/utils/range/ARGBColorRangeable;->mA:Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    new-instance p1, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    invoke-direct {p1, p3, p4}, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;-><init>(II)V

    iput-object p1, p0, Lcom/samsung/android/nexus/base/utils/range/ARGBColorRangeable;->mR:Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    new-instance p1, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    invoke-direct {p1, p5, p6}, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;-><init>(II)V

    iput-object p1, p0, Lcom/samsung/android/nexus/base/utils/range/ARGBColorRangeable;->mG:Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    new-instance p1, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    invoke-direct {p1, p7, p8}, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;-><init>(II)V

    iput-object p1, p0, Lcom/samsung/android/nexus/base/utils/range/ARGBColorRangeable;->mB:Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->mIsSingleValue:Z

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->update()V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ARGBColorRangeable{mA="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/nexus/base/utils/range/ARGBColorRangeable;->mA:Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mR="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/nexus/base/utils/range/ARGBColorRangeable;->mR:Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mG="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/nexus/base/utils/range/ARGBColorRangeable;->mG:Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mB="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/nexus/base/utils/range/ARGBColorRangeable;->mB:Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

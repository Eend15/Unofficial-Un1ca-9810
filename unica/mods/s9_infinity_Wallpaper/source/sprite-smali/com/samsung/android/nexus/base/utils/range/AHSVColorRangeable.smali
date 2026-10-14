.class public Lcom/samsung/android/nexus/base/utils/range/AHSVColorRangeable;
.super Lcom/samsung/android/nexus/base/utils/range/HSVColorRangeable;
.source "SourceFile"


# instance fields
.field private mA:Lcom/samsung/android/nexus/base/utils/range/IntRangeable;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/nexus/base/utils/range/HSVColorRangeable;-><init>()V

    .line 2
    new-instance v0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    const/16 v1, 0xff

    invoke-direct {v0, v1}, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/nexus/base/utils/range/AHSVColorRangeable;->mA:Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    .line 3
    new-instance v0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    const/high16 v1, 0x43b40000    # 360.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/android/nexus/base/utils/range/HSVColorRangeable;->mHue:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 4
    new-instance v0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/android/nexus/base/utils/range/HSVColorRangeable;->mSaturation:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 5
    new-instance v0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/android/nexus/base/utils/range/HSVColorRangeable;->mValue:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    return-void
.end method

.method public constructor <init>(IIFFFFFF)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/samsung/android/nexus/base/utils/range/HSVColorRangeable;-><init>()V

    .line 9
    invoke-virtual/range {p0 .. p8}, Lcom/samsung/android/nexus/base/utils/range/AHSVColorRangeable;->setColorRange(IIFFFFFF)Lcom/samsung/android/nexus/base/utils/range/AHSVColorRangeable;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/nexus/base/utils/range/AHSVColorRangeable;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/samsung/android/nexus/base/utils/range/HSVColorRangeable;-><init>()V

    .line 7
    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/base/utils/range/AHSVColorRangeable;->set(Lcom/samsung/android/nexus/base/utils/range/AHSVColorRangeable;)V

    return-void
.end method


# virtual methods
.method public getClone()Lcom/samsung/android/nexus/base/utils/range/ColorRangeable;
    .locals 1

    new-instance v0, Lcom/samsung/android/nexus/base/utils/range/AHSVColorRangeable;

    invoke-direct {v0, p0}, Lcom/samsung/android/nexus/base/utils/range/AHSVColorRangeable;-><init>(Lcom/samsung/android/nexus/base/utils/range/AHSVColorRangeable;)V

    return-object v0
.end method

.method public next()I
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/nexus/base/utils/range/HSVColorRangeable;->mHue:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->get()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/nexus/base/utils/range/HSVColorRangeable;->mSaturation:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-virtual {v1}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->get()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/nexus/base/utils/range/HSVColorRangeable;->mValue:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-virtual {v2}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->get()F

    move-result v2

    const/4 v3, 0x3

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    aput v1, v3, v0

    const/4 v0, 0x2

    aput v2, v3, v0

    iget-object p0, p0, Lcom/samsung/android/nexus/base/utils/range/AHSVColorRangeable;->mA:Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->get()I

    move-result p0

    invoke-static {p0, v3}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p0

    return p0
.end method

.method public set(Lcom/samsung/android/nexus/base/utils/range/AHSVColorRangeable;)V
    .locals 1

    iget-object v0, p1, Lcom/samsung/android/nexus/base/utils/range/AHSVColorRangeable;->mA:Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->clone()Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/nexus/base/utils/range/AHSVColorRangeable;->mA:Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    invoke-super {p0, p1}, Lcom/samsung/android/nexus/base/utils/range/HSVColorRangeable;->set(Lcom/samsung/android/nexus/base/utils/range/HSVColorRangeable;)V

    return-void
.end method

.method public setColorRange(IIFFFFFF)Lcom/samsung/android/nexus/base/utils/range/AHSVColorRangeable;
    .locals 7

    move-object v0, p0

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    move v6, p8

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/nexus/base/utils/range/HSVColorRangeable;->setColorRange(FFFFFF)Lcom/samsung/android/nexus/base/utils/range/HSVColorRangeable;

    new-instance p3, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    invoke-direct {p3, p1, p2}, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;-><init>(II)V

    iput-object p3, p0, Lcom/samsung/android/nexus/base/utils/range/AHSVColorRangeable;->mA:Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AHSVColorRangeable{mA="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/nexus/base/utils/range/AHSVColorRangeable;->mA:Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mHue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/nexus/base/utils/range/HSVColorRangeable;->mHue:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSaturation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/nexus/base/utils/range/HSVColorRangeable;->mSaturation:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/nexus/base/utils/range/HSVColorRangeable;->mValue:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class public Lcom/samsung/android/nexus/base/utils/range/HSVColorRangeable;
.super Lcom/samsung/android/nexus/base/utils/range/ColorRangeable;
.source "SourceFile"


# instance fields
.field protected mHue:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

.field protected mSaturation:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

.field protected mValue:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/nexus/base/utils/range/ColorRangeable;-><init>()V

    .line 2
    new-instance v0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    const/high16 v1, 0x43b40000    # 360.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/android/nexus/base/utils/range/HSVColorRangeable;->mHue:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 3
    new-instance v0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/android/nexus/base/utils/range/HSVColorRangeable;->mSaturation:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 4
    new-instance v0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/android/nexus/base/utils/range/HSVColorRangeable;->mValue:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/samsung/android/nexus/base/utils/range/ColorRangeable;-><init>()V

    .line 8
    invoke-virtual/range {p0 .. p6}, Lcom/samsung/android/nexus/base/utils/range/HSVColorRangeable;->setColorRange(FFFFFF)Lcom/samsung/android/nexus/base/utils/range/HSVColorRangeable;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/nexus/base/utils/range/HSVColorRangeable;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/nexus/base/utils/range/ColorRangeable;-><init>()V

    .line 6
    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/base/utils/range/HSVColorRangeable;->set(Lcom/samsung/android/nexus/base/utils/range/HSVColorRangeable;)V

    return-void
.end method


# virtual methods
.method public getClone()Lcom/samsung/android/nexus/base/utils/range/ColorRangeable;
    .locals 1

    new-instance v0, Lcom/samsung/android/nexus/base/utils/range/HSVColorRangeable;

    invoke-direct {v0, p0}, Lcom/samsung/android/nexus/base/utils/range/HSVColorRangeable;-><init>(Lcom/samsung/android/nexus/base/utils/range/HSVColorRangeable;)V

    return-object v0
.end method

.method public next()I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/nexus/base/utils/range/HSVColorRangeable;->mHue:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->get()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/nexus/base/utils/range/HSVColorRangeable;->mSaturation:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-virtual {v1}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->get()F

    move-result v1

    iget-object p0, p0, Lcom/samsung/android/nexus/base/utils/range/HSVColorRangeable;->mValue:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->get()F

    move-result p0

    const/4 v2, 0x3

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    const/4 v0, 0x2

    aput p0, v2, v0

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p0

    return p0
.end method

.method public set(Lcom/samsung/android/nexus/base/utils/range/HSVColorRangeable;)V
    .locals 1

    iget v0, p1, Lcom/samsung/android/nexus/base/utils/range/ColorRangeable;->mColor:I

    iput v0, p0, Lcom/samsung/android/nexus/base/utils/range/ColorRangeable;->mColor:I

    iget-boolean v0, p1, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->mIsSingleValue:Z

    iput-boolean v0, p0, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->mIsSingleValue:Z

    iget-object v0, p1, Lcom/samsung/android/nexus/base/utils/range/HSVColorRangeable;->mHue:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->clone()Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/nexus/base/utils/range/HSVColorRangeable;->mHue:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    iget-object v0, p1, Lcom/samsung/android/nexus/base/utils/range/HSVColorRangeable;->mSaturation:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->clone()Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/nexus/base/utils/range/HSVColorRangeable;->mSaturation:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    iget-object p1, p1, Lcom/samsung/android/nexus/base/utils/range/HSVColorRangeable;->mValue:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-virtual {p1}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->clone()Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/nexus/base/utils/range/HSVColorRangeable;->mValue:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->update()V

    return-void
.end method

.method public setColorRange(FFFFFF)Lcom/samsung/android/nexus/base/utils/range/HSVColorRangeable;
    .locals 1

    new-instance v0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/android/nexus/base/utils/range/HSVColorRangeable;->mHue:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    new-instance p1, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-direct {p1, p3, p4}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(FF)V

    iput-object p1, p0, Lcom/samsung/android/nexus/base/utils/range/HSVColorRangeable;->mSaturation:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    new-instance p1, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-direct {p1, p5, p6}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(FF)V

    iput-object p1, p0, Lcom/samsung/android/nexus/base/utils/range/HSVColorRangeable;->mValue:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->mIsSingleValue:Z

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->update()V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HSVColorRangeable{mHue="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

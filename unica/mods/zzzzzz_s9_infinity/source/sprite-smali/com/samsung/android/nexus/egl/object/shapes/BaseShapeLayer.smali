.class public Lcom/samsung/android/nexus/egl/object/shapes/BaseShapeLayer;
.super Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;-><init>()V

    return-void
.end method


# virtual methods
.method public drawElementInner()V
    .locals 0

    return-void
.end method

.method public generateElementNameList()[Ljava/lang/String;
    .locals 1

    const-string p0, "aPosition"

    const-string v0, "aColor"

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public generateElementSizeList()[I
    .locals 1

    const/4 p0, 0x3

    const/4 v0, 0x4

    filled-new-array {p0, v0}, [I

    move-result-object p0

    return-object p0
.end method

.method public generateShapeData()V
    .locals 0

    return-void
.end method

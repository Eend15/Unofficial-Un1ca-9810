.class public Lcom/samsung/android/nexus/base/utils/RangeChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final max:Ljava/lang/Float;

.field final min:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/nexus/base/utils/RangeChecker;->min:Ljava/lang/Float;

    iput-object p2, p0, Lcom/samsung/android/nexus/base/utils/RangeChecker;->max:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public check(F)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/nexus/base/utils/RangeChecker;->min:Ljava/lang/Float;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, p1

    if-gtz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/base/utils/RangeChecker;->max:Ljava/lang/Float;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    cmpg-float p0, p0, p1

    if-ltz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

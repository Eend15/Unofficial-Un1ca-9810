.class public abstract Lcom/samsung/android/nexus/base/utils/range/Rangeable;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static sRandom:Lcom/samsung/android/nexus/base/utils/random/FloatRandom;


# instance fields
.field mIsSingleValue:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/nexus/base/utils/random/FloatRandom;

    invoke-direct {v0}, Lcom/samsung/android/nexus/base/utils/random/FloatRandom;-><init>()V

    sput-object v0, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->sRandom:Lcom/samsung/android/nexus/base/utils/random/FloatRandom;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->mIsSingleValue:Z

    return-void
.end method


# virtual methods
.method public abstract onRangeUpdated()V
.end method

.method public update()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->onRangeUpdated()V

    return-void
.end method

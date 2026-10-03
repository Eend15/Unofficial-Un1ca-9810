.class public Lcom/samsung/android/nexus/base/context/NexusContext$ModeData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/nexus/base/context/NexusContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModeData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/nexus/base/context/NexusContext$ModeData$InterruptionFilter;
    }
.end annotation


# instance fields
.field private mAmbient:Ljava/lang/Boolean;

.field private mBurnInProtection:Ljava/lang/Boolean;

.field private mInterruptionFIlter:I

.field private mLowBitAmbient:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/nexus/base/context/NexusContext$ModeData;->mAmbient:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/nexus/base/context/NexusContext$ModeData;->mLowBitAmbient:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/nexus/base/context/NexusContext$ModeData;->mBurnInProtection:Ljava/lang/Boolean;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/nexus/base/context/NexusContext$ModeData;->mInterruptionFIlter:I

    return-void
.end method


# virtual methods
.method public getInterruptionFilter()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/nexus/base/context/NexusContext$ModeData;->mInterruptionFIlter:I

    return p0
.end method

.method public isAmbient()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/base/context/NexusContext$ModeData;->mAmbient:Ljava/lang/Boolean;

    return-object p0
.end method

.method public isBurnInProtection()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/base/context/NexusContext$ModeData;->mBurnInProtection:Ljava/lang/Boolean;

    return-object p0
.end method

.method public isLowBitmAmbient()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/base/context/NexusContext$ModeData;->mLowBitAmbient:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setAmbient(Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/nexus/base/context/NexusContext$ModeData;->mAmbient:Ljava/lang/Boolean;

    return-void
.end method

.method public setInterruptionFilter(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/nexus/base/context/NexusContext$ModeData;->mInterruptionFIlter:I

    return-void
.end method

.method public setProperties(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "low_bit_ambient"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/nexus/base/context/NexusContext$ModeData;->mLowBitAmbient:Ljava/lang/Boolean;

    const-string v0, "burn_in_protection"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/nexus/base/context/NexusContext$ModeData;->mBurnInProtection:Ljava/lang/Boolean;

    return-void
.end method

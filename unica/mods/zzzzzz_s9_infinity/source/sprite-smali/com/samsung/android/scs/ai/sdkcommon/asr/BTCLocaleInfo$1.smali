.class Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/scs/ai/sdkcommon/asr/LocaleInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;
    .locals 0

    .line 2
    new-instance p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;

    invoke-direct {p0, p1}, Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;
    .locals 0

    .line 2
    new-array p0, p1, [Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo$1;->newArray(I)[Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;

    move-result-object p0

    return-object p0
.end method

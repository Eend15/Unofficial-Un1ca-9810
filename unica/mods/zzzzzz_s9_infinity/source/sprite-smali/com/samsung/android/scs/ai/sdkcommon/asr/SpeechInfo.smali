.class public Lcom/samsung/android/scs/ai/sdkcommon/asr/SpeechInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/scs/ai/sdkcommon/asr/SpeechInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final endTime:I

.field private final speaker:I

.field private final startTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/scs/ai/sdkcommon/asr/SpeechInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/scs/ai/sdkcommon/asr/SpeechInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/scs/ai/sdkcommon/asr/SpeechInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/SpeechInfo;->speaker:I

    .line 3
    iput p2, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/SpeechInfo;->startTime:I

    .line 4
    iput p3, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/SpeechInfo;->endTime:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/SpeechInfo;->speaker:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/SpeechInfo;->startTime:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/SpeechInfo;->endTime:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getEndTime()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/SpeechInfo;->endTime:I

    return p0
.end method

.method public getSpeaker()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/SpeechInfo;->speaker:I

    return p0
.end method

.method public getStartTime()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/SpeechInfo;->startTime:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SpeechInfo{speaker="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/SpeechInfo;->speaker:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/SpeechInfo;->startTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/SpeechInfo;->endTime:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/SpeechInfo;->speaker:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/SpeechInfo;->startTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/SpeechInfo;->endTime:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.class public Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsSpeakerInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsSpeakerInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final displayName:Ljava/lang/String;

.field private final id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsSpeakerInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsSpeakerInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsSpeakerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsSpeakerInfo;->id:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsSpeakerInfo;->displayName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsSpeakerInfo;->id:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsSpeakerInfo;->displayName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsSpeakerInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsSpeakerInfo;

    iget-object p0, p0, Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsSpeakerInfo;->id:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsSpeakerInfo;->id:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsSpeakerInfo;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsSpeakerInfo;->id:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsSpeakerInfo;->id:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Speaker {id=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsSpeakerInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', Name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsSpeakerInfo;->displayName:Ljava/lang/String;

    const-string v1, "\'}"

    invoke-static {v0, p0, v1}, LB/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsSpeakerInfo;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsSpeakerInfo;->displayName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

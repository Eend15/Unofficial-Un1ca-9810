.class public Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private sourceLanguage:Ljava/lang/String;

.field private targetLanguage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/databinding/d;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Landroidx/databinding/d;-><init>(I)V

    sput-object v0, Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-direct {p0, p1}, Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;->sourceLanguage:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;->targetLanguage:Ljava/lang/String;

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;->sourceLanguage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;->targetLanguage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;

    iget-object v2, p0, Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;->sourceLanguage:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;->sourceLanguage:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;->targetLanguage:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;->targetLanguage:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getSourceLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;->sourceLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public getTargetLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;->targetLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;->sourceLanguage:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;->targetLanguage:Ljava/lang/String;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;->sourceLanguage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;->targetLanguage:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

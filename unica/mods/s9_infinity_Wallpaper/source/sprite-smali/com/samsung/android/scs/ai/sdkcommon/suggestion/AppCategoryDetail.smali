.class public Lcom/samsung/android/scs/ai/sdkcommon/suggestion/AppCategoryDetail;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/scs/ai/sdkcommon/suggestion/AppCategoryDetail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCategoryId:I

.field private mCategoryString:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/scs/ai/sdkcommon/suggestion/AppCategoryDetail$1;

    invoke-direct {v0}, Lcom/samsung/android/scs/ai/sdkcommon/suggestion/AppCategoryDetail$1;-><init>()V

    sput-object v0, Lcom/samsung/android/scs/ai/sdkcommon/suggestion/AppCategoryDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/samsung/android/scs/ai/sdkcommon/suggestion/AppCategoryDetail;->mPackageName:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/samsung/android/scs/ai/sdkcommon/suggestion/AppCategoryDetail;->mCategoryString:Ljava/lang/String;

    .line 5
    iput p3, p0, Lcom/samsung/android/scs/ai/sdkcommon/suggestion/AppCategoryDetail;->mCategoryId:I

    return-void
.end method

.method public static bridge synthetic b(Landroid/os/Parcel;)Lcom/samsung/android/scs/ai/sdkcommon/suggestion/AppCategoryDetail;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/scs/ai/sdkcommon/suggestion/AppCategoryDetail;->readAppCategoryDataFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/scs/ai/sdkcommon/suggestion/AppCategoryDetail;

    move-result-object p0

    return-object p0
.end method

.method private static readAppCategoryDataFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/scs/ai/sdkcommon/suggestion/AppCategoryDetail;
    .locals 2

    new-instance v0, Lcom/samsung/android/scs/ai/sdkcommon/suggestion/AppCategoryDetail;

    invoke-direct {v0}, Lcom/samsung/android/scs/ai/sdkcommon/suggestion/AppCategoryDetail;-><init>()V

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/scs/ai/sdkcommon/suggestion/AppCategoryDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/scs/ai/sdkcommon/suggestion/AppCategoryDetail;->mCategoryString:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    iput p0, v0, Lcom/samsung/android/scs/ai/sdkcommon/suggestion/AppCategoryDetail;->mCategoryId:I

    return-object v0
.end method

.method private writeAppCategoryDataToParcel(Landroid/os/Parcel;Lcom/samsung/android/scs/ai/sdkcommon/suggestion/AppCategoryDetail;)V
    .locals 0

    iget-object p0, p2, Lcom/samsung/android/scs/ai/sdkcommon/suggestion/AppCategoryDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p2, Lcom/samsung/android/scs/ai/sdkcommon/suggestion/AppCategoryDetail;->mCategoryString:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p0, p2, Lcom/samsung/android/scs/ai/sdkcommon/suggestion/AppCategoryDetail;->mCategoryId:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCategoryId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/scs/ai/sdkcommon/suggestion/AppCategoryDetail;->mCategoryId:I

    return p0
.end method

.method public getCategoryString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/scs/ai/sdkcommon/suggestion/AppCategoryDetail;->mCategoryString:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/scs/ai/sdkcommon/suggestion/AppCategoryDetail;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public setCategoryId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/scs/ai/sdkcommon/suggestion/AppCategoryDetail;->mCategoryId:I

    return-void
.end method

.method public setCategoryString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/scs/ai/sdkcommon/suggestion/AppCategoryDetail;->mCategoryString:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/scs/ai/sdkcommon/suggestion/AppCategoryDetail;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppCategoryDetail{mPackageName=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/scs/ai/sdkcommon/suggestion/AppCategoryDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mCategoryString=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/scs/ai/sdkcommon/suggestion/AppCategoryDetail;->mCategoryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mCategoryId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/scs/ai/sdkcommon/suggestion/AppCategoryDetail;->mCategoryId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-direct {p0, p1, p0}, Lcom/samsung/android/scs/ai/sdkcommon/suggestion/AppCategoryDetail;->writeAppCategoryDataToParcel(Landroid/os/Parcel;Lcom/samsung/android/scs/ai/sdkcommon/suggestion/AppCategoryDetail;)V

    return-void
.end method

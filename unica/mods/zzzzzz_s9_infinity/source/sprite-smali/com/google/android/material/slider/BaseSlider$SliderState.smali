.class Lcom/google/android/material/slider/BaseSlider$SliderState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/slider/BaseSlider$SliderState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public d:F

.field public e:F

.field public f:Ljava/util/ArrayList;

.field public g:F

.field public h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/material/slider/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/material/slider/a;-><init>(I)V

    sput-object v0, Lcom/google/android/material/slider/BaseSlider$SliderState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Lcom/google/android/material/slider/BaseSlider$SliderState;->d:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/google/android/material/slider/BaseSlider$SliderState;->e:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object p2, p0, Lcom/google/android/material/slider/BaseSlider$SliderState;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget p2, p0, Lcom/google/android/material/slider/BaseSlider$SliderState;->g:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean p0, p0, Lcom/google/android/material/slider/BaseSlider$SliderState;->h:Z

    const/4 p2, 0x1

    new-array p2, p2, [Z

    const/4 v0, 0x0

    aput-boolean p0, p2, v0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    return-void
.end method

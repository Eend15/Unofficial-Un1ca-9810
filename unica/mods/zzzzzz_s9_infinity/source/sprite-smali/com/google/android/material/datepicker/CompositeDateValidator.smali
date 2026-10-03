.class public final Lcom/google/android/material/datepicker/CompositeDateValidator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/datepicker/CompositeDateValidator;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Lcom/google/android/material/datepicker/c;

.field public static final g:Lcom/google/android/material/datepicker/d;


# instance fields
.field public final d:Lcom/google/android/material/datepicker/f;

.field public final e:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/material/datepicker/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/material/datepicker/CompositeDateValidator;->f:Lcom/google/android/material/datepicker/c;

    new-instance v0, Lcom/google/android/material/datepicker/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/material/datepicker/CompositeDateValidator;->g:Lcom/google/android/material/datepicker/d;

    new-instance v0, Lcom/google/android/material/datepicker/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/material/datepicker/CompositeDateValidator;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Lcom/google/android/material/datepicker/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/datepicker/CompositeDateValidator;->e:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/google/android/material/datepicker/CompositeDateValidator;->d:Lcom/google/android/material/datepicker/f;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/material/datepicker/CompositeDateValidator;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/material/datepicker/CompositeDateValidator;

    iget-object v1, p1, Lcom/google/android/material/datepicker/CompositeDateValidator;->e:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/material/datepicker/CompositeDateValidator;->e:Ljava/util/ArrayList;

    invoke-interface {v3, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/google/android/material/datepicker/CompositeDateValidator;->d:Lcom/google/android/material/datepicker/f;

    invoke-interface {p0}, Lcom/google/android/material/datepicker/f;->getId()I

    move-result p0

    iget-object p1, p1, Lcom/google/android/material/datepicker/CompositeDateValidator;->d:Lcom/google/android/material/datepicker/f;

    invoke-interface {p1}, Lcom/google/android/material/datepicker/f;->getId()I

    move-result p1

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final f(J)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/datepicker/CompositeDateValidator;->d:Lcom/google/android/material/datepicker/f;

    iget-object p0, p0, Lcom/google/android/material/datepicker/CompositeDateValidator;->e:Ljava/util/ArrayList;

    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/material/datepicker/f;->a(Ljava/util/ArrayList;J)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/datepicker/CompositeDateValidator;->e:Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->hashCode()I

    move-result p0

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/google/android/material/datepicker/CompositeDateValidator;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object p0, p0, Lcom/google/android/material/datepicker/CompositeDateValidator;->d:Lcom/google/android/material/datepicker/f;

    invoke-interface {p0}, Lcom/google/android/material/datepicker/f;->getId()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

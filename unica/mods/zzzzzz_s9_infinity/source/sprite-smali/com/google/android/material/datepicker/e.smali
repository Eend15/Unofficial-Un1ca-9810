.class public final Lcom/google/android/material/datepicker/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    const-class p0, Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object v0, Lcom/google/android/material/datepicker/CompositeDateValidator;->g:Lcom/google/android/material/datepicker/d;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    sget-object v0, Lcom/google/android/material/datepicker/CompositeDateValidator;->f:Lcom/google/android/material/datepicker/c;

    :cond_1
    :goto_0
    new-instance p1, Lcom/google/android/material/datepicker/CompositeDateValidator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, p0, v0}, Lcom/google/android/material/datepicker/CompositeDateValidator;-><init>(Ljava/util/ArrayList;Lcom/google/android/material/datepicker/f;)V

    return-object p1
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Lcom/google/android/material/datepicker/CompositeDateValidator;

    return-object p0
.end method

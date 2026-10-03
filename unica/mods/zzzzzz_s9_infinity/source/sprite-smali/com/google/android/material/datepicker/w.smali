.class public final Lcom/google/android/material/datepicker/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/datepicker/w;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    iget p0, p0, Lcom/google/android/material/datepicker/w;->a:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lcom/google/android/material/datepicker/SingleDateSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    iput-object p1, p0, Lcom/google/android/material/datepicker/SingleDateSelector;->d:Ljava/lang/Long;

    return-object p0

    :pswitch_0
    new-instance p0, Lcom/google/android/material/datepicker/RangeDateSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->e:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->f:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->g:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->h:Ljava/lang/Long;

    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->e:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    iput-object p1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->f:Ljava/lang/Long;

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/google/android/material/datepicker/DateValidatorPointForward;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/datepicker/DateValidatorPointForward;-><init>(J)V

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/google/android/material/datepicker/DateValidatorPointBackward;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/datepicker/DateValidatorPointBackward;-><init>(J)V

    return-object p0

    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p0, p1}, Lcom/google/android/material/datepicker/Month;->k(II)Lcom/google/android/material/datepicker/Month;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/google/android/material/datepicker/w;->a:I

    packed-switch p0, :pswitch_data_0

    new-array p0, p1, [Lcom/google/android/material/datepicker/SingleDateSelector;

    return-object p0

    :pswitch_0
    new-array p0, p1, [Lcom/google/android/material/datepicker/RangeDateSelector;

    return-object p0

    :pswitch_1
    new-array p0, p1, [Lcom/google/android/material/datepicker/DateValidatorPointForward;

    return-object p0

    :pswitch_2
    new-array p0, p1, [Lcom/google/android/material/datepicker/DateValidatorPointBackward;

    return-object p0

    :pswitch_3
    new-array p0, p1, [Lcom/google/android/material/datepicker/Month;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

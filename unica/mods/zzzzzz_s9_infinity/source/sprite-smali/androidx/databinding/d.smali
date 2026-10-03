.class public final Landroidx/databinding/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/databinding/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget p0, p0, Landroidx/databinding/d;->a:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Landroidx/versionedparcelable/ParcelImpl;

    invoke-direct {p0, p1}, Landroidx/versionedparcelable/ParcelImpl;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_0
    new-instance p0, Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;-><init>(Landroid/os/Parcel;I)V

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/samsung/android/sivs/ai/sdkcommon/translation/DetectionCandidate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sivs/ai/sdkcommon/translation/DetectionCandidate;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/samsung/android/sivs/ai/sdkcommon/translation/DetectionCandidate;->e:F

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/samsung/android/sivs/ai/sdkcommon/translation/ChunkPair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sivs/ai/sdkcommon/translation/ChunkPair;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sivs/ai/sdkcommon/translation/ChunkPair;->e:Ljava/lang/String;

    return-object p0

    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    new-instance v2, Lcom/google/android/material/internal/ParcelableSparseIntArray;

    invoke-direct {v2, p0}, Landroid/util/SparseIntArray;-><init>(I)V

    new-array v3, p0, [I

    new-array v4, p0, [I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readIntArray([I)V

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readIntArray([I)V

    :goto_0
    if-ge v1, p0, :cond_0

    aget p1, v3, v1

    aget v5, v4, v1

    invoke-virtual {v2, p1, v5}, Landroid/util/SparseIntArray;->put(II)V

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    return-object v2

    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    new-instance v2, Lcom/google/android/material/internal/ParcelableSparseBooleanArray;

    invoke-direct {v2, p0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    new-array v3, p0, [I

    new-array v4, p0, [Z

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readIntArray([I)V

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readBooleanArray([Z)V

    :goto_1
    if-ge v1, p0, :cond_1

    aget p1, v3, v1

    aget-boolean v5, v4, v1

    invoke-virtual {v2, p1, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/2addr v1, v0

    goto :goto_1

    :cond_1
    return-object v2

    :pswitch_5
    new-instance p0, Landroid/support/v4/os/ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    sget v0, Lb/c;->c:I

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    sget-object v0, Lb/b;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_3

    instance-of v1, v0, Lb/b;

    if-eqz v1, :cond_3

    move-object p1, v0

    check-cast p1, Lb/b;

    goto :goto_2

    :cond_3
    new-instance v0, Lb/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lb/a;->b:Landroid/os/IBinder;

    move-object p1, v0

    :goto_2
    iput-object p1, p0, Landroid/support/v4/os/ResultReceiver;->d:Lb/b;

    return-object p0

    :pswitch_6
    new-instance p0, Landroidx/databinding/ObservableShort;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    int-to-short p1, p1

    invoke-direct {p0}, Landroidx/databinding/a;-><init>()V

    iput-short p1, p0, Landroidx/databinding/ObservableShort;->d:S

    return-object p0

    :pswitch_7
    new-instance p0, Landroidx/databinding/ObservableLong;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-direct {p0}, Landroidx/databinding/a;-><init>()V

    iput-wide v0, p0, Landroidx/databinding/ObservableLong;->d:J

    return-object p0

    :pswitch_8
    new-instance p0, Landroidx/databinding/ObservableInt;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0}, Landroidx/databinding/a;-><init>()V

    iput p1, p0, Landroidx/databinding/ObservableInt;->d:I

    return-object p0

    :pswitch_9
    new-instance p0, Landroidx/databinding/ObservableFloat;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-direct {p0}, Landroidx/databinding/a;-><init>()V

    iput p1, p0, Landroidx/databinding/ObservableFloat;->d:F

    return-object p0

    :pswitch_a
    new-instance p0, Landroidx/databinding/ObservableDouble;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-direct {p0}, Landroidx/databinding/a;-><init>()V

    iput-wide v0, p0, Landroidx/databinding/ObservableDouble;->d:D

    return-object p0

    :pswitch_b
    new-instance p0, Landroidx/databinding/ObservableChar;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    int-to-char p1, p1

    invoke-direct {p0}, Landroidx/databinding/a;-><init>()V

    iput-char p1, p0, Landroidx/databinding/ObservableChar;->d:C

    return-object p0

    :pswitch_c
    new-instance p0, Landroidx/databinding/ObservableByte;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    invoke-direct {p0}, Landroidx/databinding/a;-><init>()V

    iput-byte p1, p0, Landroidx/databinding/ObservableByte;->d:B

    return-object p0

    :pswitch_d
    new-instance p0, Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v0, :cond_4

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    invoke-direct {p0}, Landroidx/databinding/a;-><init>()V

    iput-boolean v0, p0, Landroidx/databinding/ObservableBoolean;->d:Z

    return-object p0

    :pswitch_e
    const-string p0, "inParcel"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroidx/activity/result/IntentSenderRequest;

    const-class v0, Landroid/content/IntentSender;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    check-cast v0, Landroid/content/IntentSender;

    const-class v1, Landroid/content/Intent;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Landroidx/activity/result/IntentSenderRequest;-><init>(Landroid/content/IntentSender;Landroid/content/Intent;II)V

    return-object p0

    :pswitch_f
    new-instance p0, Landroidx/activity/result/ActivityResult;

    invoke-direct {p0, p1}, Landroidx/activity/result/ActivityResult;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_10
    new-instance p0, Lcom/google/android/material/badge/BadgeState$State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->g:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->h:I

    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->i:I

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->n:Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->d:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->e:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->f:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->g:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->h:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->i:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->k:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->l:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->m:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->o:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->p:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->q:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->r:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->s:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->t:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->n:Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->j:Ljava/util/Locale;

    return-object p0

    :pswitch_11
    new-instance p0, Landroidx/databinding/ObservableParcelable;

    const-class v0, Landroidx/databinding/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-direct {p0}, Landroidx/databinding/a;-><init>()V

    iput-object p1, p0, Landroidx/databinding/ObservableParcelable;->d:Landroid/os/Parcelable;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    iget p0, p0, Landroidx/databinding/d;->a:I

    packed-switch p0, :pswitch_data_0

    new-array p0, p1, [Landroidx/versionedparcelable/ParcelImpl;

    return-object p0

    :pswitch_0
    new-array p0, p1, [Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;

    return-object p0

    :pswitch_1
    new-array p0, p1, [Lcom/samsung/android/sivs/ai/sdkcommon/translation/DetectionCandidate;

    return-object p0

    :pswitch_2
    new-array p0, p1, [Lcom/samsung/android/sivs/ai/sdkcommon/translation/ChunkPair;

    return-object p0

    :pswitch_3
    new-array p0, p1, [Lcom/google/android/material/internal/ParcelableSparseIntArray;

    return-object p0

    :pswitch_4
    new-array p0, p1, [Lcom/google/android/material/internal/ParcelableSparseBooleanArray;

    return-object p0

    :pswitch_5
    new-array p0, p1, [Landroid/support/v4/os/ResultReceiver;

    return-object p0

    :pswitch_6
    new-array p0, p1, [Landroidx/databinding/ObservableShort;

    return-object p0

    :pswitch_7
    new-array p0, p1, [Landroidx/databinding/ObservableLong;

    return-object p0

    :pswitch_8
    new-array p0, p1, [Landroidx/databinding/ObservableInt;

    return-object p0

    :pswitch_9
    new-array p0, p1, [Landroidx/databinding/ObservableFloat;

    return-object p0

    :pswitch_a
    new-array p0, p1, [Landroidx/databinding/ObservableDouble;

    return-object p0

    :pswitch_b
    new-array p0, p1, [Landroidx/databinding/ObservableChar;

    return-object p0

    :pswitch_c
    new-array p0, p1, [Landroidx/databinding/ObservableByte;

    return-object p0

    :pswitch_d
    new-array p0, p1, [Landroidx/databinding/ObservableBoolean;

    return-object p0

    :pswitch_e
    new-array p0, p1, [Landroidx/activity/result/IntentSenderRequest;

    return-object p0

    :pswitch_f
    new-array p0, p1, [Landroidx/activity/result/ActivityResult;

    return-object p0

    :pswitch_10
    new-array p0, p1, [Lcom/google/android/material/badge/BadgeState$State;

    return-object p0

    :pswitch_11
    new-array p0, p1, [Landroidx/databinding/ObservableParcelable;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

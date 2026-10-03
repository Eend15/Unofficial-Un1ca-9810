.class public final Landroidx/appcompat/widget/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Landroidx/appcompat/widget/k;->a:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Landroidx/appcompat/widget/AppCompatSpinner$SavedState;

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$SavedState;->d:Z

    return-object p0

    :pswitch_0
    new-instance p0, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;->d:I

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    iget p0, p0, Landroidx/appcompat/widget/k;->a:I

    packed-switch p0, :pswitch_data_0

    new-array p0, p1, [Landroidx/appcompat/widget/AppCompatSpinner$SavedState;

    return-object p0

    :pswitch_0
    new-array p0, p1, [Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

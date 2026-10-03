.class public Landroidx/databinding/ObservableChar;
.super Landroidx/databinding/a;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/databinding/ObservableChar;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public d:C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/databinding/d;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroidx/databinding/d;-><init>(I)V

    sput-object v0, Landroidx/databinding/ObservableChar;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-char p0, p0, Landroidx/databinding/ObservableChar;->d:C

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

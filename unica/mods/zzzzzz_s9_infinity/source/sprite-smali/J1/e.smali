.class public final LJ1/e;
.super Lw0/f;
.source "SourceFile"


# instance fields
.field public final h:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ1/e;->h:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public final I()Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "thumbnail_file_descriptor"

    iget-object p0, p0, LJ1/e;->h:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

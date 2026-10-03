.class public final LJ1/c;
.super Lw0/f;
.source "SourceFile"


# instance fields
.field public h:Landroid/os/ParcelFileDescriptor;


# virtual methods
.method public final I()Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, LJ1/c;->h:Landroid/os/ParcelFileDescriptor;

    if-eqz p0, :cond_0

    const-string v1, "image_file_descriptor"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

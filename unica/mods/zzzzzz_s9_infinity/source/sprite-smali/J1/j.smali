.class public final LJ1/j;
.super Lw0/f;
.source "SourceFile"


# instance fields
.field public final h:Z

.field public final i:Z

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ1/j;->j:Ljava/lang/String;

    iput-object p2, p0, LJ1/j;->k:Ljava/lang/String;

    iput-boolean p3, p0, LJ1/j;->h:Z

    iput-boolean p4, p0, LJ1/j;->i:Z

    iput-object p5, p0, LJ1/j;->l:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final I()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, LJ1/j;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "content_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, LJ1/j;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "content_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-boolean v1, p0, LJ1/j;->h:Z

    if-eqz v1, :cond_2

    const-string v2, "is_fixed_orientation"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    iget-boolean v1, p0, LJ1/j;->i:Z

    if-eqz v1, :cond_3

    const-string v2, "has_own_clock"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    iget-object p0, p0, LJ1/j;->l:Landroid/os/Bundle;

    if-eqz p0, :cond_4

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_4
    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x0

    return-object p0

    :cond_5
    return-object v0
.end method

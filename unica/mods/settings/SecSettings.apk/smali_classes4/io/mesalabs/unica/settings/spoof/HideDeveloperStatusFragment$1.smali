.class public final Lio/mesalabs/unica/settings/spoof/HideDeveloperStatusFragment$1;
.super Ljava/lang/Object;
.source "HideDeveloperStatusFragment.java"

# interfaces
.implements Landroidx/picker/widget/AppPickerState$OnStateChangeListener;


# instance fields
.field public final synthetic this$0:Lio/mesalabs/unica/settings/spoof/HideDeveloperStatusFragment;


# direct methods
.method public constructor <init>(Lio/mesalabs/unica/settings/spoof/HideDeveloperStatusFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/settings/spoof/HideDeveloperStatusFragment$1;->this$0:Lio/mesalabs/unica/settings/spoof/HideDeveloperStatusFragment;

    return-void
.end method


# virtual methods
.method public final onStateAllChanged(Z)V
    .locals 0

    return-void
.end method

.method public final onStateChanged(Landroidx/picker/model/AppInfo;Z)V
    .locals 4

    iget-object p1, p1, Landroidx/picker/model/AppInfo;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lio/mesalabs/unica/settings/spoof/HideDeveloperStatusFragment$1;->this$0:Lio/mesalabs/unica/settings/spoof/HideDeveloperStatusFragment;

    iget-object v0, v0, Lio/mesalabs/unica/settings/spoof/HideDeveloperStatusFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    if-eqz p2, :cond_0

    iget-object v2, p0, Lio/mesalabs/unica/settings/spoof/HideDeveloperStatusFragment$1;->this$0:Lio/mesalabs/unica/settings/spoof/HideDeveloperStatusFragment;

    iget-object v2, v2, Lio/mesalabs/unica/settings/spoof/HideDeveloperStatusFragment;->mHideDeveloperStatusUtils:Lio/mesalabs/unica/HideDeveloperStatusUtils;

    iget-object v3, p0, Lio/mesalabs/unica/settings/spoof/HideDeveloperStatusFragment$1;->this$0:Lio/mesalabs/unica/settings/spoof/HideDeveloperStatusFragment;

    iget-object v3, v3, Lio/mesalabs/unica/settings/spoof/HideDeveloperStatusFragment;->mContext:Landroid/content/Context;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3, p1, v1}, Lio/mesalabs/unica/HideDeveloperStatusUtils;->addApp(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lio/mesalabs/unica/settings/spoof/HideDeveloperStatusFragment$1;->this$0:Lio/mesalabs/unica/settings/spoof/HideDeveloperStatusFragment;

    iget-object v2, v2, Lio/mesalabs/unica/settings/spoof/HideDeveloperStatusFragment;->mHideDeveloperStatusUtils:Lio/mesalabs/unica/HideDeveloperStatusUtils;

    iget-object v3, p0, Lio/mesalabs/unica/settings/spoof/HideDeveloperStatusFragment$1;->this$0:Lio/mesalabs/unica/settings/spoof/HideDeveloperStatusFragment;

    iget-object v3, v3, Lio/mesalabs/unica/settings/spoof/HideDeveloperStatusFragment;->mContext:Landroid/content/Context;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3, p1, v1}, Lio/mesalabs/unica/HideDeveloperStatusUtils;->removeApp(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

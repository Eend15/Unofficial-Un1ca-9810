.class public final synthetic Lio/mesalabs/unica/settings/spoof/HideDeveloperStatusFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/mesalabs/unica/settings/spoof/HideDeveloperStatusFragment;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lio/mesalabs/unica/settings/spoof/HideDeveloperStatusFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/settings/spoof/HideDeveloperStatusFragment$$ExternalSyntheticLambda1;->f$0:Lio/mesalabs/unica/settings/spoof/HideDeveloperStatusFragment;

    iput-object p2, p0, Lio/mesalabs/unica/settings/spoof/HideDeveloperStatusFragment$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/mesalabs/unica/settings/spoof/HideDeveloperStatusFragment$$ExternalSyntheticLambda1;->f$0:Lio/mesalabs/unica/settings/spoof/HideDeveloperStatusFragment;

    iget-object p0, p0, Lio/mesalabs/unica/settings/spoof/HideDeveloperStatusFragment$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    iget-object v1, v0, Lio/mesalabs/unica/settings/spoof/HideDeveloperStatusFragment;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerListView;

    invoke-virtual {v1, p0}, Landroidx/picker/widget/SeslAppPickerView;->submitList(Ljava/util/List;)V

    iget-object p0, v0, Lio/mesalabs/unica/settings/spoof/HideDeveloperStatusFragment;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/LoadingViewController;->showContent(Z)V

    return-void
.end method

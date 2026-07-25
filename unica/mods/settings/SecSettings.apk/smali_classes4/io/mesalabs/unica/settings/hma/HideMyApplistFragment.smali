.class public Lio/mesalabs/unica/settings/hma/HideMyApplistFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "HideMyApplistFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public mAppPickerView:Landroidx/picker/widget/SeslAppPickerListView;

.field public mContext:Landroid/content/Context;

.field public final mHideAppListUtils:Lio/mesalabs/unica/HideAppListUtils;

.field public mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

.field public mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field public mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lio/mesalabs/unica/HideAppListUtils;

    invoke-direct {v0}, Lio/mesalabs/unica/HideAppListUtils;-><init>()V

    iput-object v0, p0, Lio/mesalabs/unica/settings/hma/HideMyApplistFragment;->mHideAppListUtils:Lio/mesalabs/unica/HideAppListUtils;

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2e8

    return p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/content/Context;)V

    iput-object p1, p0, Lio/mesalabs/unica/settings/hma/HideMyApplistFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lio/mesalabs/unica/settings/hma/HideMyApplistFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget-object v1, p0, Lio/mesalabs/unica/settings/hma/HideMyApplistFragment;->mHideAppListUtils:Lio/mesalabs/unica/HideAppListUtils;

    iget-object v2, p0, Lio/mesalabs/unica/settings/hma/HideMyApplistFragment;->mContext:Landroid/content/Context;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2, v0}, Lio/mesalabs/unica/HideAppListUtils;->setApps(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p0, p0, Lio/mesalabs/unica/settings/hma/HideMyApplistFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "unica_hma"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lio/mesalabs/unica/settings/hma/HideMyApplistFragment;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->getListHorizontalPadding(Landroid/content/Context;Landroidx/core/graphics/Insets;)I

    move-result p1

    iget-object p0, p0, Lio/mesalabs/unica/settings/hma/HideMyApplistFragment;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerListView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p1, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p3

    const-string v0, "id"

    const-string v1, "recycler_view"

    invoke-static {v0, v1}, Lio/mesalabs/unica/utils/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    const-string v0, "layout"

    const-string v1, "camera_flash_notification_app_picker"

    invoke-static {v0, v1}, Lio/mesalabs/unica/utils/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x102003f

    invoke-virtual {p3, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string p2, "id"

    const-string v0, "app_picker_view"

    invoke-static {p2, v0}, Lio/mesalabs/unica/utils/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/picker/widget/SeslAppPickerListView;

    iput-object p2, p0, Lio/mesalabs/unica/settings/hma/HideMyApplistFragment;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerListView;

    iget-object p2, p0, Lio/mesalabs/unica/settings/hma/HideMyApplistFragment;->mContext:Landroid/content/Context;

    invoke-static {p2, v1}, Lcom/android/settings/Utils;->getListHorizontalPadding(Landroid/content/Context;Landroidx/core/graphics/Insets;)I

    move-result p2

    iget-object v0, p0, Lio/mesalabs/unica/settings/hma/HideMyApplistFragment;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerListView;

    invoke-virtual {v0, p2, v1, p2, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object p2, p0, Lio/mesalabs/unica/settings/hma/HideMyApplistFragment;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerListView;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object p2, p0, Lio/mesalabs/unica/settings/hma/HideMyApplistFragment;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerListView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/picker/widget/SeslAppPickerView;->setAppListOrder(I)V

    iget-object p2, p0, Lio/mesalabs/unica/settings/hma/HideMyApplistFragment;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerListView;

    new-instance v0, Lio/mesalabs/unica/settings/hma/HideMyApplistFragment$1;

    invoke-direct {v0, p0}, Lio/mesalabs/unica/settings/hma/HideMyApplistFragment$1;-><init>(Lio/mesalabs/unica/settings/hma/HideMyApplistFragment;)V

    iput-object v0, p2, Landroidx/picker/widget/SeslAppPickerView;->mOnStateChangeListener:Landroidx/picker/widget/AppPickerState$OnStateChangeListener;

    const-string p2, "id"

    const-string v1, "loading_container"

    invoke-static {p2, v1}, Lio/mesalabs/unica/utils/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/android/settings/widget/LoadingViewController;

    const/4 v0, 0x0

    invoke-direct {v1, p2, p1, v0}, Lcom/android/settings/widget/LoadingViewController;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iput-object v1, p0, Lio/mesalabs/unica/settings/hma/HideMyApplistFragment;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    iget-object p1, p1, Lcom/android/settings/SettingsActivity;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iput-object p1, p0, Lio/mesalabs/unica/settings/hma/HideMyApplistFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object p2, p0, Lio/mesalabs/unica/settings/hma/HideMyApplistFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "unica_hma"

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    iget-object p1, p0, Lio/mesalabs/unica/settings/hma/HideMyApplistFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p0, p0, Lio/mesalabs/unica/settings/hma/HideMyApplistFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslSwitchBar;->show()V

    return-object p3
.end method

.method public final onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    iget-object p0, p0, Lio/mesalabs/unica/settings/hma/HideMyApplistFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslSwitchBar;->hide()V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lio/mesalabs/unica/settings/hma/HideMyApplistFragment;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Lcom/android/settings/widget/LoadingViewController;->handleLoadingContainer(ZZZ)V

    new-instance v0, Lio/mesalabs/unica/settings/hma/HideMyApplistFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lio/mesalabs/unica/settings/hma/HideMyApplistFragment$$ExternalSyntheticLambda0;-><init>(Lio/mesalabs/unica/settings/hma/HideMyApplistFragment;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

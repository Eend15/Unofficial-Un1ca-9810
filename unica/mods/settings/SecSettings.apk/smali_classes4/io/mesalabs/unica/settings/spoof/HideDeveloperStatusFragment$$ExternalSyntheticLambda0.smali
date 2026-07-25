.class public final synthetic Lio/mesalabs/unica/settings/spoof/HideDeveloperStatusFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/mesalabs/unica/settings/spoof/HideDeveloperStatusFragment;


# direct methods
.method public synthetic constructor <init>(Lio/mesalabs/unica/settings/spoof/HideDeveloperStatusFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/settings/spoof/HideDeveloperStatusFragment$$ExternalSyntheticLambda0;->f$0:Lio/mesalabs/unica/settings/spoof/HideDeveloperStatusFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lio/mesalabs/unica/settings/spoof/HideDeveloperStatusFragment$$ExternalSyntheticLambda0;->f$0:Lio/mesalabs/unica/settings/spoof/HideDeveloperStatusFragment;

    iget-object v1, p0, Lio/mesalabs/unica/settings/spoof/HideDeveloperStatusFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lio/mesalabs/unica/HideDeveloperStatusUtils;->getApps(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lio/mesalabs/unica/settings/spoof/HideDeveloperStatusFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x400000

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    iget v5, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v5, v5, 0x81

    if-nez v5, :cond_0

    new-instance v5, Landroidx/picker/model/AppData$ListCheckBoxAppDataBuilder;

    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v7, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    sget-object v8, Landroidx/picker/model/AppInfo;->Companion:Landroidx/picker/model/AppInfo$Companion;

    const-string v8, ""

    invoke-static {v7, v6, v8}, Landroidx/picker/model/AppInfo$Companion;->obtain(ILjava/lang/String;Ljava/lang/String;)Landroidx/picker/model/AppInfo;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/picker/model/AppData$ListCheckBoxAppDataBuilder;-><init>(Landroidx/picker/model/AppInfo;)V

    invoke-virtual {v4, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/picker/model/AppData$ListCheckBoxAppDataBuilder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/picker/model/AppData$ListCheckBoxAppDataBuilder;

    move-result-object v5

    invoke-virtual {v4, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/picker/model/AppData$ListCheckBoxAppDataBuilder;->setLabel(Ljava/lang/String;)Landroidx/picker/model/AppData$ListCheckBoxAppDataBuilder;

    move-result-object v5

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v5, v4}, Landroidx/picker/model/AppData$ListCheckBoxAppDataBuilder;->setSelected(Z)Landroidx/picker/model/AppData$ListCheckBoxAppDataBuilder;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/picker/model/AppData$ListCheckBoxAppDataBuilder;->build()Landroidx/picker/model/AppInfoData;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lio/mesalabs/unica/settings/spoof/HideDeveloperStatusFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lio/mesalabs/unica/settings/spoof/HideDeveloperStatusFragment$$ExternalSyntheticLambda1;-><init>(Lio/mesalabs/unica/settings/spoof/HideDeveloperStatusFragment;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

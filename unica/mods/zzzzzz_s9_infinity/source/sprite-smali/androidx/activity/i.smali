.class public abstract Landroidx/activity/i;
.super Lz/d;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/W;
.implements Landroidx/lifecycle/i;
.implements Ld0/g;


# static fields
.field private static final ACTIVITY_RESULT_TAG:Ljava/lang/String; = "android:support:activity-result"


# instance fields
.field private final mActivityResultRegistry:Landroidx/activity/result/g;

.field private mContentLayoutId:I

.field final mContextAwareHelper:Lc/a;

.field private mDefaultFactory:Landroidx/lifecycle/U;

.field private mDispatchingOnMultiWindowModeChanged:Z

.field private mDispatchingOnPictureInPictureModeChanged:Z

.field final mFullyDrawnReporter:Landroidx/activity/k;

.field private final mLifecycleRegistry:Landroidx/lifecycle/v;

.field private final mMenuHostHelper:LK/j;

.field private final mNextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mOnBackPressedDispatcher:Landroidx/activity/p;

.field private final mOnConfigurationChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "LJ/a;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnMultiWindowModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "LJ/a;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnNewIntentListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "LJ/a;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnPictureInPictureModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "LJ/a;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnTrimMemoryListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "LJ/a;",
            ">;"
        }
    .end annotation
.end field

.field private final mReportFullyDrawnExecutor:Landroidx/activity/g;

.field final mSavedStateRegistryController:Ld0/f;

.field private mViewModelStore:Landroidx/lifecycle/V;


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Lz/d;-><init>()V

    new-instance v0, Lc/a;

    invoke-direct {v0}, Lc/a;-><init>()V

    iput-object v0, p0, Landroidx/activity/i;->mContextAwareHelper:Lc/a;

    new-instance v0, LK/j;

    new-instance v1, LA0/a;

    move-object v2, p0

    check-cast v2, Landroidx/fragment/app/w;

    const/4 v3, 0x6

    invoke-direct {v1, v3, v2}, LA0/a;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, LK/j;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroidx/activity/i;->mMenuHostHelper:LK/j;

    new-instance v0, Landroidx/lifecycle/v;

    invoke-direct {v0, p0}, Landroidx/lifecycle/v;-><init>(Landroidx/lifecycle/t;)V

    iput-object v0, p0, Landroidx/activity/i;->mLifecycleRegistry:Landroidx/lifecycle/v;

    new-instance v0, Ld0/f;

    invoke-direct {v0, p0}, Ld0/f;-><init>(Ld0/g;)V

    iput-object v0, p0, Landroidx/activity/i;->mSavedStateRegistryController:Ld0/f;

    new-instance v1, Landroidx/activity/p;

    new-instance v3, LA1/l;

    const/4 v4, 0x5

    invoke-direct {v3, v4, v2}, LA1/l;-><init>(ILjava/lang/Object;)V

    invoke-direct {v1, v3}, Landroidx/activity/p;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Landroidx/activity/i;->mOnBackPressedDispatcher:Landroidx/activity/p;

    new-instance v1, Landroidx/activity/h;

    invoke-direct {v1, v2}, Landroidx/activity/h;-><init>(Landroidx/fragment/app/w;)V

    iput-object v1, p0, Landroidx/activity/i;->mReportFullyDrawnExecutor:Landroidx/activity/g;

    new-instance v3, Landroidx/activity/k;

    new-instance v4, LM2/a;

    const/4 v5, 0x2

    invoke-direct {v4, v5, v2}, LM2/a;-><init>(ILjava/lang/Object;)V

    invoke-direct {v3, v1, v4}, Landroidx/activity/k;-><init>(Landroidx/activity/h;LM2/a;)V

    iput-object v3, p0, Landroidx/activity/i;->mFullyDrawnReporter:Landroidx/activity/k;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Landroidx/activity/i;->mNextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Landroidx/activity/d;

    invoke-direct {v1, v2}, Landroidx/activity/d;-><init>(Landroidx/fragment/app/w;)V

    iput-object v1, p0, Landroidx/activity/i;->mActivityResultRegistry:Landroidx/activity/result/g;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroidx/activity/i;->mOnConfigurationChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroidx/activity/i;->mOnTrimMemoryListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroidx/activity/i;->mOnNewIntentListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroidx/activity/i;->mOnMultiWindowModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroidx/activity/i;->mOnPictureInPictureModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/activity/i;->mDispatchingOnMultiWindowModeChanged:Z

    iput-boolean v1, p0, Landroidx/activity/i;->mDispatchingOnPictureInPictureModeChanged:Z

    invoke-virtual {p0}, Landroidx/activity/i;->getLifecycle()Landroidx/lifecycle/o;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/activity/i;->getLifecycle()Landroidx/lifecycle/o;

    move-result-object v1

    new-instance v3, Landroidx/activity/ComponentActivity$3;

    invoke-direct {v3, v2}, Landroidx/activity/ComponentActivity$3;-><init>(Landroidx/fragment/app/w;)V

    invoke-virtual {v1, v3}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/s;)V

    invoke-virtual {p0}, Landroidx/activity/i;->getLifecycle()Landroidx/lifecycle/o;

    move-result-object v1

    new-instance v3, Landroidx/activity/ComponentActivity$4;

    invoke-direct {v3, v2}, Landroidx/activity/ComponentActivity$4;-><init>(Landroidx/fragment/app/w;)V

    invoke-virtual {v1, v3}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/s;)V

    invoke-virtual {p0}, Landroidx/activity/i;->getLifecycle()Landroidx/lifecycle/o;

    move-result-object v1

    new-instance v3, Landroidx/activity/ComponentActivity$5;

    invoke-direct {v3, v2}, Landroidx/activity/ComponentActivity$5;-><init>(Landroidx/fragment/app/w;)V

    invoke-virtual {v1, v3}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/s;)V

    invoke-virtual {v0}, Ld0/f;->a()V

    invoke-static {p0}, Landroidx/lifecycle/K;->d(Ld0/g;)V

    invoke-virtual {p0}, Landroidx/activity/i;->getSavedStateRegistry()Ld0/e;

    move-result-object v0

    new-instance v1, Landroidx/activity/b;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Landroidx/activity/b;-><init>(ILjava/lang/Object;)V

    const-string v3, "android:support:activity-result"

    invoke-virtual {v0, v3, v1}, Ld0/e;->c(Ljava/lang/String;Ld0/d;)V

    new-instance v0, Landroidx/activity/c;

    invoke-direct {v0, v2}, Landroidx/activity/c;-><init>(Landroidx/fragment/app/w;)V

    invoke-virtual {p0, v0}, Landroidx/activity/i;->addOnContextAvailableListener(Lc/b;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "getLifecycle() returned null in ComponentActivity\'s constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroidx/fragment/app/w;)V
    .locals 8

    invoke-virtual {p0}, Landroidx/activity/i;->getSavedStateRegistry()Ld0/e;

    move-result-object v0

    const-string v1, "android:support:activity-result"

    invoke-virtual {v0, v1}, Ld0/e;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroidx/activity/i;->mActivityResultRegistry:Landroidx/activity/result/g;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "KEY_COMPONENT_ACTIVITY_REGISTERED_RCS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Landroidx/activity/result/g;->e:Ljava/util/ArrayList;

    const-string v3, "KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/util/Random;

    iput-object v3, p0, Landroidx/activity/result/g;->a:Ljava/util/Random;

    const-string v3, "KEY_COMPONENT_ACTIVITY_PENDING_RESULT"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v3, p0, Landroidx/activity/result/g;->h:Landroid/os/Bundle;

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Landroidx/activity/result/g;->c:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    iget-object v7, p0, Landroidx/activity/result/g;->b:Ljava/util/HashMap;

    if-eqz v6, :cond_1

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic access$001(Landroidx/activity/i;)V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public static b(Landroidx/fragment/app/w;)Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Landroidx/activity/i;->mActivityResultRegistry:Landroidx/activity/result/g;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/activity/result/g;->c:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "KEY_COMPONENT_ACTIVITY_REGISTERED_RCS"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/activity/result/g;->e:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v1, p0, Landroidx/activity/result/g;->h:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "KEY_COMPONENT_ACTIVITY_PENDING_RESULT"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT"

    iget-object p0, p0, Landroidx/activity/result/g;->a:Ljava/util/Random;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object v0
.end method


# virtual methods
.method public addMenuProvider(LK/k;)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/activity/i;->mMenuHostHelper:LK/j;

    .line 2
    iget-object v0, p0, LK/j;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p0, p0, LK/j;->a:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public addMenuProvider(LK/k;Landroidx/lifecycle/t;)V
    .locals 4

    .line 5
    iget-object p0, p0, Landroidx/activity/i;->mMenuHostHelper:LK/j;

    .line 6
    iget-object v0, p0, LK/j;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, LK/j;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 8
    invoke-interface {p2}, Landroidx/lifecycle/t;->getLifecycle()Landroidx/lifecycle/o;

    move-result-object p2

    .line 9
    iget-object v0, p0, LK/j;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LK/i;

    if-eqz v1, :cond_0

    .line 10
    iget-object v2, v1, LK/i;->a:Landroidx/lifecycle/o;

    iget-object v3, v1, LK/i;->b:Landroidx/lifecycle/r;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/o;->b(Landroidx/lifecycle/s;)V

    const/4 v2, 0x0

    .line 11
    iput-object v2, v1, LK/i;->b:Landroidx/lifecycle/r;

    .line 12
    :cond_0
    new-instance v1, LK/h;

    invoke-direct {v1, p0, p1}, LK/h;-><init>(LK/j;LK/k;)V

    .line 13
    new-instance p0, LK/i;

    invoke-direct {p0, p2, v1}, LK/i;-><init>(Landroidx/lifecycle/o;Landroidx/lifecycle/r;)V

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addMenuProvider(LK/k;Landroidx/lifecycle/t;Landroidx/lifecycle/n;)V
    .locals 4

    .line 14
    iget-object p0, p0, Landroidx/activity/i;->mMenuHostHelper:LK/j;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-interface {p2}, Landroidx/lifecycle/t;->getLifecycle()Landroidx/lifecycle/o;

    move-result-object p2

    .line 16
    iget-object v0, p0, LK/j;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LK/i;

    if-eqz v1, :cond_0

    .line 17
    iget-object v2, v1, LK/i;->a:Landroidx/lifecycle/o;

    iget-object v3, v1, LK/i;->b:Landroidx/lifecycle/r;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/o;->b(Landroidx/lifecycle/s;)V

    const/4 v2, 0x0

    .line 18
    iput-object v2, v1, LK/i;->b:Landroidx/lifecycle/r;

    .line 19
    :cond_0
    new-instance v1, LK/g;

    invoke-direct {v1, p0, p3, p1}, LK/g;-><init>(LK/j;Landroidx/lifecycle/n;LK/k;)V

    .line 20
    new-instance p0, LK/i;

    invoke-direct {p0, p2, v1}, LK/i;-><init>(Landroidx/lifecycle/o;Landroidx/lifecycle/r;)V

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final addOnConfigurationChangedListener(LJ/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJ/a;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/activity/i;->mOnConfigurationChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addOnContextAvailableListener(Lc/b;)V
    .locals 1

    iget-object p0, p0, Landroidx/activity/i;->mContextAwareHelper:Lc/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "listener"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lc/a;->b:Landroidx/activity/i;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lc/b;->a(Landroidx/activity/i;)V

    :cond_0
    iget-object p0, p0, Lc/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addOnMultiWindowModeChangedListener(LJ/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJ/a;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/activity/i;->mOnMultiWindowModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addOnNewIntentListener(LJ/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJ/a;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/activity/i;->mOnNewIntentListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addOnPictureInPictureModeChangedListener(LJ/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJ/a;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/activity/i;->mOnPictureInPictureModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addOnTrimMemoryListener(LJ/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJ/a;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/activity/i;->mOnTrimMemoryListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public ensureViewModelStore()V
    .locals 1

    iget-object v0, p0, Landroidx/activity/i;->mViewModelStore:Landroidx/lifecycle/V;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/activity/f;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/activity/f;->b:Landroidx/lifecycle/V;

    iput-object v0, p0, Landroidx/activity/i;->mViewModelStore:Landroidx/lifecycle/V;

    :cond_0
    iget-object v0, p0, Landroidx/activity/i;->mViewModelStore:Landroidx/lifecycle/V;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/lifecycle/V;

    invoke-direct {v0}, Landroidx/lifecycle/V;-><init>()V

    iput-object v0, p0, Landroidx/activity/i;->mViewModelStore:Landroidx/lifecycle/V;

    :cond_1
    return-void
.end method

.method public final getActivityResultRegistry()Landroidx/activity/result/g;
    .locals 0

    iget-object p0, p0, Landroidx/activity/i;->mActivityResultRegistry:Landroidx/activity/result/g;

    return-object p0
.end method

.method public getDefaultViewModelCreationExtras()LV/b;
    .locals 4

    new-instance v0, LV/c;

    invoke-direct {v0}, LV/c;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, v0, LV/b;->a:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/lifecycle/S;->d:Landroidx/lifecycle/S;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v1, Landroidx/lifecycle/K;->a:Landroidx/lifecycle/S;

    invoke-interface {v2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Landroidx/lifecycle/K;->b:Landroidx/lifecycle/S;

    invoke-interface {v2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Landroidx/lifecycle/K;->c:Landroidx/lifecycle/S;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-interface {v2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public getDefaultViewModelProviderFactory()Landroidx/lifecycle/U;
    .locals 3

    iget-object v0, p0, Landroidx/activity/i;->mDefaultFactory:Landroidx/lifecycle/U;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/lifecycle/N;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v0, v1, p0, v2}, Landroidx/lifecycle/N;-><init>(Landroid/app/Application;Landroidx/activity/i;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroidx/activity/i;->mDefaultFactory:Landroidx/lifecycle/U;

    :cond_1
    iget-object p0, p0, Landroidx/activity/i;->mDefaultFactory:Landroidx/lifecycle/U;

    return-object p0
.end method

.method public getFullyDrawnReporter()Landroidx/activity/k;
    .locals 0

    iget-object p0, p0, Landroidx/activity/i;->mFullyDrawnReporter:Landroidx/activity/k;

    return-object p0
.end method

.method public getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/activity/f;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/activity/f;->a:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getLifecycle()Landroidx/lifecycle/o;
    .locals 0

    iget-object p0, p0, Landroidx/activity/i;->mLifecycleRegistry:Landroidx/lifecycle/v;

    return-object p0
.end method

.method public final getOnBackPressedDispatcher()Landroidx/activity/p;
    .locals 0

    iget-object p0, p0, Landroidx/activity/i;->mOnBackPressedDispatcher:Landroidx/activity/p;

    return-object p0
.end method

.method public final getSavedStateRegistry()Ld0/e;
    .locals 0

    iget-object p0, p0, Landroidx/activity/i;->mSavedStateRegistryController:Ld0/f;

    iget-object p0, p0, Ld0/f;->b:Ld0/e;

    return-object p0
.end method

.method public getViewModelStore()Landroidx/lifecycle/V;
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/activity/i;->ensureViewModelStore()V

    iget-object p0, p0, Landroidx/activity/i;->mViewModelStore:Landroidx/lifecycle/V;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Your activity is not yet attached to the Application instance. You can\'t request ViewModel before onCreate call."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public invalidateMenu()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Landroidx/activity/i;->mActivityResultRegistry:Landroidx/activity/result/g;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/activity/result/g;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    iget-object p0, p0, Landroidx/activity/i;->mOnBackPressedDispatcher:Landroidx/activity/p;

    invoke-virtual {p0}, Landroidx/activity/p;->b()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Landroidx/activity/i;->mOnConfigurationChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ/a;

    invoke-interface {v0, p1}, LJ/a;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroidx/activity/i;->mSavedStateRegistryController:Ld0/f;

    invoke-virtual {v0, p1}, Ld0/f;->b(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/activity/i;->mContextAwareHelper:Lc/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, v0, Lc/a;->b:Landroidx/activity/i;

    iget-object v0, v0, Lc/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/b;

    invoke-interface {v1, p0}, Lc/b;->a(Landroidx/activity/i;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lz/d;->onCreate(Landroid/os/Bundle;)V

    sget p1, Landroidx/lifecycle/H;->d:I

    invoke-static {p0}, Landroidx/lifecycle/F;->b(Landroid/app/Activity;)V

    sget p1, LG/a;->a:I

    iget-object p1, p0, Landroidx/activity/i;->mOnBackPressedDispatcher:Landroidx/activity/p;

    invoke-static {p0}, Landroidx/activity/e;->a(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "invoker"

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p1, Landroidx/activity/p;->e:Landroid/window/OnBackInvokedDispatcher;

    invoke-virtual {p1}, Landroidx/activity/p;->c()V

    iget p1, p0, Landroidx/activity/i;->mContentLayoutId:I

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Landroidx/activity/i;->setContentView(I)V

    :cond_1
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 0

    if-nez p1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    iget-object p1, p0, Landroidx/activity/i;->mMenuHostHelper:LK/j;

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    iget-object p0, p1, LK/j;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LK/k;

    check-cast p1, Landroidx/fragment/app/E;

    iget-object p1, p1, Landroidx/fragment/app/E;->a:Landroidx/fragment/app/L;

    invoke-virtual {p1}, Landroidx/fragment/app/L;->j()Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez p1, :cond_1

    iget-object p0, p0, Landroidx/activity/i;->mMenuHostHelper:LK/j;

    invoke-virtual {p0}, LK/j;->a()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/activity/i;->mDispatchingOnMultiWindowModeChanged:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p0, p0, Landroidx/activity/i;->mOnMultiWindowModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ/a;

    .line 3
    new-instance v1, Lz/e;

    invoke-direct {v1, p1}, Lz/e;-><init>(Z)V

    invoke-interface {v0, v1}, LJ/a;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 3

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/activity/i;->mDispatchingOnMultiWindowModeChanged:Z

    const/4 v0, 0x0

    .line 5
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iput-boolean v0, p0, Landroidx/activity/i;->mDispatchingOnMultiWindowModeChanged:Z

    .line 7
    iget-object p0, p0, Landroidx/activity/i;->mOnMultiWindowModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ/a;

    .line 8
    new-instance v1, Lz/e;

    .line 9
    const-string v2, "newConfig"

    invoke-static {p2, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {v1, p1}, Lz/e;-><init>(Z)V

    .line 11
    invoke-interface {v0, v1}, LJ/a;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 12
    iput-boolean v0, p0, Landroidx/activity/i;->mDispatchingOnMultiWindowModeChanged:Z

    .line 13
    throw p1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    iget-object p0, p0, Landroidx/activity/i;->mOnNewIntentListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ/a;

    invoke-interface {v0, p1}, LJ/a;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 2

    iget-object v0, p0, Landroidx/activity/i;->mMenuHostHelper:LK/j;

    iget-object v0, v0, LK/j;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LK/k;

    check-cast v1, Landroidx/fragment/app/E;

    iget-object v1, v1, Landroidx/fragment/app/E;->a:Landroidx/fragment/app/L;

    invoke-virtual {v1}, Landroidx/fragment/app/L;->p()V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/activity/i;->mDispatchingOnPictureInPictureModeChanged:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p0, p0, Landroidx/activity/i;->mOnPictureInPictureModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ/a;

    .line 3
    new-instance v1, Lz/f;

    invoke-direct {v1, p1}, Lz/f;-><init>(Z)V

    invoke-interface {v0, v1}, LJ/a;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 3

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/activity/i;->mDispatchingOnPictureInPictureModeChanged:Z

    const/4 v0, 0x0

    .line 5
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iput-boolean v0, p0, Landroidx/activity/i;->mDispatchingOnPictureInPictureModeChanged:Z

    .line 7
    iget-object p0, p0, Landroidx/activity/i;->mOnPictureInPictureModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ/a;

    .line 8
    new-instance v1, Lz/f;

    .line 9
    const-string v2, "newConfig"

    invoke-static {p2, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {v1, p1}, Lz/f;-><init>(Z)V

    .line 11
    invoke-interface {v0, v1}, LJ/a;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 12
    iput-boolean v0, p0, Landroidx/activity/i;->mDispatchingOnPictureInPictureModeChanged:Z

    .line 13
    throw p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    if-nez p1, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    iget-object p0, p0, Landroidx/activity/i;->mMenuHostHelper:LK/j;

    iget-object p0, p0, LK/j;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LK/k;

    check-cast p1, Landroidx/fragment/app/E;

    iget-object p1, p1, Landroidx/fragment/app/E;->a:Landroidx/fragment/app/L;

    invoke-virtual {p1}, Landroidx/fragment/app/L;->s()Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    iget-object v0, p0, Landroidx/activity/i;->mActivityResultRegistry:Landroidx/activity/result/g;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "androidx.activity.result.contract.extra.PERMISSIONS"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v2, v1}, Landroidx/activity/result/g;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Landroidx/activity/i;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroidx/activity/i;->mViewModelStore:Landroidx/lifecycle/V;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/activity/f;

    if-eqz p0, :cond_0

    iget-object v1, p0, Landroidx/activity/f;->b:Landroidx/lifecycle/V;

    :cond_0
    if-nez v1, :cond_1

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance p0, Landroidx/activity/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/activity/f;->a:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/activity/f;->b:Landroidx/lifecycle/V;

    return-object p0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/activity/i;->getLifecycle()Landroidx/lifecycle/o;

    move-result-object v0

    instance-of v1, v0, Landroidx/lifecycle/v;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/lifecycle/v;

    invoke-virtual {v0}, Landroidx/lifecycle/v;->g()V

    :cond_0
    invoke-super {p0, p1}, Lz/d;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object p0, p0, Landroidx/activity/i;->mSavedStateRegistryController:Ld0/f;

    invoke-virtual {p0, p1}, Ld0/f;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    iget-object p0, p0, Landroidx/activity/i;->mOnTrimMemoryListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ/a;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, LJ/a;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public peekAvailableContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroidx/activity/i;->mContextAwareHelper:Lc/a;

    iget-object p0, p0, Lc/a;->b:Landroidx/activity/i;

    return-object p0
.end method

.method public final registerForActivityResult(Ld/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ld/a;",
            "Landroidx/activity/result/a;",
            ")",
            "Landroidx/activity/result/b;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Landroidx/activity/i;->mActivityResultRegistry:Landroidx/activity/result/g;

    invoke-virtual {p0, p1, v0, p2}, Landroidx/activity/i;->registerForActivityResult(Ld/a;Landroidx/activity/result/g;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    move-result-object p0

    return-object p0
.end method

.method public final registerForActivityResult(Ld/a;Landroidx/activity/result/g;Landroidx/activity/result/a;)Landroidx/activity/result/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ld/a;",
            "Landroidx/activity/result/g;",
            "Landroidx/activity/result/a;",
            ")",
            "Landroidx/activity/result/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "activity_rq#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/activity/i;->mNextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p2, v0, p0, p1, p3}, Landroidx/activity/result/g;->c(Ljava/lang/String;Landroidx/activity/i;Ld/a;Landroidx/activity/result/a;)Landroidx/activity/result/c;

    move-result-object p0

    return-object p0
.end method

.method public removeMenuProvider(LK/k;)V
    .locals 0

    iget-object p0, p0, Landroidx/activity/i;->mMenuHostHelper:LK/j;

    invoke-virtual {p0, p1}, LK/j;->b(LK/k;)V

    return-void
.end method

.method public final removeOnConfigurationChangedListener(LJ/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJ/a;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/activity/i;->mOnConfigurationChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeOnContextAvailableListener(Lc/b;)V
    .locals 1

    iget-object p0, p0, Landroidx/activity/i;->mContextAwareHelper:Lc/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "listener"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lc/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeOnMultiWindowModeChangedListener(LJ/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJ/a;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/activity/i;->mOnMultiWindowModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeOnNewIntentListener(LJ/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJ/a;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/activity/i;->mOnNewIntentListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeOnPictureInPictureModeChangedListener(LJ/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJ/a;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/activity/i;->mOnPictureInPictureModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeOnTrimMemoryListener(LJ/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJ/a;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/activity/i;->mOnTrimMemoryListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reportFullyDrawn()V
    .locals 3

    :try_start_0
    invoke-static {}, Li0/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "reportFullyDrawn() for ComponentActivity"

    invoke-static {v0}, Le0/a;->r(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->reportFullyDrawn()V

    iget-object p0, p0, Landroidx/activity/i;->mFullyDrawnReporter:Landroidx/activity/k;

    iget-object v0, p0, Landroidx/activity/k;->a:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Landroidx/activity/k;->b:Z

    iget-object v1, p0, Landroidx/activity/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LE3/a;

    invoke-interface {v2}, LE3/a;->invoke()Ljava/lang/Object;

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_1
    iget-object p0, p0, Landroidx/activity/k;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :goto_2
    :try_start_3
    monitor-exit v0

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public abstract setContentView(I)V
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super/range {p0 .. p6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-super/range {p0 .. p7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

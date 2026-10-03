.class public abstract LK/D;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/WeakHashMap;

.field public static final b:[I

.field public static final c:LK/t;


# direct methods
.method static constructor <clinit>()V
    .locals 32

    sget v0, Ly/b;->accessibility_custom_action_0:I

    sget v1, Ly/b;->accessibility_custom_action_1:I

    sget v2, Ly/b;->accessibility_custom_action_2:I

    sget v3, Ly/b;->accessibility_custom_action_3:I

    sget v4, Ly/b;->accessibility_custom_action_4:I

    sget v5, Ly/b;->accessibility_custom_action_5:I

    sget v6, Ly/b;->accessibility_custom_action_6:I

    sget v7, Ly/b;->accessibility_custom_action_7:I

    sget v8, Ly/b;->accessibility_custom_action_8:I

    sget v9, Ly/b;->accessibility_custom_action_9:I

    sget v10, Ly/b;->accessibility_custom_action_10:I

    sget v11, Ly/b;->accessibility_custom_action_11:I

    sget v12, Ly/b;->accessibility_custom_action_12:I

    sget v13, Ly/b;->accessibility_custom_action_13:I

    sget v14, Ly/b;->accessibility_custom_action_14:I

    sget v15, Ly/b;->accessibility_custom_action_15:I

    sget v16, Ly/b;->accessibility_custom_action_16:I

    sget v17, Ly/b;->accessibility_custom_action_17:I

    sget v18, Ly/b;->accessibility_custom_action_18:I

    sget v19, Ly/b;->accessibility_custom_action_19:I

    sget v20, Ly/b;->accessibility_custom_action_20:I

    sget v21, Ly/b;->accessibility_custom_action_21:I

    sget v22, Ly/b;->accessibility_custom_action_22:I

    sget v23, Ly/b;->accessibility_custom_action_23:I

    sget v24, Ly/b;->accessibility_custom_action_24:I

    sget v25, Ly/b;->accessibility_custom_action_25:I

    sget v26, Ly/b;->accessibility_custom_action_26:I

    sget v27, Ly/b;->accessibility_custom_action_27:I

    sget v28, Ly/b;->accessibility_custom_action_28:I

    sget v29, Ly/b;->accessibility_custom_action_29:I

    sget v30, Ly/b;->accessibility_custom_action_30:I

    sget v31, Ly/b;->accessibility_custom_action_31:I

    filled-new-array/range {v0 .. v31}, [I

    move-result-object v0

    sput-object v0, LK/D;->b:[I

    new-instance v0, LK/t;

    invoke-direct {v0}, LK/t;-><init>()V

    sput-object v0, LK/D;->c:LK/t;

    return-void
.end method

.method public static a(Landroid/view/View;)LK/G;
    .locals 2

    sget-object v0, LK/D;->a:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, LK/D;->a:Ljava/util/WeakHashMap;

    :cond_0
    sget-object v0, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LK/G;

    if-nez v0, :cond_1

    new-instance v0, LK/G;

    invoke-direct {v0, p0}, LK/G;-><init>(Landroid/view/View;)V

    sget-object v1, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public static b(Landroid/view/View;)Ljava/util/ArrayList;
    .locals 2

    sget v0, Ly/b;->tag_accessibility_actions:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget v1, Ly/b;->tag_accessibility_actions:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public static c(Landroid/view/View;I)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, LK/A;->a(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityLiveRegion()I

    move-result v3

    const/16 v4, 0x20

    if-nez v3, :cond_4

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    if-ne p1, v4, :cond_3

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    invoke-virtual {v1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object p1

    invoke-static {p0}, LK/A;->a(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, p0, p0, p1}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v0, " does not fully implement ViewParent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ViewCompat"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_4
    :goto_1
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    const/16 v4, 0x800

    :goto_2
    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object p1

    invoke-static {p0}, LK/A;->a(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_6
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public static d(Landroid/view/View;I)V
    .locals 2

    invoke-static {p0}, LK/D;->b(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LL/c;

    invoke-virtual {v1}, LL/c;->a()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static e(Landroid/view/View;LL/c;LL/m;)V
    .locals 7

    new-instance v6, LL/c;

    iget v2, p1, LL/c;->b:I

    iget-object v5, p1, LL/c;->c:Ljava/lang/Class;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, LL/c;-><init>(Ljava/lang/Object;ILjava/lang/String;LL/m;Ljava/lang/Class;)V

    invoke-static {p0}, LK/B;->a(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    instance-of p2, p1, LK/a;

    if-eqz p2, :cond_1

    check-cast p1, LK/a;

    iget-object p1, p1, LK/a;->a:LK/b;

    goto :goto_0

    :cond_1
    new-instance p2, LK/b;

    invoke-direct {p2, p1}, LK/b;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    move-object p1, p2

    :goto_0
    if-nez p1, :cond_2

    new-instance p1, LK/b;

    invoke-direct {p1}, LK/b;-><init>()V

    :cond_2
    invoke-static {p0, p1}, LK/D;->f(Landroid/view/View;LK/b;)V

    invoke-virtual {v6}, LL/c;->a()I

    move-result p1

    invoke-static {p0, p1}, LK/D;->d(Landroid/view/View;I)V

    invoke-static {p0}, LK/D;->b(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    invoke-static {p0, p1}, LK/D;->c(Landroid/view/View;I)V

    return-void
.end method

.method public static f(Landroid/view/View;LK/b;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-static {p0}, LK/B;->a(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    instance-of v0, v0, LK/a;

    if-eqz v0, :cond_0

    new-instance p1, LK/b;

    invoke-direct {p1}, LK/b;-><init>()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    iget-object p1, p1, LK/b;->b:LK/a;

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public static g(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 7

    new-instance v6, LK/s;

    sget v1, Ly/b;->tag_accessibility_pane_title:I

    const/16 v4, 0x1c

    const-class v2, Ljava/lang/CharSequence;

    const/16 v3, 0x8

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, LK/s;-><init>(ILjava/lang/Class;III)V

    invoke-virtual {v6, p0, p1}, LK/u;->h(Landroid/view/View;Ljava/lang/Object;)V

    sget-object v0, LK/D;->c:LK/t;

    if-eqz p1, :cond_1

    iget-object p1, v0, LK/t;->d:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_1

    :cond_1
    iget-object p1, v0, LK/t;->d:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    :goto_1
    return-void
.end method

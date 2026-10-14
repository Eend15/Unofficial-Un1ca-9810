.class public final Landroidx/appcompat/app/F;
.super Landroidx/appcompat/app/q;
.source "SourceFile"

# interfaces
.implements Lk/h;
.implements Landroid/view/LayoutInflater$Factory2;


# static fields
.field public static final i0:Ln/j;

.field public static final j0:[I

.field public static final k0:Z


# instance fields
.field public A:Z

.field public B:Landroid/view/ViewGroup;

.field public C:Landroid/widget/TextView;

.field public D:Landroid/view/View;

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:Z

.field public M:[Landroidx/appcompat/app/E;

.field public N:Landroidx/appcompat/app/E;

.field public O:Z

.field public P:Z

.field public Q:Z

.field public R:Z

.field public S:Landroid/content/res/Configuration;

.field public final T:I

.field public U:I

.field public V:I

.field public W:Z

.field public X:Landroidx/appcompat/app/z;

.field public Y:Landroidx/appcompat/app/z;

.field public Z:Z

.field public a0:I

.field public final b0:Landroidx/appcompat/app/r;

.field public c0:Z

.field public d0:Landroid/graphics/Rect;

.field public e0:Landroid/graphics/Rect;

.field public f0:Landroidx/appcompat/app/I;

.field public g0:Landroid/window/OnBackInvokedDispatcher;

.field public h0:Landroid/window/OnBackInvokedCallback;

.field public final k:Ljava/lang/Object;

.field public final l:Landroid/content/Context;

.field public m:Landroid/view/Window;

.field public n:Landroidx/appcompat/app/y;

.field public final o:Ljava/lang/Object;

.field public p:Landroidx/appcompat/app/a;

.field public q:Lj/i;

.field public r:Ljava/lang/CharSequence;

.field public s:Landroidx/appcompat/widget/d0;

.field public t:Landroidx/appcompat/app/s;

.field public u:Landroidx/appcompat/app/s;

.field public v:Lj/b;

.field public w:Landroidx/appcompat/widget/ActionBarContextView;

.field public x:Landroid/widget/PopupWindow;

.field public y:Landroidx/appcompat/app/r;

.field public z:LK/G;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln/j;-><init>(I)V

    sput-object v0, Landroidx/appcompat/app/F;->i0:Ln/j;

    const v0, 0x1010054

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroidx/appcompat/app/F;->j0:[I

    const-string v0, "robolectric"

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Landroidx/appcompat/app/F;->k0:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/l;Ljava/lang/Object;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/app/F;->z:LK/G;

    const/16 v1, -0x64

    iput v1, p0, Landroidx/appcompat/app/F;->T:I

    new-instance v2, Landroidx/appcompat/app/r;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroidx/appcompat/app/r;-><init>(Landroidx/appcompat/app/F;I)V

    iput-object v2, p0, Landroidx/appcompat/app/F;->b0:Landroidx/appcompat/app/r;

    iput-object p1, p0, Landroidx/appcompat/app/F;->l:Landroid/content/Context;

    iput-object p3, p0, Landroidx/appcompat/app/F;->o:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/appcompat/app/F;->k:Ljava/lang/Object;

    instance-of p3, p4, Landroid/app/Dialog;

    if-eqz p3, :cond_2

    :goto_0
    if-eqz p1, :cond_1

    instance-of p3, p1, Landroidx/appcompat/app/k;

    if-eqz p3, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/appcompat/app/k;

    goto :goto_1

    :cond_0
    instance-of p3, p1, Landroid/content/ContextWrapper;

    if-eqz p3, :cond_1

    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/appcompat/app/k;->getDelegate()Landroidx/appcompat/app/q;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/F;

    iget p1, p1, Landroidx/appcompat/app/F;->T:I

    iput p1, p0, Landroidx/appcompat/app/F;->T:I

    :cond_2
    iget p1, p0, Landroidx/appcompat/app/F;->T:I

    if-ne p1, v1, :cond_3

    sget-object p1, Landroidx/appcompat/app/F;->i0:Ln/j;

    iget-object p3, p0, Landroidx/appcompat/app/F;->k:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ln/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, Landroidx/appcompat/app/F;->T:I

    iget-object p3, p0, Landroidx/appcompat/app/F;->k:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ln/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p0, p2}, Landroidx/appcompat/app/F;->n(Landroid/view/Window;)V

    :cond_4
    invoke-static {}, Landroidx/appcompat/widget/v;->d()V

    return-void
.end method

.method public static s(Landroid/content/Context;ILandroid/content/res/Configuration;Z)Landroid/content/res/Configuration;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    if-eqz p3, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    goto :goto_0

    :cond_1
    const/16 p0, 0x20

    goto :goto_0

    :cond_2
    const/16 p0, 0x10

    :goto_0
    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    const/4 p3, 0x0

    iput p3, p1, Landroid/content/res/Configuration;->fontScale:F

    if-eqz p2, :cond_3

    invoke-virtual {p1, p2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    :cond_3
    iget p2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p2, p2, -0x31

    or-int/2addr p0, p2

    iput p0, p1, Landroid/content/res/Configuration;->uiMode:I

    return-object p1
.end method


# virtual methods
.method public final A(I)V
    .locals 3

    iget v0, p0, Landroidx/appcompat/app/F;->a0:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/appcompat/app/F;->a0:I

    iget-boolean p1, p0, Landroidx/appcompat/app/F;->Z:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/app/F;->m:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/app/F;->b0:Landroidx/appcompat/app/r;

    sget-object v2, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p1, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Landroidx/appcompat/app/F;->Z:Z

    :cond_0
    return-void
.end method

.method public final B(Landroid/content/Context;I)I
    .locals 2

    const/16 v0, -0x64

    const/4 v1, -0x1

    if-eq p2, v0, :cond_5

    if-eq p2, v1, :cond_4

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Landroidx/appcompat/app/F;->Y:Landroidx/appcompat/app/z;

    if-nez p2, :cond_0

    new-instance p2, Landroidx/appcompat/app/z;

    invoke-direct {p2, p0, p1}, Landroidx/appcompat/app/z;-><init>(Landroidx/appcompat/app/F;Landroid/content/Context;)V

    iput-object p2, p0, Landroidx/appcompat/app/F;->Y:Landroidx/appcompat/app/z;

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/app/F;->Y:Landroidx/appcompat/app/z;

    invoke-virtual {p0}, Landroidx/appcompat/app/z;->f()I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "uimode"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/UiModeManager;

    invoke-virtual {p2}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p2

    if-nez p2, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/F;->x(Landroid/content/Context;)Landroidx/appcompat/app/B;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/B;->f()I

    move-result p0

    return p0

    :cond_4
    return p2

    :cond_5
    return v1
.end method

.method public final C()Z
    .locals 5

    iget-boolean v0, p0, Landroidx/appcompat/app/F;->O:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/appcompat/app/F;->O:Z

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/F;->y(I)Landroidx/appcompat/app/E;

    move-result-object v2

    iget-boolean v3, v2, Landroidx/appcompat/app/E;->m:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-nez v0, :cond_0

    invoke-virtual {p0, v2, v4}, Landroidx/appcompat/app/F;->r(Landroidx/appcompat/app/E;Z)V

    :cond_0
    return v4

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/F;->v:Lj/b;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lj/b;->a()V

    return v4

    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/app/F;->z()V

    iget-object p0, p0, Landroidx/appcompat/app/F;->p:Landroidx/appcompat/app/a;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroidx/appcompat/app/a;->b()Z

    move-result p0

    if-eqz p0, :cond_3

    return v4

    :cond_3
    return v1
.end method

.method public final D(Landroidx/appcompat/app/E;Landroid/view/KeyEvent;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v1, Landroidx/appcompat/app/E;->m:Z

    if-nez v2, :cond_1b

    iget-boolean v2, v0, Landroidx/appcompat/app/F;->R:Z

    if-eqz v2, :cond_0

    goto/16 :goto_9

    :cond_0
    iget v2, v1, Landroidx/appcompat/app/E;->a:I

    iget-object v3, v0, Landroidx/appcompat/app/F;->l:Landroid/content/Context;

    if-nez v2, :cond_1

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    return-void

    :cond_1
    iget-object v4, v0, Landroidx/appcompat/app/F;->m:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    iget-object v6, v1, Landroidx/appcompat/app/E;->h:Lk/j;

    invoke-interface {v4, v2, v6}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0, v1, v5}, Landroidx/appcompat/app/F;->r(Landroidx/appcompat/app/E;Z)V

    return-void

    :cond_2
    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    if-nez v4, :cond_3

    return-void

    :cond_3
    invoke-virtual/range {p0 .. p2}, Landroidx/appcompat/app/F;->F(Landroidx/appcompat/app/E;Landroid/view/KeyEvent;)Z

    move-result v6

    if-nez v6, :cond_4

    return-void

    :cond_4
    iget-object v6, v1, Landroidx/appcompat/app/E;->e:Landroidx/appcompat/app/C;

    const/4 v7, 0x0

    const/4 v8, -0x2

    if-eqz v6, :cond_6

    iget-boolean v9, v1, Landroidx/appcompat/app/E;->n:Z

    if-eqz v9, :cond_5

    goto :goto_0

    :cond_5
    iget-object v3, v1, Landroidx/appcompat/app/E;->g:Landroid/view/View;

    if-eqz v3, :cond_18

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_18

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_18

    move v10, v6

    goto/16 :goto_7

    :cond_6
    :goto_0
    if-nez v6, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/F;->z()V

    iget-object v6, v0, Landroidx/appcompat/app/F;->p:Landroidx/appcompat/app/a;

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroidx/appcompat/app/a;->e()Landroid/content/Context;

    move-result-object v6

    goto :goto_1

    :cond_7
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_8

    goto :goto_2

    :cond_8
    move-object v3, v6

    :goto_2
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    sget v10, Lf/a;->actionBarPopupTheme:I

    invoke-virtual {v9, v10, v6, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v10, v6, Landroid/util/TypedValue;->resourceId:I

    if-eqz v10, :cond_9

    invoke-virtual {v9, v10, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_9
    sget v10, Lf/a;->panelMenuListTheme:I

    invoke-virtual {v9, v10, v6, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v6, v6, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_a

    invoke-virtual {v9, v6, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_3

    :cond_a
    sget v6, Lf/i;->Theme_AppCompat_CompactMenu:I

    invoke-virtual {v9, v6, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :goto_3
    new-instance v6, Lj/d;

    invoke-direct {v6, v3, v7}, Lj/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v6}, Lj/d;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iput-object v6, v1, Landroidx/appcompat/app/E;->j:Lj/d;

    sget-object v3, Lf/j;->AppCompatTheme:[I

    invoke-virtual {v6, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    sget v6, Lf/j;->AppCompatTheme_panelBackground:I

    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v1, Landroidx/appcompat/app/E;->b:I

    sget v6, Lf/j;->AppCompatTheme_android_windowAnimationStyle:I

    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v1, Landroidx/appcompat/app/E;->d:I

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v3, Landroidx/appcompat/app/C;

    iget-object v6, v1, Landroidx/appcompat/app/E;->j:Lj/d;

    invoke-direct {v3, v0, v6}, Landroidx/appcompat/app/C;-><init>(Landroidx/appcompat/app/F;Lj/d;)V

    iput-object v3, v1, Landroidx/appcompat/app/E;->e:Landroidx/appcompat/app/C;

    const/16 v3, 0x51

    iput v3, v1, Landroidx/appcompat/app/E;->c:I

    goto :goto_4

    :cond_b
    iget-boolean v3, v1, Landroidx/appcompat/app/E;->n:Z

    if-eqz v3, :cond_c

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_c

    iget-object v3, v1, Landroidx/appcompat/app/E;->e:Landroidx/appcompat/app/C;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_c
    :goto_4
    iget-object v3, v1, Landroidx/appcompat/app/E;->g:Landroid/view/View;

    if-eqz v3, :cond_d

    iput-object v3, v1, Landroidx/appcompat/app/E;->f:Landroid/view/View;

    goto :goto_5

    :cond_d
    iget-object v3, v1, Landroidx/appcompat/app/E;->h:Lk/j;

    if-nez v3, :cond_e

    goto/16 :goto_8

    :cond_e
    iget-object v3, v0, Landroidx/appcompat/app/F;->u:Landroidx/appcompat/app/s;

    if-nez v3, :cond_f

    new-instance v3, Landroidx/appcompat/app/s;

    const/4 v6, 0x3

    invoke-direct {v3, v0, v6}, Landroidx/appcompat/app/s;-><init>(Landroidx/appcompat/app/F;I)V

    iput-object v3, v0, Landroidx/appcompat/app/F;->u:Landroidx/appcompat/app/s;

    :cond_f
    iget-object v3, v0, Landroidx/appcompat/app/F;->u:Landroidx/appcompat/app/s;

    iget-object v6, v1, Landroidx/appcompat/app/E;->i:Lk/f;

    if-nez v6, :cond_10

    new-instance v6, Lk/f;

    iget-object v9, v1, Landroidx/appcompat/app/E;->j:Lj/d;

    sget v10, Lf/g;->abc_list_menu_item_layout:I

    invoke-direct {v6, v9, v10}, Lk/f;-><init>(Landroid/content/ContextWrapper;I)V

    iput-object v6, v1, Landroidx/appcompat/app/E;->i:Lk/f;

    iput-object v3, v6, Lk/f;->i:Lk/u;

    iget-object v3, v1, Landroidx/appcompat/app/E;->h:Lk/j;

    iget-object v9, v3, Lk/j;->a:Landroid/content/Context;

    invoke-virtual {v3, v6, v9}, Lk/j;->b(Lk/v;Landroid/content/Context;)V

    :cond_10
    iget-object v3, v1, Landroidx/appcompat/app/E;->i:Lk/f;

    iget-object v6, v1, Landroidx/appcompat/app/E;->e:Landroidx/appcompat/app/C;

    iget-object v9, v3, Lk/f;->g:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-nez v9, :cond_12

    iget-object v9, v3, Lk/f;->e:Landroid/view/LayoutInflater;

    sget v10, Lf/g;->abc_expanded_menu_layout:I

    invoke-virtual {v9, v10, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/ExpandedMenuView;

    iput-object v6, v3, Lk/f;->g:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object v6, v3, Lk/f;->j:Lk/e;

    if-nez v6, :cond_11

    new-instance v6, Lk/e;

    invoke-direct {v6, v3}, Lk/e;-><init>(Lk/f;)V

    iput-object v6, v3, Lk/f;->j:Lk/e;

    :cond_11
    iget-object v6, v3, Lk/f;->g:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object v9, v3, Lk/f;->j:Lk/e;

    invoke-virtual {v6, v9}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v6, v3, Lk/f;->g:Landroidx/appcompat/view/menu/ExpandedMenuView;

    invoke-virtual {v6, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_12
    iget-object v3, v3, Lk/f;->g:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iput-object v3, v1, Landroidx/appcompat/app/E;->f:Landroid/view/View;

    if-eqz v3, :cond_1a

    :goto_5
    iget-object v3, v1, Landroidx/appcompat/app/E;->f:Landroid/view/View;

    if-nez v3, :cond_13

    goto/16 :goto_8

    :cond_13
    iget-object v3, v1, Landroidx/appcompat/app/E;->g:Landroid/view/View;

    if-eqz v3, :cond_14

    goto :goto_6

    :cond_14
    iget-object v3, v1, Landroidx/appcompat/app/E;->i:Lk/f;

    iget-object v6, v3, Lk/f;->j:Lk/e;

    if-nez v6, :cond_15

    new-instance v6, Lk/e;

    invoke-direct {v6, v3}, Lk/e;-><init>(Lk/f;)V

    iput-object v6, v3, Lk/f;->j:Lk/e;

    :cond_15
    iget-object v3, v3, Lk/f;->j:Lk/e;

    invoke-virtual {v3}, Lk/e;->getCount()I

    move-result v3

    if-lez v3, :cond_1a

    :goto_6
    iget-object v3, v1, Landroidx/appcompat/app/E;->f:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_16

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_16
    iget v6, v1, Landroidx/appcompat/app/E;->b:I

    iget-object v9, v1, Landroidx/appcompat/app/E;->e:Landroidx/appcompat/app/C;

    invoke-virtual {v9, v6}, Landroidx/appcompat/app/C;->setBackgroundResource(I)V

    iget-object v6, v1, Landroidx/appcompat/app/E;->f:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v9, v6, Landroid/view/ViewGroup;

    if-eqz v9, :cond_17

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v9, v1, Landroidx/appcompat/app/E;->f:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_17
    iget-object v6, v1, Landroidx/appcompat/app/E;->e:Landroidx/appcompat/app/C;

    iget-object v9, v1, Landroidx/appcompat/app/E;->f:Landroid/view/View;

    invoke-virtual {v6, v9, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v1, Landroidx/appcompat/app/E;->f:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_18

    iget-object v3, v1, Landroidx/appcompat/app/E;->f:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    :cond_18
    move v10, v8

    :goto_7
    iput-boolean v7, v1, Landroidx/appcompat/app/E;->l:Z

    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    const/4 v13, 0x0

    const/16 v14, 0x3ea

    const/4 v11, -0x2

    const/4 v12, 0x0

    const/high16 v15, 0x820000

    const/16 v16, -0x3

    move-object v9, v3

    invoke-direct/range {v9 .. v16}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iget v6, v1, Landroidx/appcompat/app/E;->c:I

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v6, v1, Landroidx/appcompat/app/E;->d:I

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v6, v1, Landroidx/appcompat/app/E;->e:Landroidx/appcompat/app/C;

    invoke-interface {v4, v6, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v5, v1, Landroidx/appcompat/app/E;->m:Z

    if-nez v2, :cond_19

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/F;->I()V

    :cond_19
    return-void

    :cond_1a
    :goto_8
    iput-boolean v5, v1, Landroidx/appcompat/app/E;->n:Z

    :cond_1b
    :goto_9
    return-void
.end method

.method public final E(Landroidx/appcompat/app/E;ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, Landroidx/appcompat/app/E;->k:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p3}, Landroidx/appcompat/app/F;->F(Landroidx/appcompat/app/E;Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    iget-object p0, p1, Landroidx/appcompat/app/E;->h:Lk/j;

    if-eqz p0, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p3, p1}, Lk/j;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v1

    :cond_2
    return v1
.end method

.method public final F(Landroidx/appcompat/app/E;Landroid/view/KeyEvent;)Z
    .locals 11

    iget-boolean v0, p0, Landroidx/appcompat/app/F;->R:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, Landroidx/appcompat/app/E;->k:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/F;->N:Landroidx/appcompat/app/E;

    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/F;->r(Landroidx/appcompat/app/E;Z)V

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/app/F;->m:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    iget v3, p1, Landroidx/appcompat/app/E;->a:I

    if-eqz v0, :cond_3

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p1, Landroidx/appcompat/app/E;->g:Landroid/view/View;

    :cond_3
    const/16 v4, 0x6c

    if-eqz v3, :cond_5

    if-ne v3, v4, :cond_4

    goto :goto_0

    :cond_4
    move v5, v1

    goto :goto_1

    :cond_5
    :goto_0
    move v5, v2

    :goto_1
    if-eqz v5, :cond_6

    iget-object v6, p0, Landroidx/appcompat/app/F;->s:Landroidx/appcompat/widget/d0;

    if-eqz v6, :cond_6

    check-cast v6, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v6}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object v6, v6, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/T0;

    iput-boolean v2, v6, Landroidx/appcompat/widget/T0;->l:Z

    :cond_6
    iget-object v6, p1, Landroidx/appcompat/app/E;->g:Landroid/view/View;

    if-nez v6, :cond_1e

    if-eqz v5, :cond_7

    iget-object v6, p0, Landroidx/appcompat/app/F;->p:Landroidx/appcompat/app/a;

    instance-of v6, v6, Landroidx/appcompat/app/M;

    if-nez v6, :cond_1e

    :cond_7
    iget-object v6, p1, Landroidx/appcompat/app/E;->h:Lk/j;

    const/4 v7, 0x0

    if-eqz v6, :cond_8

    iget-boolean v8, p1, Landroidx/appcompat/app/E;->o:Z

    if-eqz v8, :cond_18

    :cond_8
    if-nez v6, :cond_11

    iget-object v6, p0, Landroidx/appcompat/app/F;->l:Landroid/content/Context;

    if-eqz v3, :cond_9

    if-ne v3, v4, :cond_d

    :cond_9
    iget-object v4, p0, Landroidx/appcompat/app/F;->s:Landroidx/appcompat/widget/d0;

    if-eqz v4, :cond_d

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    sget v9, Lf/a;->actionBarTheme:I

    invoke-virtual {v8, v9, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v9, :cond_a

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v10, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v9, v10, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    sget v10, Lf/a;->actionBarWidgetTheme:I

    invoke-virtual {v9, v10, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_2

    :cond_a
    sget v9, Lf/a;->actionBarWidgetTheme:I

    invoke-virtual {v8, v9, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-object v9, v7

    :goto_2
    iget v10, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v10, :cond_c

    if-nez v9, :cond_b

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :cond_b
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v9, v4, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_c
    if-eqz v9, :cond_d

    new-instance v4, Lj/d;

    invoke-direct {v4, v6, v1}, Lj/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4}, Lj/d;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v6, v4

    :cond_d
    new-instance v4, Lk/j;

    invoke-direct {v4, v6}, Lk/j;-><init>(Landroid/content/Context;)V

    iput-object p0, v4, Lk/j;->e:Lk/h;

    iget-object v6, p1, Landroidx/appcompat/app/E;->h:Lk/j;

    if-ne v4, v6, :cond_e

    goto :goto_3

    :cond_e
    if-eqz v6, :cond_f

    iget-object v8, p1, Landroidx/appcompat/app/E;->i:Lk/f;

    invoke-virtual {v6, v8}, Lk/j;->r(Lk/v;)V

    :cond_f
    iput-object v4, p1, Landroidx/appcompat/app/E;->h:Lk/j;

    iget-object v6, p1, Landroidx/appcompat/app/E;->i:Lk/f;

    if-eqz v6, :cond_10

    iget-object v8, v4, Lk/j;->a:Landroid/content/Context;

    invoke-virtual {v4, v6, v8}, Lk/j;->b(Lk/v;Landroid/content/Context;)V

    :cond_10
    :goto_3
    iget-object v4, p1, Landroidx/appcompat/app/E;->h:Lk/j;

    if-nez v4, :cond_11

    return v1

    :cond_11
    if-eqz v5, :cond_13

    iget-object v4, p0, Landroidx/appcompat/app/F;->s:Landroidx/appcompat/widget/d0;

    if-eqz v4, :cond_13

    iget-object v6, p0, Landroidx/appcompat/app/F;->t:Landroidx/appcompat/app/s;

    if-nez v6, :cond_12

    new-instance v6, Landroidx/appcompat/app/s;

    const/4 v8, 0x2

    invoke-direct {v6, p0, v8}, Landroidx/appcompat/app/s;-><init>(Landroidx/appcompat/app/F;I)V

    iput-object v6, p0, Landroidx/appcompat/app/F;->t:Landroidx/appcompat/app/s;

    :cond_12
    iget-object v6, p1, Landroidx/appcompat/app/E;->h:Lk/j;

    iget-object v8, p0, Landroidx/appcompat/app/F;->t:Landroidx/appcompat/app/s;

    check-cast v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v4, v6, v8}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m(Lk/j;Lk/u;)V

    :cond_13
    iget-object v4, p1, Landroidx/appcompat/app/E;->h:Lk/j;

    invoke-virtual {v4}, Lk/j;->w()V

    iget-object v4, p1, Landroidx/appcompat/app/E;->h:Lk/j;

    invoke-interface {v0, v3, v4}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_17

    iget-object p2, p1, Landroidx/appcompat/app/E;->h:Lk/j;

    if-nez p2, :cond_14

    goto :goto_4

    :cond_14
    if-eqz p2, :cond_15

    iget-object v0, p1, Landroidx/appcompat/app/E;->i:Lk/f;

    invoke-virtual {p2, v0}, Lk/j;->r(Lk/v;)V

    :cond_15
    iput-object v7, p1, Landroidx/appcompat/app/E;->h:Lk/j;

    :goto_4
    if-eqz v5, :cond_16

    iget-object p1, p0, Landroidx/appcompat/app/F;->s:Landroidx/appcompat/widget/d0;

    if-eqz p1, :cond_16

    iget-object p0, p0, Landroidx/appcompat/app/F;->t:Landroidx/appcompat/app/s;

    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p1, v7, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m(Lk/j;Lk/u;)V

    :cond_16
    return v1

    :cond_17
    iput-boolean v1, p1, Landroidx/appcompat/app/E;->o:Z

    :cond_18
    iget-object v3, p1, Landroidx/appcompat/app/E;->h:Lk/j;

    invoke-virtual {v3}, Lk/j;->w()V

    iget-object v3, p1, Landroidx/appcompat/app/E;->p:Landroid/os/Bundle;

    if-eqz v3, :cond_19

    iget-object v4, p1, Landroidx/appcompat/app/E;->h:Lk/j;

    invoke-virtual {v4, v3}, Lk/j;->s(Landroid/os/Bundle;)V

    iput-object v7, p1, Landroidx/appcompat/app/E;->p:Landroid/os/Bundle;

    :cond_19
    iget-object v3, p1, Landroidx/appcompat/app/E;->g:Landroid/view/View;

    iget-object v4, p1, Landroidx/appcompat/app/E;->h:Lk/j;

    invoke-interface {v0, v1, v3, v4}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_1b

    if-eqz v5, :cond_1a

    iget-object p2, p0, Landroidx/appcompat/app/F;->s:Landroidx/appcompat/widget/d0;

    if-eqz p2, :cond_1a

    iget-object p0, p0, Landroidx/appcompat/app/F;->t:Landroidx/appcompat/app/s;

    check-cast p2, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p2, v7, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m(Lk/j;Lk/u;)V

    :cond_1a
    iget-object p0, p1, Landroidx/appcompat/app/E;->h:Lk/j;

    invoke-virtual {p0}, Lk/j;->v()V

    return v1

    :cond_1b
    if-eqz p2, :cond_1c

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    goto :goto_5

    :cond_1c
    const/4 p2, -0x1

    :goto_5
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result p2

    if-eq p2, v2, :cond_1d

    move p2, v2

    goto :goto_6

    :cond_1d
    move p2, v1

    :goto_6
    iget-object v0, p1, Landroidx/appcompat/app/E;->h:Lk/j;

    invoke-virtual {v0, p2}, Lk/j;->setQwertyMode(Z)V

    iget-object p2, p1, Landroidx/appcompat/app/E;->h:Lk/j;

    invoke-virtual {p2}, Lk/j;->v()V

    :cond_1e
    iput-boolean v2, p1, Landroidx/appcompat/app/E;->k:Z

    iput-boolean v1, p1, Landroidx/appcompat/app/E;->l:Z

    iput-object p1, p0, Landroidx/appcompat/app/F;->N:Landroidx/appcompat/app/E;

    return v2
.end method

.method public final G(Lk/j;)V
    .locals 5

    iget-object p1, p0, Landroidx/appcompat/app/F;->s:Landroidx/appcompat/widget/d0;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/T0;

    iget-object p1, p1, Landroidx/appcompat/widget/T0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p1, :cond_4

    iget-boolean p1, p1, Landroidx/appcompat/widget/ActionMenuView;->v:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroidx/appcompat/app/F;->l:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/app/F;->s:Landroidx/appcompat/widget/d0;

    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/T0;

    iget-object p1, p1, Landroidx/appcompat/widget/T0;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p1, :cond_4

    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuView;->w:Landroidx/appcompat/widget/l;

    if-eqz p1, :cond_4

    iget-object v2, p1, Landroidx/appcompat/widget/l;->v:Landroidx/appcompat/widget/h;

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/widget/l;->j()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/app/F;->m:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p1

    iget-object v2, p0, Landroidx/appcompat/app/F;->s:Landroidx/appcompat/widget/d0;

    check-cast v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/T0;

    iget-object v2, v2, Landroidx/appcompat/widget/T0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Landroidx/appcompat/widget/Toolbar;->p()Z

    move-result v2

    const/16 v3, 0x6c

    if-eqz v2, :cond_2

    iget-object v0, p0, Landroidx/appcompat/app/F;->s:Landroidx/appcompat/widget/d0;

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/T0;

    iget-object v0, v0, Landroidx/appcompat/widget/T0;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->w:Landroidx/appcompat/widget/l;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/widget/l;->f()Z

    move-result v0

    :cond_1
    iget-boolean v0, p0, Landroidx/appcompat/app/F;->R:Z

    if-nez v0, :cond_5

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/F;->y(I)Landroidx/appcompat/app/E;

    move-result-object p0

    iget-object p0, p0, Landroidx/appcompat/app/E;->h:Lk/j;

    invoke-interface {p1, v3, p0}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_5

    iget-boolean v2, p0, Landroidx/appcompat/app/F;->R:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Landroidx/appcompat/app/F;->Z:Z

    if-eqz v2, :cond_3

    iget v2, p0, Landroidx/appcompat/app/F;->a0:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/app/F;->m:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Landroidx/appcompat/app/F;->b0:Landroidx/appcompat/app/r;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {v2}, Landroidx/appcompat/app/r;->run()V

    :cond_3
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/F;->y(I)Landroidx/appcompat/app/E;

    move-result-object v0

    iget-object v2, v0, Landroidx/appcompat/app/E;->h:Lk/j;

    if-eqz v2, :cond_5

    iget-boolean v4, v0, Landroidx/appcompat/app/E;->o:Z

    if-nez v4, :cond_5

    iget-object v4, v0, Landroidx/appcompat/app/E;->g:Landroid/view/View;

    invoke-interface {p1, v1, v4, v2}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, v0, Landroidx/appcompat/app/E;->h:Lk/j;

    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    iget-object p0, p0, Landroidx/appcompat/app/F;->s:Landroidx/appcompat/widget/d0;

    check-cast p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/T0;

    iget-object p0, p0, Landroidx/appcompat/widget/T0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->A()Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/F;->y(I)Landroidx/appcompat/app/E;

    move-result-object p1

    iput-boolean v0, p1, Landroidx/appcompat/app/E;->n:Z

    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/app/F;->r(Landroidx/appcompat/app/E;Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/F;->D(Landroidx/appcompat/app/E;Landroid/view/KeyEvent;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final H()V
    .locals 1

    iget-boolean p0, p0, Landroidx/appcompat/app/F;->A:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Window feature must be requested before adding content"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final I()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/app/F;->g0:Landroid/window/OnBackInvokedDispatcher;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/F;->y(I)Landroidx/appcompat/app/E;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/appcompat/app/E;->m:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/F;->v:Lj/b;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    iget-object v0, p0, Landroidx/appcompat/app/F;->h0:Landroid/window/OnBackInvokedCallback;

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/app/F;->g0:Landroid/window/OnBackInvokedDispatcher;

    invoke-static {v0, p0}, Landroidx/appcompat/app/x;->b(Ljava/lang/Object;Landroidx/appcompat/app/F;)Landroid/window/OnBackInvokedCallback;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/app/F;->h0:Landroid/window/OnBackInvokedCallback;

    goto :goto_2

    :cond_3
    if-nez v1, :cond_4

    iget-object v0, p0, Landroidx/appcompat/app/F;->h0:Landroid/window/OnBackInvokedCallback;

    if-eqz v0, :cond_4

    iget-object v1, p0, Landroidx/appcompat/app/F;->g0:Landroid/window/OnBackInvokedDispatcher;

    invoke-static {v1, v0}, Landroidx/appcompat/app/x;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/app/F;->h0:Landroid/window/OnBackInvokedCallback;

    :cond_4
    :goto_2
    return-void
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/F;->l:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object p0

    instance-of p0, p0, Landroidx/appcompat/app/F;

    if-nez p0, :cond_1

    const-string p0, "AppCompatDelegate"

    const-string v0, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/F;->p:Landroidx/appcompat/app/a;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/app/F;->z()V

    iget-object v0, p0, Landroidx/appcompat/app/F;->p:Landroidx/appcompat/app/a;

    invoke-virtual {v0}, Landroidx/appcompat/app/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/F;->A(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final d()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/F;->P:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/F;->m(Z)Z

    invoke-virtual {p0}, Landroidx/appcompat/app/F;->w()V

    iget-object v1, p0, Landroidx/appcompat/app/F;->k:Ljava/lang/Object;

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_2

    :try_start_0
    check-cast v1, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v1, v2}, Lz/b;->c(Landroid/app/Activity;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/appcompat/app/F;->p:Landroidx/appcompat/app/a;

    if-nez v1, :cond_0

    iput-boolean v0, p0, Landroidx/appcompat/app/F;->c0:Z

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/a;->l(Z)V

    :cond_1
    :goto_1
    sget-object v1, Landroidx/appcompat/app/q;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Landroidx/appcompat/app/q;->f(Landroidx/appcompat/app/F;)V

    sget-object v2, Landroidx/appcompat/app/q;->h:Ln/g;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ln/g;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_2
    :goto_2
    new-instance v1, Landroid/content/res/Configuration;

    iget-object v2, p0, Landroidx/appcompat/app/F;->l:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, p0, Landroidx/appcompat/app/F;->S:Landroid/content/res/Configuration;

    iput-boolean v0, p0, Landroidx/appcompat/app/F;->Q:Z

    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/app/F;->k:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/appcompat/app/q;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Landroidx/appcompat/app/q;->f(Landroidx/appcompat/app/F;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    iget-boolean v0, p0, Landroidx/appcompat/app/F;->Z:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/app/F;->m:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/F;->b0:Landroidx/appcompat/app/r;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/F;->R:Z

    iget v0, p0, Landroidx/appcompat/app/F;->T:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Landroidx/appcompat/app/F;->k:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroidx/appcompat/app/F;->i0:Ln/j;

    iget-object v1, p0, Landroidx/appcompat/app/F;->k:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroidx/appcompat/app/F;->T:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ln/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    sget-object v0, Landroidx/appcompat/app/F;->i0:Ln/j;

    iget-object v1, p0, Landroidx/appcompat/app/F;->k:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v0, p0, Landroidx/appcompat/app/F;->p:Landroidx/appcompat/app/a;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/appcompat/app/a;->h()V

    :cond_3
    iget-object v0, p0, Landroidx/appcompat/app/F;->X:Landroidx/appcompat/app/z;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/appcompat/app/B;->c()V

    :cond_4
    iget-object p0, p0, Landroidx/appcompat/app/F;->Y:Landroidx/appcompat/app/z;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroidx/appcompat/app/B;->c()V

    :cond_5
    return-void
.end method

.method public final g(I)Z
    .locals 5

    const/16 v0, 0x6d

    const/16 v1, 0x6c

    const/16 v2, 0x8

    const-string v3, "AppCompatDelegate"

    if-ne p1, v2, :cond_0

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x9

    if-ne p1, v2, :cond_1

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    :cond_1
    :goto_0
    iget-boolean v2, p0, Landroidx/appcompat/app/F;->K:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    if-ne p1, v1, :cond_2

    return v3

    :cond_2
    iget-boolean v2, p0, Landroidx/appcompat/app/F;->G:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-ne p1, v4, :cond_3

    iput-boolean v3, p0, Landroidx/appcompat/app/F;->G:Z

    :cond_3
    if-eq p1, v4, :cond_9

    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    const/4 v2, 0x5

    if-eq p1, v2, :cond_7

    const/16 v2, 0xa

    if-eq p1, v2, :cond_6

    if-eq p1, v1, :cond_5

    if-eq p1, v0, :cond_4

    iget-object p0, p0, Landroidx/appcompat/app/F;->m:Landroid/view/Window;

    invoke-virtual {p0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result p0

    return p0

    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/app/F;->H()V

    iput-boolean v4, p0, Landroidx/appcompat/app/F;->H:Z

    return v4

    :cond_5
    invoke-virtual {p0}, Landroidx/appcompat/app/F;->H()V

    iput-boolean v4, p0, Landroidx/appcompat/app/F;->G:Z

    return v4

    :cond_6
    invoke-virtual {p0}, Landroidx/appcompat/app/F;->H()V

    iput-boolean v4, p0, Landroidx/appcompat/app/F;->I:Z

    return v4

    :cond_7
    invoke-virtual {p0}, Landroidx/appcompat/app/F;->H()V

    iput-boolean v4, p0, Landroidx/appcompat/app/F;->F:Z

    return v4

    :cond_8
    invoke-virtual {p0}, Landroidx/appcompat/app/F;->H()V

    iput-boolean v4, p0, Landroidx/appcompat/app/F;->E:Z

    return v4

    :cond_9
    invoke-virtual {p0}, Landroidx/appcompat/app/F;->H()V

    iput-boolean v4, p0, Landroidx/appcompat/app/F;->K:Z

    return v4
.end method

.method public final h(I)V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/app/F;->v()V

    iget-object v0, p0, Landroidx/appcompat/app/F;->B:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Landroidx/appcompat/app/F;->l:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object p1, p0, Landroidx/appcompat/app/F;->n:Landroidx/appcompat/app/y;

    iget-object p0, p0, Landroidx/appcompat/app/F;->m:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/appcompat/app/y;->a(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final i(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/app/F;->v()V

    iget-object v0, p0, Landroidx/appcompat/app/F;->B:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Landroidx/appcompat/app/F;->n:Landroidx/appcompat/app/y;

    iget-object p0, p0, Landroidx/appcompat/app/F;->m:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/appcompat/app/y;->a(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final j(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/app/F;->v()V

    iget-object v0, p0, Landroidx/appcompat/app/F;->B:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Landroidx/appcompat/app/F;->n:Landroidx/appcompat/app/y;

    iget-object p0, p0, Landroidx/appcompat/app/F;->m:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/appcompat/app/y;->a(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final k(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Landroidx/appcompat/app/F;->r:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroidx/appcompat/app/F;->s:Landroidx/appcompat/widget/d0;

    if-eqz v0, :cond_0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object p0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/T0;

    iget-boolean v0, p0, Landroidx/appcompat/widget/T0;->g:Z

    if-nez v0, :cond_2

    iput-object p1, p0, Landroidx/appcompat/widget/T0;->h:Ljava/lang/CharSequence;

    iget v0, p0, Landroidx/appcompat/widget/T0;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/T0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->y(Ljava/lang/CharSequence;)V

    iget-boolean p0, p0, Landroidx/appcompat/widget/T0;->g:Z

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, LK/D;->g(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/F;->p:Landroidx/appcompat/app/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/a;->n(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/appcompat/app/F;->C:Landroid/widget/TextView;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final l(Lj/a;)Lj/b;
    .locals 8

    const/4 v0, 0x1

    if-eqz p1, :cond_13

    iget-object v1, p0, Landroidx/appcompat/app/F;->v:Lj/b;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lj/b;->a()V

    :cond_0
    new-instance v1, Lw0/c;

    invoke-direct {v1, p0, p1}, Lw0/c;-><init>(Landroidx/appcompat/app/F;Lj/a;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/F;->z()V

    iget-object p1, p0, Landroidx/appcompat/app/F;->p:Landroidx/appcompat/app/a;

    iget-object v2, p0, Landroidx/appcompat/app/F;->o:Ljava/lang/Object;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/a;->o(Lw0/c;)Lj/b;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/F;->v:Lj/b;

    if-eqz p1, :cond_1

    invoke-interface {v2, p1}, Landroidx/appcompat/app/l;->onSupportActionModeStarted(Lj/b;)V

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/app/F;->v:Lj/b;

    if-nez p1, :cond_12

    iget-object p1, p0, Landroidx/appcompat/app/F;->z:LK/G;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, LK/G;->b()V

    :cond_2
    iget-object p1, p0, Landroidx/appcompat/app/F;->v:Lj/b;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lj/b;->a()V

    :cond_3
    iget-boolean p1, p0, Landroidx/appcompat/app/F;->R:Z

    const/4 v3, 0x0

    if-nez p1, :cond_4

    :try_start_0
    invoke-interface {v2, v1}, Landroidx/appcompat/app/l;->onWindowStartingSupportActionMode(Lj/a;)Lj/b;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_4
    move-object p1, v3

    :goto_0
    if-eqz p1, :cond_5

    iput-object p1, p0, Landroidx/appcompat/app/F;->v:Lj/b;

    goto/16 :goto_6

    :cond_5
    iget-object p1, p0, Landroidx/appcompat/app/F;->w:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v4, 0x0

    if-nez p1, :cond_a

    iget-boolean p1, p0, Landroidx/appcompat/app/F;->J:Z

    iget-object v5, p0, Landroidx/appcompat/app/F;->l:Landroid/content/Context;

    if-eqz p1, :cond_7

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    sget v7, Lf/a;->actionBarTheme:I

    invoke-virtual {v6, v7, p1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v7, p1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v7, :cond_6

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v6, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v7, v6, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance v6, Lj/d;

    invoke-direct {v6, v5, v4}, Lj/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v6}, Lj/d;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v5, v6

    :cond_6
    new-instance v6, Landroidx/appcompat/widget/ActionBarContextView;

    invoke-direct {v6, v5, v3}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v6, p0, Landroidx/appcompat/app/F;->w:Landroidx/appcompat/widget/ActionBarContextView;

    new-instance v6, Landroid/widget/PopupWindow;

    sget v7, Lf/a;->actionModePopupWindowStyle:I

    invoke-direct {v6, v5, v3, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v6, p0, Landroidx/appcompat/app/F;->x:Landroid/widget/PopupWindow;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    iget-object v6, p0, Landroidx/appcompat/app/F;->x:Landroid/widget/PopupWindow;

    iget-object v7, p0, Landroidx/appcompat/app/F;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v6, p0, Landroidx/appcompat/app/F;->x:Landroid/widget/PopupWindow;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    sget v7, Lf/a;->actionBarSize:I

    invoke-virtual {v6, v7, p1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, p1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p1

    iget-object v5, p0, Landroidx/appcompat/app/F;->w:Landroidx/appcompat/widget/ActionBarContextView;

    iput p1, v5, Landroidx/appcompat/widget/ActionBarContextView;->h:I

    iget-object p1, p0, Landroidx/appcompat/app/F;->x:Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-virtual {p1, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    new-instance p1, Landroidx/appcompat/app/r;

    invoke-direct {p1, p0, v0}, Landroidx/appcompat/app/r;-><init>(Landroidx/appcompat/app/F;I)V

    iput-object p1, p0, Landroidx/appcompat/app/F;->y:Landroidx/appcompat/app/r;

    goto :goto_3

    :cond_7
    iget-object p1, p0, Landroidx/appcompat/app/F;->B:Landroid/view/ViewGroup;

    sget v6, Lf/f;->action_mode_bar_stub:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ViewStubCompat;

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Landroidx/appcompat/app/F;->z()V

    iget-object v6, p0, Landroidx/appcompat/app/F;->p:Landroidx/appcompat/app/a;

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Landroidx/appcompat/app/a;->e()Landroid/content/Context;

    move-result-object v6

    goto :goto_1

    :cond_8
    move-object v6, v3

    :goto_1
    if-nez v6, :cond_9

    goto :goto_2

    :cond_9
    move-object v5, v6

    :goto_2
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iput-object v5, p1, Landroidx/appcompat/widget/ViewStubCompat;->g:Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ViewStubCompat;->a()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object p1, p0, Landroidx/appcompat/app/F;->w:Landroidx/appcompat/widget/ActionBarContextView;

    :cond_a
    :goto_3
    iget-object p1, p0, Landroidx/appcompat/app/F;->w:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz p1, :cond_10

    iget-object p1, p0, Landroidx/appcompat/app/F;->z:LK/G;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, LK/G;->b()V

    :cond_b
    iget-object p1, p0, Landroidx/appcompat/app/F;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->e()V

    new-instance p1, Lj/e;

    iget-object v5, p0, Landroidx/appcompat/app/F;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Landroidx/appcompat/app/F;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object v5, p1, Lj/e;->f:Landroid/content/Context;

    iput-object v6, p1, Lj/e;->g:Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v1, p1, Lj/e;->h:Lw0/c;

    new-instance v5, Lk/j;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lk/j;-><init>(Landroid/content/Context;)V

    iput v0, v5, Lk/j;->l:I

    iput-object v5, p1, Lj/e;->k:Lk/j;

    iput-object p1, v5, Lk/j;->e:Lk/h;

    iget-object v1, v1, Lw0/c;->e:Ljava/lang/Object;

    check-cast v1, Lj/a;

    invoke-interface {v1, p1, v5}, Lj/a;->d(Lj/b;Lk/j;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p1}, Lj/e;->g()V

    iget-object v1, p0, Landroidx/appcompat/app/F;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/ActionBarContextView;->c(Lj/b;)V

    iput-object p1, p0, Landroidx/appcompat/app/F;->v:Lj/b;

    iget-boolean p1, p0, Landroidx/appcompat/app/F;->A:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Landroidx/appcompat/app/F;->B:Landroid/view/ViewGroup;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/view/View;->isLaidOut()Z

    move-result p1

    if-eqz p1, :cond_c

    move p1, v0

    goto :goto_4

    :cond_c
    move p1, v4

    :goto_4
    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_d

    iget-object p1, p0, Landroidx/appcompat/app/F;->w:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Landroidx/appcompat/app/F;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {p1}, LK/D;->a(Landroid/view/View;)LK/G;

    move-result-object p1

    invoke-virtual {p1, v1}, LK/G;->a(F)V

    iput-object p1, p0, Landroidx/appcompat/app/F;->z:LK/G;

    new-instance v1, Landroidx/appcompat/app/t;

    invoke-direct {v1, v0, p0}, Landroidx/appcompat/app/t;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, LK/G;->d(LK/H;)V

    goto :goto_5

    :cond_d
    iget-object p1, p0, Landroidx/appcompat/app/F;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Landroidx/appcompat/app/F;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v4}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    iget-object p1, p0, Landroidx/appcompat/app/F;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_e

    iget-object p1, p0, Landroidx/appcompat/app/F;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    sget-object v0, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, LK/v;->c(Landroid/view/View;)V

    :cond_e
    :goto_5
    iget-object p1, p0, Landroidx/appcompat/app/F;->x:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_10

    iget-object p1, p0, Landroidx/appcompat/app/F;->m:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/app/F;->y:Landroidx/appcompat/app/r;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    :cond_f
    iput-object v3, p0, Landroidx/appcompat/app/F;->v:Lj/b;

    :cond_10
    :goto_6
    iget-object p1, p0, Landroidx/appcompat/app/F;->v:Lj/b;

    if-eqz p1, :cond_11

    invoke-interface {v2, p1}, Landroidx/appcompat/app/l;->onSupportActionModeStarted(Lj/b;)V

    :cond_11
    invoke-virtual {p0}, Landroidx/appcompat/app/F;->I()V

    iget-object p1, p0, Landroidx/appcompat/app/F;->v:Lj/b;

    iput-object p1, p0, Landroidx/appcompat/app/F;->v:Lj/b;

    :cond_12
    invoke-virtual {p0}, Landroidx/appcompat/app/F;->I()V

    iget-object p0, p0, Landroidx/appcompat/app/F;->v:Lj/b;

    return-object p0

    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ActionMode callback can not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final m(Z)Z
    .locals 12

    iget-boolean v0, p0, Landroidx/appcompat/app/F;->R:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Landroidx/appcompat/app/F;->T:I

    const/16 v2, -0x64

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    sget v0, Landroidx/appcompat/app/q;->e:I

    :goto_0
    iget-object v2, p0, Landroidx/appcompat/app/F;->l:Landroid/content/Context;

    invoke-virtual {p0, v2, v0}, Landroidx/appcompat/app/F;->B(Landroid/content/Context;I)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v1}, Landroidx/appcompat/app/F;->s(Landroid/content/Context;ILandroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object v5

    iget-boolean v6, p0, Landroidx/appcompat/app/F;->W:Z

    iget-object v7, p0, Landroidx/appcompat/app/F;->k:Ljava/lang/Object;

    const/4 v8, 0x1

    if-nez v6, :cond_3

    instance-of v6, v7, Landroid/app/Activity;

    if-eqz v6, :cond_3

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    if-nez v6, :cond_2

    move v6, v1

    goto :goto_2

    :cond_2
    :try_start_0
    new-instance v9, Landroid/content/ComponentName;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-direct {v9, v2, v10}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v10, 0x100c0000

    invoke-virtual {v6, v9, v10}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    if-eqz v6, :cond_3

    iget v6, v6, Landroid/content/pm/ActivityInfo;->configChanges:I

    iput v6, p0, Landroidx/appcompat/app/F;->V:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    const-string v9, "AppCompatDelegate"

    const-string v10, "Exception while getting ActivityInfo"

    invoke-static {v9, v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput v1, p0, Landroidx/appcompat/app/F;->V:I

    :cond_3
    :goto_1
    iput-boolean v8, p0, Landroidx/appcompat/app/F;->W:Z

    iget v6, p0, Landroidx/appcompat/app/F;->V:I

    :goto_2
    iget-object v9, p0, Landroidx/appcompat/app/F;->S:Landroid/content/res/Configuration;

    if-nez v9, :cond_4

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    :cond_4
    iget v10, v9, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v10, v10, 0x30

    iget v5, v5, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v5, v5, 0x30

    invoke-static {v9}, Landroidx/appcompat/app/w;->b(Landroid/content/res/Configuration;)LG/e;

    const/16 v9, 0x200

    if-eq v10, v5, :cond_5

    move v10, v9

    goto :goto_3

    :cond_5
    move v10, v1

    :goto_3
    not-int v11, v6

    and-int/2addr v11, v10

    if-eqz v11, :cond_7

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Landroidx/appcompat/app/F;->P:Z

    if-eqz p1, :cond_7

    sget-boolean p1, Landroidx/appcompat/app/F;->k0:Z

    if-nez p1, :cond_6

    iget-boolean p1, p0, Landroidx/appcompat/app/F;->Q:Z

    if-eqz p1, :cond_7

    :cond_6
    instance-of p1, v7, Landroid/app/Activity;

    if-eqz p1, :cond_7

    move-object p1, v7

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual {p1}, Landroid/app/Activity;->recreate()V

    move p1, v8

    goto :goto_4

    :cond_7
    move p1, v1

    :goto_4
    if-nez p1, :cond_b

    if-eqz v10, :cond_b

    and-int p1, v10, v6

    if-ne p1, v10, :cond_8

    move v1, v8

    :cond_8
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-instance v6, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    invoke-direct {v6, v11}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v11, v11, -0x31

    or-int/2addr v5, v11

    iput v5, v6, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p1, v6, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    iget p1, p0, Landroidx/appcompat/app/F;->U:I

    if-eqz p1, :cond_9

    invoke-virtual {v2, p1}, Landroid/content/Context;->setTheme(I)V

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    iget v4, p0, Landroidx/appcompat/app/F;->U:I

    invoke-virtual {p1, v4, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_9
    if-eqz v1, :cond_c

    instance-of p1, v7, Landroid/app/Activity;

    if-eqz p1, :cond_c

    move-object p1, v7

    check-cast p1, Landroid/app/Activity;

    instance-of v1, p1, Landroidx/lifecycle/t;

    if-eqz v1, :cond_a

    move-object v1, p1

    check-cast v1, Landroidx/lifecycle/t;

    invoke-interface {v1}, Landroidx/lifecycle/t;->getLifecycle()Landroidx/lifecycle/o;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/v;

    iget-object v1, v1, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    sget-object v4, Landroidx/lifecycle/n;->f:Landroidx/lifecycle/n;

    invoke-virtual {v1, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_c

    invoke-virtual {p1, v6}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_5

    :cond_a
    iget-boolean v1, p0, Landroidx/appcompat/app/F;->Q:Z

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Landroidx/appcompat/app/F;->R:Z

    if-nez v1, :cond_c

    invoke-virtual {p1, v6}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_5

    :cond_b
    move v8, p1

    :cond_c
    :goto_5
    if-eqz v8, :cond_d

    instance-of p1, v7, Landroidx/appcompat/app/k;

    if-eqz p1, :cond_d

    and-int/lit16 p1, v10, 0x200

    if-eqz p1, :cond_d

    check-cast v7, Landroidx/appcompat/app/k;

    invoke-virtual {v7, v3}, Landroidx/appcompat/app/k;->onNightModeChanged(I)V

    :cond_d
    if-nez v0, :cond_e

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/F;->x(Landroid/content/Context;)Landroidx/appcompat/app/B;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/B;->i()V

    goto :goto_6

    :cond_e
    iget-object p1, p0, Landroidx/appcompat/app/F;->X:Landroidx/appcompat/app/z;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroidx/appcompat/app/B;->c()V

    :cond_f
    :goto_6
    const/4 p1, 0x3

    if-ne v0, p1, :cond_11

    iget-object p1, p0, Landroidx/appcompat/app/F;->Y:Landroidx/appcompat/app/z;

    if-nez p1, :cond_10

    new-instance p1, Landroidx/appcompat/app/z;

    invoke-direct {p1, p0, v2}, Landroidx/appcompat/app/z;-><init>(Landroidx/appcompat/app/F;Landroid/content/Context;)V

    iput-object p1, p0, Landroidx/appcompat/app/F;->Y:Landroidx/appcompat/app/z;

    :cond_10
    iget-object p0, p0, Landroidx/appcompat/app/F;->Y:Landroidx/appcompat/app/z;

    invoke-virtual {p0}, Landroidx/appcompat/app/B;->i()V

    goto :goto_7

    :cond_11
    iget-object p0, p0, Landroidx/appcompat/app/F;->Y:Landroidx/appcompat/app/z;

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Landroidx/appcompat/app/B;->c()V

    :cond_12
    :goto_7
    return v8
.end method

.method public final n(Landroid/view/Window;)V
    .locals 7

    iget-object v0, p0, Landroidx/appcompat/app/F;->m:Landroid/view/Window;

    const-string v1, "AppCompat has already installed itself into the Window"

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    instance-of v2, v0, Landroidx/appcompat/app/y;

    if-nez v2, :cond_5

    new-instance v1, Landroidx/appcompat/app/y;

    invoke-direct {v1, p0, v0}, Landroidx/appcompat/app/y;-><init>(Landroidx/appcompat/app/F;Landroid/view/Window$Callback;)V

    iput-object v1, p0, Landroidx/appcompat/app/F;->n:Landroidx/appcompat/app/y;

    invoke-virtual {p1, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    sget-object v0, Landroidx/appcompat/app/F;->j0:[I

    iget-object v1, p0, Landroidx/appcompat/app/F;->l:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Landroidx/appcompat/widget/v;->a()Landroidx/appcompat/widget/v;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v5, v4, Landroidx/appcompat/widget/v;->a:Landroidx/appcompat/widget/C0;

    const/4 v6, 0x1

    invoke-virtual {v5, v1, v3, v6}, Landroidx/appcompat/widget/C0;->d(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iput-object p1, p0, Landroidx/appcompat/app/F;->m:Landroid/view/Window;

    iget-object p1, p0, Landroidx/appcompat/app/F;->g0:Landroid/window/OnBackInvokedDispatcher;

    if-nez p1, :cond_4

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/appcompat/app/F;->h0:Landroid/window/OnBackInvokedCallback;

    if-eqz v0, :cond_2

    invoke-static {p1, v0}, Landroidx/appcompat/app/x;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Landroidx/appcompat/app/F;->h0:Landroid/window/OnBackInvokedCallback;

    :cond_2
    iget-object p1, p0, Landroidx/appcompat/app/F;->k:Ljava/lang/Object;

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_3

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroidx/appcompat/app/x;->a(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/F;->g0:Landroid/window/OnBackInvokedDispatcher;

    goto :goto_1

    :cond_3
    iput-object v2, p0, Landroidx/appcompat/app/F;->g0:Landroid/window/OnBackInvokedDispatcher;

    :goto_1
    invoke-virtual {p0}, Landroidx/appcompat/app/F;->I()V

    :cond_4
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final o(ILandroidx/appcompat/app/E;Lk/j;)V
    .locals 2

    if-nez p3, :cond_1

    if-nez p2, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/F;->M:[Landroidx/appcompat/app/E;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object p2, v0, p1

    :cond_0
    if-eqz p2, :cond_1

    iget-object p3, p2, Landroidx/appcompat/app/E;->h:Lk/j;

    :cond_1
    if-eqz p2, :cond_2

    iget-boolean p2, p2, Landroidx/appcompat/app/E;->m:Z

    if-nez p2, :cond_2

    return-void

    :cond_2
    iget-boolean p2, p0, Landroidx/appcompat/app/F;->R:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Landroidx/appcompat/app/F;->n:Landroidx/appcompat/app/y;

    iget-object p0, p0, Landroidx/appcompat/app/F;->m:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p2, Landroidx/appcompat/app/y;->h:Z

    invoke-interface {p0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p2, Landroidx/appcompat/app/y;->h:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    iput-boolean v1, p2, Landroidx/appcompat/app/y;->h:Z

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 8

    const/4 p1, 0x3

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1
    iget-object v3, p0, Landroidx/appcompat/app/F;->f0:Landroidx/appcompat/app/I;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 2
    sget-object v3, Lf/j;->AppCompatTheme:[I

    iget-object v5, p0, Landroidx/appcompat/app/F;->l:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 3
    sget v6, Lf/j;->AppCompatTheme_viewInflaterClass:I

    .line 4
    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 5
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v6, :cond_0

    .line 6
    new-instance v3, Landroidx/appcompat/app/I;

    invoke-direct {v3}, Landroidx/appcompat/app/I;-><init>()V

    iput-object v3, p0, Landroidx/appcompat/app/F;->f0:Landroidx/appcompat/app/I;

    goto :goto_0

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 8
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 9
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/app/I;

    iput-object v3, p0, Landroidx/appcompat/app/F;->f0:Landroidx/appcompat/app/I;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 10
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Failed to instantiate custom view inflater "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ". Falling back to default."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AppCompatDelegate"

    invoke-static {v6, v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    new-instance v3, Landroidx/appcompat/app/I;

    invoke-direct {v3}, Landroidx/appcompat/app/I;-><init>()V

    iput-object v3, p0, Landroidx/appcompat/app/F;->f0:Landroidx/appcompat/app/I;

    .line 12
    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/appcompat/app/F;->f0:Landroidx/appcompat/app/I;

    .line 13
    sget v3, Landroidx/appcompat/widget/V0;->a:I

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    sget-object v3, Lf/j;->View:[I

    invoke-virtual {p3, p4, v3, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 16
    sget v5, Lf/j;->View_theme:I

    invoke-virtual {v3, v5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-eqz v5, :cond_2

    .line 17
    const-string v6, "AppCompatViewInflater"

    const-string v7, "app:theme is now deprecated. Please move to using android:theme instead."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :cond_2
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v5, :cond_4

    .line 19
    instance-of v3, p3, Lj/d;

    if-eqz v3, :cond_3

    move-object v3, p3

    check-cast v3, Lj/d;

    .line 20
    iget v3, v3, Lj/d;->a:I

    if-eq v3, v5, :cond_4

    .line 21
    :cond_3
    new-instance v3, Lj/d;

    invoke-direct {v3, p3, v5}, Lj/d;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_4
    move-object v3, p3

    .line 22
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_2
    move v5, v0

    goto/16 :goto_3

    :sswitch_0
    const-string v5, "Button"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    const/16 v5, 0xd

    goto/16 :goto_3

    :sswitch_1
    const-string v5, "EditText"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_2

    :cond_6
    const/16 v5, 0xc

    goto/16 :goto_3

    :sswitch_2
    const-string v5, "CheckBox"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_2

    :cond_7
    const/16 v5, 0xb

    goto/16 :goto_3

    :sswitch_3
    const-string v5, "AutoCompleteTextView"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_2

    :cond_8
    const/16 v5, 0xa

    goto/16 :goto_3

    :sswitch_4
    const-string v5, "ImageView"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_2

    :cond_9
    const/16 v5, 0x9

    goto/16 :goto_3

    :sswitch_5
    const-string v5, "ToggleButton"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_2

    :cond_a
    const/16 v5, 0x8

    goto/16 :goto_3

    :sswitch_6
    const-string v5, "RadioButton"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_2

    :cond_b
    const/4 v5, 0x7

    goto :goto_3

    :sswitch_7
    const-string v5, "Spinner"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_2

    :cond_c
    const/4 v5, 0x6

    goto :goto_3

    :sswitch_8
    const-string v5, "SeekBar"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_2

    :cond_d
    const/4 v5, 0x5

    goto :goto_3

    :sswitch_9
    const-string v5, "ImageButton"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    goto :goto_2

    :cond_e
    const/4 v5, 0x4

    goto :goto_3

    :sswitch_a
    const-string v5, "TextView"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    goto/16 :goto_2

    :cond_f
    move v5, p1

    goto :goto_3

    :sswitch_b
    const-string v5, "MultiAutoCompleteTextView"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    goto/16 :goto_2

    :cond_10
    const/4 v5, 0x2

    goto :goto_3

    :sswitch_c
    const-string v5, "CheckedTextView"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    goto/16 :goto_2

    :cond_11
    move v5, v2

    goto :goto_3

    :sswitch_d
    const-string v5, "RatingBar"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    goto/16 :goto_2

    :cond_12
    move v5, v1

    :goto_3
    packed-switch v5, :pswitch_data_0

    move-object v5, v4

    goto :goto_4

    .line 23
    :pswitch_0
    invoke-virtual {p0, v3, p4}, Landroidx/appcompat/app/I;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/r;

    move-result-object v5

    goto :goto_4

    .line 24
    :pswitch_1
    new-instance v5, Landroidx/appcompat/widget/w;

    .line 25
    sget v6, Lf/a;->editTextStyle:I

    invoke-direct {v5, v3, p4, v6}, Landroidx/appcompat/widget/w;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto :goto_4

    .line 26
    :pswitch_2
    invoke-virtual {p0, v3, p4}, Landroidx/appcompat/app/I;->c(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/s;

    move-result-object v5

    goto :goto_4

    .line 27
    :pswitch_3
    invoke-virtual {p0, v3, p4}, Landroidx/appcompat/app/I;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/p;

    move-result-object v5

    goto :goto_4

    .line 28
    :pswitch_4
    new-instance v5, Landroidx/appcompat/widget/y;

    .line 29
    invoke-direct {v5, v3, p4, v1}, Landroidx/appcompat/widget/y;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto :goto_4

    .line 30
    :pswitch_5
    new-instance v5, Landroidx/appcompat/widget/c0;

    invoke-direct {v5, v3, p4}, Landroidx/appcompat/widget/c0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 31
    :pswitch_6
    invoke-virtual {p0, v3, p4}, Landroidx/appcompat/app/I;->d(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/C;

    move-result-object v5

    goto :goto_4

    .line 32
    :pswitch_7
    new-instance v5, Landroidx/appcompat/widget/P;

    invoke-direct {v5, v3, p4}, Landroidx/appcompat/widget/P;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 33
    :pswitch_8
    new-instance v5, Landroidx/appcompat/widget/E;

    invoke-direct {v5, v3, p4}, Landroidx/appcompat/widget/E;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 34
    :pswitch_9
    new-instance v5, Landroidx/appcompat/widget/x;

    .line 35
    sget v6, Lf/a;->imageButtonStyle:I

    invoke-direct {v5, v3, p4, v6}, Landroidx/appcompat/widget/x;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto :goto_4

    .line 36
    :pswitch_a
    invoke-virtual {p0, v3, p4}, Landroidx/appcompat/app/I;->e(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/X;

    move-result-object v5

    goto :goto_4

    .line 37
    :pswitch_b
    new-instance v5, Landroidx/appcompat/widget/z;

    invoke-direct {v5, v3, p4}, Landroidx/appcompat/widget/z;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 38
    :pswitch_c
    new-instance v5, Landroidx/appcompat/widget/t;

    invoke-direct {v5, v3, p4}, Landroidx/appcompat/widget/t;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 39
    :pswitch_d
    new-instance v5, Landroidx/appcompat/widget/D;

    invoke-direct {v5, v3, p4}, Landroidx/appcompat/widget/D;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :goto_4
    if-nez v5, :cond_17

    if-eq p3, v3, :cond_17

    .line 40
    iget-object p3, p0, Landroidx/appcompat/app/I;->a:[Ljava/lang/Object;

    const-string v5, "view"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 41
    const-string p2, "class"

    invoke-interface {p4, v4, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 42
    :cond_13
    :try_start_1
    aput-object v3, p3, v1

    .line 43
    aput-object p4, p3, v2

    const/16 v5, 0x2e

    .line 44
    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v0, v5, :cond_16

    move v0, v1

    .line 45
    :goto_5
    sget-object v5, Landroidx/appcompat/app/I;->d:[Ljava/lang/String;

    if-ge v0, p1, :cond_15

    .line 46
    aget-object v5, v5, v0

    invoke-virtual {p0, v3, p2, v5}, Landroidx/appcompat/app/I;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_14

    .line 47
    aput-object v4, p3, v1

    .line 48
    aput-object v4, p3, v2

    move-object v4, v5

    goto :goto_7

    :cond_14
    add-int/2addr v0, v2

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_6

    .line 49
    :cond_15
    aput-object v4, p3, v1

    .line 50
    aput-object v4, p3, v2

    goto :goto_7

    .line 51
    :cond_16
    :try_start_2
    invoke-virtual {p0, v3, p2, v4}, Landroidx/appcompat/app/I;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 52
    aput-object v4, p3, v1

    .line 53
    aput-object v4, p3, v2

    move-object v4, p0

    goto :goto_7

    .line 54
    :goto_6
    aput-object v4, p3, v1

    .line 55
    aput-object v4, p3, v2

    .line 56
    throw p0

    .line 57
    :catch_0
    aput-object v4, p3, v1

    .line 58
    aput-object v4, p3, v2

    :goto_7
    move-object v5, v4

    :cond_17
    if-eqz v5, :cond_1a

    .line 59
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 60
    instance-of p1, p0, Landroid/content/ContextWrapper;

    if-eqz p1, :cond_1a

    invoke-virtual {v5}, Landroid/view/View;->hasOnClickListeners()Z

    move-result p1

    if-nez p1, :cond_18

    goto :goto_8

    .line 61
    :cond_18
    sget-object p1, Landroidx/appcompat/app/I;->c:[I

    invoke-virtual {p0, p4, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 62
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 63
    new-instance p2, Landroidx/appcompat/app/H;

    invoke-direct {p2, v5, p1}, Landroidx/appcompat/app/H;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    :cond_19
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1a
    :goto_8
    return-object v5

    :sswitch_data_0
    .sparse-switch
        -0x7404ceea -> :sswitch_d
        -0x56c015e7 -> :sswitch_c
        -0x503aa7ad -> :sswitch_b
        -0x37f7066e -> :sswitch_a
        -0x37e04bb3 -> :sswitch_9
        -0x274065a5 -> :sswitch_8
        -0x1440b607 -> :sswitch_7
        0x2e46a6ed -> :sswitch_6
        0x2fa453c6 -> :sswitch_5
        0x431b5280 -> :sswitch_4
        0x5445f9ba -> :sswitch_3
        0x5f7507c3 -> :sswitch_2
        0x63577677 -> :sswitch_1
        0x77471352 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/appcompat/app/F;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final p(Lk/j;)V
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/app/F;->L:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/F;->L:Z

    iget-object v0, p0, Landroidx/appcompat/app/F;->s:Landroidx/appcompat/widget/d0;

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/T0;

    iget-object v0, v0, Landroidx/appcompat/widget/T0;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->w:Landroidx/appcompat/widget/l;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/widget/l;->f()Z

    iget-object v0, v0, Landroidx/appcompat/widget/l;->u:Landroidx/appcompat/widget/f;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lk/t;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lk/t;->i:Lk/r;

    invoke-interface {v0}, Lk/z;->dismiss()V

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/F;->m:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Landroidx/appcompat/app/F;->R:Z

    if-nez v1, :cond_2

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/app/F;->L:Z

    return-void
.end method

.method public final q(Lk/j;Landroid/view/MenuItem;)Z
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/app/F;->m:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Landroidx/appcompat/app/F;->R:Z

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lk/j;->k()Lk/j;

    move-result-object p1

    iget-object p0, p0, Landroidx/appcompat/app/F;->M:[Landroidx/appcompat/app/E;

    if-eqz p0, :cond_0

    array-length v2, p0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    if-eqz v4, :cond_1

    iget-object v5, v4, Landroidx/appcompat/app/E;->h:Lk/j;

    if-ne v5, p1, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_3

    iget p0, v4, Landroidx/appcompat/app/E;->a:I

    invoke-interface {v0, p0, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method public final r(Landroidx/appcompat/app/E;Z)V
    .locals 3

    if-eqz p2, :cond_0

    iget v0, p1, Landroidx/appcompat/app/E;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/F;->s:Landroidx/appcompat/widget/d0;

    if-eqz v0, :cond_0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/T0;

    iget-object v0, v0, Landroidx/appcompat/widget/T0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroidx/appcompat/app/E;->h:Lk/j;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/F;->p(Lk/j;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/F;->l:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v2, p1, Landroidx/appcompat/app/E;->m:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroidx/appcompat/app/E;->e:Landroidx/appcompat/app/C;

    if-eqz v2, :cond_1

    invoke-interface {v0, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    if-eqz p2, :cond_1

    iget p2, p1, Landroidx/appcompat/app/E;->a:I

    invoke-virtual {p0, p2, p1, v1}, Landroidx/appcompat/app/F;->o(ILandroidx/appcompat/app/E;Lk/j;)V

    :cond_1
    const/4 p2, 0x0

    iput-boolean p2, p1, Landroidx/appcompat/app/E;->k:Z

    iput-boolean p2, p1, Landroidx/appcompat/app/E;->l:Z

    iput-boolean p2, p1, Landroidx/appcompat/app/E;->m:Z

    iput-object v1, p1, Landroidx/appcompat/app/E;->f:Landroid/view/View;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroidx/appcompat/app/E;->n:Z

    iget-object p2, p0, Landroidx/appcompat/app/F;->N:Landroidx/appcompat/app/E;

    if-ne p2, p1, :cond_2

    iput-object v1, p0, Landroidx/appcompat/app/F;->N:Landroidx/appcompat/app/E;

    :cond_2
    iget p1, p1, Landroidx/appcompat/app/E;->a:I

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroidx/appcompat/app/F;->I()V

    :cond_3
    return-void
.end method

.method public final t(Landroid/view/KeyEvent;)Z
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/app/F;->k:Ljava/lang/Object;

    instance-of v1, v0, LK/f;

    if-nez v1, :cond_0

    instance-of v0, v0, Landroidx/appcompat/app/h;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/F;->m:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, LK/D;->a:Ljava/util/WeakHashMap;

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x52

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Landroidx/appcompat/app/F;->n:Landroidx/appcompat/app/y;

    iget-object v4, p0, Landroidx/appcompat/app/F;->m:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iput-boolean v1, v0, Landroidx/appcompat/app/y;->g:Z

    invoke-interface {v4, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v2, v0, Landroidx/appcompat/app/y;->g:Z

    if-eqz v4, :cond_2

    return v1

    :catchall_0
    move-exception p0

    iput-boolean v2, v0, Landroidx/appcompat/app/y;->g:Z

    throw p0

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x4

    if-nez v4, :cond_7

    if-eq v0, v5, :cond_4

    if-eq v0, v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/F;->y(I)Landroidx/appcompat/app/E;

    move-result-object v0

    iget-boolean v2, v0, Landroidx/appcompat/app/E;->m:Z

    if-nez v2, :cond_12

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/app/F;->F(Landroidx/appcompat/app/E;Landroid/view/KeyEvent;)Z

    goto/16 :goto_6

    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroidx/appcompat/app/F;->O:Z

    :cond_6
    :goto_1
    move v1, v2

    goto/16 :goto_6

    :cond_7
    if-eq v0, v5, :cond_11

    if-eq v0, v3, :cond_8

    goto :goto_1

    :cond_8
    iget-object v0, p0, Landroidx/appcompat/app/F;->v:Lj/b;

    if-eqz v0, :cond_9

    goto/16 :goto_6

    :cond_9
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/F;->y(I)Landroidx/appcompat/app/E;

    move-result-object v0

    iget-object v3, p0, Landroidx/appcompat/app/F;->s:Landroidx/appcompat/widget/d0;

    iget-object v4, p0, Landroidx/appcompat/app/F;->l:Landroid/content/Context;

    if-eqz v3, :cond_b

    check-cast v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/T0;

    iget-object v3, v3, Landroidx/appcompat/widget/T0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_b

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v3, :cond_b

    iget-boolean v3, v3, Landroidx/appcompat/widget/ActionMenuView;->v:Z

    if-eqz v3, :cond_b

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Landroidx/appcompat/app/F;->s:Landroidx/appcompat/widget/d0;

    check-cast v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/T0;

    iget-object v3, v3, Landroidx/appcompat/widget/T0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->p()Z

    move-result v3

    if-nez v3, :cond_a

    iget-boolean v3, p0, Landroidx/appcompat/app/F;->R:Z

    if-nez v3, :cond_e

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/app/F;->F(Landroidx/appcompat/app/E;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p0, p0, Landroidx/appcompat/app/F;->s:Landroidx/appcompat/widget/d0;

    check-cast p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/T0;

    iget-object p0, p0, Landroidx/appcompat/widget/T0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->A()Z

    move-result p0

    goto :goto_5

    :cond_a
    iget-object p0, p0, Landroidx/appcompat/app/F;->s:Landroidx/appcompat/widget/d0;

    check-cast p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/T0;

    iget-object p0, p0, Landroidx/appcompat/widget/T0;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p0, :cond_e

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->w:Landroidx/appcompat/widget/l;

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroidx/appcompat/widget/l;->f()Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_3

    :cond_b
    iget-boolean v3, v0, Landroidx/appcompat/app/E;->m:Z

    if-nez v3, :cond_f

    iget-boolean v5, v0, Landroidx/appcompat/app/E;->l:Z

    if-eqz v5, :cond_c

    goto :goto_4

    :cond_c
    iget-boolean v3, v0, Landroidx/appcompat/app/E;->k:Z

    if-eqz v3, :cond_e

    iget-boolean v3, v0, Landroidx/appcompat/app/E;->o:Z

    if-eqz v3, :cond_d

    iput-boolean v2, v0, Landroidx/appcompat/app/E;->k:Z

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/app/F;->F(Landroidx/appcompat/app/E;Landroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_2

    :cond_d
    move v3, v1

    :goto_2
    if-eqz v3, :cond_e

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/app/F;->D(Landroidx/appcompat/app/E;Landroid/view/KeyEvent;)V

    :goto_3
    move p0, v1

    goto :goto_5

    :cond_e
    move p0, v2

    goto :goto_5

    :cond_f
    :goto_4
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/F;->r(Landroidx/appcompat/app/E;Z)V

    move p0, v3

    :goto_5
    if-eqz p0, :cond_12

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "audio"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-eqz p0, :cond_10

    invoke-virtual {p0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_6

    :cond_10
    const-string p0, "AppCompatDelegate"

    const-string p1, "Couldn\'t get audio manager"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_11
    invoke-virtual {p0}, Landroidx/appcompat/app/F;->C()Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_12
    :goto_6
    return v1
.end method

.method public final u(I)V
    .locals 3

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/F;->y(I)Landroidx/appcompat/app/E;

    move-result-object v0

    iget-object v1, v0, Landroidx/appcompat/app/E;->h:Lk/j;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, Landroidx/appcompat/app/E;->h:Lk/j;

    invoke-virtual {v2, v1}, Lk/j;->t(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/BaseBundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    iput-object v1, v0, Landroidx/appcompat/app/E;->p:Landroid/os/Bundle;

    :cond_0
    iget-object v1, v0, Landroidx/appcompat/app/E;->h:Lk/j;

    invoke-virtual {v1}, Lk/j;->w()V

    iget-object v1, v0, Landroidx/appcompat/app/E;->h:Lk/j;

    invoke-virtual {v1}, Lk/j;->clear()V

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/appcompat/app/E;->o:Z

    iput-boolean v1, v0, Landroidx/appcompat/app/E;->n:Z

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object p1, p0, Landroidx/appcompat/app/F;->s:Landroidx/appcompat/widget/d0;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/F;->y(I)Landroidx/appcompat/app/E;

    move-result-object v0

    iput-boolean p1, v0, Landroidx/appcompat/app/E;->k:Z

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/app/F;->F(Landroidx/appcompat/app/E;Landroid/view/KeyEvent;)Z

    :cond_3
    return-void
.end method

.method public final v()V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroidx/appcompat/app/F;->A:Z

    if-nez v2, :cond_21

    sget-object v2, Lf/j;->AppCompatTheme:[I

    iget-object v3, p0, Landroidx/appcompat/app/F;->l:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v4, Lf/j;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_20

    sget v4, Lf/j;->AppCompatTheme_windowNoTitle:I

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    const/16 v5, 0x6c

    if-eqz v4, :cond_0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/F;->g(I)Z

    goto :goto_0

    :cond_0
    sget v4, Lf/j;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v5}, Landroidx/appcompat/app/F;->g(I)Z

    :cond_1
    :goto_0
    sget v4, Lf/j;->AppCompatTheme_windowActionBarOverlay:I

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    const/16 v6, 0x6d

    if-eqz v4, :cond_2

    invoke-virtual {p0, v6}, Landroidx/appcompat/app/F;->g(I)Z

    :cond_2
    sget v4, Lf/j;->AppCompatTheme_windowActionModeOverlay:I

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0xa

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/F;->g(I)Z

    :cond_3
    sget v4, Lf/j;->AppCompatTheme_android_windowIsFloating:I

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroidx/appcompat/app/F;->J:Z

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroidx/appcompat/app/F;->w()V

    iget-object v2, p0, Landroidx/appcompat/app/F;->m:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-boolean v4, p0, Landroidx/appcompat/app/F;->K:Z

    const/4 v7, 0x0

    if-nez v4, :cond_9

    iget-boolean v4, p0, Landroidx/appcompat/app/F;->J:Z

    if-eqz v4, :cond_4

    sget v4, Lf/g;->abc_dialog_title_material:I

    invoke-virtual {v2, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-boolean v1, p0, Landroidx/appcompat/app/F;->H:Z

    iput-boolean v1, p0, Landroidx/appcompat/app/F;->G:Z

    goto/16 :goto_2

    :cond_4
    iget-boolean v2, p0, Landroidx/appcompat/app/F;->G:Z

    if-eqz v2, :cond_8

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget v8, Lf/a;->actionBarTheme:I

    invoke-virtual {v4, v8, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_5

    new-instance v4, Lj/d;

    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v4, v3, v2}, Lj/d;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_5
    move-object v4, v3

    :goto_1
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v4, Lf/g;->abc_screen_toolbar:I

    invoke-virtual {v2, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    sget v4, Lf/f;->decor_content_parent:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/d0;

    iput-object v4, p0, Landroidx/appcompat/app/F;->s:Landroidx/appcompat/widget/d0;

    iget-object v8, p0, Landroidx/appcompat/app/F;->m:Landroid/view/Window;

    invoke-virtual {v8}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v8

    check-cast v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v4}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object v4, v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/T0;

    iput-object v8, v4, Landroidx/appcompat/widget/T0;->k:Landroid/view/Window$Callback;

    iget-boolean v4, p0, Landroidx/appcompat/app/F;->H:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroidx/appcompat/app/F;->s:Landroidx/appcompat/widget/d0;

    check-cast v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v4, v6}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j(I)V

    :cond_6
    iget-boolean v4, p0, Landroidx/appcompat/app/F;->E:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroidx/appcompat/app/F;->s:Landroidx/appcompat/widget/d0;

    const/4 v6, 0x2

    check-cast v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v4, v6}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j(I)V

    :cond_7
    iget-boolean v4, p0, Landroidx/appcompat/app/F;->F:Z

    if-eqz v4, :cond_b

    iget-object v4, p0, Landroidx/appcompat/app/F;->s:Landroidx/appcompat/widget/d0;

    const/4 v6, 0x5

    check-cast v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v4, v6}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j(I)V

    goto :goto_2

    :cond_8
    move-object v2, v7

    goto :goto_2

    :cond_9
    iget-boolean v4, p0, Landroidx/appcompat/app/F;->I:Z

    if-eqz v4, :cond_a

    sget v4, Lf/g;->abc_screen_simple_overlay_action_mode:I

    invoke-virtual {v2, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_2

    :cond_a
    sget v4, Lf/g;->abc_screen_simple:I

    invoke-virtual {v2, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    :cond_b
    :goto_2
    if-eqz v2, :cond_1f

    new-instance v4, Landroidx/appcompat/app/s;

    invoke-direct {v4, p0, v1}, Landroidx/appcompat/app/s;-><init>(Landroidx/appcompat/app/F;I)V

    sget-object v6, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-static {v2, v4}, LK/x;->k(Landroid/view/View;LK/p;)V

    iget-object v4, p0, Landroidx/appcompat/app/F;->s:Landroidx/appcompat/widget/d0;

    if-nez v4, :cond_c

    sget v4, Lf/f;->title:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Landroidx/appcompat/app/F;->C:Landroid/widget/TextView;

    :cond_c
    const-string v4, "Could not invoke makeOptionalFitsSystemWindows"

    const-string v6, "ViewUtils"

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "makeOptionalFitsSystemWindows"

    invoke-virtual {v8, v9, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v9

    if-nez v9, :cond_d

    invoke-virtual {v8, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    goto :goto_3

    :catch_0
    move-exception v8

    goto :goto_4

    :catch_1
    move-exception v8

    goto :goto_5

    :cond_d
    :goto_3
    invoke-virtual {v8, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :goto_4
    invoke-static {v6, v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :goto_5
    invoke-static {v6, v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :catch_2
    const-string v4, "Could not find method makeOptionalFitsSystemWindows. Oh well..."

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    sget v4, Lf/f;->action_bar_activity_content:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/ContentFrameLayout;

    iget-object v6, p0, Landroidx/appcompat/app/F;->m:Landroid/view/Window;

    const v8, 0x1020002

    invoke-virtual {v6, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_f

    :goto_7
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-lez v9, :cond_e

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_7

    :cond_e
    const/4 v9, -0x1

    invoke-virtual {v6, v9}, Landroid/view/View;->setId(I)V

    invoke-virtual {v4, v8}, Landroid/view/View;->setId(I)V

    instance-of v9, v6, Landroid/widget/FrameLayout;

    if-eqz v9, :cond_f

    check-cast v6, Landroid/widget/FrameLayout;

    invoke-virtual {v6, v7}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_f
    iget-object v6, p0, Landroidx/appcompat/app/F;->m:Landroid/view/Window;

    invoke-virtual {v6, v2}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    new-instance v6, Landroidx/appcompat/app/s;

    invoke-direct {v6, p0, v0}, Landroidx/appcompat/app/s;-><init>(Landroidx/appcompat/app/F;I)V

    iput-object v6, v4, Landroidx/appcompat/widget/ContentFrameLayout;->k:Landroidx/appcompat/app/s;

    iput-object v2, p0, Landroidx/appcompat/app/F;->B:Landroid/view/ViewGroup;

    iget-object v2, p0, Landroidx/appcompat/app/F;->k:Ljava/lang/Object;

    instance-of v4, v2, Landroid/app/Activity;

    if-eqz v4, :cond_10

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_8

    :cond_10
    iget-object v2, p0, Landroidx/appcompat/app/F;->r:Ljava/lang/CharSequence;

    :goto_8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13

    iget-object v4, p0, Landroidx/appcompat/app/F;->s:Landroidx/appcompat/widget/d0;

    if-eqz v4, :cond_11

    check-cast v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v4}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object v4, v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/T0;

    iget-boolean v6, v4, Landroidx/appcompat/widget/T0;->g:Z

    if-nez v6, :cond_13

    iput-object v2, v4, Landroidx/appcompat/widget/T0;->h:Ljava/lang/CharSequence;

    iget v6, v4, Landroidx/appcompat/widget/T0;->b:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_13

    iget-object v6, v4, Landroidx/appcompat/widget/T0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v6, v2}, Landroidx/appcompat/widget/Toolbar;->y(Ljava/lang/CharSequence;)V

    iget-boolean v4, v4, Landroidx/appcompat/widget/T0;->g:Z

    if-eqz v4, :cond_13

    invoke-virtual {v6}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v2}, LK/D;->g(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_11
    iget-object v4, p0, Landroidx/appcompat/app/F;->p:Landroidx/appcompat/app/a;

    if-eqz v4, :cond_12

    invoke-virtual {v4, v2}, Landroidx/appcompat/app/a;->n(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_12
    iget-object v4, p0, Landroidx/appcompat/app/F;->C:Landroid/widget/TextView;

    if-eqz v4, :cond_13

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_13
    :goto_9
    iget-object v2, p0, Landroidx/appcompat/app/F;->B:Landroid/view/ViewGroup;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ContentFrameLayout;

    iget-object v4, p0, Landroidx/appcompat/app/F;->m:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    iget-object v9, v2, Landroidx/appcompat/widget/ContentFrameLayout;->j:Landroid/graphics/Rect;

    invoke-virtual {v9, v6, v7, v8, v4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v2}, Landroid/view/View;->isLaidOut()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    :cond_14
    sget-object v4, Lf/j;->AppCompatTheme:[I

    invoke-virtual {v3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    sget v4, Lf/j;->AppCompatTheme_windowMinWidthMajor:I

    iget-object v6, v2, Landroidx/appcompat/widget/ContentFrameLayout;->d:Landroid/util/TypedValue;

    if-nez v6, :cond_15

    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    iput-object v6, v2, Landroidx/appcompat/widget/ContentFrameLayout;->d:Landroid/util/TypedValue;

    :cond_15
    iget-object v6, v2, Landroidx/appcompat/widget/ContentFrameLayout;->d:Landroid/util/TypedValue;

    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    sget v4, Lf/j;->AppCompatTheme_windowMinWidthMinor:I

    iget-object v6, v2, Landroidx/appcompat/widget/ContentFrameLayout;->e:Landroid/util/TypedValue;

    if-nez v6, :cond_16

    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    iput-object v6, v2, Landroidx/appcompat/widget/ContentFrameLayout;->e:Landroid/util/TypedValue;

    :cond_16
    iget-object v6, v2, Landroidx/appcompat/widget/ContentFrameLayout;->e:Landroid/util/TypedValue;

    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    sget v4, Lf/j;->AppCompatTheme_windowFixedWidthMajor:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_18

    sget v4, Lf/j;->AppCompatTheme_windowFixedWidthMajor:I

    iget-object v6, v2, Landroidx/appcompat/widget/ContentFrameLayout;->f:Landroid/util/TypedValue;

    if-nez v6, :cond_17

    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    iput-object v6, v2, Landroidx/appcompat/widget/ContentFrameLayout;->f:Landroid/util/TypedValue;

    :cond_17
    iget-object v6, v2, Landroidx/appcompat/widget/ContentFrameLayout;->f:Landroid/util/TypedValue;

    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_18
    sget v4, Lf/j;->AppCompatTheme_windowFixedWidthMinor:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    sget v4, Lf/j;->AppCompatTheme_windowFixedWidthMinor:I

    iget-object v6, v2, Landroidx/appcompat/widget/ContentFrameLayout;->g:Landroid/util/TypedValue;

    if-nez v6, :cond_19

    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    iput-object v6, v2, Landroidx/appcompat/widget/ContentFrameLayout;->g:Landroid/util/TypedValue;

    :cond_19
    iget-object v6, v2, Landroidx/appcompat/widget/ContentFrameLayout;->g:Landroid/util/TypedValue;

    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_1a
    sget v4, Lf/j;->AppCompatTheme_windowFixedHeightMajor:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1c

    sget v4, Lf/j;->AppCompatTheme_windowFixedHeightMajor:I

    iget-object v6, v2, Landroidx/appcompat/widget/ContentFrameLayout;->h:Landroid/util/TypedValue;

    if-nez v6, :cond_1b

    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    iput-object v6, v2, Landroidx/appcompat/widget/ContentFrameLayout;->h:Landroid/util/TypedValue;

    :cond_1b
    iget-object v6, v2, Landroidx/appcompat/widget/ContentFrameLayout;->h:Landroid/util/TypedValue;

    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_1c
    sget v4, Lf/j;->AppCompatTheme_windowFixedHeightMinor:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1e

    sget v4, Lf/j;->AppCompatTheme_windowFixedHeightMinor:I

    iget-object v6, v2, Landroidx/appcompat/widget/ContentFrameLayout;->i:Landroid/util/TypedValue;

    if-nez v6, :cond_1d

    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    iput-object v6, v2, Landroidx/appcompat/widget/ContentFrameLayout;->i:Landroid/util/TypedValue;

    :cond_1d
    iget-object v6, v2, Landroidx/appcompat/widget/ContentFrameLayout;->i:Landroid/util/TypedValue;

    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_1e
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    iput-boolean v0, p0, Landroidx/appcompat/app/F;->A:Z

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/F;->y(I)Landroidx/appcompat/app/E;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/appcompat/app/F;->R:Z

    if-nez v1, :cond_21

    iget-object v0, v0, Landroidx/appcompat/app/E;->h:Lk/j;

    if-nez v0, :cond_21

    invoke-virtual {p0, v5}, Landroidx/appcompat/app/F;->A(I)V

    goto :goto_a

    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroidx/appcompat/app/F;->G:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroidx/appcompat/app/F;->H:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroidx/appcompat/app/F;->J:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroidx/appcompat/app/F;->I:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroidx/appcompat/app/F;->K:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_21
    :goto_a
    return-void
.end method

.method public final w()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/F;->m:Landroid/view/Window;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/F;->k:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/F;->n(Landroid/view/Window;)V

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/app/F;->m:Landroid/view/Window;

    if-eqz p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "We have not been given a Window"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final x(Landroid/content/Context;)Landroidx/appcompat/app/B;
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/app/F;->X:Landroidx/appcompat/app/z;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/appcompat/app/z;

    sget-object v1, Lw0/s;->d:Lw0/s;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lw0/s;

    const-string v2, "location"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v3, Landroidx/appcompat/app/O;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v1, Lw0/s;->c:Ljava/lang/Object;

    iput-object p1, v1, Lw0/s;->a:Ljava/lang/Object;

    iput-object v2, v1, Lw0/s;->b:Ljava/lang/Object;

    sput-object v1, Lw0/s;->d:Lw0/s;

    :cond_0
    sget-object p1, Lw0/s;->d:Lw0/s;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/app/z;-><init>(Landroidx/appcompat/app/F;Lw0/s;)V

    iput-object v0, p0, Landroidx/appcompat/app/F;->X:Landroidx/appcompat/app/z;

    :cond_1
    iget-object p0, p0, Landroidx/appcompat/app/F;->X:Landroidx/appcompat/app/z;

    return-object p0
.end method

.method public final y(I)Landroidx/appcompat/app/E;
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/app/F;->M:[Landroidx/appcompat/app/E;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    if-gt v2, p1, :cond_2

    :cond_0
    add-int/lit8 v2, p1, 0x1

    new-array v2, v2, [Landroidx/appcompat/app/E;

    if-eqz v0, :cond_1

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v2, p0, Landroidx/appcompat/app/F;->M:[Landroidx/appcompat/app/E;

    move-object v0, v2

    :cond_2
    aget-object p0, v0, p1

    if-nez p0, :cond_3

    new-instance p0, Landroidx/appcompat/app/E;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/appcompat/app/E;->a:I

    iput-boolean v1, p0, Landroidx/appcompat/app/E;->n:Z

    aput-object p0, v0, p1

    :cond_3
    return-object p0
.end method

.method public final z()V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/app/F;->v()V

    iget-boolean v0, p0, Landroidx/appcompat/app/F;->G:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/app/F;->p:Landroidx/appcompat/app/a;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/F;->k:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    new-instance v1, Landroidx/appcompat/app/S;

    check-cast v0, Landroid/app/Activity;

    iget-boolean v2, p0, Landroidx/appcompat/app/F;->H:Z

    invoke-direct {v1, v0, v2}, Landroidx/appcompat/app/S;-><init>(Landroid/app/Activity;Z)V

    iput-object v1, p0, Landroidx/appcompat/app/F;->p:Landroidx/appcompat/app/a;

    goto :goto_0

    :cond_1
    instance-of v1, v0, Landroid/app/Dialog;

    if-eqz v1, :cond_2

    new-instance v1, Landroidx/appcompat/app/S;

    check-cast v0, Landroid/app/Dialog;

    invoke-direct {v1, v0}, Landroidx/appcompat/app/S;-><init>(Landroid/app/Dialog;)V

    iput-object v1, p0, Landroidx/appcompat/app/F;->p:Landroidx/appcompat/app/a;

    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/app/F;->p:Landroidx/appcompat/app/a;

    if-eqz v0, :cond_3

    iget-boolean p0, p0, Landroidx/appcompat/app/F;->c0:Z

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/a;->l(Z)V

    :cond_3
    :goto_1
    return-void
.end method

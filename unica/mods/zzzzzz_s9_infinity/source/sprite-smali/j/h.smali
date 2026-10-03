.class public final Lj/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Ljava/lang/CharSequence;

.field public B:Ljava/lang/CharSequence;

.field public C:Landroid/content/res/ColorStateList;

.field public D:Landroid/graphics/PorterDuff$Mode;

.field public final synthetic E:Lj/i;

.field public final a:Landroid/view/Menu;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public k:Ljava/lang/CharSequence;

.field public l:Ljava/lang/CharSequence;

.field public m:I

.field public n:C

.field public o:I

.field public p:C

.field public q:I

.field public r:I

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:I

.field public w:I

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Lk/m;


# direct methods
.method public constructor <init>(Lj/i;Landroid/view/Menu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj/h;->E:Lj/i;

    const/4 p1, 0x0

    iput-object p1, p0, Lj/h;->C:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Lj/h;->D:Landroid/graphics/PorterDuff$Mode;

    iput-object p2, p0, Lj/h;->a:Landroid/view/Menu;

    const/4 p1, 0x0

    iput p1, p0, Lj/h;->b:I

    iput p1, p0, Lj/h;->c:I

    iput p1, p0, Lj/h;->d:I

    iput p1, p0, Lj/h;->e:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lj/h;->f:Z

    iput-boolean p1, p0, Lj/h;->g:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lj/h;->E:Lj/i;

    iget-object p0, p0, Lj/i;->c:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {p0, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Cannot instantiate class: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SupportMenuInflater"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(Landroid/view/MenuItem;)V
    .locals 8

    iget-boolean v0, p0, Lj/h;->s:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lj/h;->t:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lj/h;->u:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lj/h;->r:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lj/h;->l:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lj/h;->m:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget v0, p0, Lj/h;->v:I

    if-ltz v0, :cond_1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_1
    iget-object v0, p0, Lj/h;->y:Ljava/lang/String;

    iget-object v1, p0, Lj/h;->E:Lj/i;

    if-eqz v0, :cond_4

    iget-object v0, v1, Lj/i;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lj/g;

    iget-object v4, v1, Lj/i;->d:Ljava/lang/Object;

    if-nez v4, :cond_2

    iget-object v4, v1, Lj/i;->c:Landroid/content/Context;

    invoke-static {v4}, Lj/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v1, Lj/i;->d:Ljava/lang/Object;

    :cond_2
    iget-object v4, v1, Lj/i;->d:Ljava/lang/Object;

    iget-object v5, p0, Lj/h;->y:Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lj/g;->a:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    :try_start_0
    sget-object v6, Lj/g;->c:[Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, v0, Lj/g;->b:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Landroid/view/InflateException;

    const-string v0, "Couldn\'t resolve menu item onClick handler "

    const-string v1, " in class "

    invoke-static {v0, v5, v1}, LB/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    iget v0, p0, Lj/h;->r:I

    const/4 v4, 0x2

    if-lt v0, v4, :cond_7

    instance-of v0, p1, Lk/l;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lk/l;

    iget v4, v0, Lk/l;->x:I

    and-int/lit8 v4, v4, -0x5

    or-int/lit8 v4, v4, 0x4

    iput v4, v0, Lk/l;->x:I

    goto :goto_4

    :cond_5
    instance-of v0, p1, Lk/q;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Lk/q;

    :try_start_1
    iget-object v4, v0, Lk/q;->d:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v5, v0, Lk/q;->c:LE/a;

    if-nez v4, :cond_6

    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v6, "setExclusiveCheckable"

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v7}, [Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, v0, Lk/q;->d:Ljava/lang/reflect/Method;

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_6
    :goto_2
    iget-object v0, v0, Lk/q;->d:Ljava/lang/reflect/Method;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :goto_3
    const-string v4, "MenuItemWrapper"

    const-string v5, "Error while calling setExclusiveCheckable"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_4
    iget-object v0, p0, Lj/h;->x:Ljava/lang/String;

    if-eqz v0, :cond_8

    sget-object v2, Lj/i;->e:[Ljava/lang/Class;

    iget-object v1, v1, Lj/i;->a:[Ljava/lang/Object;

    invoke-virtual {p0, v0, v2, v1}, Lj/h;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    move v2, v3

    :cond_8
    iget v0, p0, Lj/h;->w:I

    if-lez v0, :cond_a

    if-nez v2, :cond_9

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    goto :goto_5

    :cond_9
    const-string v0, "SupportMenuInflater"

    const-string v1, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_5
    iget-object v0, p0, Lj/h;->z:Lk/m;

    if-eqz v0, :cond_c

    instance-of v1, p1, LE/a;

    if-eqz v1, :cond_b

    move-object v1, p1

    check-cast v1, LE/a;

    invoke-interface {v1, v0}, LE/a;->a(Lk/m;)LE/a;

    goto :goto_6

    :cond_b
    const-string v0, "MenuItemCompat"

    const-string v1, "setActionProvider: item does not implement SupportMenuItem; ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_6
    iget-object v0, p0, Lj/h;->A:Ljava/lang/CharSequence;

    instance-of v1, p1, LE/a;

    if-eqz v1, :cond_d

    move-object v2, p1

    check-cast v2, LE/a;

    invoke-interface {v2, v0}, LE/a;->setContentDescription(Ljava/lang/CharSequence;)LE/a;

    goto :goto_7

    :cond_d
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :goto_7
    iget-object v0, p0, Lj/h;->B:Ljava/lang/CharSequence;

    if-eqz v1, :cond_e

    move-object v2, p1

    check-cast v2, LE/a;

    invoke-interface {v2, v0}, LE/a;->setTooltipText(Ljava/lang/CharSequence;)LE/a;

    goto :goto_8

    :cond_e
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :goto_8
    iget-char v0, p0, Lj/h;->n:C

    iget v2, p0, Lj/h;->o:I

    if-eqz v1, :cond_f

    move-object v3, p1

    check-cast v3, LE/a;

    invoke-interface {v3, v0, v2}, LE/a;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    goto :goto_9

    :cond_f
    invoke-interface {p1, v0, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    :goto_9
    iget-char v0, p0, Lj/h;->p:C

    iget v2, p0, Lj/h;->q:I

    if-eqz v1, :cond_10

    move-object v3, p1

    check-cast v3, LE/a;

    invoke-interface {v3, v0, v2}, LE/a;->setNumericShortcut(CI)Landroid/view/MenuItem;

    goto :goto_a

    :cond_10
    invoke-interface {p1, v0, v2}, Landroid/view/MenuItem;->setNumericShortcut(CI)Landroid/view/MenuItem;

    :goto_a
    iget-object v0, p0, Lj/h;->D:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_12

    if-eqz v1, :cond_11

    move-object v2, p1

    check-cast v2, LE/a;

    invoke-interface {v2, v0}, LE/a;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    goto :goto_b

    :cond_11
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    :cond_12
    :goto_b
    iget-object p0, p0, Lj/h;->C:Landroid/content/res/ColorStateList;

    if-eqz p0, :cond_14

    if-eqz v1, :cond_13

    check-cast p1, LE/a;

    invoke-interface {p1, p0}, LE/a;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    goto :goto_c

    :cond_13
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    :cond_14
    :goto_c
    return-void
.end method

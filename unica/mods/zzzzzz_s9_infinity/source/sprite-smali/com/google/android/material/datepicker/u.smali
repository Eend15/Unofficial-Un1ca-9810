.class public final Lcom/google/android/material/datepicker/u;
.super Landroidx/fragment/app/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/fragment/app/m;"
    }
.end annotation


# instance fields
.field public A0:I

.field public B0:Ljava/lang/CharSequence;

.field public C0:Landroid/widget/TextView;

.field public D0:Lcom/google/android/material/internal/CheckableImageButton;

.field public E0:LU0/g;

.field public F0:Landroid/widget/Button;

.field public G0:Z

.field public final l0:Ljava/util/LinkedHashSet;

.field public final m0:Ljava/util/LinkedHashSet;

.field public final n0:Ljava/util/LinkedHashSet;

.field public final o0:Ljava/util/LinkedHashSet;

.field public p0:I

.field public q0:Lcom/google/android/material/datepicker/DateSelector;

.field public r0:Lcom/google/android/material/datepicker/B;

.field public s0:Lcom/google/android/material/datepicker/CalendarConstraints;

.field public t0:Lcom/google/android/material/datepicker/q;

.field public u0:I

.field public v0:Ljava/lang/CharSequence;

.field public w0:Z

.field public x0:I

.field public y0:I

.field public z0:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/m;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/datepicker/u;->l0:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/datepicker/u;->m0:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/datepicker/u;->n0:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/datepicker/u;->o0:Ljava/util/LinkedHashSet;

    return-void
.end method

.method public static E(Landroid/content/Context;)I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, LF0/c;->mtrl_calendar_content_padding:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    new-instance v1, Lcom/google/android/material/datepicker/Month;

    invoke-static {}, Lcom/google/android/material/datepicker/G;->e()Ljava/util/Calendar;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/material/datepicker/Month;-><init>(Ljava/util/Calendar;)V

    sget v2, LF0/c;->mtrl_calendar_day_width:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, LF0/c;->mtrl_calendar_month_horizontal_padding:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    mul-int/lit8 v0, v0, 0x2

    iget v1, v1, Lcom/google/android/material/datepicker/Month;->g:I

    mul-int/2addr v2, v1

    add-int/2addr v2, v0

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, p0

    add-int/2addr v1, v2

    return v1
.end method

.method public static F(Landroid/content/Context;I)Z
    .locals 2

    sget v0, LF0/a;->materialCalendarStyle:I

    const-class v1, Lcom/google/android/material/datepicker/q;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, LK/I;->q0(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method


# virtual methods
.method public final C()Landroid/app/Dialog;
    .locals 7

    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/r;->x()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/r;->x()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/google/android/material/datepicker/u;->p0:I

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/u;->D()Lcom/google/android/material/datepicker/DateSelector;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/google/android/material/datepicker/DateSelector;->d(Landroid/content/Context;)I

    move-result v3

    :goto_0
    invoke-direct {v0, v1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x101020d

    invoke-static {v1, v2}, Lcom/google/android/material/datepicker/u;->F(Landroid/content/Context;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/material/datepicker/u;->w0:Z

    sget v2, LF0/a;->colorSurface:I

    const-class v3, Lcom/google/android/material/datepicker/u;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, LK/I;->q0(Landroid/content/Context;ILjava/lang/String;)I

    move-result v2

    new-instance v3, LU0/g;

    sget v4, LF0/a;->materialCalendarStyle:I

    sget v5, LF0/i;->Widget_MaterialComponents_MaterialCalendar:I

    const/4 v6, 0x0

    invoke-direct {v3, v1, v6, v4, v5}, LU0/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v3, p0, Lcom/google/android/material/datepicker/u;->E0:LU0/g;

    invoke-virtual {v3, v1}, LU0/g;->h(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/android/material/datepicker/u;->E0:LU0/g;

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, LU0/g;->j(Landroid/content/res/ColorStateList;)V

    iget-object p0, p0, Lcom/google/android/material/datepicker/u;->E0:LU0/g;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    sget-object v2, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-static {v1}, LK/x;->d(Landroid/view/View;)F

    move-result v1

    invoke-virtual {p0, v1}, LU0/g;->i(F)V

    return-object v0
.end method

.method public final D()Lcom/google/android/material/datepicker/DateSelector;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/datepicker/u;->q0:Lcom/google/android/material/datepicker/DateSelector;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/r;->i:Landroid/os/Bundle;

    const-string v1, "DATE_SELECTOR_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/DateSelector;

    iput-object v0, p0, Lcom/google/android/material/datepicker/u;->q0:Lcom/google/android/material/datepicker/DateSelector;

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/datepicker/u;->q0:Lcom/google/android/material/datepicker/DateSelector;

    return-object p0
.end method

.method public final G()V
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/r;->x()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/datepicker/u;->p0:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/u;->D()Lcom/google/android/material/datepicker/DateSelector;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/material/datepicker/DateSelector;->d(Landroid/content/Context;)I

    move-result v1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/u;->D()Lcom/google/android/material/datepicker/DateSelector;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/material/datepicker/u;->s0:Lcom/google/android/material/datepicker/CalendarConstraints;

    new-instance v3, Lcom/google/android/material/datepicker/q;

    invoke-direct {v3}, Lcom/google/android/material/datepicker/q;-><init>()V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "THEME_RES_ID_KEY"

    invoke-virtual {v4, v5, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "GRID_SELECTOR_KEY"

    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v2, v2, Lcom/google/android/material/datepicker/CalendarConstraints;->g:Lcom/google/android/material/datepicker/Month;

    const-string v6, "CURRENT_MONTH_KEY"

    invoke-virtual {v4, v6, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v3, v4}, Landroidx/fragment/app/r;->A(Landroid/os/Bundle;)V

    iput-object v3, p0, Lcom/google/android/material/datepicker/u;->t0:Lcom/google/android/material/datepicker/q;

    iget-object v2, p0, Lcom/google/android/material/datepicker/u;->D0:Lcom/google/android/material/internal/CheckableImageButton;

    iget-boolean v2, v2, Lcom/google/android/material/internal/CheckableImageButton;->g:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/u;->D()Lcom/google/android/material/datepicker/DateSelector;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/datepicker/u;->s0:Lcom/google/android/material/datepicker/CalendarConstraints;

    new-instance v4, Lcom/google/android/material/datepicker/v;

    invoke-direct {v4}, Lcom/google/android/material/datepicker/v;-><init>()V

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v6, v5, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "DATE_SELECTOR_KEY"

    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v4, v6}, Landroidx/fragment/app/r;->A(Landroid/os/Bundle;)V

    move-object v3, v4

    :cond_1
    iput-object v3, p0, Lcom/google/android/material/datepicker/u;->r0:Lcom/google/android/material/datepicker/B;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/u;->H()V

    invoke-virtual {p0}, Landroidx/fragment/app/r;->c()Landroidx/fragment/app/L;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/fragment/app/a;

    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/L;)V

    sget v0, LF0/e;->mtrl_calendar_frame:I

    iget-object v2, p0, Lcom/google/android/material/datepicker/u;->r0:Lcom/google/android/material/datepicker/B;

    if-eqz v0, :cond_3

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v4, v3}, Landroidx/fragment/app/a;->e(ILandroidx/fragment/app/r;Ljava/lang/String;I)V

    iget-boolean v0, v1, Landroidx/fragment/app/a;->g:Z

    if-nez v0, :cond_2

    iget-object v0, v1, Landroidx/fragment/app/a;->p:Landroidx/fragment/app/L;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/L;->y(Landroidx/fragment/app/a;Z)V

    iget-object v0, p0, Lcom/google/android/material/datepicker/u;->r0:Lcom/google/android/material/datepicker/B;

    new-instance v1, Lcom/google/android/material/datepicker/t;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/google/android/material/datepicker/t;-><init>(ILandroidx/fragment/app/r;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/B;->B(Lcom/google/android/material/datepicker/t;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This transaction is already being added to the back stack"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must use non-zero containerViewId"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final H()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/u;->D()Lcom/google/android/material/datepicker/DateSelector;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/r;->d()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/material/datepicker/DateSelector;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/datepicker/u;->C0:Landroid/widget/TextView;

    sget v2, LF0/h;->mtrl_picker_announce_current_selection:I

    invoke-virtual {p0}, Landroidx/fragment/app/r;->x()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/google/android/material/datepicker/u;->C0:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final I(Lcom/google/android/material/internal/CheckableImageButton;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/datepicker/u;->D0:Lcom/google/android/material/internal/CheckableImageButton;

    iget-boolean v0, v0, Lcom/google/android/material/internal/CheckableImageButton;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, LF0/h;->mtrl_picker_toggle_to_calendar_input_mode:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, LF0/h;->mtrl_picker_toggle_to_text_input_mode:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object p0, p0, Lcom/google/android/material/datepicker/u;->D0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final n(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/m;->n(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/fragment/app/r;->i:Landroid/os/Bundle;

    :cond_0
    const-string v0, "OVERRIDE_THEME_RES_ID"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/u;->p0:I

    const-string v0, "DATE_SELECTOR_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/DateSelector;

    iput-object v0, p0, Lcom/google/android/material/datepicker/u;->q0:Lcom/google/android/material/datepicker/DateSelector;

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/CalendarConstraints;

    iput-object v0, p0, Lcom/google/android/material/datepicker/u;->s0:Lcom/google/android/material/datepicker/CalendarConstraints;

    const-string v0, "TITLE_TEXT_RES_ID_KEY"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/u;->u0:I

    const-string v0, "TITLE_TEXT_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/u;->v0:Ljava/lang/CharSequence;

    const-string v0, "INPUT_MODE_KEY"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/u;->x0:I

    const-string v0, "POSITIVE_BUTTON_TEXT_RES_ID_KEY"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/u;->y0:I

    const-string v0, "POSITIVE_BUTTON_TEXT_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/u;->z0:Ljava/lang/CharSequence;

    const-string v0, "NEGATIVE_BUTTON_TEXT_RES_ID_KEY"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/u;->A0:I

    const-string v0, "NEGATIVE_BUTTON_TEXT_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/u;->B0:Ljava/lang/CharSequence;

    return-void
.end method

.method public final o(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/4 p3, 0x0

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/android/material/datepicker/u;->w0:Z

    if-eqz v1, :cond_0

    sget v1, LF0/g;->mtrl_picker_fullscreen:I

    goto :goto_0

    :cond_0
    sget v1, LF0/g;->mtrl_picker_dialog:I

    :goto_0
    invoke-virtual {p1, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-boolean v1, p0, Lcom/google/android/material/datepicker/u;->w0:Z

    if-eqz v1, :cond_1

    sget v1, LF0/e;->mtrl_calendar_frame:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p2}, Lcom/google/android/material/datepicker/u;->E(Landroid/content/Context;)I

    move-result v3

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    sget v1, LF0/e;->mtrl_calendar_main_pane:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p2}, Lcom/google/android/material/datepicker/u;->E(Landroid/content/Context;)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    sget v1, LF0/e;->mtrl_picker_header_selection_text:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/material/datepicker/u;->C0:Landroid/widget/TextView;

    sget-object v2, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    sget v1, LF0/e;->mtrl_picker_header_toggle:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/internal/CheckableImageButton;

    iput-object v1, p0, Lcom/google/android/material/datepicker/u;->D0:Lcom/google/android/material/internal/CheckableImageButton;

    sget v1, LF0/e;->mtrl_picker_title_text:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/material/datepicker/u;->v0:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    iget v2, p0, Lcom/google/android/material/datepicker/u;->u0:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    iget-object v1, p0, Lcom/google/android/material/datepicker/u;->D0:Lcom/google/android/material/internal/CheckableImageButton;

    const-string v2, "TOGGLE_BUTTON_TAG"

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/material/datepicker/u;->D0:Lcom/google/android/material/internal/CheckableImageButton;

    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const v3, 0x10100a0

    filled-new-array {v3}, [I

    move-result-object v3

    sget v4, LF0/d;->material_ic_calendar_black_24dp:I

    invoke-static {p2, v4}, Le0/a;->E(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v3, p3, [I

    sget v4, LF0/d;->material_ic_edit_black_24dp:I

    invoke-static {p2, v4}, Le0/a;->E(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/x;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/google/android/material/datepicker/u;->D0:Lcom/google/android/material/internal/CheckableImageButton;

    iget v1, p0, Lcom/google/android/material/datepicker/u;->x0:I

    if-eqz v1, :cond_3

    move v1, v0

    goto :goto_3

    :cond_3
    move v1, p3

    :goto_3
    invoke-virtual {p2, v1}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    iget-object p2, p0, Lcom/google/android/material/datepicker/u;->D0:Lcom/google/android/material/internal/CheckableImageButton;

    const/4 v1, 0x0

    invoke-static {p2, v1}, LK/D;->f(Landroid/view/View;LK/b;)V

    iget-object p2, p0, Lcom/google/android/material/datepicker/u;->D0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0, p2}, Lcom/google/android/material/datepicker/u;->I(Lcom/google/android/material/internal/CheckableImageButton;)V

    iget-object p2, p0, Lcom/google/android/material/datepicker/u;->D0:Lcom/google/android/material/internal/CheckableImageButton;

    new-instance v1, Lcom/google/android/material/datepicker/s;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/google/android/material/datepicker/s;-><init>(Lcom/google/android/material/datepicker/u;I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, LF0/e;->confirm_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/google/android/material/datepicker/u;->F0:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/u;->D()Lcom/google/android/material/datepicker/DateSelector;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/material/datepicker/DateSelector;->h()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/google/android/material/datepicker/u;->F0:Landroid/widget/Button;

    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_4

    :cond_4
    iget-object p2, p0, Lcom/google/android/material/datepicker/u;->F0:Landroid/widget/Button;

    invoke-virtual {p2, p3}, Landroid/view/View;->setEnabled(Z)V

    :goto_4
    iget-object p2, p0, Lcom/google/android/material/datepicker/u;->F0:Landroid/widget/Button;

    const-string v1, "CONFIRM_BUTTON_TAG"

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/material/datepicker/u;->z0:Ljava/lang/CharSequence;

    if-eqz p2, :cond_5

    iget-object v1, p0, Lcom/google/android/material/datepicker/u;->F0:Landroid/widget/Button;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_5
    iget p2, p0, Lcom/google/android/material/datepicker/u;->y0:I

    if-eqz p2, :cond_6

    iget-object v1, p0, Lcom/google/android/material/datepicker/u;->F0:Landroid/widget/Button;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    :cond_6
    :goto_5
    iget-object p2, p0, Lcom/google/android/material/datepicker/u;->F0:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/material/datepicker/s;

    invoke-direct {v1, p0, p3}, Lcom/google/android/material/datepicker/s;-><init>(Lcom/google/android/material/datepicker/u;I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, LF0/e;->cancel_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    const-string p3, "CANCEL_BUTTON_TAG"

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/google/android/material/datepicker/u;->B0:Ljava/lang/CharSequence;

    if-eqz p3, :cond_7

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_7
    iget p3, p0, Lcom/google/android/material/datepicker/u;->A0:I

    if-eqz p3, :cond_8

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    :cond_8
    :goto_6
    new-instance p3, Lcom/google/android/material/datepicker/s;

    invoke-direct {p3, p0, v0}, Lcom/google/android/material/datepicker/s;-><init>(Lcom/google/android/material/datepicker/u;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/datepicker/u;->n0:Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/datepicker/u;->o0:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/r;->H:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/m;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public final s(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Landroidx/fragment/app/m;->s(Landroid/os/Bundle;)V

    const-string v0, "OVERRIDE_THEME_RES_ID"

    iget v1, p0, Lcom/google/android/material/datepicker/u;->p0:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "DATE_SELECTOR_KEY"

    iget-object v1, p0, Lcom/google/android/material/datepicker/u;->q0:Lcom/google/android/material/datepicker/DateSelector;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v0, Lcom/google/android/material/datepicker/b;

    iget-object v1, p0, Lcom/google/android/material/datepicker/u;->s0:Lcom/google/android/material/datepicker/CalendarConstraints;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget v2, Lcom/google/android/material/datepicker/b;->c:I

    sget v2, Lcom/google/android/material/datepicker/b;->c:I

    new-instance v2, Lcom/google/android/material/datepicker/DateValidatorPointForward;

    const-wide/high16 v3, -0x8000000000000000L

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/datepicker/DateValidatorPointForward;-><init>(J)V

    iget-object v2, v1, Lcom/google/android/material/datepicker/CalendarConstraints;->d:Lcom/google/android/material/datepicker/Month;

    iget-wide v2, v2, Lcom/google/android/material/datepicker/Month;->i:J

    iget-object v4, v1, Lcom/google/android/material/datepicker/CalendarConstraints;->e:Lcom/google/android/material/datepicker/Month;

    iget-wide v4, v4, Lcom/google/android/material/datepicker/Month;->i:J

    iget-object v6, v1, Lcom/google/android/material/datepicker/CalendarConstraints;->g:Lcom/google/android/material/datepicker/Month;

    iget-wide v6, v6, Lcom/google/android/material/datepicker/Month;->i:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/material/datepicker/b;->a:Ljava/lang/Long;

    iget-object v1, v1, Lcom/google/android/material/datepicker/CalendarConstraints;->f:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    iput-object v1, v0, Lcom/google/android/material/datepicker/b;->b:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    iget-object v6, p0, Lcom/google/android/material/datepicker/u;->t0:Lcom/google/android/material/datepicker/q;

    iget-object v6, v6, Lcom/google/android/material/datepicker/q;->a0:Lcom/google/android/material/datepicker/Month;

    if-eqz v6, :cond_0

    iget-wide v6, v6, Lcom/google/android/material/datepicker/Month;->i:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/material/datepicker/b;->a:Ljava/lang/Long;

    :cond_0
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "DEEP_COPY_VALIDATOR_KEY"

    invoke-virtual {v6, v7, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v1, Lcom/google/android/material/datepicker/CalendarConstraints;

    invoke-static {v2, v3}, Lcom/google/android/material/datepicker/Month;->l(J)Lcom/google/android/material/datepicker/Month;

    move-result-object v2

    invoke-static {v4, v5}, Lcom/google/android/material/datepicker/Month;->l(J)Lcom/google/android/material/datepicker/Month;

    move-result-object v3

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    iget-object v0, v0, Lcom/google/android/material/datepicker/b;->a:Ljava/lang/Long;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/google/android/material/datepicker/Month;->l(J)Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/android/material/datepicker/CalendarConstraints;-><init>(Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;Lcom/google/android/material/datepicker/Month;)V

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "TITLE_TEXT_RES_ID_KEY"

    iget v1, p0, Lcom/google/android/material/datepicker/u;->u0:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "TITLE_TEXT_KEY"

    iget-object v1, p0, Lcom/google/android/material/datepicker/u;->v0:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "POSITIVE_BUTTON_TEXT_RES_ID_KEY"

    iget v1, p0, Lcom/google/android/material/datepicker/u;->y0:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "POSITIVE_BUTTON_TEXT_KEY"

    iget-object v1, p0, Lcom/google/android/material/datepicker/u;->z0:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "NEGATIVE_BUTTON_TEXT_RES_ID_KEY"

    iget v1, p0, Lcom/google/android/material/datepicker/u;->A0:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "NEGATIVE_BUTTON_TEXT_KEY"

    iget-object p0, p0, Lcom/google/android/material/datepicker/u;->B0:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final t()V
    .locals 11

    invoke-super {p0}, Landroidx/fragment/app/m;->t()V

    iget-object v0, p0, Landroidx/fragment/app/m;->h0:Landroid/app/Dialog;

    const-string v1, " does not have a Dialog."

    const-string v2, "DialogFragment "

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-boolean v3, p0, Lcom/google/android/material/datepicker/u;->w0:Z

    if-eqz v3, :cond_10

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    iget-object v1, p0, Lcom/google/android/material/datepicker/u;->E0:LU0/g;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v1, p0, Lcom/google/android/material/datepicker/u;->G0:Z

    if-eqz v1, :cond_0

    goto/16 :goto_a

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/r;->y()Landroid/view/View;

    move-result-object v1

    sget v2, LF0/e;->fullscreen_header:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    move v5, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v5, v4

    :goto_2
    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x1010031

    invoke-static {v6, v7}, LK/I;->p0(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v6

    if-eqz v6, :cond_4

    iget v6, v6, Landroid/util/TypedValue;->data:I

    goto :goto_3

    :cond_4
    const/high16 v6, -0x1000000

    :goto_3
    if-eqz v5, :cond_5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_5
    invoke-virtual {v0, v3}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {v0, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, LK/I;->W(I)Z

    move-result v2

    invoke-static {v3}, LK/I;->W(I)Z

    move-result v5

    if-nez v5, :cond_7

    if-eqz v2, :cond_6

    goto :goto_4

    :cond_6
    move v2, v3

    goto :goto_5

    :cond_7
    :goto_4
    move v2, v4

    :goto_5
    invoke-static {v6}, LK/I;->W(I)Z

    move-result v5

    invoke-static {v3}, LK/I;->W(I)Z

    move-result v6

    if-nez v6, :cond_9

    if-eqz v5, :cond_8

    goto :goto_6

    :cond_8
    move v5, v3

    goto :goto_7

    :cond_9
    :goto_6
    move v5, v4

    :goto_7
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    new-instance v6, LK/V;

    invoke-direct {v6, v0}, LK/V;-><init>(Landroid/view/Window;)V

    iget-object v0, v6, LK/V;->b:Landroid/view/Window;

    iget-object v6, v6, LK/V;->a:Landroid/view/WindowInsetsController;

    const/16 v7, 0x8

    if-eqz v2, :cond_b

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v8

    or-int/lit16 v8, v8, 0x2000

    invoke-virtual {v2, v8}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_a
    invoke-interface {v6, v7, v7}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    goto :goto_8

    :cond_b
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v8

    and-int/lit16 v8, v8, -0x2001

    invoke-virtual {v2, v8}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_c
    invoke-interface {v6, v3, v7}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    :goto_8
    const/16 v2, 0x10

    if-eqz v5, :cond_e

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v3

    or-int/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_d
    invoke-interface {v6, v2, v2}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    goto :goto_9

    :cond_e
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v5

    and-int/lit8 v5, v5, -0x11

    invoke-virtual {v0, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_f
    invoke-interface {v6, v3, v2}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    :goto_9
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance v3, LH0/c;

    invoke-direct {v3, v1, v2, v0}, LH0/c;-><init>(Landroid/view/View;II)V

    sget-object v0, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-static {v1, v3}, LK/x;->k(Landroid/view/View;LK/p;)V

    iput-boolean v4, p0, Lcom/google/android/material/datepicker/u;->G0:Z

    goto :goto_a

    :cond_10
    const/4 v3, -0x2

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p0}, Landroidx/fragment/app/r;->x()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, LF0/c;->mtrl_calendar_dialog_background_inset:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v10, v10, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/drawable/InsetDrawable;

    iget-object v6, p0, Lcom/google/android/material/datepicker/u;->E0:LU0/g;

    move-object v5, v4

    move v7, v10

    move v8, v10

    move v9, v10

    invoke-direct/range {v5 .. v10}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {v0, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v4, LO0/a;

    iget-object v5, p0, Landroidx/fragment/app/m;->h0:Landroid/app/Dialog;

    if-eqz v5, :cond_11

    invoke-direct {v4, v5, v3}, LO0/a;-><init>(Landroid/app/Dialog;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_a
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/u;->G()V

    return-void

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final u()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/datepicker/u;->r0:Lcom/google/android/material/datepicker/B;

    iget-object v0, v0, Lcom/google/android/material/datepicker/B;->W:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    invoke-super {p0}, Landroidx/fragment/app/m;->u()V

    return-void
.end method

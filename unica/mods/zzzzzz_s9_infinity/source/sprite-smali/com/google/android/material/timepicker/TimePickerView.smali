.class Lcom/google/android/material/timepicker/TimePickerView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# static fields
.field public static final synthetic u:I


# instance fields
.field public final t:Lcom/google/android/material/button/MaterialButtonToggleGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/google/android/material/timepicker/h;

    invoke-direct {p2, p0}, Lcom/google/android/material/timepicker/h;-><init>(Lcom/google/android/material/timepicker/TimePickerView;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, LF0/g;->material_timepicker:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget p1, LF0/e;->material_clock_face:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/timepicker/ClockFaceView;

    sget p1, LF0/e;->material_clock_period_toggle:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->t:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    new-instance v0, Lcom/google/android/material/timepicker/i;

    invoke-direct {v0, p0}, Lcom/google/android/material/timepicker/i;-><init>(Lcom/google/android/material/timepicker/TimePickerView;)V

    iget-object p1, p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    sget p1, LF0/e;->material_minute_tv:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/chip/Chip;

    sget v0, LF0/e;->material_hour_tv:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/chip/Chip;

    sget v1, LF0/e;->material_clock_hand:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/timepicker/ClockHandView;

    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/google/android/material/timepicker/j;

    invoke-direct {v3, p0}, Lcom/google/android/material/timepicker/j;-><init>(Lcom/google/android/material/timepicker/TimePickerView;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    new-instance p0, Lcom/google/android/material/timepicker/k;

    invoke-direct {p0, v1}, Lcom/google/android/material/timepicker/k;-><init>(Landroid/view/GestureDetector;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget p0, LF0/e;->selection_type:I

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p0, LF0/e;->selection_type:I

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p0, "android.view.View"

    iput-object p0, p1, Lcom/google/android/material/chip/Chip;->t:Ljava/lang/String;

    iput-object p0, v0, Lcom/google/android/material/chip/Chip;->t:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final m()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->t:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lv/l;

    invoke-direct {v0}, Lv/l;-><init>()V

    invoke-virtual {v0, p0}, Lv/l;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    sget-object v1, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    sget v2, LF0/e;->material_clock_display:I

    iget-object v3, v0, Lv/l;->c:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv/g;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    const/4 v5, -0x1

    iget-object v2, v2, Lv/g;->d:Lv/h;

    packed-switch v1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown constraint"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v2, Lv/h;->B:F

    iput v5, v2, Lv/h;->A:I

    iput v5, v2, Lv/h;->z:I

    goto :goto_1

    :pswitch_1
    iput v5, v2, Lv/h;->u:I

    iput v5, v2, Lv/h;->v:I

    iput v3, v2, Lv/h;->J:I

    iput v4, v2, Lv/h;->Q:I

    goto :goto_1

    :pswitch_2
    iput v5, v2, Lv/h;->s:I

    iput v5, v2, Lv/h;->t:I

    iput v3, v2, Lv/h;->K:I

    iput v4, v2, Lv/h;->R:I

    goto :goto_1

    :pswitch_3
    iput v5, v2, Lv/h;->p:I

    iput v5, v2, Lv/h;->q:I

    iput v5, v2, Lv/h;->r:I

    iput v3, v2, Lv/h;->L:I

    iput v4, v2, Lv/h;->S:I

    goto :goto_1

    :pswitch_4
    iput v5, v2, Lv/h;->n:I

    iput v5, v2, Lv/h;->o:I

    iput v3, v2, Lv/h;->I:I

    iput v4, v2, Lv/h;->P:I

    goto :goto_1

    :pswitch_5
    iput v5, v2, Lv/h;->m:I

    iput v5, v2, Lv/h;->l:I

    iput v3, v2, Lv/h;->H:I

    iput v4, v2, Lv/h;->N:I

    goto :goto_1

    :pswitch_6
    iput v5, v2, Lv/h;->k:I

    iput v5, v2, Lv/h;->j:I

    iput v5, v2, Lv/h;->G:I

    iput v4, v2, Lv/h;->O:I

    goto :goto_1

    :pswitch_7
    iput v5, v2, Lv/h;->i:I

    iput v5, v2, Lv/h;->h:I

    iput v5, v2, Lv/h;->F:I

    iput v4, v2, Lv/h;->M:I

    :cond_2
    :goto_1
    invoke-virtual {v0, p0}, Lv/l;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Lv/l;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

.method public final onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/TimePickerView;->m()V

    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-ne p1, p0, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/TimePickerView;->m()V

    :cond_0
    return-void
.end method

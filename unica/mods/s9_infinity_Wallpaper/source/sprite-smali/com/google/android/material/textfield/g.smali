.class public final Lcom/google/android/material/textfield/g;
.super Lcom/google/android/material/textfield/p;
.source "SourceFile"


# instance fields
.field public final e:Lcom/google/android/material/textfield/a;

.field public final f:Lcom/google/android/material/textfield/b;

.field public final g:Lcom/google/android/material/textfield/c;

.field public final h:Lcom/google/android/material/textfield/d;

.field public i:Landroid/animation/AnimatorSet;

.field public j:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/textfield/p;-><init>(Lcom/google/android/material/textfield/TextInputLayout;I)V

    new-instance p1, Lcom/google/android/material/textfield/a;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Lcom/google/android/material/textfield/a;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/material/textfield/g;->e:Lcom/google/android/material/textfield/a;

    new-instance p1, Lcom/google/android/material/textfield/b;

    invoke-direct {p1, p0, p2}, Lcom/google/android/material/textfield/b;-><init>(Lcom/google/android/material/textfield/p;I)V

    iput-object p1, p0, Lcom/google/android/material/textfield/g;->f:Lcom/google/android/material/textfield/b;

    new-instance p1, Lcom/google/android/material/textfield/c;

    invoke-direct {p1, p0, p2}, Lcom/google/android/material/textfield/c;-><init>(Lcom/google/android/material/textfield/p;I)V

    iput-object p1, p0, Lcom/google/android/material/textfield/g;->g:Lcom/google/android/material/textfield/c;

    new-instance p1, Lcom/google/android/material/textfield/d;

    invoke-direct {p1, p0, p2}, Lcom/google/android/material/textfield/d;-><init>(Lcom/google/android/material/textfield/p;I)V

    iput-object p1, p0, Lcom/google/android/material/textfield/g;->h:Lcom/google/android/material/textfield/d;

    return-void
.end method

.method public static d(Lcom/google/android/material/textfield/g;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/p;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/google/android/material/textfield/p;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final a()V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/material/textfield/p;->d:I

    if-nez v3, :cond_0

    sget v3, LF0/d;->mtrl_ic_cancel:I

    :cond_0
    iget-object v4, p0, Lcom/google/android/material/textfield/p;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v4, v3}, Lcom/google/android/material/textfield/TextInputLayout;->o(I)V

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, LF0/h;->clear_text_end_icon_content_description:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/google/android/material/textfield/TextInputLayout;->n(Ljava/lang/CharSequence;)V

    iget-object v3, v4, Lcom/google/android/material/textfield/TextInputLayout;->g0:Lcom/google/android/material/internal/CheckableImageButton;

    iget-boolean v5, v3, Lcom/google/android/material/internal/CheckableImageButton;->h:Z

    if-eqz v5, :cond_1

    iput-boolean v2, v3, Lcom/google/android/material/internal/CheckableImageButton;->h:Z

    invoke-virtual {v3, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_1
    new-instance v3, Landroidx/appcompat/app/c;

    const/4 v5, 0x4

    invoke-direct {v3, v5, p0}, Landroidx/appcompat/app/c;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v3}, Lcom/google/android/material/textfield/TextInputLayout;->q(Landroid/view/View$OnClickListener;)V

    iget-object v3, v4, Lcom/google/android/material/textfield/TextInputLayout;->d0:Ljava/util/LinkedHashSet;

    iget-object v5, p0, Lcom/google/android/material/textfield/g;->g:Lcom/google/android/material/textfield/c;

    invoke-virtual {v3, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v3, v4, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    if-eqz v3, :cond_2

    invoke-virtual {v5, v4}, Lcom/google/android/material/textfield/c;->a(Lcom/google/android/material/textfield/TextInputLayout;)V

    :cond_2
    iget-object v3, v4, Lcom/google/android/material/textfield/TextInputLayout;->h0:Ljava/util/LinkedHashSet;

    iget-object v4, p0, Lcom/google/android/material/textfield/g;->h:Lcom/google/android/material/textfield/d;

    invoke-virtual {v3, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-array v3, v1, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    sget-object v4, LG0/a;->d:LT/a;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/google/android/material/textfield/f;

    invoke-direct {v4, p0, v0}, Lcom/google/android/material/textfield/f;-><init>(Lcom/google/android/material/textfield/g;I)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v4, v1, [F

    fill-array-data v4, :array_1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    sget-object v5, LG0/a;->a:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v8, Lcom/google/android/material/textfield/f;

    invoke-direct {v8, p0, v2}, Lcom/google/android/material/textfield/f;-><init>(Lcom/google/android/material/textfield/g;I)V

    invoke-virtual {v4, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lcom/google/android/material/textfield/g;->i:Landroid/animation/AnimatorSet;

    filled-new-array {v3, v4}, [Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v3, p0, Lcom/google/android/material/textfield/g;->i:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/google/android/material/textfield/e;

    invoke-direct {v4, p0, v2}, Lcom/google/android/material/textfield/e;-><init>(Lcom/google/android/material/textfield/g;I)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v1, v1, [F

    fill-array-data v1, :array_2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/google/android/material/textfield/f;

    invoke-direct {v3, p0, v2}, Lcom/google/android/material/textfield/f;-><init>(Lcom/google/android/material/textfield/g;I)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v1, p0, Lcom/google/android/material/textfield/g;->j:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/google/android/material/textfield/e;

    invoke-direct {v2, p0, v0}, Lcom/google/android/material/textfield/e;-><init>(Lcom/google/android/material/textfield/g;I)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/p;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->D:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/g;->e(Z)V

    return-void
.end method

.method public final e(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/p;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->j()Z

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/google/android/material/textfield/g;->i:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/textfield/g;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p1, p0, Lcom/google/android/material/textfield/g;->i:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/google/android/material/textfield/g;->i:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/textfield/g;->i:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object p1, p0, Lcom/google/android/material/textfield/g;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/google/android/material/textfield/g;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    :cond_2
    :goto_1
    return-void
.end method

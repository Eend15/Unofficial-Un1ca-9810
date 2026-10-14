.class public final synthetic Ld2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ld2/c;


# direct methods
.method public synthetic constructor <init>(Ld2/c;I)V
    .locals 0

    iput p2, p0, Ld2/a;->a:I

    iput-object p1, p0, Ld2/a;->b:Ld2/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget v0, p0, Ld2/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Ld2/a;->b:Ld2/c;

    invoke-virtual {p0}, Ld2/c;->c()V

    return-void

    :pswitch_0
    iget-object p0, p0, Ld2/a;->b:Ld2/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Ld2/c;->n:F

    iget p1, p0, Ld2/c;->j:F

    iput p1, p0, Ld2/c;->l:F

    invoke-virtual {p0}, Ld2/c;->c()V

    return-void

    :pswitch_1
    iget-object p0, p0, Ld2/a;->b:Ld2/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Ld2/c;->m:F

    iget p1, p0, Ld2/c;->i:F

    iput p1, p0, Ld2/c;->k:F

    invoke-virtual {p0}, Ld2/c;->c()V

    return-void

    :pswitch_2
    iget-object p0, p0, Ld2/a;->b:Ld2/c;

    invoke-virtual {p0}, Ld2/c;->c()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

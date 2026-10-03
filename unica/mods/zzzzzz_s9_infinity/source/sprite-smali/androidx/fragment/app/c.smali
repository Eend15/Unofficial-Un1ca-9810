.class public final Landroidx/fragment/app/c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Z

.field public final synthetic d:Landroidx/fragment/app/W;

.field public final synthetic e:Landroidx/fragment/app/f;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;ZLandroidx/fragment/app/W;Landroidx/fragment/app/f;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/c;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Landroidx/fragment/app/c;->b:Landroid/view/View;

    iput-boolean p3, p0, Landroidx/fragment/app/c;->c:Z

    iput-object p4, p0, Landroidx/fragment/app/c;->d:Landroidx/fragment/app/W;

    iput-object p5, p0, Landroidx/fragment/app/c;->e:Landroidx/fragment/app/f;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Landroidx/fragment/app/c;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/fragment/app/c;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object p1, p0, Landroidx/fragment/app/c;->d:Landroidx/fragment/app/W;

    iget-boolean v1, p0, Landroidx/fragment/app/c;->c:Z

    if-eqz v1, :cond_0

    iget v1, p1, Landroidx/fragment/app/W;->a:I

    invoke-static {v0, v1}, LB/a;->a(Landroid/view/View;I)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/c;->e:Landroidx/fragment/app/f;

    invoke-virtual {p0}, Landroidx/appcompat/app/B;->d()V

    const/4 p0, 0x2

    const-string v0, "FragmentManager"

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Animator from operation "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " has ended."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

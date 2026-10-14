.class public final LX0/c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LX0/d;


# direct methods
.method public constructor <init>(LX0/d;I)V
    .locals 0

    iput-object p1, p0, LX0/c;->b:LX0/d;

    iput p2, p0, LX0/c;->a:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, LX0/c;->b:LX0/d;

    iget p0, p0, LX0/c;->a:I

    iput p0, p1, LX0/d;->e:I

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, LX0/c;->b:LX0/d;

    iget p0, p0, LX0/c;->a:I

    iput p0, p1, LX0/d;->e:I

    return-void
.end method

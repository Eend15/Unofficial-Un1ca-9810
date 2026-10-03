.class public final Lk/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# instance fields
.field public a:Landroidx/recyclerview/widget/y;

.field public final b:Landroid/view/ActionProvider;

.field public final synthetic c:Lk/q;


# direct methods
.method public constructor <init>(Lk/q;Landroid/view/ActionProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk/m;->c:Lk/q;

    iput-object p2, p0, Lk/m;->b:Landroid/view/ActionProvider;

    return-void
.end method


# virtual methods
.method public final onActionProviderVisibilityChanged(Z)V
    .locals 0

    iget-object p0, p0, Lk/m;->a:Landroidx/recyclerview/widget/y;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast p0, Lk/l;

    iget-object p0, p0, Lk/l;->n:Lk/j;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lk/j;->h:Z

    invoke-virtual {p0, p1}, Lk/j;->p(Z)V

    :cond_0
    return-void
.end method

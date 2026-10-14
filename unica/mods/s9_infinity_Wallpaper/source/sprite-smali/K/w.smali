.class public final LK/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:LK/p;


# direct methods
.method public constructor <init>(Landroid/view/View;LK/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LK/w;->a:Landroid/view/View;

    iput-object p2, p0, LK/w;->b:LK/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-static {p1, p2}, LK/U;->f(Landroid/view/View;Landroid/view/WindowInsets;)LK/U;

    move-result-object p2

    iget-object p0, p0, LK/w;->b:LK/p;

    invoke-interface {p0, p1, p2}, LK/p;->c(Landroid/view/View;LK/U;)LK/U;

    move-result-object p0

    invoke-virtual {p0}, LK/U;->e()Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

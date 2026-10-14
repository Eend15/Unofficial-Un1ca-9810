.class Landroidx/activity/ComponentActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/r;


# instance fields
.field public final synthetic d:Landroidx/fragment/app/w;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/ComponentActivity$4;->d:Landroidx/fragment/app/w;

    return-void
.end method


# virtual methods
.method public final b(Landroidx/lifecycle/t;Landroidx/lifecycle/m;)V
    .locals 0

    sget-object p1, Landroidx/lifecycle/m;->ON_DESTROY:Landroidx/lifecycle/m;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroidx/activity/ComponentActivity$4;->d:Landroidx/fragment/app/w;

    iget-object p1, p1, Landroidx/activity/i;->mContextAwareHelper:Lc/a;

    const/4 p2, 0x0

    iput-object p2, p1, Lc/a;->b:Landroidx/activity/i;

    iget-object p1, p0, Landroidx/activity/ComponentActivity$4;->d:Landroidx/fragment/app/w;

    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Landroidx/activity/ComponentActivity$4;->d:Landroidx/fragment/app/w;

    invoke-virtual {p0}, Landroidx/activity/i;->getViewModelStore()Landroidx/lifecycle/V;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/V;->a()V

    :cond_0
    return-void
.end method

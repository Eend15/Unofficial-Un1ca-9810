.class public final Landroidx/lifecycle/D;
.super Landroidx/lifecycle/g;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Landroidx/lifecycle/E;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/E;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/D;->this$0:Landroidx/lifecycle/E;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p0, "activity"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/lifecycle/D;->this$0:Landroidx/lifecycle/E;

    iget p1, p0, Landroidx/lifecycle/E;->e:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/lifecycle/E;->e:I

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/E;->h:Landroid/os/Handler;

    invoke-static {p1}, LF3/k;->c(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/lifecycle/E;->j:LA0/a;

    const-wide/16 v0, 0x2bc

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "activity"

    invoke-static {p1, p2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Landroidx/lifecycle/D$a;

    iget-object p0, p0, Landroidx/lifecycle/D;->this$0:Landroidx/lifecycle/E;

    invoke-direct {p2, p0}, Landroidx/lifecycle/D$a;-><init>(Landroidx/lifecycle/E;)V

    invoke-static {p1, p2}, Landroidx/lifecycle/C;->a(Landroid/app/Activity;Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/lifecycle/D;->this$0:Landroidx/lifecycle/E;

    iget p1, p0, Landroidx/lifecycle/E;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/lifecycle/E;->d:I

    if-nez p1, :cond_0

    iget-boolean p1, p0, Landroidx/lifecycle/E;->f:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/E;->i:Landroidx/lifecycle/v;

    sget-object v0, Landroidx/lifecycle/m;->ON_STOP:Landroidx/lifecycle/m;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/lifecycle/E;->g:Z

    :cond_0
    return-void
.end method

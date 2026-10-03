.class public final Landroidx/lifecycle/D$a;
.super Landroidx/lifecycle/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/D;->onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/lifecycle/E;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/E;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/D$a;->this$0:Landroidx/lifecycle/E;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityPostResumed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/lifecycle/D$a;->this$0:Landroidx/lifecycle/E;

    iget p1, p0, Landroidx/lifecycle/E;->e:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/lifecycle/E;->e:I

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Landroidx/lifecycle/E;->f:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/E;->i:Landroidx/lifecycle/v;

    sget-object v0, Landroidx/lifecycle/m;->ON_RESUME:Landroidx/lifecycle/m;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/lifecycle/E;->f:Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/lifecycle/E;->h:Landroid/os/Handler;

    invoke-static {p1}, LF3/k;->c(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/lifecycle/E;->j:LA0/a;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onActivityPostStarted(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/lifecycle/D$a;->this$0:Landroidx/lifecycle/E;

    iget p1, p0, Landroidx/lifecycle/E;->d:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/lifecycle/E;->d:I

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Landroidx/lifecycle/E;->g:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/E;->i:Landroidx/lifecycle/v;

    sget-object v0, Landroidx/lifecycle/m;->ON_START:Landroidx/lifecycle/m;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/lifecycle/E;->g:Z

    :cond_0
    return-void
.end method

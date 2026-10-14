.class public final Landroidx/lifecycle/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final d:Landroidx/lifecycle/v;

.field public final e:Landroidx/lifecycle/m;

.field public f:Z


# direct methods
.method public constructor <init>(Landroidx/lifecycle/v;Landroidx/lifecycle/m;)V
    .locals 1

    const-string v0, "registry"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/P;->d:Landroidx/lifecycle/v;

    iput-object p2, p0, Landroidx/lifecycle/P;->e:Landroidx/lifecycle/m;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-boolean v0, p0, Landroidx/lifecycle/P;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/lifecycle/P;->d:Landroidx/lifecycle/v;

    iget-object v1, p0, Landroidx/lifecycle/P;->e:Landroidx/lifecycle/m;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/P;->f:Z

    :cond_0
    return-void
.end method

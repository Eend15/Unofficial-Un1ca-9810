.class public final Lx0/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final d:Ly0/k;

.field public final e:Lw0/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkForegroundRunnable"

    invoke-static {v0}, Ln0/o;->f(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lw0/p;Ln0/n;Lx0/s;Ln1/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ly0/k;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx0/r;->d:Ly0/k;

    iput-object p2, p0, Lx0/r;->e:Lw0/p;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lx0/r;->e:Lw0/p;

    iget-boolean v0, v0, Lw0/p;->q:Z

    iget-object p0, p0, Lx0/r;->d:Ly0/k;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ly0/k;->j(Ljava/lang/Object;)Z

    return-void
.end method

.class public abstract Ln0/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final d:Landroid/content/Context;

.field public final e:Landroidx/work/WorkerParameters;

.field public volatile f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Ln0/n;->d:Landroid/content/Context;

    iput-object p2, p0, Ln0/n;->e:Landroidx/work/WorkerParameters;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "WorkerParameters is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Application Context is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public c()V
    .locals 0

    return-void
.end method

.method public abstract d()Ly0/k;
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ln0/n;->f:Z

    invoke-virtual {p0}, Ln0/n;->c()V

    return-void
.end method

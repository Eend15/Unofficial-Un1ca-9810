.class public final Ly0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final d:Ly0/k;

.field public final e:LZ0/a;


# direct methods
.method public constructor <init>(Ly0/k;LZ0/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly0/f;->d:Ly0/k;

    iput-object p2, p0, Ly0/f;->e:LZ0/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ly0/f;->d:Ly0/k;

    iget-object v0, v0, Ly0/i;->a:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ly0/f;->e:LZ0/a;

    invoke-static {v0}, Ly0/i;->f(LZ0/a;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ly0/i;->f:Lp4/g;

    iget-object v2, p0, Ly0/f;->d:Ly0/k;

    invoke-virtual {v1, v2, p0, v0}, Lp4/g;->j(Ly0/i;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Ly0/f;->d:Ly0/k;

    invoke-static {p0}, Ly0/i;->c(Ly0/i;)V

    :cond_1
    return-void
.end method

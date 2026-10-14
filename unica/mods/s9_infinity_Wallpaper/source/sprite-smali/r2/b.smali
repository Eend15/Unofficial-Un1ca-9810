.class public final Lr2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls1/b;

.field public final b:Lj2/b;

.field public final c:Li2/a;

.field public final d:Lp2/d;

.field public final e:Ly2/d;

.field public final f:LW4/t;

.field public final g:Lh2/b;

.field public h:LW4/x;


# direct methods
.method public constructor <init>(Ls1/b;Lj2/b;Li2/a;Lp2/a;Lp2/d;Ly2/d;LW4/t;Lh2/b;)V
    .locals 0

    const-string p4, "magicianRepository"

    invoke-static {p2, p4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "weatherEffectsRepository"

    invoke-static {p5, p4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "thumbnailUtils"

    invoke-static {p6, p4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "dumpUtil"

    invoke-static {p8, p4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr2/b;->a:Ls1/b;

    iput-object p2, p0, Lr2/b;->b:Lj2/b;

    iput-object p3, p0, Lr2/b;->c:Li2/a;

    iput-object p5, p0, Lr2/b;->d:Lp2/d;

    iput-object p6, p0, Lr2/b;->e:Ly2/d;

    iput-object p7, p0, Lr2/b;->f:LW4/t;

    iput-object p8, p0, Lr2/b;->g:Lh2/b;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lr2/b;->h:LW4/x;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "continueBlock = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "UpdateWeatherData"

    invoke-static {v3, v0, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lr2/b;->h:LW4/x;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LW4/Y;->a()Z

    move-result v2

    const-string v4, "continueBlock isActive = "

    invoke-static {v4, v2}, Li4/b;->h(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, LW4/Y;->q()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, LW4/M;

    xor-int/lit8 v2, v2, 0x1

    const-string v4, "continueBlock isCompleted = "

    invoke-static {v4, v2}, Li4/b;->h(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, LW4/Y;->q()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, LW4/M;

    if-eqz v0, :cond_0

    const-string p0, ">>> Previous job isn\'t completed. So do not update weather data again."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Lr2/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lr2/a;-><init>(Lr2/b;Lu3/d;)V

    iget-object v1, p0, Lr2/b;->f:LW4/t;

    invoke-static {v1, v0}, LW4/u;->h(LW4/t;LE3/c;)LW4/x;

    move-result-object v0

    iput-object v0, p0, Lr2/b;->h:LW4/x;

    return-void
.end method

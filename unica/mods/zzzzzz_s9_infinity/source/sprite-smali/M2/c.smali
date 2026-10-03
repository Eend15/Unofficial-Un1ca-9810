.class public final LM2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD2/m;


# instance fields
.field public final a:LO2/a;

.field public final b:LC2/b;

.field public final c:LF2/d;

.field public final d:LT2/a;

.field public final e:LI2/f;

.field public final f:LM2/f;

.field public final g:LM2/g;

.field public final h:LM2/h;


# direct methods
.method public constructor <init>(LO2/a;LC2/b;LF2/d;LT2/a;LI2/f;LM2/f;LM2/g;LM2/h;)V
    .locals 1

    const-string v0, "utils"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageContract"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "useCaseFactory"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferenceUtils"

    invoke-static {p4, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notifier"

    invoke-static {p5, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerEnqueueHelper"

    invoke-static {p6, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerRegister"

    invoke-static {p7, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerTerminator"

    invoke-static {p8, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM2/c;->a:LO2/a;

    iput-object p2, p0, LM2/c;->b:LC2/b;

    iput-object p3, p0, LM2/c;->c:LF2/d;

    iput-object p4, p0, LM2/c;->d:LT2/a;

    iput-object p5, p0, LM2/c;->e:LI2/f;

    iput-object p6, p0, LM2/c;->f:LM2/f;

    iput-object p7, p0, LM2/c;->g:LM2/g;

    iput-object p8, p0, LM2/c;->h:LM2/h;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroidx/work/WorkerParameters;)Landroidx/work/Worker;
    .locals 12

    const-string v0, "appContext"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;

    iget-object v10, p0, LM2/c;->g:LM2/g;

    iget-object v11, p0, LM2/c;->h:LM2/h;

    iget-object v4, p0, LM2/c;->a:LO2/a;

    iget-object v5, p0, LM2/c;->b:LC2/b;

    iget-object v6, p0, LM2/c;->c:LF2/d;

    iget-object v7, p0, LM2/c;->d:LT2/a;

    iget-object v8, p0, LM2/c;->e:LI2/f;

    iget-object v9, p0, LM2/c;->f:LM2/f;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v11}, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;LO2/a;LC2/b;LF2/d;LT2/a;LI2/f;LM2/f;LM2/g;LM2/h;)V

    return-object v0
.end method

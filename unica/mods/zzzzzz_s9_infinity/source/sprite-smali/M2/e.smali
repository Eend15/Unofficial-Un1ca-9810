.class public final LM2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD2/m;


# instance fields
.field public final a:LO2/a;

.field public final b:LF2/g;

.field public final c:LI2/f;


# direct methods
.method public constructor <init>(LO2/a;LF2/g;LI2/f;)V
    .locals 1

    const-string v0, "utils"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "useCaseFactory"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notifier"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM2/e;->a:LO2/a;

    iput-object p2, p0, LM2/e;->b:LF2/g;

    iput-object p3, p0, LM2/e;->c:LI2/f;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroidx/work/WorkerParameters;)Landroidx/work/Worker;
    .locals 7

    const-string v0, "appContext"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateSingleWorker;

    iget-object v6, p0, LM2/e;->c:LI2/f;

    iget-object v4, p0, LM2/e;->a:LO2/a;

    iget-object v5, p0, LM2/e;->b:LF2/g;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateSingleWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;LO2/a;LF2/g;LI2/f;)V

    return-object v0
.end method

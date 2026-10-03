.class public final Ls1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr1/a;

.field public final b:Lr1/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr1/a;Lr1/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "weatherDaemonPreference"

    invoke-static {p2, p1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "weatherRepository"

    invoke-static {p3, p1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ls1/c;->a:Lr1/a;

    iput-object p3, p0, Ls1/c;->b:Lr1/c;

    return-void
.end method

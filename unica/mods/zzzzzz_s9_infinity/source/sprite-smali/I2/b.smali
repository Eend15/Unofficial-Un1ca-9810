.class public final LI2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI2/f;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/os/Handler;

.field public final c:LO2/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;LO2/a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "utils"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI2/b;->a:Landroid/content/Context;

    iput-object p2, p0, LI2/b;->b:Landroid/os/Handler;

    iput-object p3, p0, LI2/b;->c:LO2/a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, LI2/a;

    new-instance v0, LA0/b;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1, p1}, LA0/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p0, p0, LI2/b;->b:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

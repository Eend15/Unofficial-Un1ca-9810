.class public final LA1/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk1/c;


# instance fields
.field public final synthetic a:LA1/o;


# direct methods
.method public constructor <init>(LA1/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA1/k;->a:LA1/o;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, LA1/k;->a:LA1/o;

    iget-object v0, v0, LA1/o;->j:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, LA1/j;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, LA1/j;-><init>(LA1/k;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final onError()V
    .locals 3

    iget-object v0, p0, LA1/k;->a:LA1/o;

    iget-object v0, v0, LA1/o;->j:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, LA1/j;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LA1/j;-><init>(LA1/k;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

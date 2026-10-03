.class public final synthetic Lretrofit2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;

.field public final synthetic f:Lretrofit2/Callback;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;Lretrofit2/Callback;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lretrofit2/a;->d:I

    iput-object p1, p0, Lretrofit2/a;->e:Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;

    iput-object p2, p0, Lretrofit2/a;->f:Lretrofit2/Callback;

    iput-object p3, p0, Lretrofit2/a;->g:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lretrofit2/a;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lretrofit2/a;->g:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    iget-object v1, p0, Lretrofit2/a;->e:Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;

    iget-object p0, p0, Lretrofit2/a;->f:Lretrofit2/Callback;

    invoke-static {v1, p0, v0}, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;->a(Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;Lretrofit2/Callback;Ljava/lang/Throwable;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lretrofit2/a;->g:Ljava/lang/Object;

    check-cast v0, Lretrofit2/Response;

    iget-object v1, p0, Lretrofit2/a;->e:Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;

    iget-object p0, p0, Lretrofit2/a;->f:Lretrofit2/Callback;

    invoke-static {v1, p0, v0}, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;->b(Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;Lretrofit2/Callback;Lretrofit2/Response;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic LB/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    iput p2, p0, LB/k;->d:I

    iput-object p3, p0, LB/k;->f:Ljava/lang/Object;

    iput p1, p0, LB/k;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, LB/k;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LB/k;->f:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;

    iget p0, p0, LB/k;->e:I

    invoke-virtual {v0, p0}, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->b(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, LB/k;->f:Ljava/lang/Object;

    check-cast v0, LB/c;

    iget p0, p0, LB/k;->e:I

    invoke-virtual {v0, p0}, LB/c;->d(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

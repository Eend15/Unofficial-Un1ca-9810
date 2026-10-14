.class public final LK0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final e:I

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LK0/a;->d:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK0/a;->g:Ljava/lang/Object;

    iput-object p2, p0, LK0/a;->f:Ljava/lang/Object;

    iput p3, p0, LK0/a;->e:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, LK0/a;->d:I

    iput-object p1, p0, LK0/a;->g:Ljava/lang/Object;

    iput p2, p0, LK0/a;->e:I

    iput-object p3, p0, LK0/a;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 2
    iput p4, p0, LK0/a;->d:I

    iput-object p1, p0, LK0/a;->f:Ljava/lang/Object;

    iput-object p2, p0, LK0/a;->g:Ljava/lang/Object;

    iput p3, p0, LK0/a;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, LK0/a;->f:Ljava/lang/Object;

    iget v2, p0, LK0/a;->e:I

    iget-object v3, p0, LK0/a;->g:Ljava/lang/Object;

    iget p0, p0, LK0/a;->d:I

    packed-switch p0, :pswitch_data_0

    check-cast v3, Landroidx/work/impl/foreground/SystemForegroundService;

    iget-object p0, v3, Landroidx/work/impl/foreground/SystemForegroundService;->h:Landroid/app/NotificationManager;

    check-cast v1, Landroid/app/Notification;

    invoke-virtual {p0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :pswitch_0
    check-cast v3, Landroid/content/Intent;

    check-cast v1, Lq0/i;

    invoke-virtual {v1, v3, v2}, Lq0/i;->a(Landroid/content/Intent;I)V

    return-void

    :pswitch_1
    check-cast v3, Landroid/graphics/Typeface;

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void

    :pswitch_2
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v4, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string v4, "androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION"

    check-cast v1, Landroid/content/IntentSender$SendIntentException;

    invoke-virtual {p0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p0

    check-cast v3, Landroidx/activity/d;

    invoke-virtual {v3, v2, v0, p0}, Landroidx/activity/result/g;->a(IILandroid/content/Intent;)Z

    return-void

    :pswitch_3
    check-cast v1, LV0/c;

    iget-object p0, v1, LV0/c;->a:Ljava/lang/Object;

    check-cast v3, Landroidx/activity/d;

    iget-object v0, v3, Landroidx/activity/result/g;->b:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v3, Landroidx/activity/result/g;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/activity/result/e;

    if-eqz v1, :cond_2

    iget-object v1, v1, Landroidx/activity/result/e;->a:Landroidx/activity/result/a;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v3, Landroidx/activity/result/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1, p0}, Landroidx/activity/result/a;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v1, v3, Landroidx/activity/result/g;->h:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v1, v3, Landroidx/activity/result/g;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void

    :pswitch_4
    sget p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b0:I

    check-cast v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v3, v1, v2, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C(Landroid/view/View;IZ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

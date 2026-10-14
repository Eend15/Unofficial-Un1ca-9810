.class public final synthetic Lcom/samsung/android/sdk/scs/ai/asr/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/net/Uri;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 0

    iput p5, p0, Lcom/samsung/android/sdk/scs/ai/asr/c;->a:I

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/c;->b:Landroid/net/Uri;

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/asr/c;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/scs/ai/asr/c;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/scs/ai/asr/c;->e:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/c;->a:I

    check-cast p1, Landroid/content/ContentResolver;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/c;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/c;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/asr/c;->b:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/c;->e:Landroid/os/Bundle;

    invoke-static {v2, v0, v1, p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/Environment;->x(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/ContentResolver;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/c;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/c;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/asr/c;->b:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/c;->e:Landroid/os/Bundle;

    invoke-static {v2, v0, v1, p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->v(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/ContentResolver;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

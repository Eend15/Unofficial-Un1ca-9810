.class Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$1;
.super Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;
.source "IrisSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->removeAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 348
    iput-object p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$1;->this$0:Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovalError(Lcom/samsung/android/camera/iris/Iris;ILjava/lang/CharSequence;)V
    .registers 5

    .line 351
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "iris removal error "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UN1CA-IrisSettings"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$1;->this$0:Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->-$$Nest$monRemoved(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V

    .line 353
    return-void
.end method

.method public onRemovalSucceeded(Lcom/samsung/android/camera/iris/Iris;)V
    .registers 2

    .line 349
    iget-object p1, p0, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment$1;->this$0:Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;->-$$Nest$monRemoved(Lcom/samsung/android/settings/un1ca/IrisSettingsFragment;)V

    return-void
.end method

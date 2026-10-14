.class public final synthetic Ld1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, Ld1/a;->a:I

    iput-object p1, p0, Ld1/a;->e:Ljava/lang/Object;

    iput-object p2, p0, Ld1/a;->b:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    iput-object p3, p0, Ld1/a;->c:Ljava/lang/String;

    iput-object p4, p0, Ld1/a;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Ld1/a;->a:I

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ld1/a;->b:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    iget-object v1, p0, Ld1/a;->c:Ljava/lang/String;

    iget-object v2, p0, Ld1/a;->e:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/sdk/scs/ai/language/Summarizer;

    iget-object p0, p0, Ld1/a;->d:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;

    invoke-static {v2, v0, v1, p0, p1}, Lcom/samsung/android/sdk/scs/ai/language/Summarizer;->c(Lcom/samsung/android/sdk/scs/ai/language/Summarizer;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/language/SummaryOnDeviceType;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Ld1/a;->b:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    iget-object v1, p0, Ld1/a;->c:Ljava/lang/String;

    iget-object v2, p0, Ld1/a;->e:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/sdk/scs/ai/language/Suggester;

    iget-object p0, p0, Ld1/a;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-static {v2, v0, v1, p0, p1}, Lcom/samsung/android/sdk/scs/ai/language/Suggester;->c(Lcom/samsung/android/sdk/scs/ai/language/Suggester;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Ljava/util/Map;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Ld1/a;->b:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    iget-object v1, p0, Ld1/a;->c:Ljava/lang/String;

    iget-object v2, p0, Ld1/a;->e:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/sdk/scs/ai/language/SmartReplyer;

    iget-object p0, p0, Ld1/a;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-static {v2, v0, v1, p0, p1}, Lcom/samsung/android/sdk/scs/ai/language/SmartReplyer;->d(Lcom/samsung/android/sdk/scs/ai/language/SmartReplyer;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Ljava/util/Map;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Ld1/a;->b:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    iget-object v1, p0, Ld1/a;->c:Ljava/lang/String;

    iget-object v2, p0, Ld1/a;->e:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/sdk/scs/ai/language/SmartCoverer;

    iget-object p0, p0, Ld1/a;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-static {v2, v0, v1, p0, p1}, Lcom/samsung/android/sdk/scs/ai/language/SmartCoverer;->c(Lcom/samsung/android/sdk/scs/ai/language/SmartCoverer;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Ljava/util/Map;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Ld1/a;->b:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    iget-object v1, p0, Ld1/a;->c:Ljava/lang/String;

    iget-object v2, p0, Ld1/a;->e:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/sdk/scs/ai/language/EmojiAugmentor;

    iget-object p0, p0, Ld1/a;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-static {v2, v0, v1, p0, p1}, Lcom/samsung/android/sdk/scs/ai/language/EmojiAugmentor;->b(Lcom/samsung/android/sdk/scs/ai/language/EmojiAugmentor;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Ljava/util/Map;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Ld1/a;->b:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    iget-object v1, p0, Ld1/a;->c:Ljava/lang/String;

    iget-object v2, p0, Ld1/a;->e:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/sdk/scs/ai/language/Classifier;

    iget-object p0, p0, Ld1/a;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-static {v2, v0, v1, p0, p1}, Lcom/samsung/android/sdk/scs/ai/language/Classifier;->a(Lcom/samsung/android/sdk/scs/ai/language/Classifier;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Ljava/util/Map;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

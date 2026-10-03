.class public final synthetic Lcom/samsung/android/sdk/scs/ai/translation/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/i;->a:I

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/translation/i;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/i;->a:I

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/i;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->f(Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;Ljava/util/Map$Entry;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p0, Ljava/lang/String;

    check-cast p1, Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->c(Ljava/lang/String;Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

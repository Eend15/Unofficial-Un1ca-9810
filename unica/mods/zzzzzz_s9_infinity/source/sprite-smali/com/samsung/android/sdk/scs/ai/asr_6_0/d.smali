.class public final synthetic Lcom/samsung/android/sdk/scs/ai/asr_6_0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# instance fields
.field public final synthetic a:Lcom/samsung/android/sdk/scs/ai/asr_6_0/ExpiringData;

.field public final synthetic b:Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sdk/scs/ai/asr_6_0/ExpiringData;Ljava/util/function/Supplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/d;->a:Lcom/samsung/android/sdk/scs/ai/asr_6_0/ExpiringData;

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/d;->b:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/d;->a:Lcom/samsung/android/sdk/scs/ai/asr_6_0/ExpiringData;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/d;->b:Ljava/util/function/Supplier;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/ExpiringData;->b(Lcom/samsung/android/sdk/scs/ai/asr_6_0/ExpiringData;Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.class Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionStateMapper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/HashMap;Ljava/util/Map$Entry;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionStateMapper;->lambda$from$0(Ljava/util/Map;Ljava/util/Map$Entry;)V

    return-void
.end method

.method public static from(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;",
            "Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/translation/a;

    invoke-direct {v1, v0}, Lcom/samsung/android/sdk/scs/ai/translation/a;-><init>(Ljava/util/HashMap;)V

    invoke-interface {p0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method private static synthetic lambda$from$0(Ljava/util/Map;Ljava/util/Map$Entry;)V
    .locals 1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;->from(I)Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

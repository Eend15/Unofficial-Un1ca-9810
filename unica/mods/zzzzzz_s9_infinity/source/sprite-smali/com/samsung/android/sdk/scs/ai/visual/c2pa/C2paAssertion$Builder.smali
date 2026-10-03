.class public final Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paAssertion$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paAssertion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u00020\u00002\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004J\u0006\u0010\u0008\u001a\u00020\tR\u0016\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paAssertion$Builder;",
        "",
        "()V",
        "actions",
        "",
        "Lcom/samsung/android/sdk/scs/ai/visual/c2pa/Action;",
        "label",
        "",
        "build",
        "Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paAssertion;",
        "scs-ai-4.0.32_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/scs/ai/visual/c2pa/Action;",
            ">;"
        }
    .end annotation
.end field

.field private final label:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "c2pa.actions"

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paAssertion$Builder;->label:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final actions(Ljava/util/List;)Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paAssertion$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/scs/ai/visual/c2pa/Action;",
            ">;)",
            "Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paAssertion$Builder;"
        }
    .end annotation

    const-string v0, "actions"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paAssertion$Builder;->actions:Ljava/util/List;

    return-object p0
.end method

.method public final build()Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paAssertion;
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paAssertion;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paAssertion$Builder;->label:Ljava/lang/String;

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/Data;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paAssertion$Builder;->actions:Ljava/util/List;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/Data;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paAssertion;-><init>(Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/visual/c2pa/Data;)V

    return-object v0
.end method

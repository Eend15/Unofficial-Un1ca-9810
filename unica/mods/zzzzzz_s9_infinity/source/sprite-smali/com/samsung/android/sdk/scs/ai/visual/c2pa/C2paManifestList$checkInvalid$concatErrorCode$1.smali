.class final Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paManifestList$checkInvalid$concatErrorCode$1;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paManifestList;->checkInvalid(Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LF3/l;",
        "LE3/b;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/samsung/android/sdk/scs/ai/visual/c2pa/ValidationStatus;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paManifestList$checkInvalid$concatErrorCode$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paManifestList$checkInvalid$concatErrorCode$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paManifestList$checkInvalid$concatErrorCode$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paManifestList$checkInvalid$concatErrorCode$1;->INSTANCE:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paManifestList$checkInvalid$concatErrorCode$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/samsung/android/sdk/scs/ai/visual/c2pa/ValidationStatus;)Ljava/lang/CharSequence;
    .locals 0

    const-string p0, "it"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/ValidationStatus;->getCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/ValidationStatus;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paManifestList$checkInvalid$concatErrorCode$1;->invoke(Lcom/samsung/android/sdk/scs/ai/visual/c2pa/ValidationStatus;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.class public final synthetic Lg1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/sdk/scs/ai/text/unit/UnitConverter;

.field public final synthetic b:Ljava/math/BigDecimal;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sdk/scs/ai/text/unit/UnitConverter;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg1/a;->a:Lcom/samsung/android/sdk/scs/ai/text/unit/UnitConverter;

    iput-object p2, p0, Lg1/a;->b:Ljava/math/BigDecimal;

    iput-object p3, p0, Lg1/a;->c:Ljava/lang/String;

    iput-object p4, p0, Lg1/a;->d:Ljava/lang/String;

    iput-object p5, p0, Lg1/a;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lg1/a;->b:Ljava/math/BigDecimal;

    iget-object v1, p0, Lg1/a;->c:Ljava/lang/String;

    iget-object v2, p0, Lg1/a;->a:Lcom/samsung/android/sdk/scs/ai/text/unit/UnitConverter;

    iget-object v3, p0, Lg1/a;->d:Ljava/lang/String;

    iget-object p0, p0, Lg1/a;->e:Ljava/lang/String;

    invoke-static {v2, v0, v1, v3, p0}, Lcom/samsung/android/sdk/scs/ai/text/unit/UnitConverter;->b(Lcom/samsung/android/sdk/scs/ai/text/unit/UnitConverter;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

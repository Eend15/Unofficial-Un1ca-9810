.class public Lcom/samsung/android/sdk/scs/ai/text/unit/Quantity;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private name:Ljava/lang/String;

.field private symbol:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private value:Ljava/math/BigDecimal;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/text/unit/Quantity;->type:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/text/unit/Quantity;->name:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/text/unit/Quantity;->symbol:Ljava/lang/String;

    .line 5
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/text/unit/Quantity;->value:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/text/unit/Quantity;->type:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/text/unit/Quantity;->name:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/text/unit/Quantity;->symbol:Ljava/lang/String;

    .line 10
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 11
    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/unit/Quantity;->type:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/text/unit/Quantity;->name:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/samsung/android/sdk/scs/ai/text/unit/Quantity;->symbol:Ljava/lang/String;

    .line 14
    iput-object p4, p0, Lcom/samsung/android/sdk/scs/ai/text/unit/Quantity;->value:Ljava/math/BigDecimal;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/unit/Quantity;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/unit/Quantity;->symbol:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/unit/Quantity;->type:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()Ljava/math/BigDecimal;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/unit/Quantity;->value:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/unit/Quantity;->name:Ljava/lang/String;

    return-void
.end method

.method public setSymbol(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/unit/Quantity;->symbol:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/unit/Quantity;->type:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/math/BigDecimal;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/unit/Quantity;->value:Ljava/math/BigDecimal;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/text/unit/Quantity;->value:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/unit/Quantity;->symbol:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

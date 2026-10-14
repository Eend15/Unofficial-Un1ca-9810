.class public Lcom/samsung/android/sdk/scs/ai/language/ExtractionInputParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private category:Lcom/samsung/android/sdk/scs/ai/language/ExtractionCategory;

.field private data:[B

.field private dataMimeType:Ljava/lang/String;

.field private final inputText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/language/ExtractionCategory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/ExtractionInputParams;->inputText:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/language/ExtractionInputParams;->category:Lcom/samsung/android/sdk/scs/ai/language/ExtractionCategory;

    .line 4
    const-string p1, ""

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/ExtractionInputParams;->dataMimeType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BLcom/samsung/android/sdk/scs/ai/language/ExtractionCategory;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/ExtractionInputParams;->inputText:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/language/ExtractionInputParams;->data:[B

    .line 8
    iput-object p3, p0, Lcom/samsung/android/sdk/scs/ai/language/ExtractionInputParams;->category:Lcom/samsung/android/sdk/scs/ai/language/ExtractionCategory;

    .line 9
    const-string p1, ""

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/ExtractionInputParams;->dataMimeType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BLcom/samsung/android/sdk/scs/ai/language/ExtractionCategory;Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/ExtractionInputParams;->inputText:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/language/ExtractionInputParams;->data:[B

    .line 13
    iput-object p3, p0, Lcom/samsung/android/sdk/scs/ai/language/ExtractionInputParams;->category:Lcom/samsung/android/sdk/scs/ai/language/ExtractionCategory;

    .line 14
    iput-object p4, p0, Lcom/samsung/android/sdk/scs/ai/language/ExtractionInputParams;->dataMimeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCategory()Lcom/samsung/android/sdk/scs/ai/language/ExtractionCategory;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/ExtractionInputParams;->category:Lcom/samsung/android/sdk/scs/ai/language/ExtractionCategory;

    return-object p0
.end method

.method public getData()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/ExtractionInputParams;->data:[B

    return-object p0
.end method

.method public getDataMimeType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/ExtractionInputParams;->dataMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public getInputText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/ExtractionInputParams;->inputText:Ljava/lang/String;

    return-object p0
.end method

.method public setData([B)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/ExtractionInputParams;->data:[B

    array-length p0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public setDataMimeType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/ExtractionInputParams;->dataMimeType:Ljava/lang/String;

    return-void
.end method

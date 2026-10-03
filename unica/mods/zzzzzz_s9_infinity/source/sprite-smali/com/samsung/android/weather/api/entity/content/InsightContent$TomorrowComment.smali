.class public final Lcom/samsung/android/weather/api/entity/content/InsightContent$TomorrowComment;
.super Lcom/samsung/android/weather/api/entity/content/InsightContent$AdditionalInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/weather/api/entity/content/InsightContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TomorrowComment"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\t\u0010\u0008\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\t\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u00d6\u0003J\t\u0010\u000e\u001a\u00020\u000fH\u00d6\u0001J\t\u0010\u0010\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/samsung/android/weather/api/entity/content/InsightContent$TomorrowComment;",
        "Lcom/samsung/android/weather/api/entity/content/InsightContent$AdditionalInfo;",
        "data",
        "",
        "<init>",
        "(Ljava/lang/String;)V",
        "getData",
        "()Ljava/lang/String;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "weather-api-1.0.46_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final data:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1, v0}, Lcom/samsung/android/weather/api/entity/content/InsightContent$TomorrowComment;-><init>(Ljava/lang/String;ILF3/f;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/samsung/android/weather/api/entity/content/InsightContent$AdditionalInfo;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$TomorrowComment;->data:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILF3/f;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 2
    const-string p1, ""

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/weather/api/entity/content/InsightContent$TomorrowComment;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/weather/api/entity/content/InsightContent$TomorrowComment;Ljava/lang/String;ILjava/lang/Object;)Lcom/samsung/android/weather/api/entity/content/InsightContent$TomorrowComment;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$TomorrowComment;->data:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/weather/api/entity/content/InsightContent$TomorrowComment;->copy(Ljava/lang/String;)Lcom/samsung/android/weather/api/entity/content/InsightContent$TomorrowComment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$TomorrowComment;->data:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;)Lcom/samsung/android/weather/api/entity/content/InsightContent$TomorrowComment;
    .locals 0

    const-string p0, "data"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$TomorrowComment;

    invoke-direct {p0, p1}, Lcom/samsung/android/weather/api/entity/content/InsightContent$TomorrowComment;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/weather/api/entity/content/InsightContent$TomorrowComment;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/weather/api/entity/content/InsightContent$TomorrowComment;

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$TomorrowComment;->data:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/weather/api/entity/content/InsightContent$TomorrowComment;->data:Ljava/lang/String;

    invoke-static {p0, p1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getData()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$TomorrowComment;->data:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$TomorrowComment;->data:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$TomorrowComment;->data:Ljava/lang/String;

    const-string v0, "TomorrowComment(data="

    const-string v1, ")"

    invoke-static {v0, p0, v1}, LB/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

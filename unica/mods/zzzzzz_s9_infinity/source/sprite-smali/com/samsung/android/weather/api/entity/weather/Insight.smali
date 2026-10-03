.class public final Lcom/samsung/android/weather/api/entity/weather/Insight;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/weather/api/entity/weather/Insight$Companion;
    }
.end annotation

.annotation build Le/a;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0013\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\t\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0005H\u00c6\u0003J;\u0010\u0017\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001b\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001c\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000cR\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000eR\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000e\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/samsung/android/weather/api/entity/weather/Insight;",
        "",
        "type",
        "",
        "title",
        "",
        "priority",
        "phase",
        "url",
        "<init>",
        "(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V",
        "getType",
        "()I",
        "getTitle",
        "()Ljava/lang/String;",
        "getPriority",
        "getPhase",
        "getUrl",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "Companion",
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


# static fields
.field public static final AIR_QUALITY:I = 0xd

.field public static final Companion:Lcom/samsung/android/weather/api/entity/weather/Insight$Companion;

.field public static final FEELS_LIKE_TEMPERATURE:I = 0x7

.field public static final FINE_DUST:I = 0x11

.field public static final POLLEN:I = 0xb

.field public static final PRECIPITATION:I = 0x4

.field public static final RECORD_TEMPERATURE:I = 0x5

.field public static final SHORT_TERM_PRECIP:I = 0x3

.field public static final SNOW_FALL:I = 0x2

.field public static final SUNRISE_SUNSET:I = 0x10

.field public static final TEMPERATURE_CHANGE:I = 0xc

.field public static final THUNDERSTORM_IMPACT:I = 0x1

.field public static final TOMORROW_COMMENT:I = 0x14

.field public static final ULTRA_FINE_DUST:I = 0x12

.field public static final UV:I = 0x8

.field public static final WIND:I = 0x9


# instance fields
.field private final phase:Ljava/lang/String;

.field private final priority:I

.field private final title:Ljava/lang/String;

.field private final type:I

.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/weather/api/entity/weather/Insight$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/weather/api/entity/weather/Insight$Companion;-><init>(LF3/f;)V

    sput-object v0, Lcom/samsung/android/weather/api/entity/weather/Insight;->Companion:Lcom/samsung/android/weather/api/entity/weather/Insight$Companion;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phase"

    invoke-static {p4, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p5, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/weather/api/entity/weather/Insight;->type:I

    iput-object p2, p0, Lcom/samsung/android/weather/api/entity/weather/Insight;->title:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/weather/api/entity/weather/Insight;->priority:I

    iput-object p4, p0, Lcom/samsung/android/weather/api/entity/weather/Insight;->phase:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/weather/api/entity/weather/Insight;->url:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/weather/api/entity/weather/Insight;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/samsung/android/weather/api/entity/weather/Insight;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Lcom/samsung/android/weather/api/entity/weather/Insight;->type:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/samsung/android/weather/api/entity/weather/Insight;->title:Ljava/lang/String;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/samsung/android/weather/api/entity/weather/Insight;->priority:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/samsung/android/weather/api/entity/weather/Insight;->phase:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/samsung/android/weather/api/entity/weather/Insight;->url:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move p3, p1

    move-object p4, p7

    move p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/samsung/android/weather/api/entity/weather/Insight;->copy(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/weather/api/entity/weather/Insight;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/Insight;->type:I

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Insight;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/Insight;->priority:I

    return p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Insight;->phase:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Insight;->url:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/weather/api/entity/weather/Insight;
    .locals 6

    const-string p0, "title"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "phase"

    invoke-static {p4, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "url"

    invoke-static {p5, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/weather/api/entity/weather/Insight;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/weather/api/entity/weather/Insight;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/weather/api/entity/weather/Insight;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/weather/api/entity/weather/Insight;

    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/Insight;->type:I

    iget v3, p1, Lcom/samsung/android/weather/api/entity/weather/Insight;->type:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/Insight;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/weather/api/entity/weather/Insight;->title:Ljava/lang/String;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/Insight;->priority:I

    iget v3, p1, Lcom/samsung/android/weather/api/entity/weather/Insight;->priority:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/Insight;->phase:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/weather/api/entity/weather/Insight;->phase:Ljava/lang/String;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Insight;->url:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/weather/api/entity/weather/Insight;->url:Ljava/lang/String;

    invoke-static {p0, p1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getPhase()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Insight;->phase:Ljava/lang/String;

    return-object p0
.end method

.method public final getPriority()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/Insight;->priority:I

    return p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Insight;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final getType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/Insight;->type:I

    return p0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Insight;->url:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/weather/api/entity/weather/Insight;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/Insight;->title:Ljava/lang/String;

    invoke-static {v0, v1}, Le0/a;->e(ILjava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/Insight;->priority:I

    invoke-static {v1, v0}, Le0/a;->c(II)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/Insight;->phase:Ljava/lang/String;

    invoke-static {v0, v1}, Le0/a;->e(ILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Insight;->url:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/samsung/android/weather/api/entity/weather/Insight;->type:I

    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/Insight;->title:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/weather/api/entity/weather/Insight;->priority:I

    iget-object v3, p0, Lcom/samsung/android/weather/api/entity/weather/Insight;->phase:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Insight;->url:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Insight(type="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", title="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", priority="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", phase="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", url="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-static {v4, p0, v0}, LB/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class public final Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Le/a;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0018\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0006H\u00c6\u0003JO\u0010\u001d\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\u00062\u0008\u0008\u0002\u0010\n\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u001e\u001a\u00020\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010!\u001a\u00020\u0006H\u00d6\u0001J\t\u0010\"\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000eR\u0011\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0011R\u0011\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0011R\u0011\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0011\u00a8\u0006#"
    }
    d2 = {
        "Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;",
        "",
        "name",
        "",
        "packageName",
        "certiType",
        "",
        "certificate",
        "key",
        "dataPermission",
        "commandPermission",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V",
        "getName",
        "()Ljava/lang/String;",
        "getPackageName",
        "getCertiType",
        "()I",
        "getCertificate",
        "getKey",
        "getDataPermission",
        "getCommandPermission",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
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
.field private final certiType:I

.field private final certificate:Ljava/lang/String;

.field private final commandPermission:I

.field private final dataPermission:I

.field private final key:I

.field private final name:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "certificate"

    invoke-static {p4, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->packageName:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->certiType:I

    iput-object p4, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->certificate:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->key:I

    iput p6, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->dataPermission:I

    iput p7, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->commandPermission:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIILjava/lang/Object;)Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->name:Ljava/lang/String;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->packageName:Ljava/lang/String;

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->certiType:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->certificate:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->key:I

    :cond_4
    move v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget p6, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->dataPermission:I

    :cond_5
    move v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget p7, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->commandPermission:I

    :cond_6
    move v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move p5, v0

    move-object p6, v1

    move p7, v2

    move p8, v3

    move p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->copy(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->certiType:I

    return p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->certificate:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->key:I

    return p0
.end method

.method public final component6()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->dataPermission:I

    return p0
.end method

.method public final component7()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->commandPermission:I

    return p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;
    .locals 8

    const-string p0, "name"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "packageName"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "certificate"

    invoke-static {p4, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;

    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->name:Ljava/lang/String;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->certiType:I

    iget v3, p1, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->certiType:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->certificate:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->certificate:Ljava/lang/String;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->key:I

    iget v3, p1, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->key:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->dataPermission:I

    iget v3, p1, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->dataPermission:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->commandPermission:I

    iget p1, p1, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->commandPermission:I

    if-eq p0, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getCertiType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->certiType:I

    return p0
.end method

.method public final getCertificate()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->certificate:Ljava/lang/String;

    return-object p0
.end method

.method public final getCommandPermission()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->commandPermission:I

    return p0
.end method

.method public final getDataPermission()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->dataPermission:I

    return p0
.end method

.method public final getKey()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->key:I

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Le0/a;->e(ILjava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->certiType:I

    invoke-static {v1, v0}, Le0/a;->c(II)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->certificate:Ljava/lang/String;

    invoke-static {v0, v1}, Le0/a;->e(ILjava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->key:I

    invoke-static {v1, v0}, Le0/a;->c(II)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->dataPermission:I

    invoke-static {v1, v0}, Le0/a;->c(II)I

    move-result v0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->commandPermission:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->packageName:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->certiType:I

    iget-object v3, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->certificate:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->key:I

    iget v5, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->dataPermission:I

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->commandPermission:I

    const-string v6, "CorpApp(name="

    const-string v7, ", packageName="

    const-string v8, ", certiType="

    invoke-static {v6, v0, v7, v1, v8}, LB/a;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", certificate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dataPermission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", commandPermission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Li4/b;->i(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class public final Lcom/samsung/android/weather/api/entity/profile/Profile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Le/a;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0006H\u00c6\u0003J1\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0006H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/samsung/android/weather/api/entity/profile/Profile;",
        "",
        "countryCode",
        "",
        "salesCode",
        "oneUiVersion",
        "",
        "firstApi",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;II)V",
        "getCountryCode",
        "()Ljava/lang/String;",
        "getSalesCode",
        "getOneUiVersion",
        "()I",
        "getFirstApi",
        "component1",
        "component2",
        "component3",
        "component4",
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
.field private final countryCode:Ljava/lang/String;

.field private final firstApi:I

.field private final oneUiVersion:I

.field private final salesCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    const-string v0, "countryCode"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "salesCode"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/weather/api/entity/profile/Profile;->countryCode:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/weather/api/entity/profile/Profile;->salesCode:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/weather/api/entity/profile/Profile;->oneUiVersion:I

    iput p4, p0, Lcom/samsung/android/weather/api/entity/profile/Profile;->firstApi:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/weather/api/entity/profile/Profile;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Object;)Lcom/samsung/android/weather/api/entity/profile/Profile;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/samsung/android/weather/api/entity/profile/Profile;->countryCode:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/samsung/android/weather/api/entity/profile/Profile;->salesCode:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/samsung/android/weather/api/entity/profile/Profile;->oneUiVersion:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/samsung/android/weather/api/entity/profile/Profile;->firstApi:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/weather/api/entity/profile/Profile;->copy(Ljava/lang/String;Ljava/lang/String;II)Lcom/samsung/android/weather/api/entity/profile/Profile;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/profile/Profile;->countryCode:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/profile/Profile;->salesCode:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/profile/Profile;->oneUiVersion:I

    return p0
.end method

.method public final component4()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/profile/Profile;->firstApi:I

    return p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;II)Lcom/samsung/android/weather/api/entity/profile/Profile;
    .locals 0

    const-string p0, "countryCode"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "salesCode"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/weather/api/entity/profile/Profile;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/weather/api/entity/profile/Profile;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/weather/api/entity/profile/Profile;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/weather/api/entity/profile/Profile;

    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/profile/Profile;->countryCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/weather/api/entity/profile/Profile;->countryCode:Ljava/lang/String;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/profile/Profile;->salesCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/weather/api/entity/profile/Profile;->salesCode:Ljava/lang/String;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/samsung/android/weather/api/entity/profile/Profile;->oneUiVersion:I

    iget v3, p1, Lcom/samsung/android/weather/api/entity/profile/Profile;->oneUiVersion:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lcom/samsung/android/weather/api/entity/profile/Profile;->firstApi:I

    iget p1, p1, Lcom/samsung/android/weather/api/entity/profile/Profile;->firstApi:I

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getCountryCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/profile/Profile;->countryCode:Ljava/lang/String;

    return-object p0
.end method

.method public final getFirstApi()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/profile/Profile;->firstApi:I

    return p0
.end method

.method public final getOneUiVersion()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/profile/Profile;->oneUiVersion:I

    return p0
.end method

.method public final getSalesCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/profile/Profile;->salesCode:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/weather/api/entity/profile/Profile;->countryCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/profile/Profile;->salesCode:Ljava/lang/String;

    invoke-static {v0, v1}, Le0/a;->e(ILjava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/weather/api/entity/profile/Profile;->oneUiVersion:I

    invoke-static {v1, v0}, Le0/a;->c(II)I

    move-result v0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/profile/Profile;->firstApi:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/weather/api/entity/profile/Profile;->countryCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/profile/Profile;->salesCode:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/weather/api/entity/profile/Profile;->oneUiVersion:I

    iget p0, p0, Lcom/samsung/android/weather/api/entity/profile/Profile;->firstApi:I

    const-string v3, "Profile(countryCode="

    const-string v4, ", salesCode="

    const-string v5, ", oneUiVersion="

    invoke-static {v3, v0, v4, v1, v5}, LB/a;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", firstApi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

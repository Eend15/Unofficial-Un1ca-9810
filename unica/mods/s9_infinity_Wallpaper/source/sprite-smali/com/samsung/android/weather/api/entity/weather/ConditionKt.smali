.class public final Lcom/samsung/android/weather/api/entity/weather/ConditionKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u001a\u001a\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u001a\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u0002*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0005H\u0000\u001a\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u0002*\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0005H\u0000\u001a\u0014\u0010\t\u001a\u00020\n*\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0002H\u0000\u001a\u000c\u0010\u000c\u001a\u00020\u0005*\u00020\u0003H\u0000\u00a8\u0006\r"
    }
    d2 = {
        "getIndexList",
        "",
        "Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;",
        "Lcom/samsung/android/weather/api/entity/weather/Condition;",
        "categoryType",
        "",
        "getIndex",
        "category_type",
        "type",
        "addIndex",
        "",
        "indexInfo",
        "getCode",
        "weather-api-1.0.46_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final addIndex(Lcom/samsung/android/weather/api/entity/weather/Condition;Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;)Z
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "indexInfo"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/Condition;->getIndexList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;

    invoke-virtual {v2}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getCategory()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getCategory()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getType()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getType()I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/Condition;->getIndexList()Ljava/util/List;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type java.util.ArrayList<com.samsung.android.weather.api.entity.weather.internal.BaseIndex>"

    invoke-static {p0, v0}, LF3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static final getCode(Lcom/samsung/android/weather/api/entity/weather/Condition;)I
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/Condition;->getExpansionCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x1

    if-eq v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/Condition;->getInternalCode()I

    move-result p0

    :goto_1
    return p0
.end method

.method public static final getIndex(Lcom/samsung/android/weather/api/entity/weather/Condition;I)Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/Condition;->getIndexList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;

    .line 5
    invoke-virtual {v1}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getType()I

    move-result v1

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    :goto_0
    check-cast v0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;

    return-object v0
.end method

.method public static final getIndex(Lcom/samsung/android/weather/api/entity/weather/Condition;II)Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/Condition;->getIndexList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;

    .line 2
    invoke-virtual {v1}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getCategory()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getType()I

    move-result v1

    if-ne v1, p2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    check-cast v0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;

    return-object v0
.end method

.method public static final getIndexList(Lcom/samsung/android/weather/api/entity/weather/Condition;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/weather/api/entity/weather/Condition;",
            "I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/Condition;->getIndexList()Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;

    invoke-virtual {v2}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getCategory()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

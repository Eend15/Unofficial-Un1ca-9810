.class public final Lcom/samsung/android/weather/api/resource/WeatherIconConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/samsung/android/weather/api/resource/WeatherIconConverter;",
        "",
        "<init>",
        "()V",
        "table",
        "Landroid/util/SparseIntArray;",
        "getIcon",
        "",
        "code",
        "isDay",
        "",
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
.field public static final INSTANCE:Lcom/samsung/android/weather/api/resource/WeatherIconConverter;

.field private static final table:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 33

    new-instance v0, Lcom/samsung/android/weather/api/resource/WeatherIconConverter;

    invoke-direct {v0}, Lcom/samsung/android/weather/api/resource/WeatherIconConverter;-><init>()V

    sput-object v0, Lcom/samsung/android/weather/api/resource/WeatherIconConverter;->INSTANCE:Lcom/samsung/android/weather/api/resource/WeatherIconConverter;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lq3/f;

    invoke-direct {v3, v0, v2}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Lq3/f;

    invoke-direct {v4, v2, v2}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lq3/f;

    invoke-direct {v6, v0, v5}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v7, Lq3/f;

    invoke-direct {v7, v0, v5}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lq3/f;

    invoke-direct {v9, v0, v8}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v10, Lq3/f;

    invoke-direct {v10, v0, v8}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v11, Lq3/f;

    invoke-direct {v11, v0, v8}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v12, Lq3/f;

    invoke-direct {v12, v0, v2}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v13, Lq3/f;

    invoke-direct {v13, v0, v5}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v14, Lq3/f;

    invoke-direct {v14, v0, v5}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v15, Lq3/f;

    invoke-direct {v15, v0, v5}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v8, Lq3/f;

    invoke-direct {v8, v0, v5}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v5, Lq3/f;

    invoke-direct {v5, v0, v2}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lq3/f;

    invoke-direct {v1, v2, v0}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v16, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v0, Lq3/f;

    invoke-direct {v0, v2, v5}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v17, 0xd

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v17, v0

    new-instance v0, Lq3/f;

    invoke-direct {v0, v5, v2}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v18, 0xe

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v18, v0

    new-instance v0, Lq3/f;

    invoke-direct {v0, v5, v2}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v19, 0xf

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v19, v0

    new-instance v0, Lq3/f;

    invoke-direct {v0, v5, v2}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v20, 0x10

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v20, v0

    new-instance v0, Lq3/f;

    invoke-direct {v0, v5, v2}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v21, 0x11

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v21, v0

    new-instance v0, Lq3/f;

    invoke-direct {v0, v5, v2}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v22, 0x12

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v22, v0

    new-instance v0, Lq3/f;

    invoke-direct {v0, v5, v2}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v23, 0x13

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v23, v0

    new-instance v0, Lq3/f;

    invoke-direct {v0, v5, v2}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v24, 0x14

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v24, v0

    new-instance v0, Lq3/f;

    invoke-direct {v0, v5, v2}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v25, 0x15

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v25, v0

    new-instance v0, Lq3/f;

    invoke-direct {v0, v5, v2}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v26, 0x16

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v26, v0

    new-instance v0, Lq3/f;

    invoke-direct {v0, v5, v2}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v5, 0x17

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v27, v0

    new-instance v0, Lq3/f;

    invoke-direct {v0, v2, v5}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v28, v0

    new-instance v0, Lq3/f;

    invoke-direct {v0, v5, v2}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v5, 0x1c

    move-object/from16 v29, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v5, Lq3/f;

    invoke-direct {v5, v2, v8}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x1b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v31, 0x1d

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v31, v0

    new-instance v0, Lq3/f;

    invoke-direct {v0, v8, v2}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x1c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v8, 0x1b

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v32, v0

    new-instance v0, Lq3/f;

    invoke-direct {v0, v2, v8}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v30, v5

    move-object/from16 v2, v16

    move-object v5, v6

    move-object v6, v7

    move-object v7, v9

    move-object/from16 v16, v29

    move-object v8, v10

    move-object v9, v11

    move-object v10, v12

    move-object v11, v13

    move-object v12, v14

    move-object v13, v15

    move-object/from16 v14, v16

    move-object v15, v2

    move-object/from16 v16, v1

    move-object/from16 v29, v31

    move-object/from16 v31, v32

    move-object/from16 v32, v0

    filled-new-array/range {v3 .. v32}, [Lq3/f;

    move-result-object v0

    new-instance v1, Landroid/util/SparseIntArray;

    const/16 v2, 0x1e

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    iget-object v5, v4, Lq3/f;->d:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    iget-object v4, v4, Lq3/f;->e:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sput-object v1, Lcom/samsung/android/weather/api/resource/WeatherIconConverter;->table:Landroid/util/SparseIntArray;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getIcon(IZ)I
    .locals 1

    sget-object p0, Lcom/samsung/android/weather/api/resource/WeatherIconConverter;->table:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-nez p2, :cond_7

    if-eqz p0, :cond_6

    const/4 p1, 0x2

    if-eq p0, p1, :cond_5

    const/16 p1, 0x8

    if-eq p0, p1, :cond_4

    const/16 p1, 0xa

    if-eq p0, p1, :cond_3

    const/16 p1, 0xc

    if-eq p0, p1, :cond_2

    const/16 p1, 0x17

    if-eq p0, p1, :cond_1

    const/16 p1, 0x19

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x1a

    goto :goto_0

    :cond_1
    const/16 p0, 0x18

    goto :goto_0

    :cond_2
    const/16 p0, 0xb

    goto :goto_0

    :cond_3
    const/16 p0, 0x9

    goto :goto_0

    :cond_4
    const/4 p0, 0x7

    goto :goto_0

    :cond_5
    const/4 p0, 0x3

    goto :goto_0

    :cond_6
    const/4 p0, 0x1

    :cond_7
    :goto_0
    return p0
.end method

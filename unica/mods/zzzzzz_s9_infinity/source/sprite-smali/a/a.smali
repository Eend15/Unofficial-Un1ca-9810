.class public abstract La/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/ArrayList;

.field public static final b:Ljava/util/ArrayList;

.field public static final c:Ljava/util/ArrayList;

.field public static final d:Ljava/util/ArrayList;

.field public static final e:Ljava/util/ArrayList;

.field public static final f:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 27

    new-instance v8, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;

    const-string v4, "34df0e7a9f1cf1892e45c056b4973cd81ccf148a4050d11aea4ac5a65f900a42"

    const/16 v5, 0xbb9

    const-string v1, "Routine"

    const-string v2, "com.samsung.android.app.routines"

    const/4 v3, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    new-instance v1, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;

    const-string v13, "34df0e7a9f1cf1892e45c056b4973cd81ccf148a4050d11aea4ac5a65f900a42"

    const/16 v14, 0xbba

    const-string v10, "SamsungNews"

    const-string v11, "com.samsung.android.app.spage"

    const/4 v12, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    new-instance v2, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;

    const-string v21, "34df0e7a9f1cf1892e45c056b4973cd81ccf148a4050d11aea4ac5a65f900a42"

    const/16 v22, 0xbbb

    const-string v18, "Calendar"

    const-string v19, "com.samsung.android.calendar"

    const/16 v20, 0x1

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v24}, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    new-instance v3, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;

    const-string v13, "34df0e7a9f1cf1892e45c056b4973cd81ccf148a4050d11aea4ac5a65f900a42"

    const/16 v14, 0xbbc

    const-string v10, "AOD"

    const-string v11, "com.samsung.android.app.aodservice"

    move-object v9, v3

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    new-instance v4, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;

    const-string v21, "34df0e7a9f1cf1892e45c056b4973cd81ccf148a4050d11aea4ac5a65f900a42"

    const/16 v22, 0xbbc

    const-string v18, "ClockPack"

    const-string v19, "com.samsung.android.app.clockpack"

    move-object/from16 v17, v4

    invoke-direct/range {v17 .. v24}, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    new-instance v5, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;

    const-string v13, "34df0e7a9f1cf1892e45c056b4973cd81ccf148a4050d11aea4ac5a65f900a42"

    const/16 v14, 0xbbd

    const-string v10, "Wallpaper"

    const-string v11, "com.samsung.android.wallpaper.live"

    const/16 v16, 0x2

    move-object v9, v5

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    new-instance v6, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;

    const-string v21, "34df0e7a9f1cf1892e45c056b4973cd81ccf148a4050d11aea4ac5a65f900a42"

    const/16 v22, 0xbbe

    const-string v18, "HomeMode"

    const-string v19, "com.samsung.android.homemode"

    move-object/from16 v17, v6

    invoke-direct/range {v17 .. v24}, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    new-instance v7, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;

    const-string v13, "34df0e7a9f1cf1892e45c056b4973cd81ccf148a4050d11aea4ac5a65f900a42"

    const/16 v14, 0xbbf

    const-string v10, "SDHMS"

    const-string v11, "com.sec.android.sdhms"

    const/16 v16, 0x1

    move-object v9, v7

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    new-instance v9, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;

    const-string v21, "34df0e7a9f1cf1892e45c056b4973cd81ccf148a4050d11aea4ac5a65f900a42"

    const/16 v22, 0xbc0

    const-string v18, "AIBrief"

    const-string v19, "com.samsung.android.smartsuggestions"

    const/16 v23, 0x2

    move-object/from16 v17, v9

    invoke-direct/range {v17 .. v24}, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    new-instance v18, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;

    const-string v14, "34df0e7a9f1cf1892e45c056b4973cd81ccf148a4050d11aea4ac5a65f900a42"

    const/16 v15, 0xbbc

    const-string v11, "SystemUi"

    const-string v12, "com.android.systemui"

    const/4 v13, 0x1

    const/16 v17, 0x1

    move-object/from16 v10, v18

    invoke-direct/range {v10 .. v17}, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    new-instance v10, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;

    const-string v23, "34df0e7a9f1cf1892e45c056b4973cd81ccf148a4050d11aea4ac5a65f900a42"

    const/16 v24, 0xbc5

    const-string v20, "WallpaperStyle"

    const-string v21, "com.samsung.android.app.dressroom"

    const/16 v22, 0x1

    const/16 v25, 0x1

    const/16 v26, 0x2

    move-object/from16 v19, v10

    invoke-direct/range {v19 .. v26}, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    move-object v8, v9

    move-object/from16 v9, v18

    filled-new-array/range {v0 .. v10}, [Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;

    move-result-object v0

    invoke-static {v0}, Lr3/k;->f0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, La/a;->a:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;

    const-string v5, "34df0e7a9f1cf1892e45c056b4973cd81ccf148a4050d11aea4ac5a65f900a42"

    const/16 v6, 0x108

    const-string v2, "Watch4PlugIn"

    const-string v3, "com.samsung.android.waterplugin"

    const/4 v4, 0x1

    const/4 v7, 0x3

    const/4 v8, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    new-instance v1, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;

    const-string v13, "34df0e7a9f1cf1892e45c056b4973cd81ccf148a4050d11aea4ac5a65f900a42"

    const/16 v14, 0x108

    const-string v10, "Watch5PlugIn"

    const-string v11, "com.samsung.android.heartplugin"

    const/4 v12, 0x1

    const/4 v15, 0x3

    const/16 v16, 0x2

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    new-instance v10, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;

    const-string v6, "34df0e7a9f1cf1892e45c056b4973cd81ccf148a4050d11aea4ac5a65f900a42"

    const/16 v7, 0x108

    const-string v3, "Watch6PlugIn"

    const-string v4, "com.samsung.wearable.watch6plugin"

    const/4 v5, 0x1

    const/4 v8, 0x3

    const/4 v9, 0x2

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    new-instance v2, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;

    const-string v15, "34df0e7a9f1cf1892e45c056b4973cd81ccf148a4050d11aea4ac5a65f900a42"

    const/16 v16, 0x108

    const-string v12, "Watch7PlugIn"

    const-string v13, "com.samsung.wearable.watch7plugin"

    const/4 v14, 0x1

    const/16 v17, 0x3

    const/16 v18, 0x2

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    new-instance v3, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;

    const-string v23, "34df0e7a9f1cf1892e45c056b4973cd81ccf148a4050d11aea4ac5a65f900a42"

    const/16 v24, 0x108

    const-string v20, "WatchUnitePlugIn"

    const-string v21, "com.samsung.wearable.watchuniteplugin"

    const/16 v25, 0x3

    move-object/from16 v19, v3

    invoke-direct/range {v19 .. v26}, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    filled-new-array {v0, v1, v10, v2, v3}, [Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;

    move-result-object v0

    invoke-static {v0}, Lr3/k;->f0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, La/a;->b:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;

    const-string v5, "34df0e7a9f1cf1892e45c056b4973cd81ccf148a4050d11aea4ac5a65f900a42"

    const/16 v6, 0xbc4

    const-string v2, "ComplicationHelper"

    const-string v3, "com.samsung.android.watch.watchface.complicationhelper"

    const/4 v4, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    filled-new-array {v0}, [Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;

    move-result-object v0

    invoke-static {v0}, Lr3/k;->f0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, La/a;->c:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;

    const-string v5, "34df0e7a9f1cf1892e45c056b4973cd81ccf148a4050d11aea4ac5a65f900a42"

    const/16 v6, 0xbc2

    const-string v2, "SmartPage"

    const-string v3, "com.samsung.android.app.spage"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    new-instance v1, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;

    const-string v13, "34df0e7a9f1cf1892e45c056b4973cd81ccf148a4050d11aea4ac5a65f900a42"

    const/16 v14, 0xbc3

    const-string v10, "SamsungAssistant"

    const-string v11, "com.samsung.android.app.sreminder"

    const/4 v12, 0x1

    const/4 v15, 0x2

    const/16 v16, 0x1

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    filled-new-array {v0, v1}, [Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;

    move-result-object v0

    invoke-static {v0}, Lr3/k;->f0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, La/a;->d:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;

    const-string v5, "34df0e7a9f1cf1892e45c056b4973cd81ccf148a4050d11aea4ac5a65f900a42"

    const/16 v6, 0xbc6

    const-string v2, "DrivingPlus"

    const-string v3, "com.samsung.android.drivingplus"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    filled-new-array {v0}, [Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;

    move-result-object v0

    invoke-static {v0}, Lr3/k;->f0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, La/a;->e:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;

    const-string v5, "34df0e7a9f1cf1892e45c056b4973cd81ccf148a4050d11aea4ac5a65f900a42"

    const/16 v6, 0xfa1

    const-string v2, "DevOpts"

    const-string v3, "com.samsung.android.weather.devopts"

    const/4 v7, 0x3

    const/4 v8, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    new-instance v1, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;

    const-string v13, "34df0e7a9f1cf1892e45c056b4973cd81ccf148a4050d11aea4ac5a65f900a42"

    const/16 v14, 0xfa2

    const-string v10, "WeatherApiTest"

    const-string v11, "com.samsung.android.weather.api.app"

    const/4 v15, 0x3

    const/16 v16, 0x2

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    filled-new-array {v0, v1}, [Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;

    move-result-object v0

    invoke-static {v0}, Lr3/k;->f0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, La/a;->f:Ljava/util/ArrayList;

    return-void
.end method

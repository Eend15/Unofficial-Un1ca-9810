.class public Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog$ILog;
    }
.end annotation

.annotation build Le/a;
.end annotation


# static fields
.field private static sDefaultLogInterface:Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog$ILog;

.field private static sLogImpl:Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog$ILog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog$1;

    invoke-direct {v0}, Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog$1;-><init>()V

    sput-object v0, Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog;->sDefaultLogInterface:Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog$ILog;

    sput-object v0, Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog;->sLogImpl:Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog$ILog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog;->sLogImpl:Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog$ILog;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog$ILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 3
    sget-object v0, Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog;->sLogImpl:Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog$ILog;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog$ILog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog;->sLogImpl:Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog$ILog;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog$ILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 3
    sget-object v0, Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog;->sLogImpl:Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog$ILog;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog$ILog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog;->sLogImpl:Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog$ILog;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog$ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 3
    sget-object v0, Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog;->sLogImpl:Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog$ILog;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog$ILog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static setLogDispatcher(Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog$ILog;)V
    .locals 0
    .annotation build Le/a;
    .end annotation

    sput-object p0, Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog;->sLogImpl:Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog$ILog;

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog;->sLogImpl:Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog$ILog;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog$ILog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 3
    sget-object v0, Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog;->sLogImpl:Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog$ILog;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog$ILog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog;->sLogImpl:Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog$ILog;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog$ILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 3
    sget-object v0, Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog;->sLogImpl:Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog$ILog;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog$ILog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

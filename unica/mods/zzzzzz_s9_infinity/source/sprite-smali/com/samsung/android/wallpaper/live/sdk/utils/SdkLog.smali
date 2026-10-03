.class public Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Le/a;
.end annotation


# static fields
.field private static sDefaultLogInterface:LM1/j;

.field private static sLogImpl:LM1/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LU0/e;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, LU0/e;-><init>(I)V

    sput-object v0, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->sDefaultLogInterface:LM1/j;

    sput-object v0, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->sLogImpl:LM1/j;

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
    sget-object v0, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->sLogImpl:LM1/j;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p1}, LM1/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 3
    sget-object v0, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->sLogImpl:LM1/j;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p0, p1, p2}, LM1/j;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->sLogImpl:LM1/j;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p1}, LM1/j;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 3
    sget-object v0, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->sLogImpl:LM1/j;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p0, p1, p2}, LM1/j;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->sLogImpl:LM1/j;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p1}, LM1/j;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 3
    sget-object v0, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->sLogImpl:LM1/j;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p0, p1, p2}, LM1/j;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static setLogDispatcher(LM1/j;)V
    .locals 0
    .annotation build Le/a;
    .end annotation

    sput-object p0, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->sLogImpl:LM1/j;

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->sLogImpl:LM1/j;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p1}, LM1/j;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 3
    sget-object v0, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->sLogImpl:LM1/j;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p0, p1, p2}, LM1/j;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->sLogImpl:LM1/j;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p1}, LM1/j;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 3
    sget-object v0, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->sLogImpl:LM1/j;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p0, p1, p2}, LM1/j;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

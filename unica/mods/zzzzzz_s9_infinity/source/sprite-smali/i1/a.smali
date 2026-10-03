.class public abstract Li1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I

.field public static final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY"

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "LOCKSCREEN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "WATCHFACE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    :cond_1
    const/4 v1, 0x0

    if-nez v0, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    const-string v2, "SEC_FLOATING_FEATURE_LCD_CONFIG_AOD_FULLSCREEN"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v2

    :goto_0
    sput v2, Li1/a;->a:I

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_DISABLE_NATIVE_AI"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    if-eqz v0, :cond_4

    const-string v4, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_WALLPAPER_STYLE"

    invoke-virtual {v0, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "GENWEATHER"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    move v1, v2

    :cond_5
    sput-boolean v1, Li1/a;->b:Z

    return-void
.end method

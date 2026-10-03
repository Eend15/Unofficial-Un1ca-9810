.class public interface abstract annotation Lcom/samsung/android/weather/api/type/IndexLevel$MOON;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/weather/api/type/IndexLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "MOON"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/weather/api/type/IndexLevel$MOON$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0002\u0008\u0002\u0008\u0086\u0002\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002B\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/samsung/android/weather/api/type/IndexLevel$MOON;",
        "",
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
.field public static final Companion:Lcom/samsung/android/weather/api/type/IndexLevel$MOON$Companion;

.field public static final FIRST_QUARTER:I = 0x3

.field public static final FULL_MOON:I = 0x5

.field public static final LAST_QUARTER:I = 0x7

.field public static final NEW_MOON:I = 0x1

.field public static final WANING_CRESCENT:I = 0x8

.field public static final WANING_GIBBOUS:I = 0x6

.field public static final WAXING_CRESCENT:I = 0x2

.field public static final WAXING_GIBBOUS:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/weather/api/type/IndexLevel$MOON$Companion;->$$INSTANCE:Lcom/samsung/android/weather/api/type/IndexLevel$MOON$Companion;

    sput-object v0, Lcom/samsung/android/weather/api/type/IndexLevel$MOON;->Companion:Lcom/samsung/android/weather/api/type/IndexLevel$MOON$Companion;

    return-void
.end method

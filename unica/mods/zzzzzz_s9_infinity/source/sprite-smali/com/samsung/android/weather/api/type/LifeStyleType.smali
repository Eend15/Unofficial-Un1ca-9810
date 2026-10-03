.class public interface abstract annotation Lcom/samsung/android/weather/api/type/LifeStyleType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/weather/api/type/LifeStyleType$Companion;
    }
.end annotation

.annotation build Le/a;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0002\u0008\u0002\u0008\u0081\u0002\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002B\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/samsung/android/weather/api/type/LifeStyleType;",
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
.field public static final CAMPING:I = 0x8

.field public static final CYCLING:I = 0x1

.field public static final Companion:Lcom/samsung/android/weather/api/type/LifeStyleType$Companion;

.field public static final GARDENING:I = 0x2

.field public static final GOLF:I = 0x6

.field public static final HIKING:I = 0x7

.field public static final RUNNING:I = 0x0

.field public static final STARGAZING:I = 0x3

.field public static final TENNIS:I = 0x4

.field public static final WALKING:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/weather/api/type/LifeStyleType$Companion;->$$INSTANCE:Lcom/samsung/android/weather/api/type/LifeStyleType$Companion;

    sput-object v0, Lcom/samsung/android/weather/api/type/LifeStyleType;->Companion:Lcom/samsung/android/weather/api/type/LifeStyleType$Companion;

    return-void
.end method

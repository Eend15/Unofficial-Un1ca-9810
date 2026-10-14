.class public interface abstract annotation Lcom/samsung/android/weather/api/type/LifeStyleStateType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/weather/api/type/LifeStyleStateType$Companion;
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
        "Lcom/samsung/android/weather/api/type/LifeStyleStateType;",
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
.field public static final Companion:Lcom/samsung/android/weather/api/type/LifeStyleStateType$Companion;

.field public static final FAIR_OF_3LEVELS:I = 0x2

.field public static final FAIR_OF_4LEVELS:I = 0xb

.field public static final GOOD_OF_3LEVELS:I = 0x3

.field public static final GOOD_OF_4LEVELS:I = 0xc

.field public static final GREAT_OF_4LEVELS:I = 0xd

.field public static final POOR_OF_3LEVELS:I = 0x1

.field public static final POOR_OF_4LEVELS:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/weather/api/type/LifeStyleStateType$Companion;->$$INSTANCE:Lcom/samsung/android/weather/api/type/LifeStyleStateType$Companion;

    sput-object v0, Lcom/samsung/android/weather/api/type/LifeStyleStateType;->Companion:Lcom/samsung/android/weather/api/type/LifeStyleStateType$Companion;

    return-void
.end method

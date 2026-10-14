.class public interface abstract annotation Lcom/samsung/android/weather/api/type/IndexLevel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/weather/api/type/IndexLevel$ChnAqi;,
        Lcom/samsung/android/weather/api/type/IndexLevel$Companion;,
        Lcom/samsung/android/weather/api/type/IndexLevel$JpnAqi;,
        Lcom/samsung/android/weather/api/type/IndexLevel$KorAqi;,
        Lcom/samsung/android/weather/api/type/IndexLevel$MOON;
    }
.end annotation

.annotation build Le/a;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0002\u0008\u0006\u0008\u0081\u0002\u0018\u0000 \u00062\u00020\u0001:\u0005\u0002\u0003\u0004\u0005\u0006B\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/samsung/android/weather/api/type/IndexLevel;",
        "",
        "KorAqi",
        "ChnAqi",
        "JpnAqi",
        "MOON",
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
.field public static final Companion:Lcom/samsung/android/weather/api/type/IndexLevel$Companion;

.field public static final NONE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/weather/api/type/IndexLevel$Companion;->$$INSTANCE:Lcom/samsung/android/weather/api/type/IndexLevel$Companion;

    sput-object v0, Lcom/samsung/android/weather/api/type/IndexLevel;->Companion:Lcom/samsung/android/weather/api/type/IndexLevel$Companion;

    return-void
.end method

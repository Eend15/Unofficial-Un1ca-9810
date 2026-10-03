.class public final Lcom/samsung/android/weather/api/type/IndexLevel$ChnAqi$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/weather/api/type/IndexLevel$ChnAqi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/samsung/android/weather/api/type/IndexLevel$ChnAqi$Companion;",
        "",
        "<init>",
        "()V",
        "GOOD",
        "",
        "NORMAL",
        "UNHEALTHY_FOR_SENSITIVE",
        "UNHEALTHY",
        "VERY_UNHEALTHY",
        "HAZARDOUS",
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
.field static final synthetic $$INSTANCE:Lcom/samsung/android/weather/api/type/IndexLevel$ChnAqi$Companion;

.field public static final GOOD:I = 0x83

.field public static final HAZARDOUS:I = 0x88

.field public static final NORMAL:I = 0x84

.field public static final UNHEALTHY:I = 0x86

.field public static final UNHEALTHY_FOR_SENSITIVE:I = 0x85

.field public static final VERY_UNHEALTHY:I = 0x87


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/weather/api/type/IndexLevel$ChnAqi$Companion;

    invoke-direct {v0}, Lcom/samsung/android/weather/api/type/IndexLevel$ChnAqi$Companion;-><init>()V

    sput-object v0, Lcom/samsung/android/weather/api/type/IndexLevel$ChnAqi$Companion;->$$INSTANCE:Lcom/samsung/android/weather/api/type/IndexLevel$ChnAqi$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

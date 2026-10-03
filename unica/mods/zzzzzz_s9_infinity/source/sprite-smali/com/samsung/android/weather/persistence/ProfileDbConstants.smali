.class public final Lcom/samsung/android/weather/persistence/ProfileDbConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Le/a;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0014\u0010\u0005\u001a\u00020\u00048\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u00048\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/samsung/android/weather/persistence/ProfileDbConstants;",
        "",
        "<init>",
        "()V",
        "",
        "DB_NAME_PROFILE",
        "Ljava/lang/String;",
        "DEFAULT_PROFILE_DB",
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
.field public static final DB_NAME_PROFILE:Ljava/lang/String; = "ProfileRoomDataBase"

.field public static final DEFAULT_PROFILE_DB:Ljava/lang/String; = "default/default_profile.db"

.field public static final INSTANCE:Lcom/samsung/android/weather/persistence/ProfileDbConstants;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/weather/persistence/ProfileDbConstants;

    invoke-direct {v0}, Lcom/samsung/android/weather/persistence/ProfileDbConstants;-><init>()V

    sput-object v0, Lcom/samsung/android/weather/persistence/ProfileDbConstants;->INSTANCE:Lcom/samsung/android/weather/persistence/ProfileDbConstants;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

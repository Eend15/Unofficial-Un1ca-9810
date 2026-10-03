.class public abstract enum Lu4/s;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum d:Lu4/r;

.field public static final enum e:Lu4/q;

.field public static final synthetic f:[Lu4/s;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lu4/r;

    invoke-direct {v0}, Lu4/r;-><init>()V

    sput-object v0, Lu4/s;->d:Lu4/r;

    new-instance v1, Lu4/q;

    invoke-direct {v1}, Lu4/q;-><init>()V

    sput-object v1, Lu4/s;->e:Lu4/q;

    filled-new-array {v0, v1}, [Lu4/s;

    move-result-object v0

    sput-object v0, Lu4/s;->f:[Lu4/s;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu4/s;
    .locals 1

    const-class v0, Lu4/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lu4/s;

    return-object p0
.end method

.method public static values()[Lu4/s;
    .locals 1

    sget-object v0, Lu4/s;->f:[Lu4/s;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu4/s;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/lang/String;
.end method

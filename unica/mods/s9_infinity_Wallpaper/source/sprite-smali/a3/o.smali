.class public final La3/o;
.super La3/q;
.source "SourceFile"


# static fields
.field public static final b:La3/o;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La3/o;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, La3/q;-><init>(I)V

    sput-object v0, La3/o;->b:La3/o;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of p0, p1, La3/o;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 0

    const p0, -0x51e63801

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "GM3"

    return-object p0
.end method

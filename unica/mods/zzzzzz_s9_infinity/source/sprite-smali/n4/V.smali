.class public final enum Ln4/V;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lt4/q;


# static fields
.field public static final enum e:Ln4/V;

.field public static final enum f:Ln4/V;

.field public static final enum g:Ln4/V;

.field public static final synthetic h:[Ln4/V;


# instance fields
.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ln4/V;

    const-string v1, "IN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Ln4/V;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ln4/V;->e:Ln4/V;

    new-instance v1, Ln4/V;

    const-string v2, "OUT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Ln4/V;-><init>(Ljava/lang/String;II)V

    sput-object v1, Ln4/V;->f:Ln4/V;

    new-instance v2, Ln4/V;

    const-string v3, "INV"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Ln4/V;-><init>(Ljava/lang/String;II)V

    sput-object v2, Ln4/V;->g:Ln4/V;

    filled-new-array {v0, v1, v2}, [Ln4/V;

    move-result-object v0

    sput-object v0, Ln4/V;->h:[Ln4/V;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ln4/V;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ln4/V;
    .locals 1

    const-class v0, Ln4/V;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln4/V;

    return-object p0
.end method

.method public static values()[Ln4/V;
    .locals 1

    sget-object v0, Ln4/V;->h:[Ln4/V;

    invoke-virtual {v0}, [Ln4/V;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln4/V;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Ln4/V;->d:I

    return p0
.end method

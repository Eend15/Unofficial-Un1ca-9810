.class public final enum Ln4/I;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lt4/q;


# static fields
.field public static final enum e:Ln4/I;

.field public static final enum f:Ln4/I;

.field public static final enum g:Ln4/I;

.field public static final synthetic h:[Ln4/I;


# instance fields
.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ln4/I;

    const-string v1, "CLASS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Ln4/I;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ln4/I;->e:Ln4/I;

    new-instance v1, Ln4/I;

    const-string v2, "PACKAGE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Ln4/I;-><init>(Ljava/lang/String;II)V

    sput-object v1, Ln4/I;->f:Ln4/I;

    new-instance v2, Ln4/I;

    const-string v3, "LOCAL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Ln4/I;-><init>(Ljava/lang/String;II)V

    sput-object v2, Ln4/I;->g:Ln4/I;

    filled-new-array {v0, v1, v2}, [Ln4/I;

    move-result-object v0

    sput-object v0, Ln4/I;->h:[Ln4/I;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ln4/I;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ln4/I;
    .locals 1

    const-class v0, Ln4/I;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln4/I;

    return-object p0
.end method

.method public static values()[Ln4/I;
    .locals 1

    sget-object v0, Ln4/I;->h:[Ln4/I;

    invoke-virtual {v0}, [Ln4/I;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln4/I;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Ln4/I;->d:I

    return p0
.end method

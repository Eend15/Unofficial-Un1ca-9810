.class public final enum Ln4/A;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lt4/q;


# static fields
.field public static final synthetic e:[Ln4/A;


# instance fields
.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ln4/A;

    const-string v1, "FINAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Ln4/A;-><init>(Ljava/lang/String;II)V

    new-instance v1, Ln4/A;

    const-string v2, "OPEN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Ln4/A;-><init>(Ljava/lang/String;II)V

    new-instance v2, Ln4/A;

    const-string v3, "ABSTRACT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Ln4/A;-><init>(Ljava/lang/String;II)V

    new-instance v3, Ln4/A;

    const-string v4, "SEALED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Ln4/A;-><init>(Ljava/lang/String;II)V

    filled-new-array {v0, v1, v2, v3}, [Ln4/A;

    move-result-object v0

    sput-object v0, Ln4/A;->e:[Ln4/A;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ln4/A;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ln4/A;
    .locals 1

    const-class v0, Ln4/A;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln4/A;

    return-object p0
.end method

.method public static values()[Ln4/A;
    .locals 1

    sget-object v0, Ln4/A;->e:[Ln4/A;

    invoke-virtual {v0}, [Ln4/A;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln4/A;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Ln4/A;->d:I

    return p0
.end method

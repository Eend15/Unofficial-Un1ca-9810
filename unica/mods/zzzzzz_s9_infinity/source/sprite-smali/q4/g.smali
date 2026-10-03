.class public final enum Lq4/g;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lt4/q;


# static fields
.field public static final enum e:Lq4/g;

.field public static final enum f:Lq4/g;

.field public static final enum g:Lq4/g;

.field public static final synthetic h:[Lq4/g;


# instance fields
.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lq4/g;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lq4/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lq4/g;->e:Lq4/g;

    new-instance v1, Lq4/g;

    const-string v2, "INTERNAL_TO_CLASS_ID"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lq4/g;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lq4/g;->f:Lq4/g;

    new-instance v2, Lq4/g;

    const-string v3, "DESC_TO_CLASS_ID"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lq4/g;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lq4/g;->g:Lq4/g;

    filled-new-array {v0, v1, v2}, [Lq4/g;

    move-result-object v0

    sput-object v0, Lq4/g;->h:[Lq4/g;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lq4/g;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lq4/g;
    .locals 1

    const-class v0, Lq4/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq4/g;

    return-object p0
.end method

.method public static values()[Lq4/g;
    .locals 1

    sget-object v0, Lq4/g;->h:[Lq4/g;

    invoke-virtual {v0}, [Lq4/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq4/g;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lq4/g;->d:I

    return p0
.end method

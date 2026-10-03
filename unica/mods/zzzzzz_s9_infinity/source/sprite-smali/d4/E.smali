.class public enum Ld4/E;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum e:Ld4/E;

.field public static final enum f:Ld4/E;

.field public static final enum g:Ld4/E;

.field public static final enum h:Ld4/D;

.field public static final synthetic i:[Ld4/E;


# instance fields
.field public final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ld4/E;

    const-string v1, "NULL"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ld4/E;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Ld4/E;->e:Ld4/E;

    new-instance v1, Ld4/E;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "INDEX"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Ld4/E;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v1, Ld4/E;->f:Ld4/E;

    new-instance v2, Ld4/E;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v5, "FALSE"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v4}, Ld4/E;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v2, Ld4/E;->g:Ld4/E;

    new-instance v4, Ld4/D;

    const-string v5, "MAP_GET_OR_DEFAULT"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v3}, Ld4/E;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v4, Ld4/E;->h:Ld4/D;

    filled-new-array {v0, v1, v2, v4}, [Ld4/E;

    move-result-object v0

    sput-object v0, Ld4/E;->i:[Ld4/E;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Ld4/E;->d:Ljava/lang/Object;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ld4/E;
    .locals 1

    const-class v0, Ld4/E;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ld4/E;

    return-object p0
.end method

.method public static values()[Ld4/E;
    .locals 1

    sget-object v0, Ld4/E;->i:[Ld4/E;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ld4/E;

    return-object v0
.end method

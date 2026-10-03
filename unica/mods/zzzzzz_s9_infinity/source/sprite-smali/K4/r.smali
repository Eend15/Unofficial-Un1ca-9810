.class public final LK4/r;
.super LK4/t;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "START"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(LJ4/b0;)LK4/t;
    .locals 0

    const-string p0, "nextType"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, LK4/t;->b(LJ4/b0;)LK4/t;

    move-result-object p0

    return-object p0
.end method

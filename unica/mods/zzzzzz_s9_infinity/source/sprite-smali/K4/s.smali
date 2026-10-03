.class public final LK4/s;
.super LK4/t;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "UNKNOWN"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(LJ4/b0;)LK4/t;
    .locals 1

    const-string v0, "nextType"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, LK4/t;->b(LJ4/b0;)LK4/t;

    move-result-object p1

    sget-object v0, LK4/t;->e:LK4/p;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    return-object p0
.end method

.class public final LH4/x;
.super LH4/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(LI4/o;LE3/a;)V
    .locals 1

    const-string v0, "storageManager"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, LH4/a;-><init>(LI4/o;LE3/a;)V

    return-void
.end method


# virtual methods
.method public final isEmpty()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

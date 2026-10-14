.class public final LU3/U;
.super LU3/b0;
.source "SourceFile"


# static fields
.field public static final d:LU3/U;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LU3/U;

    const-string v1, "local"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LU3/b0;-><init>(Ljava/lang/String;Z)V

    sput-object v0, LU3/U;->d:LU3/U;

    return-void
.end method

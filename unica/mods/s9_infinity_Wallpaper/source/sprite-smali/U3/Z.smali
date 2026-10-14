.class public final LU3/Z;
.super LU3/b0;
.source "SourceFile"


# static fields
.field public static final d:LU3/Z;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LU3/Z;

    const-string v1, "unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LU3/b0;-><init>(Ljava/lang/String;Z)V

    sput-object v0, LU3/Z;->d:LU3/Z;

    return-void
.end method

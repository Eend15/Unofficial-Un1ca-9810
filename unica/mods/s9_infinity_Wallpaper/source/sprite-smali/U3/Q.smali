.class public final LU3/Q;
.super LU3/b0;
.source "SourceFile"


# static fields
.field public static final d:LU3/Q;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LU3/Q;

    const-string v1, "inherited"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LU3/b0;-><init>(Ljava/lang/String;Z)V

    sput-object v0, LU3/Q;->d:LU3/Q;

    return-void
.end method

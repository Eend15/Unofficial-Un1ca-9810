.class public final LU3/S;
.super LU3/b0;
.source "SourceFile"


# static fields
.field public static final d:LU3/S;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LU3/S;

    const-string v1, "internal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LU3/b0;-><init>(Ljava/lang/String;Z)V

    sput-object v0, LU3/S;->d:LU3/S;

    return-void
.end method

.class public final LU3/T;
.super LU3/b0;
.source "SourceFile"


# static fields
.field public static final d:LU3/T;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LU3/T;

    const-string v1, "invisible_fake"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LU3/b0;-><init>(Ljava/lang/String;Z)V

    sput-object v0, LU3/T;->d:LU3/T;

    return-void
.end method

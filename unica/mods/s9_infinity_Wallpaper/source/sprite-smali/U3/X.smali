.class public final LU3/X;
.super LU3/b0;
.source "SourceFile"


# static fields
.field public static final d:LU3/X;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LU3/X;

    const-string v1, "protected"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LU3/b0;-><init>(Ljava/lang/String;Z)V

    sput-object v0, LU3/X;->d:LU3/X;

    return-void
.end method

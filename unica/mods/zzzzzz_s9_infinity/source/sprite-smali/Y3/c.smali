.class public final LY3/c;
.super LU3/b0;
.source "SourceFile"


# static fields
.field public static final d:LY3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LY3/c;

    const-string v1, "protected_static"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LU3/b0;-><init>(Ljava/lang/String;Z)V

    sput-object v0, LY3/c;->d:LY3/c;

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 0

    const-string p0, "protected/*protected static*/"

    return-object p0
.end method

.method public final e()LU3/b0;
    .locals 0

    sget-object p0, LU3/X;->d:LU3/X;

    return-object p0
.end method

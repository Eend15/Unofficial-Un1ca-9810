.class public abstract synthetic LF4/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Ln4/z;->values()[Ln4/z;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    const/4 v3, 0x2

    aput v3, v0, v2

    const/4 v4, 0x3

    aput v4, v0, v3

    const/4 v5, 0x4

    aput v5, v0, v4

    sput-object v0, LF4/z;->a:[I

    invoke-static {v5}, Lq/e;->d(I)[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    aput v2, v0, v1

    aput v3, v0, v2

    aput v4, v0, v3

    aput v5, v0, v4

    invoke-static {}, Ln4/f0;->values()[Ln4/f0;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    aput v2, v0, v1

    aput v3, v0, v2

    aput v4, v0, v5

    aput v5, v0, v3

    const/4 v1, 0x5

    aput v1, v0, v4

    const/4 v2, 0x6

    aput v2, v0, v1

    sput-object v0, LF4/z;->b:[I

    return-void
.end method

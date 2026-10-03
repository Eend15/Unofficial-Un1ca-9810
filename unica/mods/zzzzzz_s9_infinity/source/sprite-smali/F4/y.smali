.class public abstract synthetic LF4/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    invoke-static {}, Ln4/A;->values()[Ln4/A;

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

    sput-object v0, LF4/y;->a:[I

    invoke-static {v5}, Lq/e;->d(I)[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    aput v2, v0, v1

    aput v3, v0, v3

    aput v4, v0, v4

    aput v5, v0, v2

    invoke-static {}, Ln4/f0;->values()[Ln4/f0;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    aput v2, v0, v1

    aput v3, v0, v2

    aput v4, v0, v5

    aput v5, v0, v3

    const/4 v6, 0x5

    aput v6, v0, v4

    const/4 v7, 0x6

    aput v7, v0, v6

    invoke-static {}, Ln4/i;->values()[Ln4/i;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    aput v2, v0, v1

    aput v3, v0, v2

    aput v4, v0, v3

    aput v5, v0, v4

    aput v6, v0, v5

    aput v7, v0, v6

    const/4 v8, 0x7

    aput v8, v0, v7

    sput-object v0, LF4/y;->b:[I

    invoke-static {v7}, Lq/e;->d(I)[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    aput v2, v0, v1

    aput v3, v0, v2

    aput v4, v0, v3

    aput v5, v0, v4

    aput v6, v0, v5

    aput v7, v0, v6

    invoke-static {}, Ln4/V;->values()[Ln4/V;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    aput v2, v0, v1

    aput v3, v0, v2

    aput v4, v0, v3

    invoke-static {}, Ln4/N;->values()[Ln4/N;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    aput v2, v0, v1

    aput v3, v0, v2

    aput v4, v0, v3

    aput v5, v0, v4

    invoke-static {v4}, Lq/e;->d(I)[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    aput v2, v0, v2

    aput v3, v0, v3

    aput v4, v0, v1

    return-void
.end method

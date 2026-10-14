.class public abstract LY4/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Lu3/d;

.field public static final b:LU3/w;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Lu3/d;

    sput-object v0, LY4/b;->a:[Lu3/d;

    new-instance v0, LU3/w;

    const-string v1, "NULL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LU3/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, LY4/b;->b:LU3/w;

    return-void
.end method

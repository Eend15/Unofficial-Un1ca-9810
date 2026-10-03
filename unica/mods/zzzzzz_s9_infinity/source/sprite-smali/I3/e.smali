.class public abstract LI3/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:LI3/d;

.field public static final e:LI3/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LI3/d;

    invoke-direct {v0}, LI3/e;-><init>()V

    sput-object v0, LI3/e;->d:LI3/d;

    sget-object v0, LA3/a;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LI3/c;

    invoke-direct {v0}, LI3/c;-><init>()V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, LJ3/a;

    invoke-direct {v0}, LI3/e;-><init>()V

    :goto_1
    sput-object v0, LI3/e;->e:LI3/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

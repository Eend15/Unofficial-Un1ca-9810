.class public final LW4/o;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/b;


# static fields
.field public static final d:LW4/o;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LW4/o;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LF3/l;-><init>(I)V

    sput-object v0, LW4/o;->d:LW4/o;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lu3/g;

    instance-of p0, p1, LW4/q;

    if-eqz p0, :cond_0

    check-cast p1, LW4/q;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

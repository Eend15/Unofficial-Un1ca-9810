.class public final LX4/b;
.super Lu3/a;
.source "SourceFile"

# interfaces
.implements Lu3/g;


# instance fields
.field private volatile _preHandler:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, LW4/r;->d:LW4/r;

    invoke-direct {p0, v0}, Lu3/a;-><init>(Lu3/h;)V

    iput-object p0, p0, LX4/b;->_preHandler:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public X(Lu3/i;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

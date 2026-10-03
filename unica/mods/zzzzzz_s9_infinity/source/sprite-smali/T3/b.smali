.class public final LT3/b;
.super LR3/j;
.source "SourceFile"


# static fields
.field public static final f:LT3/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LT3/b;

    new-instance v1, LI4/l;

    const-string v2, "FallbackBuiltIns"

    invoke-direct {v1, v2}, LI4/l;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, LR3/j;-><init>(LI4/l;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LR3/j;->c(Z)V

    sput-object v0, LT3/b;->f:LT3/b;

    return-void
.end method


# virtual methods
.method public final bridge synthetic o()LW3/d;
    .locals 0

    sget-object p0, LW3/a;->c:LW3/a;

    return-object p0
.end method

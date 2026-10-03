.class public final LR3/e;
.super LR3/j;
.source "SourceFile"


# static fields
.field public static final f:LR3/e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LR3/e;

    new-instance v1, LI4/l;

    const-string v2, "DefaultBuiltIns"

    invoke-direct {v1, v2}, LI4/l;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, LR3/j;-><init>(LI4/l;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LR3/j;->c(Z)V

    sput-object v0, LR3/e;->f:LR3/e;

    return-void
.end method

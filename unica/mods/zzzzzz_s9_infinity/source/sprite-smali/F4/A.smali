.class public abstract LF4/A;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ls4/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ls4/c;

    const-string v1, "kotlin.suspend"

    invoke-direct {v0, v1}, Ls4/c;-><init>(Ljava/lang/String;)V

    sput-object v0, LF4/A;->a:Ls4/c;

    new-instance v0, Ls4/a;

    sget-object v1, LR3/p;->j:Ls4/c;

    const-string v2, "suspend"

    invoke-static {v2}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ls4/a;-><init>(Ls4/c;Ls4/f;)V

    return-void
.end method

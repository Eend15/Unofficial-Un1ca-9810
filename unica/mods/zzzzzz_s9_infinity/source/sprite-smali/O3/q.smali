.class public abstract LO3/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:LT4/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, LT4/c;->c:LT4/c;

    if-eqz v0, :cond_0

    sput-object v0, LO3/q;->a:LT4/c;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "@NotNull method kotlin/reflect/jvm/internal/pcollections/HashPMap.empty must not return null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

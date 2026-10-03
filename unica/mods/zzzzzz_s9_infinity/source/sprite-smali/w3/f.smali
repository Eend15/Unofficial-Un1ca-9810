.class public abstract Lw3/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lw0/s;

.field public static b:Lw0/s;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lw0/s;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lw0/s;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    sput-object v0, Lw3/f;->a:Lw0/s;

    return-void
.end method

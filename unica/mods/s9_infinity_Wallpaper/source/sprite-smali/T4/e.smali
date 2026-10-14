.class public final LT4/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:LT4/e;


# instance fields
.field public final a:LT4/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LT4/e;

    sget-object v1, LT4/d;->f:LT4/d;

    invoke-direct {v0, v1}, LT4/e;-><init>(LT4/d;)V

    sput-object v0, LT4/e;->b:LT4/e;

    return-void
.end method

.method public constructor <init>(LT4/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT4/e;->a:LT4/d;

    return-void
.end method

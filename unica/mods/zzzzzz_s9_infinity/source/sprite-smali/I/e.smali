.class public abstract LI/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LI/d;

.field public static final b:LI/d;

.field public static final c:LI/d;

.field public static final d:LI/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LI/d;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LI/d;-><init>(LI/c;Z)V

    sput-object v0, LI/e;->a:LI/d;

    new-instance v0, LI/d;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, LI/d;-><init>(LI/c;Z)V

    sput-object v0, LI/e;->b:LI/d;

    new-instance v0, LI/d;

    sget-object v1, LI/c;->a:LI/c;

    invoke-direct {v0, v1, v2}, LI/d;-><init>(LI/c;Z)V

    sput-object v0, LI/e;->c:LI/d;

    new-instance v0, LI/d;

    invoke-direct {v0, v1, v3}, LI/d;-><init>(LI/c;Z)V

    sput-object v0, LI/e;->d:LI/d;

    return-void
.end method

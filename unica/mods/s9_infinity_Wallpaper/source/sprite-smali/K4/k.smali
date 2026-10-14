.class public final LK4/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:LK4/k;

.field public static final b:LK4/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LK4/k;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LK4/k;->a:LK4/k;

    new-instance v0, LK4/m;

    sget-object v1, LK4/f;->d:LK4/f;

    invoke-direct {v0, v1}, LK4/m;-><init>(LK4/f;)V

    sput-object v0, LK4/k;->b:LK4/m;

    return-void
.end method

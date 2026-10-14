.class public final LU4/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU4/i;


# instance fields
.field public final a:LU4/i;

.field public final b:LE3/b;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LU4/i;LE3/b;LE3/b;)V
    .locals 1

    const-string v0, "transformer"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU4/g;->a:LU4/i;

    iput-object p2, p0, LU4/g;->b:LE3/b;

    iput-object p3, p0, LU4/g;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, LB3/f;

    invoke-direct {v0, p0}, LB3/f;-><init>(LU4/g;)V

    return-object v0
.end method

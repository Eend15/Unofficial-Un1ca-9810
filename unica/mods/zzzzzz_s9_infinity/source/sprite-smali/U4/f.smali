.class public final LU4/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU4/i;


# instance fields
.field public final a:LU4/i;

.field public final b:Z

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LU4/i;ZLE3/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU4/f;->a:LU4/i;

    iput-boolean p2, p0, LU4/f;->b:Z

    iput-object p3, p0, LU4/f;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, LB3/f;

    invoke-direct {v0, p0}, LB3/f;-><init>(LU4/f;)V

    return-object v0
.end method

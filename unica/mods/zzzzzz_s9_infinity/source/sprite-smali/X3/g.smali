.class public final LX3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE3/a;


# instance fields
.field public final synthetic d:LI4/o;

.field public final synthetic e:LU3/M;

.field public final synthetic f:LX3/k;


# direct methods
.method public constructor <init>(LX3/k;LI4/o;LU3/M;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX3/g;->f:LX3/k;

    iput-object p2, p0, LX3/g;->d:LI4/o;

    iput-object p3, p0, LX3/g;->e:LU3/M;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    new-instance v0, LX3/j;

    iget-object v1, p0, LX3/g;->f:LX3/k;

    iget-object v2, p0, LX3/g;->d:LI4/o;

    iget-object p0, p0, LX3/g;->e:LU3/M;

    invoke-direct {v0, v1, v2, p0}, LX3/j;-><init>(LX3/k;LI4/o;LU3/M;)V

    return-object v0
.end method

.class public final Lj5/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public final b:Lk5/i;

.field public c:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lj5/c;->c:F

    iput v0, p0, Lj5/c;->a:F

    .line 3
    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lj5/c;->b:Lk5/i;

    return-void
.end method

.method public constructor <init>(Lj5/c;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iget v0, p1, Lj5/c;->a:F

    iput v0, p0, Lj5/c;->a:F

    .line 6
    iget v0, p1, Lj5/c;->c:F

    iput v0, p0, Lj5/c;->c:F

    .line 7
    iget-object p1, p1, Lj5/c;->b:Lk5/i;

    invoke-virtual {p1}, Lk5/i;->c()Lk5/i;

    move-result-object p1

    iput-object p1, p0, Lj5/c;->b:Lk5/i;

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lj5/c;

    invoke-direct {v0, p0}, Lj5/c;-><init>(Lj5/c;)V

    return-object v0
.end method

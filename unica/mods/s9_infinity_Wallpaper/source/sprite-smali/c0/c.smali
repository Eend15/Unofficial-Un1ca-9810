.class public final Lc0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final d:I

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lc0/c;->d:I

    iput p4, p0, Lc0/c;->e:I

    iput-object p1, p0, Lc0/c;->f:Ljava/lang/String;

    iput-object p2, p0, Lc0/c;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lc0/c;

    const-string v0, "other"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lc0/c;->d:I

    iget v1, p1, Lc0/c;->d:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget p0, p0, Lc0/c;->e:I

    iget p1, p1, Lc0/c;->e:I

    sub-int v0, p0, p1

    :cond_0
    return v0
.end method

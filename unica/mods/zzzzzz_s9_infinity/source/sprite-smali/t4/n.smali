.class public final Lt4/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final d:I

.field public final e:Lt4/O;

.field public final f:Z


# direct methods
.method public constructor <init>(ILt4/O;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lt4/n;->d:I

    iput-object p2, p0, Lt4/n;->e:Lt4/O;

    iput-boolean p3, p0, Lt4/n;->f:Z

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lt4/n;

    iget p0, p0, Lt4/n;->d:I

    iget p1, p1, Lt4/n;->d:I

    sub-int/2addr p0, p1

    return p0
.end method

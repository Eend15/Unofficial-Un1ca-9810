.class public final LT4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# static fields
.field public static final g:LT4/b;


# instance fields
.field public final d:LT4/f;

.field public final e:LT4/b;

.field public final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LT4/b;

    invoke-direct {v0}, LT4/b;-><init>()V

    sput-object v0, LT4/b;->g:LT4/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, LT4/b;->f:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, LT4/b;->d:LT4/f;

    .line 4
    iput-object v0, p0, LT4/b;->e:LT4/b;

    return-void
.end method

.method public constructor <init>(LT4/f;LT4/b;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, LT4/b;->d:LT4/f;

    .line 7
    iput-object p2, p0, LT4/b;->e:LT4/b;

    .line 8
    iget p1, p2, LT4/b;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, LT4/b;->f:I

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)LT4/b;
    .locals 3

    iget v0, p0, LT4/b;->f:I

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, LT4/b;->d:LT4/f;

    invoke-virtual {v0, p1}, LT4/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, LT4/b;->e:LT4/b;

    if-eqz v1, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {v2, p1}, LT4/b;->g(Ljava/lang/Object;)LT4/b;

    move-result-object p1

    if-ne p1, v2, :cond_2

    return-object p0

    :cond_2
    new-instance p0, LT4/b;

    invoke-direct {p0, v0, p1}, LT4/b;-><init>(LT4/f;LT4/b;)V

    return-object p0
.end method

.method public final h(I)LT4/b;
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, LT4/b;->f:I

    if-gt p1, v0, :cond_1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    iget-object p0, p0, LT4/b;->e:LT4/b;

    invoke-virtual {p0, p1}, LT4/b;->h(I)LT4/b;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, LT4/a;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, LT4/b;->h(I)LT4/b;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LT4/a;-><init>(I)V

    iput-object p0, v0, LT4/a;->e:Ljava/lang/Object;

    return-object v0
.end method

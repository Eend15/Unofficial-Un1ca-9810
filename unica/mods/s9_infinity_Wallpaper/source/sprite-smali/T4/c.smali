.class public final LT4/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:LT4/c;


# instance fields
.field public final a:LT4/e;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LT4/c;

    sget-object v1, LT4/e;->b:LT4/e;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LT4/c;-><init>(LT4/e;I)V

    sput-object v0, LT4/c;->c:LT4/c;

    return-void
.end method

.method public constructor <init>(LT4/e;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT4/c;->a:LT4/e;

    iput p2, p0, LT4/c;->b:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/String;)LT4/c;
    .locals 6

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, LT4/c;->a:LT4/e;

    iget-object v2, v1, LT4/e;->a:LT4/d;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, LT4/d;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LT4/b;

    if-nez v0, :cond_0

    sget-object v0, LT4/b;->g:LT4/b;

    :cond_0
    const/4 v2, 0x0

    move-object v3, v0

    :goto_0
    const/4 v4, -0x1

    if-eqz v3, :cond_2

    iget v5, v3, LT4/b;->f:I

    if-lez v5, :cond_2

    iget-object v5, v3, LT4/b;->d:LT4/f;

    iget-object v5, v5, LT4/f;->d:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    iget-object v3, v3, LT4/b;->e:LT4/b;

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_1
    iget v3, v0, LT4/b;->f:I

    if-eq v2, v4, :cond_4

    if-ltz v2, :cond_3

    if-gt v2, v3, :cond_3

    :try_start_0
    invoke-virtual {v0, v2}, LT4/b;->h(I)LT4/b;

    move-result-object v4

    iget-object v2, v4, LT4/b;->d:LT4/f;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, v2}, LT4/b;->g(Ljava/lang/Object;)LT4/b;

    move-result-object v0

    goto :goto_2

    :catch_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index: "

    invoke-static {v2, p1}, Li4/b;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_4
    :goto_2
    new-instance v2, LT4/f;

    invoke-direct {v2, p1, p2}, LT4/f;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, LT4/b;

    invoke-direct {p1, v2, v0}, LT4/b;-><init>(LT4/f;LT4/b;)V

    new-instance v0, LT4/c;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    int-to-long v4, p2

    iget-object p2, v1, LT4/e;->a:LT4/d;

    invoke-virtual {p2, v4, v5, p1}, LT4/d;->b(JLT4/b;)LT4/d;

    move-result-object v2

    if-ne v2, p2, :cond_5

    goto :goto_3

    :cond_5
    new-instance v1, LT4/e;

    invoke-direct {v1, v2}, LT4/e;-><init>(LT4/d;)V

    :goto_3
    iget p0, p0, LT4/c;->b:I

    sub-int/2addr p0, v3

    iget p1, p1, LT4/b;->f:I

    add-int/2addr p0, p1

    invoke-direct {v0, v1, p0}, LT4/c;-><init>(LT4/e;I)V

    return-object v0
.end method

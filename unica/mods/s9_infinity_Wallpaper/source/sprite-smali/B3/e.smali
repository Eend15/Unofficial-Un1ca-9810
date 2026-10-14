.class public final LB3/e;
.super LB3/b;
.source "SourceFile"


# instance fields
.field public b:Z

.field public c:[Ljava/io/File;

.field public d:I

.field public final synthetic e:LB3/f;


# direct methods
.method public constructor <init>(LB3/f;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, LB3/e;->e:LB3/f;

    invoke-direct {p0, p2}, LB3/g;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/io/File;
    .locals 6

    iget-boolean v0, p0, LB3/e;->b:Z

    iget-object v1, p0, LB3/g;->a:Ljava/io/File;

    iget-object v2, p0, LB3/e;->e:LB3/f;

    if-nez v0, :cond_0

    iget-object v0, v2, LB3/f;->h:LU4/i;

    check-cast v0, LB3/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    iput-boolean v0, p0, LB3/e;->b:Z

    return-object v1

    :cond_0
    iget-object v0, p0, LB3/e;->c:[Ljava/io/File;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget v4, p0, LB3/e;->d:I

    array-length v5, v0

    if-ge v4, v5, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, v2, LB3/f;->h:LU4/i;

    check-cast p0, LB3/h;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v3

    :cond_2
    :goto_0
    if-nez v0, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, LB3/e;->c:[Ljava/io/File;

    if-nez v0, :cond_3

    iget-object v0, v2, LB3/f;->h:LU4/i;

    check-cast v0, LB3/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    iget-object v0, p0, LB3/e;->c:[Ljava/io/File;

    if-eqz v0, :cond_4

    array-length v0, v0

    if-nez v0, :cond_5

    :cond_4
    iget-object p0, v2, LB3/f;->h:LU4/i;

    check-cast p0, LB3/h;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v3

    :cond_5
    iget-object v0, p0, LB3/e;->c:[Ljava/io/File;

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    iget v1, p0, LB3/e;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, LB3/e;->d:I

    aget-object p0, v0, v1

    return-object p0
.end method

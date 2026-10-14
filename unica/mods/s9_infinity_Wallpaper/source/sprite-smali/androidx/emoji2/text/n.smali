.class public final Landroidx/emoji2/text/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Landroidx/emoji2/text/q;

.field public c:Landroidx/emoji2/text/q;

.field public d:Landroidx/emoji2/text/q;

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/q;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroidx/emoji2/text/n;->a:I

    iput-object p1, p0, Landroidx/emoji2/text/n;->b:Landroidx/emoji2/text/q;

    iput-object p1, p0, Landroidx/emoji2/text/n;->c:Landroidx/emoji2/text/q;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/emoji2/text/n;->a:I

    iget-object v0, p0, Landroidx/emoji2/text/n;->b:Landroidx/emoji2/text/q;

    iput-object v0, p0, Landroidx/emoji2/text/n;->c:Landroidx/emoji2/text/q;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/emoji2/text/n;->f:I

    return-void
.end method

.method public final b()Z
    .locals 4

    iget-object v0, p0, Landroidx/emoji2/text/n;->c:Landroidx/emoji2/text/q;

    iget-object v0, v0, Landroidx/emoji2/text/q;->b:Landroidx/emoji2/text/t;

    invoke-virtual {v0}, Landroidx/emoji2/text/t;->c()LP/a;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, LK/u;->b(I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v3, v0, LK/u;->g:Ljava/lang/Object;

    check-cast v3, Ljava/nio/ByteBuffer;

    iget v0, v0, LK/u;->d:I

    add-int/2addr v1, v0

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget p0, p0, Landroidx/emoji2/text/n;->e:I

    const v0, 0xfe0f

    if-ne p0, v0, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

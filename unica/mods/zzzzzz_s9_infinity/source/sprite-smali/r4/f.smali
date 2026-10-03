.class public final Lr4/f;
.super Lp4/a;
.source "SourceFile"


# static fields
.field public static final g:Lr4/f;


# instance fields
.field public final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lr4/f;

    const/4 v1, 0x5

    const/4 v2, 0x1

    filled-new-array {v2, v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr4/f;-><init>([IZ)V

    sput-object v0, Lr4/f;->g:Lr4/f;

    new-instance v0, Lr4/f;

    new-array v1, v2, [I

    invoke-direct {v0, v1, v2}, Lr4/f;-><init>([IZ)V

    return-void
.end method

.method public constructor <init>([IZ)V
    .locals 1

    const-string v0, "versionArray"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-direct {p0, p1}, Lp4/a;-><init>([I)V

    iput-boolean p2, p0, Lr4/f;->f:Z

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 6

    const/4 v0, 0x0

    iget v1, p0, Lp4/a;->c:I

    const/4 v2, 0x1

    iget v3, p0, Lp4/a;->b:I

    if-ne v3, v2, :cond_0

    if-eqz v1, :cond_3

    :cond_0
    iget-boolean v4, p0, Lr4/f;->f:Z

    sget-object v5, Lr4/f;->g:Lr4/f;

    if-eqz v4, :cond_1

    invoke-virtual {p0, v5}, Lp4/a;->b(Lp4/a;)Z

    move-result p0

    goto :goto_0

    :cond_1
    iget p0, v5, Lp4/a;->b:I

    if-ne v3, p0, :cond_2

    iget p0, v5, Lp4/a;->c:I

    add-int/2addr p0, v2

    if-gt v1, p0, :cond_2

    move p0, v2

    goto :goto_0

    :cond_2
    move p0, v0

    :goto_0
    if-eqz p0, :cond_3

    move v0, v2

    :cond_3
    return v0
.end method

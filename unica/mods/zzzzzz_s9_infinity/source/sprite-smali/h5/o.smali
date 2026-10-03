.class public final Lh5/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static k:I

.field public static l:I


# instance fields
.field public final a:Lh5/h;

.field public final b:LK/l;

.field public final c:Lk5/h;

.field public final d:Lk5/h;

.field public final e:Lh5/j;

.field public final f:Lh5/m;

.field public final g:[I

.field public final h:Lk5/f;

.field public final i:Lk5/f;

.field public final j:Lq5/c;


# direct methods
.method public constructor <init>(Lq5/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lh5/h;

    invoke-direct {v0}, Lh5/h;-><init>()V

    iput-object v0, p0, Lh5/o;->a:Lh5/h;

    new-instance v0, LK/l;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lh5/f;

    invoke-direct {v1}, Lh5/f;-><init>()V

    iput-object v1, v0, LK/l;->b:Ljava/lang/Object;

    new-instance v1, Lh5/f;

    invoke-direct {v1}, Lh5/f;-><init>()V

    iput-object v1, v0, LK/l;->c:Ljava/lang/Object;

    new-instance v1, Lk5/h;

    invoke-direct {v1}, Lk5/h;-><init>()V

    iput-object v1, v0, LK/l;->d:Ljava/lang/Object;

    new-instance v1, Lk5/h;

    invoke-direct {v1}, Lk5/h;-><init>()V

    iput-object v1, v0, LK/l;->e:Ljava/io/Serializable;

    iput-object v0, p0, Lh5/o;->b:LK/l;

    new-instance v0, Lk5/h;

    invoke-direct {v0}, Lk5/h;-><init>()V

    iput-object v0, p0, Lh5/o;->c:Lk5/h;

    new-instance v0, Lk5/h;

    invoke-direct {v0}, Lk5/h;-><init>()V

    iput-object v0, p0, Lh5/o;->d:Lk5/h;

    new-instance v0, Lh5/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lh5/j;-><init>(I)V

    iput-object v0, p0, Lh5/o;->e:Lh5/j;

    new-instance v0, Lh5/m;

    invoke-direct {v0}, Lh5/m;-><init>()V

    iput-object v0, p0, Lh5/o;->f:Lh5/m;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lh5/o;->g:[I

    new-instance v0, Lk5/f;

    invoke-direct {v0}, Lk5/f;-><init>()V

    iput-object v0, p0, Lh5/o;->h:Lk5/f;

    new-instance v0, Lk5/f;

    invoke-direct {v0}, Lk5/f;-><init>()V

    iput-object v0, p0, Lh5/o;->i:Lk5/f;

    iput-object p1, p0, Lh5/o;->j:Lq5/c;

    return-void
.end method

.class public abstract Ln5/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ln5/c;

.field public b:Ln5/c;

.field public final c:Lw0/i;

.field public final d:Lw0/i;

.field public final e:Ll5/a;

.field public final f:Ll5/a;

.field public g:Z

.field public final h:Z

.field public final i:Lq5/c;


# direct methods
.method public constructor <init>(Lq5/c;Ln5/d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln5/c;->i:Lq5/c;

    iget p1, p2, Ln5/d;->a:I

    const/4 p1, 0x0

    iput-object p1, p0, Ln5/c;->a:Ln5/c;

    iput-object p1, p0, Ln5/c;->b:Ln5/c;

    iget-object v0, p2, Ln5/d;->b:Ll5/a;

    iput-object v0, p0, Ln5/c;->e:Ll5/a;

    iget-object v0, p2, Ln5/d;->c:Ll5/a;

    iput-object v0, p0, Ln5/c;->f:Ll5/a;

    iget-boolean p2, p2, Ln5/d;->d:Z

    iput-boolean p2, p0, Ln5/c;->h:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Ln5/c;->g:Z

    new-instance p2, Lw0/i;

    const/16 v0, 0x12

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lw0/i;-><init>(IZ)V

    iput-object p2, p0, Ln5/c;->c:Lw0/i;

    iput-object p1, p2, Lw0/i;->f:Ljava/lang/Object;

    iput-object p1, p2, Lw0/i;->e:Ljava/lang/Object;

    iput-object p1, p2, Lw0/i;->g:Ljava/lang/Object;

    iput-object p1, p2, Lw0/i;->h:Ljava/lang/Object;

    new-instance p2, Lw0/i;

    invoke-direct {p2, v0, v1}, Lw0/i;-><init>(IZ)V

    iput-object p2, p0, Ln5/c;->d:Lw0/i;

    iput-object p1, p2, Lw0/i;->f:Ljava/lang/Object;

    iput-object p1, p2, Lw0/i;->e:Ljava/lang/Object;

    iput-object p1, p2, Lw0/i;->g:Ljava/lang/Object;

    iput-object p1, p2, Lw0/i;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract a(Lw0/m;)V
.end method

.method public abstract b(Lw0/m;)Z
.end method

.method public abstract c(Lw0/m;)V
.end method

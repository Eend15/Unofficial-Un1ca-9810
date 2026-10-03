.class public final LK2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh3/b;


# instance fields
.field public final a:LD2/k;

.field public final b:LB2/b;

.field public final c:LD2/i;

.field public final d:LD2/i;

.field public final e:LD2/i;

.field public final f:LD2/h;

.field public final g:LB2/b;

.field public final h:LD2/h;

.field public final i:LD2/j;


# direct methods
.method public constructor <init>(LD2/k;LB2/b;LD2/i;LD2/i;LD2/i;LD2/h;LB2/b;LD2/h;LD2/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK2/c;->a:LD2/k;

    iput-object p2, p0, LK2/c;->b:LB2/b;

    iput-object p3, p0, LK2/c;->c:LD2/i;

    iput-object p4, p0, LK2/c;->d:LD2/i;

    iput-object p5, p0, LK2/c;->e:LD2/i;

    iput-object p6, p0, LK2/c;->f:LD2/h;

    iput-object p7, p0, LK2/c;->g:LB2/b;

    iput-object p8, p0, LK2/c;->h:LD2/h;

    iput-object p9, p0, LK2/c;->i:LD2/j;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, LK2/c;->a:LD2/k;

    invoke-static {v0}, Lh3/a;->b(Lo3/a;)Lh3/a;

    move-result-object v2

    iget-object v0, p0, LK2/c;->b:LB2/b;

    invoke-static {v0}, Lh3/a;->b(Lo3/a;)Lh3/a;

    move-result-object v3

    iget-object v0, p0, LK2/c;->c:LD2/i;

    invoke-static {v0}, Lh3/a;->b(Lo3/a;)Lh3/a;

    move-result-object v4

    iget-object v0, p0, LK2/c;->d:LD2/i;

    invoke-static {v0}, Lh3/a;->b(Lo3/a;)Lh3/a;

    move-result-object v5

    iget-object v0, p0, LK2/c;->e:LD2/i;

    invoke-static {v0}, Lh3/a;->b(Lo3/a;)Lh3/a;

    move-result-object v6

    iget-object v0, p0, LK2/c;->f:LD2/h;

    invoke-static {v0}, Lh3/a;->b(Lo3/a;)Lh3/a;

    move-result-object v7

    iget-object v0, p0, LK2/c;->g:LB2/b;

    invoke-static {v0}, Lh3/a;->b(Lo3/a;)Lh3/a;

    move-result-object v8

    iget-object v0, p0, LK2/c;->h:LD2/h;

    invoke-static {v0}, Lh3/a;->b(Lo3/a;)Lh3/a;

    move-result-object v9

    iget-object p0, p0, LK2/c;->i:LD2/j;

    invoke-static {p0}, Lh3/a;->b(Lo3/a;)Lh3/a;

    move-result-object v10

    new-instance p0, LK2/b;

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, LK2/b;-><init>(Lh3/a;Lh3/a;Lh3/a;Lh3/a;Lh3/a;Lh3/a;Lh3/a;Lh3/a;Lh3/a;)V

    return-object p0
.end method

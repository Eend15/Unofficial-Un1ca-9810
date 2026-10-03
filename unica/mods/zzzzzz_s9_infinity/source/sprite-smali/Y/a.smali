.class public final synthetic LY/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lw0/l;

.field public final synthetic e:I

.field public final synthetic f:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(Lw0/l;ILjava/io/Serializable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LY/a;->d:Lw0/l;

    iput p2, p0, LY/a;->e:I

    iput-object p3, p0, LY/a;->f:Ljava/io/Serializable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LY/a;->d:Lw0/l;

    iget-object v0, v0, Lw0/l;->f:Ljava/lang/Object;

    check-cast v0, LY/c;

    iget v1, p0, LY/a;->e:I

    iget-object p0, p0, LY/a;->f:Ljava/io/Serializable;

    invoke-interface {v0, v1, p0}, LY/c;->k(ILjava/io/Serializable;)V

    return-void
.end method

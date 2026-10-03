.class public abstract Ln0/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/UUID;

.field public final b:Lw0/p;

.field public final c:Ljava/util/LinkedHashSet;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lw0/p;Ljava/util/LinkedHashSet;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workSpec"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln0/z;->a:Ljava/util/UUID;

    iput-object p2, p0, Ln0/z;->b:Lw0/p;

    iput-object p3, p0, Ln0/z;->c:Ljava/util/LinkedHashSet;

    return-void
.end method

.class public final Lq0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:I

.field public final c:Ln1/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ConstraintsCmdHandler"

    invoke-static {v0}, Ln0/o;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lq0/e;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILq0/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq0/e;->a:Landroid/content/Context;

    iput p2, p0, Lq0/e;->b:I

    iget-object p1, p3, Lq0/i;->h:Lo0/n;

    iget-object p1, p1, Lo0/n;->m:Lw0/i;

    new-instance p2, Ln1/a;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Ln1/a;-><init>(Lw0/i;Ls0/b;)V

    iput-object p2, p0, Lq0/e;->c:Ln1/a;

    return-void
.end method

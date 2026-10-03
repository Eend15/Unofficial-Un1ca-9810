.class public final LO/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Ljava/lang/ThreadLocal;


# instance fields
.field public final a:Ln/j;

.field public final b:Ljava/util/ArrayList;

.field public final c:LA1/e;

.field public d:Ln1/a;

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, LO/b;->f:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ln/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln/j;-><init>(I)V

    iput-object v0, p0, LO/b;->a:Ln/j;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LO/b;->b:Ljava/util/ArrayList;

    new-instance v0, LA1/e;

    invoke-direct {v0, p0}, LA1/e;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LO/b;->c:LA1/e;

    iput-boolean v1, p0, LO/b;->e:Z

    return-void
.end method

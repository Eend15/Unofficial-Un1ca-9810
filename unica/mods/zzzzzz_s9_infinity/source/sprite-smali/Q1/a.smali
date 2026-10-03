.class public abstract LQ1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ln1/a;

.field public final b:Ljava/util/EnumMap;

.field public c:LQ1/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ln1/a;)V
    .locals 0

    const-string p1, "dataManager"

    invoke-static {p2, p1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LQ1/a;->a:Ln1/a;

    new-instance p1, Ljava/util/EnumMap;

    const-class p2, La2/i;

    invoke-direct {p1, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, LQ1/a;->b:Ljava/util/EnumMap;

    return-void
.end method


# virtual methods
.method public abstract a(La2/i;La2/f;)V
.end method

.method public abstract b(Lo1/a;Ljava/util/EnumMap;)V
.end method

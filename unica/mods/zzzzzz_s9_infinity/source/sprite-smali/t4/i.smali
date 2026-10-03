.class public final Lt4/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:I


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lt4/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lt4/i;-><init>(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lt4/i;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lt4/i;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lt4/o;)V
    .locals 3

    new-instance v0, Lt4/h;

    iget-object v1, p1, Lt4/o;->a:Lt4/m;

    iget-object v2, p1, Lt4/o;->d:Lt4/n;

    iget v2, v2, Lt4/n;->d:I

    invoke-direct {v0, v2, v1}, Lt4/h;-><init>(ILt4/b;)V

    iget-object p0, p0, Lt4/i;->a:Ljava/util/Map;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

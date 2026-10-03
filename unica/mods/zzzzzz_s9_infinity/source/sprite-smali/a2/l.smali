.class public final La2/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La2/l;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2

    iget-object v0, p0, La2/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La2/m;

    invoke-virtual {p0, p1}, La2/l;->a(Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

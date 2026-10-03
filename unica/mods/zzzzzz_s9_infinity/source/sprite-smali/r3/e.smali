.class public abstract Lr3/e;
.super Ljava/util/AbstractSet;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;
.implements LG3/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract g()I
.end method

.method public final bridge size()I
    .locals 0

    invoke-virtual {p0}, Lr3/e;->g()I

    move-result p0

    return p0
.end method

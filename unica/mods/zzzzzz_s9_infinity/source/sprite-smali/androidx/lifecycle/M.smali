.class public final Landroidx/lifecycle/M;
.super Landroidx/lifecycle/Q;
.source "SourceFile"


# instance fields
.field public final d:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/Q;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/M;->d:Ljava/util/LinkedHashMap;

    return-void
.end method

.class public abstract Lcom/google/android/material/datepicker/B;
.super Landroidx/fragment/app/r;
.source "SourceFile"


# instance fields
.field public final W:Ljava/util/LinkedHashSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/r;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/datepicker/B;->W:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public B(Lcom/google/android/material/datepicker/t;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/datepicker/B;->W:Ljava/util/LinkedHashSet;

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

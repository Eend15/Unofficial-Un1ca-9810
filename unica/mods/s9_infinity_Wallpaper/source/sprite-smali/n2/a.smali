.class public abstract Ln2/a;
.super Ln2/b;
.source "SourceFile"


# instance fields
.field public c:Ly2/a;


# direct methods
.method public constructor <init>(Lo2/a;)V
    .locals 0

    invoke-direct {p0, p1}, Ln2/b;-><init>(Lo2/a;)V

    new-instance p1, Ly2/a;

    invoke-direct {p1}, Ly2/a;-><init>()V

    iput-object p1, p0, Ln2/a;->c:Ly2/a;

    return-void
.end method


# virtual methods
.method public abstract m(Ly2/a;)V
.end method

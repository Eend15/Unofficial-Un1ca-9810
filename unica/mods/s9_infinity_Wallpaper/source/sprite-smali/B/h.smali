.class public final LB/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB/e;


# instance fields
.field public final a:LH/f;

.field public final b:LH/f;

.field public final c:I

.field public final d:I

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(LH/f;LH/f;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LB/h;->a:LH/f;

    iput-object p2, p0, LB/h;->b:LH/f;

    iput p3, p0, LB/h;->d:I

    iput p4, p0, LB/h;->c:I

    iput-object p5, p0, LB/h;->e:Ljava/lang/String;

    return-void
.end method

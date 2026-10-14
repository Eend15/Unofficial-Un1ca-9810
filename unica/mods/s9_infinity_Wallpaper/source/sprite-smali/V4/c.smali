.class public final LV4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU4/i;


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:I

.field public final c:I

.field public final d:LF3/l;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILE3/c;)V
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LV4/c;->a:Ljava/lang/CharSequence;

    iput p2, p0, LV4/c;->b:I

    iput p3, p0, LV4/c;->c:I

    check-cast p4, LF3/l;

    iput-object p4, p0, LV4/c;->d:LF3/l;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, LV4/b;

    invoke-direct {v0, p0}, LV4/b;-><init>(LV4/c;)V

    return-object v0
.end method

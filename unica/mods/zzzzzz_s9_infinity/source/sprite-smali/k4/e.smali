.class public final Lk4/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lk4/e;


# instance fields
.field public final a:Lk4/h;

.field public final b:Lk4/f;

.field public final c:Z

.field public final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lk4/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2, v2}, Lk4/e;-><init>(Lk4/h;Lk4/f;ZZ)V

    sput-object v0, Lk4/e;->e:Lk4/e;

    return-void
.end method

.method public constructor <init>(Lk4/h;Lk4/f;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk4/e;->a:Lk4/h;

    iput-object p2, p0, Lk4/e;->b:Lk4/f;

    iput-boolean p3, p0, Lk4/e;->c:Z

    iput-boolean p4, p0, Lk4/e;->d:Z

    return-void
.end method

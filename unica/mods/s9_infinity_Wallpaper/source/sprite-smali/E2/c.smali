.class public final LE2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Z


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 3

    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_0

    const-string p3, ""

    :cond_0
    and-int/lit8 v0, p8, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object p4, v1

    :cond_1
    and-int/lit8 v0, p8, 0x20

    const-string v2, "none"

    if-eqz v0, :cond_2

    move-object p5, v2

    :cond_2
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_3

    move-object p6, v2

    :cond_3
    and-int/lit16 p8, p8, 0x80

    if-eqz p8, :cond_4

    const/4 p7, 0x0

    :cond_4
    const-string p8, "path"

    invoke-static {p3, p8}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p8, "weather"

    invoke-static {p5, p8}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p8, "time"

    invoke-static {p6, p8}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, LE2/c;->a:J

    iput-object v1, p0, LE2/c;->b:Ljava/lang/String;

    iput-object v1, p0, LE2/c;->c:Ljava/lang/String;

    iput-object p3, p0, LE2/c;->d:Ljava/lang/String;

    iput-object p4, p0, LE2/c;->e:Ljava/lang/String;

    iput-object p5, p0, LE2/c;->f:Ljava/lang/String;

    iput-object p6, p0, LE2/c;->g:Ljava/lang/String;

    iput-boolean p7, p0, LE2/c;->h:Z

    return-void
.end method

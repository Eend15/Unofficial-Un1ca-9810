.class public final Ll4/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:Ll4/o;


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Ll4/o;

.field public final g:Z

.field public final h:Ll4/o;

.field public final i:Ll4/o;

.field public final j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v12, Ll4/o;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v11, 0x3ff

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Ll4/o;-><init>(ZZZZZLl4/o;ZLl4/o;Ll4/o;ZI)V

    new-instance v13, Ll4/o;

    const/16 v11, 0x3dc

    move-object v0, v13

    move-object v6, v12

    invoke-direct/range {v0 .. v11}, Ll4/o;-><init>(ZZZZZLl4/o;ZLl4/o;Ll4/o;ZI)V

    sput-object v13, Ll4/o;->k:Ll4/o;

    return-void
.end method

.method public constructor <init>(ZZZZZLl4/o;ZLl4/o;Ll4/o;ZI)V
    .locals 3

    and-int/lit8 v0, p11, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move p1, v1

    :cond_0
    and-int/lit8 v0, p11, 0x2

    if-eqz v0, :cond_1

    move p2, v1

    :cond_1
    and-int/lit8 v0, p11, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move p3, v2

    :cond_2
    and-int/lit8 v0, p11, 0x8

    if-eqz v0, :cond_3

    move p4, v2

    :cond_3
    and-int/lit8 v0, p11, 0x10

    if-eqz v0, :cond_4

    move p5, v2

    :cond_4
    and-int/lit8 v0, p11, 0x20

    if-eqz v0, :cond_5

    const/4 p6, 0x0

    :cond_5
    and-int/lit8 v0, p11, 0x40

    if-eqz v0, :cond_6

    move p7, v1

    :cond_6
    and-int/lit16 v0, p11, 0x80

    if-eqz v0, :cond_7

    move-object p8, p6

    :cond_7
    and-int/lit16 v0, p11, 0x100

    if-eqz v0, :cond_8

    move-object p9, p6

    :cond_8
    and-int/lit16 p11, p11, 0x200

    if-eqz p11, :cond_9

    move p10, v2

    :cond_9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ll4/o;->a:Z

    iput-boolean p2, p0, Ll4/o;->b:Z

    iput-boolean p3, p0, Ll4/o;->c:Z

    iput-boolean p4, p0, Ll4/o;->d:Z

    iput-boolean p5, p0, Ll4/o;->e:Z

    iput-object p6, p0, Ll4/o;->f:Ll4/o;

    iput-boolean p7, p0, Ll4/o;->g:Z

    iput-object p8, p0, Ll4/o;->h:Ll4/o;

    iput-object p9, p0, Ll4/o;->i:Ll4/o;

    iput-boolean p10, p0, Ll4/o;->j:Z

    return-void
.end method

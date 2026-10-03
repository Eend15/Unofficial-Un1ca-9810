.class public final LS4/d;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/d;


# static fields
.field public static final d:LS4/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LS4/d;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, LF3/l;-><init>(I)V

    sput-object v0, LS4/d;->d:LS4/d;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(LJ4/C;Ljava/lang/Object;Ll4/o;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0
.end method

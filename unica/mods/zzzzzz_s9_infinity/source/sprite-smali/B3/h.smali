.class public final LB3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU4/i;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/io/Serializable;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LE3/a;LE3/b;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LB3/h;->a:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, LF3/l;

    iput-object p1, p0, LB3/h;->b:Ljava/io/Serializable;

    iput-object p2, p0, LB3/h;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;LB3/i;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LB3/h;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LB3/h;->b:Ljava/io/Serializable;

    .line 3
    iput-object p2, p0, LB3/h;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget v0, p0, LB3/h;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, LU4/h;

    invoke-direct {v0, p0}, LU4/h;-><init>(LB3/h;)V

    return-object v0

    :pswitch_0
    new-instance v0, LB3/f;

    invoke-direct {v0, p0}, LB3/f;-><init>(LB3/h;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final Lw0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF4/e;
.implements LG/b;
.implements Lj/a;
.implements Ll4/j;


# instance fields
.field public final synthetic d:I

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    iput p1, p0, Lw0/i;->d:I

    sparse-switch p1, :sswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 45
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance p1, LJ/c;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, LJ/c;-><init>(I)V

    iput-object p1, p0, Lw0/i;->e:Ljava/lang/Object;

    .line 47
    new-instance p1, Ln/j;

    const/4 v0, 0x0

    .line 48
    invoke-direct {p1, v0}, Ln/j;-><init>(I)V

    .line 49
    iput-object p1, p0, Lw0/i;->f:Ljava/lang/Object;

    .line 50
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lw0/i;->g:Ljava/lang/Object;

    .line 51
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lw0/i;->h:Ljava/lang/Object;

    return-void

    .line 52
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance p1, Ln/f;

    const/4 v0, 0x0

    .line 54
    invoke-direct {p1, v0}, Ln/j;-><init>(I)V

    .line 55
    iput-object p1, p0, Lw0/i;->e:Ljava/lang/Object;

    .line 56
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lw0/i;->f:Ljava/lang/Object;

    .line 57
    new-instance p1, Ln/h;

    invoke-direct {p1}, Ln/h;-><init>()V

    iput-object p1, p0, Lw0/i;->g:Ljava/lang/Object;

    .line 58
    new-instance p1, Ln/f;

    .line 59
    invoke-direct {p1, v0}, Ln/j;-><init>(I)V

    .line 60
    iput-object p1, p0, Lw0/i;->h:Ljava/lang/Object;

    return-void

    .line 61
    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance p1, Lk5/i;

    invoke-direct {p1}, Lk5/i;-><init>()V

    iput-object p1, p0, Lw0/i;->g:Ljava/lang/Object;

    .line 63
    new-instance p1, Lk5/i;

    invoke-direct {p1}, Lk5/i;-><init>()V

    iput-object p1, p0, Lw0/i;->h:Ljava/lang/Object;

    .line 64
    new-instance p1, Lk5/i;

    invoke-direct {p1}, Lk5/i;-><init>()V

    iput-object p1, p0, Lw0/i;->e:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 65
    new-array v0, p1, [Lk5/i;

    iput-object v0, p0, Lw0/i;->f:Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 66
    iget-object v1, p0, Lw0/i;->f:Ljava/lang/Object;

    check-cast v1, [Lk5/i;

    new-instance v2, Lk5/i;

    invoke-direct {v2}, Lk5/i;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 67
    :sswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance p1, Landroidx/recyclerview/widget/W;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/W;-><init>(Lw0/i;)V

    iput-object p1, p0, Lw0/i;->f:Ljava/lang/Object;

    return-void

    .line 69
    :sswitch_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lw0/i;->e:Ljava/lang/Object;

    .line 71
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lw0/i;->f:Ljava/lang/Object;

    .line 72
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lw0/i;->g:Ljava/lang/Object;

    return-void

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_4
        0x9 -> :sswitch_3
        0xa -> :sswitch_2
        0xd -> :sswitch_1
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 1
    iput p1, p0, Lw0/i;->d:I

    const/4 p1, 0x0

    iput-object p1, p0, Lw0/i;->e:Ljava/lang/Object;

    iput-object p1, p0, Lw0/i;->f:Ljava/lang/Object;

    iput-object p1, p0, Lw0/i;->g:Ljava/lang/Object;

    iput-object p1, p0, Lw0/i;->h:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LH4/l;)V
    .locals 5

    const/4 v0, 0x2

    iput v0, p0, Lw0/i;->d:I

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const-string v0, "this$0"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iput-object p1, p0, Lw0/i;->h:Ljava/lang/Object;

    .line 130
    iget-object v0, p1, LH4/l;->h:Ln4/j;

    iget-object v0, v0, Ln4/j;->t:Ljava/util/List;

    .line 131
    const-string v1, "classProto.enumEntryList"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-static {v0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-static {v1}, Lr3/v;->d0(I)I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    move v1, v2

    .line 133
    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 134
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 135
    move-object v3, v1

    check-cast v3, Ln4/t;

    .line 136
    iget-object v4, p1, LH4/l;->o:LF4/k;

    iget-object v4, v4, LF4/k;->b:Lp4/f;

    .line 137
    iget v3, v3, Ln4/t;->g:I

    .line 138
    invoke-static {v4, v3}, Lw0/f;->B(Lp4/f;I)Ls4/f;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lw0/i;->e:Ljava/lang/Object;

    .line 139
    iget-object p1, p0, Lw0/i;->h:Ljava/lang/Object;

    check-cast p1, LH4/l;

    .line 140
    iget-object v0, p1, LH4/l;->o:LF4/k;

    .line 141
    iget-object v0, v0, LF4/k;->a:LF4/i;

    .line 142
    iget-object v0, v0, LF4/i;->a:LI4/o;

    .line 143
    new-instance v1, LH4/j;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1}, LH4/j;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    check-cast v0, LI4/l;

    invoke-virtual {v0, v1}, LI4/l;->c(LE3/b;)LI4/j;

    move-result-object p1

    iput-object p1, p0, Lw0/i;->f:Ljava/lang/Object;

    .line 144
    iget-object p1, p0, Lw0/i;->h:Ljava/lang/Object;

    check-cast p1, LH4/l;

    .line 145
    iget-object p1, p1, LH4/l;->o:LF4/k;

    .line 146
    iget-object p1, p1, LF4/k;->a:LF4/i;

    .line 147
    iget-object p1, p1, LF4/i;->a:LI4/o;

    .line 148
    new-instance v0, LC4/g;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, LC4/g;-><init>(ILjava/lang/Object;)V

    check-cast p1, LI4/l;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    new-instance v1, LI4/i;

    .line 150
    invoke-direct {v1, p1, v0}, LI4/h;-><init>(LI4/l;LE3/a;)V

    .line 151
    iput-object v1, p0, Lw0/i;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LI4/o;LU3/x;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lw0/i;->d:I

    const-string v0, "storageManager"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/i;->e:Ljava/lang/Object;

    iput-object p2, p0, Lw0/i;->f:Ljava/lang/Object;

    .line 18
    new-instance p2, LU3/A;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, LU3/A;-><init>(Lw0/i;I)V

    check-cast p1, LI4/l;

    invoke-virtual {p1, p2}, LI4/l;->b(LE3/b;)LI4/e;

    move-result-object p2

    iput-object p2, p0, Lw0/i;->g:Ljava/lang/Object;

    .line 19
    new-instance p2, LU3/A;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, LU3/A;-><init>(Lw0/i;I)V

    invoke-virtual {p1, p2}, LI4/l;->b(LE3/b;)LI4/e;

    move-result-object p1

    iput-object p1, p0, Lw0/i;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/16 v0, 0x11

    iput v0, p0, Lw0/i;->d:I

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ln1/b;

    invoke-direct {v0, p0}, Ln1/b;-><init>(Lw0/i;)V

    iput-object v0, p0, Lw0/i;->h:Ljava/lang/Object;

    .line 104
    iput-object p1, p0, Lw0/i;->e:Ljava/lang/Object;

    .line 105
    new-instance p1, LM1/d;

    .line 106
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p0, p1, LM1/d;->g:Ljava/lang/Object;

    const/4 v0, 0x3

    .line 107
    new-array v1, v0, [F

    iput-object v1, p1, LM1/d;->a:Ljava/lang/Object;

    .line 108
    new-array v1, v0, [F

    iput-object v1, p1, LM1/d;->b:Ljava/lang/Object;

    .line 109
    new-array v1, v0, [F

    iput-object v1, p1, LM1/d;->c:Ljava/lang/Object;

    const/16 v1, 0x9

    .line 110
    new-array v2, v1, [F

    iput-object v2, p1, LM1/d;->d:Ljava/lang/Object;

    .line 111
    new-array v1, v1, [F

    iput-object v1, p1, LM1/d;->e:Ljava/lang/Object;

    .line 112
    new-array v0, v0, [F

    iput-object v0, p1, LM1/d;->f:Ljava/lang/Object;

    .line 113
    iput-object p1, p0, Lw0/i;->f:Ljava/lang/Object;

    .line 114
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lw0/i;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 1

    const/16 v0, 0xc

    iput v0, p0, Lw0/i;->d:I

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lw0/i;->f:Ljava/lang/Object;

    .line 117
    iput-object p2, p0, Lw0/i;->e:Ljava/lang/Object;

    .line 118
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lw0/i;->g:Ljava/lang/Object;

    .line 119
    new-instance p1, Ln/j;

    const/4 p2, 0x0

    .line 120
    invoke-direct {p1, p2}, Ln/j;-><init>(I)V

    .line 121
    iput-object p1, p0, Lw0/i;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ln1/a;)V
    .locals 5

    const/16 v0, 0x13

    iput v0, p0, Lw0/i;->d:I

    const/4 v0, 0x0

    .line 2
    const-string v1, "context"

    invoke-static {p1, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Lu0/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context.applicationContext"

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {v1, v2, p2, v0}, Lu0/a;-><init>(Landroid/content/Context;Ln1/a;I)V

    .line 5
    new-instance v0, Lu0/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 6
    invoke-direct {v0, v2, p2, v4}, Lu0/a;-><init>(Landroid/content/Context;Ln1/a;I)V

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lu0/i;->a:Ljava/lang/String;

    .line 8
    new-instance v4, Lu0/h;

    invoke-direct {v4, v2, p2}, Lu0/h;-><init>(Landroid/content/Context;Ln1/a;)V

    .line 9
    new-instance v2, Lu0/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    .line 10
    invoke-direct {v2, p1, p2, v3}, Lu0/a;-><init>(Landroid/content/Context;Ln1/a;I)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v1, p0, Lw0/i;->e:Ljava/lang/Object;

    .line 13
    iput-object v0, p0, Lw0/i;->f:Ljava/lang/Object;

    .line 14
    iput-object v4, p0, Lw0/i;->g:Ljava/lang/Object;

    .line 15
    iput-object v2, p0, Lw0/i;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Typeface;LP/b;)V
    .locals 5

    const/4 v0, 0x6

    iput v0, p0, Lw0/i;->d:I

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lw0/i;->h:Ljava/lang/Object;

    .line 82
    iput-object p2, p0, Lw0/i;->e:Ljava/lang/Object;

    .line 83
    new-instance p1, Landroidx/emoji2/text/q;

    const/16 v0, 0x400

    invoke-direct {p1, v0}, Landroidx/emoji2/text/q;-><init>(I)V

    iput-object p1, p0, Lw0/i;->g:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 84
    invoke-virtual {p2, p1}, LK/u;->b(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 85
    iget v2, p2, LK/u;->d:I

    add-int/2addr v0, v2

    .line 86
    iget-object v2, p2, LK/u;->g:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    add-int/2addr v2, v0

    .line 87
    iget-object v0, p2, LK/u;->g:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x2

    .line 88
    new-array v0, v0, [C

    iput-object v0, p0, Lw0/i;->f:Ljava/lang/Object;

    .line 89
    invoke-virtual {p2, p1}, LK/u;->b(I)I

    move-result p1

    if-eqz p1, :cond_1

    .line 90
    iget v0, p2, LK/u;->d:I

    add-int/2addr p1, v0

    .line 91
    iget-object v0, p2, LK/u;->g:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/2addr v0, p1

    .line 92
    iget-object p1, p2, LK/u;->g:Ljava/lang/Object;

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    move p2, v1

    :goto_2
    if-ge p2, p1, :cond_4

    .line 93
    new-instance v0, Landroidx/emoji2/text/t;

    invoke-direct {v0, p0, p2}, Landroidx/emoji2/text/t;-><init>(Lw0/i;I)V

    .line 94
    invoke-virtual {v0}, Landroidx/emoji2/text/t;->c()LP/a;

    move-result-object v2

    const/4 v3, 0x4

    .line 95
    invoke-virtual {v2, v3}, LK/u;->b(I)I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v4, v2, LK/u;->g:Ljava/lang/Object;

    check-cast v4, Ljava/nio/ByteBuffer;

    iget v2, v2, LK/u;->d:I

    add-int/2addr v3, v2

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    goto :goto_3

    :cond_2
    move v2, v1

    :goto_3
    mul-int/lit8 v3, p2, 0x2

    .line 96
    iget-object v4, p0, Lw0/i;->f:Ljava/lang/Object;

    check-cast v4, [C

    invoke-static {v2, v4, v3}, Ljava/lang/Character;->toChars(I[CI)I

    .line 97
    invoke-virtual {v0}, Landroidx/emoji2/text/t;->b()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_3

    move v2, v3

    goto :goto_4

    :cond_3
    move v2, v1

    :goto_4
    const-string v4, "invalid metadata codepoint length"

    invoke-static {v4, v2}, Lw0/f;->d(Ljava/lang/String;Z)V

    .line 98
    invoke-virtual {v0}, Landroidx/emoji2/text/t;->b()I

    move-result v2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lw0/i;->g:Ljava/lang/Object;

    check-cast v3, Landroidx/emoji2/text/q;

    invoke-virtual {v3, v0, v1, v2}, Landroidx/emoji2/text/q;->a(Landroidx/emoji2/text/t;II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/b;Landroidx/recyclerview/widget/b;Ljava/util/ArrayList;)V
    .locals 1

    const/16 v0, 0xf

    iput v0, p0, Lw0/i;->d:I

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lw0/i;->f:Ljava/lang/Object;

    iput-object p2, p0, Lw0/i;->g:Ljava/lang/Object;

    iput-object p3, p0, Lw0/i;->h:Ljava/lang/Object;

    .line 101
    iput-object p1, p0, Lw0/i;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/b;Lg4/f;)V
    .locals 1

    const/16 v0, 0xb

    iput v0, p0, Lw0/i;->d:I

    const-string v0, "c"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeParameterResolver"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lw0/i;->e:Ljava/lang/Object;

    .line 75
    iput-object p2, p0, Lw0/i;->f:Ljava/lang/Object;

    .line 76
    new-instance p1, Lw0/s;

    const/4 p2, 0x0

    .line 77
    invoke-direct {p1, p2}, Lw0/s;-><init>(Li4/e;)V

    .line 78
    iput-object p1, p0, Lw0/i;->g:Ljava/lang/Object;

    .line 79
    new-instance p2, Li4/e;

    invoke-direct {p2, p1}, Li4/e;-><init>(Lw0/s;)V

    iput-object p2, p0, Lw0/i;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase_Impl;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lw0/i;->d:I

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lw0/i;->e:Ljava/lang/Object;

    .line 36
    new-instance v0, Lw0/b;

    const/4 v1, 0x2

    .line 37
    invoke-direct {v0, p1, v1}, Lw0/b;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    .line 38
    iput-object v0, p0, Lw0/i;->f:Ljava/lang/Object;

    .line 39
    new-instance v0, Lw0/h;

    const/4 v1, 0x0

    .line 40
    invoke-direct {v0, p1, v1}, Lw0/h;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    .line 41
    iput-object v0, p0, Lw0/i;->g:Ljava/lang/Object;

    .line 42
    new-instance v0, Lw0/h;

    const/4 v1, 0x1

    .line 43
    invoke-direct {v0, p1, v1}, Lw0/h;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    .line 44
    iput-object v0, p0, Lw0/i;->h:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 16
    iput p5, p0, Lw0/i;->d:I

    iput-object p1, p0, Lw0/i;->e:Ljava/lang/Object;

    iput-object p2, p0, Lw0/i;->f:Ljava/lang/Object;

    iput-object p3, p0, Lw0/i;->g:Ljava/lang/Object;

    iput-object p4, p0, Lw0/i;->h:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ln4/E;Lw0/e;Lo4/a;LF4/a;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lw0/i;->d:I

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p2, p0, Lw0/i;->e:Ljava/lang/Object;

    .line 22
    iput-object p3, p0, Lw0/i;->f:Ljava/lang/Object;

    .line 23
    iput-object p4, p0, Lw0/i;->g:Ljava/lang/Object;

    .line 24
    iget-object p1, p1, Ln4/E;->j:Ljava/util/List;

    .line 25
    const-string p2, "proto.class_List"

    invoke-static {p1, p2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-static {p1}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result p2

    invoke-static {p2}, Lr3/v;->d0(I)I

    move-result p2

    const/16 p3, 0x10

    if-ge p2, p3, :cond_0

    move p2, p3

    .line 27
    :cond_0
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 28
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 29
    move-object p4, p2

    check-cast p4, Ln4/j;

    .line 30
    iget-object v0, p0, Lw0/i;->e:Ljava/lang/Object;

    check-cast v0, Lw0/e;

    .line 31
    iget p4, p4, Ln4/j;->h:I

    .line 32
    invoke-static {v0, p4}, Lw0/f;->v(Lp4/f;I)Ls4/b;

    move-result-object p4

    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 33
    :cond_1
    iput-object p3, p0, Lw0/i;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lo1/b;Ll4/m;)V
    .locals 1

    const/16 v0, 0xe

    iput v0, p0, Lw0/i;->d:I

    const-string v0, "this$0"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iput-object p1, p0, Lw0/i;->h:Ljava/lang/Object;

    const/16 v0, 0xe

    iput v0, p0, Lw0/i;->d:I

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const-string v0, "this$0"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iput-object p1, p0, Lw0/i;->g:Ljava/lang/Object;

    iput-object p2, p0, Lw0/i;->e:Ljava/lang/Object;

    .line 126
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lw0/i;->f:Ljava/lang/Object;

    return-void
.end method

.method public static k(Landroid/view/View;Landroidx/emoji2/text/f;)I
    .locals 1

    invoke-virtual {p1, p0}, Landroidx/emoji2/text/f;->e(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, p0}, Landroidx/emoji2/text/f;->c(Landroid/view/View;)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p0, v0

    invoke-virtual {p1}, Landroidx/emoji2/text/f;->k()I

    move-result v0

    invoke-virtual {p1}, Landroidx/emoji2/text/f;->l()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    sub-int/2addr p0, p1

    return p0
.end method

.method public static m(Landroidx/recyclerview/widget/I;Landroidx/emoji2/text/f;)Landroid/view/View;
    .locals 8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->v()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroidx/emoji2/text/f;->k()I

    move-result v2

    invoke-virtual {p1}, Landroidx/emoji2/text/f;->l()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    const v2, 0x7fffffff

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/I;->u(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroidx/emoji2/text/f;->e(Landroid/view/View;)I

    move-result v6

    invoke-virtual {p1, v5}, Landroidx/emoji2/text/f;->c(Landroid/view/View;)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    sub-int/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v2, :cond_1

    move-object v1, v5

    move v2, v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public A(Landroidx/recyclerview/widget/I;)Landroidx/emoji2/text/f;
    .locals 2

    iget-object v0, p0, Lw0/i;->g:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/z;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/emoji2/text/f;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/I;

    if-eq v0, p1, :cond_1

    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/z;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroidx/recyclerview/widget/z;-><init>(Landroidx/recyclerview/widget/I;I)V

    iput-object v0, p0, Lw0/i;->g:Ljava/lang/Object;

    :cond_1
    iget-object p0, p0, Lw0/i;->g:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/z;

    return-object p0
.end method

.method public B(Lw0/g;)V
    .locals 1

    iget-object v0, p0, Lw0/i;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->b()V

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->c()V

    :try_start_0
    iget-object p0, p0, Lw0/i;->f:Ljava/lang/Object;

    check-cast p0, Lw0/b;

    invoke-virtual {p0, p1}, Lw0/b;->k(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->k()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->k()V

    throw p0
.end method

.method public C(LH4/v;)Z
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lw0/i;->f:Ljava/lang/Object;

    check-cast v0, LH4/v;

    invoke-static {v0, p1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iget-object p0, p0, Lw0/i;->e:Ljava/lang/Object;

    check-cast p0, Lw0/i;

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lw0/i;->C(LH4/v;)Z

    move-result p0

    :goto_0
    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public D(Landroidx/fragment/app/Q;)V
    .locals 2

    iget-object v0, p1, Landroidx/fragment/app/Q;->c:Landroidx/fragment/app/r;

    iget-object v1, v0, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    iget-object p0, p0, Lw0/i;->f:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "FragmentManager"

    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Added fragment to active set "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public E(Landroidx/fragment/app/Q;)V
    .locals 2

    iget-object p1, p1, Landroidx/fragment/app/Q;->c:Landroidx/fragment/app/r;

    iget-boolean v0, p1, Landroidx/fragment/app/r;->D:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw0/i;->h:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/N;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/N;->e(Landroidx/fragment/app/r;)V

    :cond_0
    iget-object p0, p0, Lw0/i;->f:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    iget-object v0, p1, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/Q;

    if-nez p0, :cond_1

    return-void

    :cond_1
    const-string p0, "FragmentManager"

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Removed fragment from active set "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public F(Ln1/c;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "TiltSensor"

    const-string v0, "registerListener : listener is NULL"

    invoke-static {p1, v0, p0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lw0/i;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lw0/i;->e:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Ln1/a;->n(Landroid/content/Context;)Ln1/a;

    move-result-object v1

    iget-object p0, p0, Lw0/i;->h:Ljava/lang/Object;

    check-cast p0, Ln1/b;

    invoke-virtual {v1, v0, p0}, Ln1/a;->x(ILn1/b;)V

    invoke-static {p1}, Ln1/a;->n(Landroid/content/Context;)Ln1/a;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p0}, Ln1/a;->x(ILn1/b;)V

    :cond_1
    return-void
.end method

.method public G()V
    .locals 5

    iget-object v0, p0, Lw0/i;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/I;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lw0/i;->A(Landroidx/recyclerview/widget/I;)Landroidx/emoji2/text/f;

    move-result-object v1

    invoke-static {v0, v1}, Lw0/i;->m(Landroidx/recyclerview/widget/I;Landroidx/emoji2/text/f;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/I;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lw0/i;->y(Landroidx/recyclerview/widget/I;)Landroidx/emoji2/text/f;

    move-result-object v1

    invoke-static {v0, v1}, Lw0/i;->m(Landroidx/recyclerview/widget/I;Landroidx/emoji2/text/f;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0, v0, v1}, Lw0/i;->e(Landroidx/recyclerview/widget/I;Landroid/view/View;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    if-nez v2, :cond_5

    aget v4, v0, v3

    if-eqz v4, :cond_6

    :cond_5
    iget-object p0, p0, Lw0/i;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    aget v0, v0, v3

    invoke-virtual {p0, v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->c0(ZII)V

    :cond_6
    return-void
.end method

.method public H(La4/h;Li4/a;Z)LJ4/b0;
    .locals 6

    const-string v0, "arrayType"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, La4/h;->b:La4/B;

    instance-of v1, v0, La4/A;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, La4/A;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_1

    :goto_1
    move-object v1, v2

    goto :goto_2

    :cond_1
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    iget-object v1, v1, La4/A;->a:Ljava/lang/Class;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LA4/c;->b(Ljava/lang/String;)LA4/c;

    move-result-object v1

    invoke-virtual {v1}, LA4/c;->d()LR3/l;

    move-result-object v1

    :goto_2
    new-instance v3, Lg4/c;

    iget-object v4, p0, Lw0/i;->e:Ljava/lang/Object;

    check-cast v4, Landroidx/recyclerview/widget/b;

    const/4 v5, 0x1

    invoke-direct {v3, v4, p1, v5}, Lg4/c;-><init>(Landroidx/recyclerview/widget/b;Lj4/b;Z)V

    iget-object p1, v4, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast p1, Lg4/a;

    iget-boolean p2, p2, Li4/a;->c:Z

    if-eqz v1, :cond_5

    iget-object p0, p1, Lg4/a;->o:LX3/D;

    iget-object p0, p0, LX3/D;->g:LR3/j;

    invoke-virtual {p0, v1}, LR3/j;->p(LR3/l;)LJ4/G;

    move-result-object p0

    invoke-interface {p0}, LV3/a;->p()LV3/h;

    move-result-object p1

    invoke-static {v3, p1}, Lr3/j;->E0(LV3/h;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    sget-object p1, LV3/g;->a:LV3/f;

    goto :goto_3

    :cond_3
    new-instance p3, LV3/i;

    const/4 v0, 0x0

    invoke-direct {p3, v0, p1}, LV3/i;-><init>(ILjava/util/List;)V

    move-object p1, p3

    :goto_3
    invoke-virtual {p0, p1}, LJ4/G;->G0(LV3/h;)LJ4/G;

    if-eqz p2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0, v5}, LJ4/G;->F0(Z)LJ4/G;

    move-result-object p1

    invoke-static {p0, p1}, LJ4/d;->i(LJ4/G;LJ4/G;)LJ4/b0;

    move-result-object p0

    :goto_4
    return-object p0

    :cond_5
    const/4 v1, 0x2

    invoke-static {v1, p2, v2, v1}, Li4/d;->b(IZLh4/B;I)Li4/a;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lw0/i;->I(Lj4/d;Li4/a;)LJ4/C;

    move-result-object p0

    const/4 v0, 0x3

    if-eqz p2, :cond_7

    if-eqz p3, :cond_6

    move v5, v0

    :cond_6
    iget-object p1, p1, Lg4/a;->o:LX3/D;

    iget-object p1, p1, LX3/D;->g:LR3/j;

    invoke-virtual {p1, v5, p0, v3}, LR3/j;->g(ILJ4/C;LV3/h;)LJ4/G;

    move-result-object p0

    return-object p0

    :cond_7
    iget-object p2, p1, Lg4/a;->o:LX3/D;

    iget-object p2, p2, LX3/D;->g:LR3/j;

    invoke-virtual {p2, v5, p0, v3}, LR3/j;->g(ILJ4/C;LV3/h;)LJ4/G;

    move-result-object p2

    iget-object p1, p1, Lg4/a;->o:LX3/D;

    iget-object p1, p1, LX3/D;->g:LR3/j;

    invoke-virtual {p1, v0, p0, v3}, LR3/j;->g(ILJ4/C;LV3/h;)LJ4/G;

    move-result-object p0

    invoke-virtual {p0, v5}, LJ4/G;->F0(Z)LJ4/G;

    move-result-object p0

    invoke-static {p2, p0}, LJ4/d;->i(LJ4/G;LJ4/G;)LJ4/b0;

    move-result-object p0

    return-object p0
.end method

.method public I(Lj4/d;Li4/a;)LJ4/C;
    .locals 5

    instance-of v0, p1, La4/A;

    const/4 v1, 0x0

    iget-object v2, p0, Lw0/i;->e:Ljava/lang/Object;

    check-cast v2, Landroidx/recyclerview/widget/b;

    if-eqz v0, :cond_2

    check-cast p1, La4/A;

    sget-object p0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    iget-object p1, p1, La4/A;->a:Ljava/lang/Class;

    invoke-static {p1, p0}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LA4/c;->b(Ljava/lang/String;)LA4/c;

    move-result-object p0

    invoke-virtual {p0}, LA4/c;->d()LR3/l;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    iget-object p0, v2, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast p0, Lg4/a;

    iget-object p0, p0, Lg4/a;->o:LX3/D;

    iget-object p0, p0, LX3/D;->g:LR3/j;

    invoke-virtual {p0, v1}, LR3/j;->r(LR3/l;)LJ4/G;

    move-result-object p0

    goto/16 :goto_3

    :cond_1
    iget-object p0, v2, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast p0, Lg4/a;

    iget-object p0, p0, Lg4/a;->o:LX3/D;

    iget-object p0, p0, LX3/D;->g:LR3/j;

    invoke-virtual {p0}, LR3/j;->v()LJ4/G;

    move-result-object p0

    goto/16 :goto_3

    :cond_2
    instance-of v0, p1, La4/p;

    const/4 v3, 0x0

    if-eqz v0, :cond_8

    check-cast p1, La4/p;

    iget-boolean v0, p2, Li4/a;->c:Z

    if-nez v0, :cond_3

    iget v0, p2, Li4/a;->a:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    move v3, v2

    :cond_3
    invoke-virtual {p1}, La4/p;->f()Z

    move-result v0

    const-string v2, "Unresolved java class "

    iget-object v4, p1, La4/p;->a:Ljava/lang/reflect/Type;

    if-nez v0, :cond_4

    if-nez v3, :cond_4

    invoke-virtual {p0, p1, p2, v1}, Lw0/i;->g(La4/p;Li4/a;LJ4/G;)LJ4/G;

    move-result-object p0

    if-nez p0, :cond_d

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LJ4/v;->c(Ljava/lang/String;)LJ4/p;

    move-result-object p0

    goto/16 :goto_3

    :cond_4
    const/4 v3, 0x3

    invoke-virtual {p2, v3}, Li4/a;->b(I)Li4/a;

    move-result-object v3

    invoke-virtual {p0, p1, v3, v1}, Lw0/i;->g(La4/p;Li4/a;LJ4/G;)LJ4/G;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LJ4/v;->c(Ljava/lang/String;)LJ4/p;

    move-result-object p0

    goto :goto_3

    :cond_5
    const/4 v3, 0x2

    invoke-virtual {p2, v3}, Li4/a;->b(I)Li4/a;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v1}, Lw0/i;->g(La4/p;Li4/a;LJ4/G;)LJ4/G;

    move-result-object p0

    if-nez p0, :cond_6

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LJ4/v;->c(Ljava/lang/String;)LJ4/p;

    move-result-object p0

    goto :goto_3

    :cond_6
    if-eqz v0, :cond_7

    new-instance p1, Li4/g;

    invoke-direct {p1, v1, p0}, Li4/g;-><init>(LJ4/G;LJ4/G;)V

    goto :goto_1

    :cond_7
    invoke-static {v1, p0}, LJ4/d;->i(LJ4/G;LJ4/G;)LJ4/b0;

    move-result-object p1

    :goto_1
    move-object p0, p1

    goto :goto_3

    :cond_8
    instance-of v0, p1, La4/h;

    if-eqz v0, :cond_9

    check-cast p1, La4/h;

    invoke-virtual {p0, p1, p2, v3}, Lw0/i;->H(La4/h;Li4/a;Z)LJ4/b0;

    move-result-object p0

    goto :goto_3

    :cond_9
    instance-of v0, p1, La4/E;

    if-eqz v0, :cond_c

    check-cast p1, La4/E;

    invoke-virtual {p1}, La4/E;->e()La4/B;

    move-result-object p1

    if-nez p1, :cond_a

    goto :goto_2

    :cond_a
    invoke-virtual {p0, p1, p2}, Lw0/i;->I(Lj4/d;Li4/a;)LJ4/C;

    move-result-object v1

    :goto_2
    if-nez v1, :cond_b

    iget-object p0, v2, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast p0, Lg4/a;

    iget-object p0, p0, Lg4/a;->o:LX3/D;

    iget-object p0, p0, LX3/D;->g:LR3/j;

    invoke-virtual {p0}, LR3/j;->n()LJ4/G;

    move-result-object p0

    goto :goto_3

    :cond_b
    move-object p0, v1

    goto :goto_3

    :cond_c
    if-nez p1, :cond_e

    iget-object p0, v2, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast p0, Lg4/a;

    iget-object p0, p0, Lg4/a;->o:LX3/D;

    iget-object p0, p0, LX3/D;->g:LR3/j;

    invoke-virtual {p0}, LR3/j;->n()LJ4/G;

    move-result-object p0

    :cond_d
    :goto_3
    return-object p0

    :cond_e
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Unsupported type: "

    invoke-static {p1, p2}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public J(Ln1/c;)V
    .locals 4

    if-nez p1, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "TiltSensor"

    const-string v0, "unregisterListener : listener is NULL"

    invoke-static {p1, v0, p0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lw0/i;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lw0/i;->e:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Ln1/a;->n(Landroid/content/Context;)Ln1/a;

    move-result-object v2

    iget-object p0, p0, Lw0/i;->h:Ljava/lang/Object;

    check-cast p0, Ln1/b;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p0}, Ln1/a;->A(ILn1/b;)V

    invoke-static {v1}, Ln1/a;->n(Landroid/content/Context;)Ln1/a;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p0}, Ln1/a;->A(ILn1/b;)V

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public K(ILs4/b;LZ3/a;)Landroidx/recyclerview/widget/b;
    .locals 3

    iget-object v0, p0, Lw0/i;->e:Ljava/lang/Object;

    check-cast v0, Ll4/m;

    new-instance v1, Ll4/m;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Ll4/m;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ll4/m;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lw0/i;->h:Ljava/lang/Object;

    check-cast p0, Lo1/b;

    iget-object p1, p0, Lo1/b;->d:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lo1/b;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lo1/b;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/b;

    invoke-static {p0, p2, p3, p1}, Landroidx/recyclerview/widget/b;->b(Landroidx/recyclerview/widget/b;Ls4/b;LZ3/a;Ljava/util/List;)Landroidx/recyclerview/widget/b;

    move-result-object p0

    return-object p0
.end method

.method public M(Ls4/b;)LF4/d;
    .locals 3

    const-string v0, "classId"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lw0/i;->h:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln4/j;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, LF4/d;

    iget-object v2, p0, Lw0/i;->g:Ljava/lang/Object;

    check-cast v2, LF4/a;

    invoke-virtual {v2, p1}, LF4/a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, LU3/L;->a:LU3/M;

    iget-object v2, p0, Lw0/i;->e:Ljava/lang/Object;

    check-cast v2, Lw0/e;

    iget-object p0, p0, Lw0/i;->f:Ljava/lang/Object;

    check-cast p0, Lo4/a;

    invoke-direct {v1, v2, v0, p0, p1}, LF4/d;-><init>(Lp4/f;Ln4/j;Lp4/a;LU3/L;)V

    return-object v1
.end method

.method public a()V
    .locals 3

    iget-object v0, p0, Lw0/i;->e:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v1, p0, Lw0/i;->f:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object v0, p0, Lw0/i;->g:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/appcompat/app/B;->d()V

    const-string v0, "FragmentManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Animation from operation "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lw0/i;->h:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/W;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " has been cancelled."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public b(Lj/b;Landroid/view/MenuItem;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lw0/i;->p(Lj/b;)Lj/f;

    move-result-object p1

    new-instance v0, Lk/q;

    iget-object v1, p0, Lw0/i;->f:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    check-cast p2, LE/a;

    invoke-direct {v0, v1, p2}, Lk/q;-><init>(Landroid/content/Context;LE/a;)V

    iget-object p0, p0, Lw0/i;->e:Ljava/lang/Object;

    check-cast p0, Landroid/view/ActionMode$Callback;

    invoke-interface {p0, p1, v0}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public c(Landroidx/fragment/app/r;)V
    .locals 2

    iget-object v0, p0, Lw0/i;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lw0/i;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lw0/i;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    iput-boolean p0, p1, Landroidx/fragment/app/r;->n:Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fragment already added: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public d(Lj/b;Lk/j;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lw0/i;->p(Lj/b;)Lj/f;

    move-result-object p1

    iget-object v0, p0, Lw0/i;->h:Ljava/lang/Object;

    check-cast v0, Ln/j;

    invoke-virtual {v0, p2}, Ln/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Menu;

    if-nez v1, :cond_0

    new-instance v1, Lk/y;

    iget-object v2, p0, Lw0/i;->f:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2, p2}, Lk/y;-><init>(Landroid/content/Context;Lk/j;)V

    invoke-virtual {v0, p2, v1}, Ln/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lw0/i;->e:Ljava/lang/Object;

    check-cast p0, Landroid/view/ActionMode$Callback;

    invoke-interface {p0, p1, v1}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public e(Landroidx/recyclerview/widget/I;Landroid/view/View;)[I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/I;->d()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lw0/i;->y(Landroidx/recyclerview/widget/I;)Landroidx/emoji2/text/f;

    move-result-object v1

    invoke-static {p2, v1}, Lw0/i;->k(Landroid/view/View;Landroidx/emoji2/text/f;)I

    move-result v1

    aput v1, v0, v2

    goto :goto_0

    :cond_0
    aput v2, v0, v2

    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/I;->e()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lw0/i;->A(Landroidx/recyclerview/widget/I;)Landroidx/emoji2/text/f;

    move-result-object p0

    invoke-static {p2, p0}, Lw0/i;->k(Landroid/view/View;Landroidx/emoji2/text/f;)I

    move-result p0

    aput p0, v0, v3

    goto :goto_1

    :cond_1
    aput v2, v0, v3

    :goto_1
    return-object v0
.end method

.method public f(Lj/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lw0/i;->p(Lj/b;)Lj/f;

    move-result-object p1

    iget-object p0, p0, Lw0/i;->e:Ljava/lang/Object;

    check-cast p0, Landroid/view/ActionMode$Callback;

    invoke-interface {p0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method public g(La4/p;Li4/a;LJ4/G;)LJ4/G;
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v0, p3

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface/range {p3 .. p3}, LV3/a;->p()LV3/h;

    move-result-object v1

    :goto_0
    iget-object v2, v6, Lw0/i;->e:Ljava/lang/Object;

    move-object v10, v2

    check-cast v10, Landroidx/recyclerview/widget/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    new-instance v1, Lg4/c;

    invoke-direct {v1, v10, v7, v2}, Lg4/c;-><init>(Landroidx/recyclerview/widget/b;Lj4/b;Z)V

    :cond_1
    move-object v11, v1

    iget-object v1, v7, La4/p;->b:La4/r;

    const-string v3, "Type not found: "

    if-eqz v1, :cond_28

    instance-of v4, v1, La4/n;

    const-class v5, Ljava/lang/Object;

    const-string v12, "reflectType.upperBounds"

    iget v15, v8, Li4/a;->a:I

    iget v9, v8, Li4/a;->b:I

    iget-boolean v13, v8, Li4/a;->c:Z

    if-eqz v4, :cond_12

    check-cast v1, La4/n;

    invoke-virtual {v1}, La4/n;->e()Ls4/c;

    move-result-object v4

    if-eqz v13, :cond_4

    sget-object v14, Li4/d;->a:Ls4/c;

    invoke-virtual {v4, v14}, Ls4/c;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    iget-object v4, v10, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v4, Lg4/a;

    iget-object v4, v4, Lg4/a;->p:LR3/n;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, LR3/n;->e:[LL3/l;

    aget-object v14, v14, v2

    iget-object v2, v4, LR3/n;->c:LU0/e;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "property"

    invoke-static {v14, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v14}, LL3/a;->r()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LK/I;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v2

    iget-object v14, v4, LR3/n;->b:Ljava/lang/Object;

    invoke-interface {v14}, Lq3/d;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, LC4/o;

    move-object/from16 v16, v11

    sget-object v11, Lc4/b;->e:Lc4/b;

    invoke-interface {v14, v2, v11}, LC4/q;->c(Ls4/f;Lc4/b;)LU3/g;

    move-result-object v11

    instance-of v14, v11, LU3/e;

    if-eqz v14, :cond_2

    check-cast v11, LU3/e;

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    :goto_1
    if-nez v11, :cond_3

    new-instance v11, Ls4/b;

    sget-object v14, LR3/p;->h:Ls4/c;

    invoke-direct {v11, v14, v2}, Ls4/b;-><init>(Ls4/c;Ls4/f;)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v14}, Lp4/g;->H(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v4, v4, LR3/n;->a:Lw0/i;

    invoke-virtual {v4, v11, v2}, Lw0/i;->w(Ls4/b;Ljava/util/List;)LU3/e;

    move-result-object v2

    goto/16 :goto_5

    :cond_3
    move-object v2, v11

    goto/16 :goto_5

    :cond_4
    move-object/from16 v16, v11

    iget-object v2, v10, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v2, Lg4/a;

    iget-object v2, v2, Lg4/a;->o:LX3/D;

    iget-object v2, v2, LX3/D;->g:LR3/j;

    invoke-static {v4, v2}, LT3/e;->b(Ls4/c;LR3/j;)LU3/e;

    move-result-object v2

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_5
    sget-object v4, LT3/d;->a:Ljava/lang/String;

    invoke-static {v2}, Lv4/f;->g(LU3/j;)Ls4/e;

    move-result-object v4

    sget-object v11, LT3/d;->k:Ljava/util/HashMap;

    if-eqz v11, :cond_11

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v4, 0x3

    if-eq v9, v4, :cond_b

    const/4 v4, 0x1

    if-eq v15, v4, :cond_b

    invoke-virtual/range {p1 .. p1}, La4/p;->e()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lr3/j;->D0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj4/d;

    instance-of v14, v4, La4/E;

    if-eqz v14, :cond_6

    check-cast v4, La4/E;

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v4}, La4/E;->e()La4/B;

    move-result-object v14

    if-eqz v14, :cond_c

    iget-object v4, v4, La4/E;->a:Ljava/lang/reflect/WildcardType;

    invoke-interface {v4}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v4, v12}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lr3/h;->m0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v5}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static {v2}, Lv4/f;->g(LU3/j;)Ls4/e;

    move-result-object v4

    sget-object v14, LT3/d;->a:Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls4/c;

    if-eqz v4, :cond_a

    invoke-static {v2}, Lz4/e;->e(LU3/j;)LR3/j;

    move-result-object v11

    invoke-virtual {v11, v4}, LR3/j;->i(Ls4/c;)LU3/e;

    move-result-object v4

    invoke-interface {v4}, LU3/g;->E()LJ4/M;

    move-result-object v4

    invoke-interface {v4}, LJ4/M;->g()Ljava/util/List;

    move-result-object v4

    const-string v11, "JavaToKotlinClassMapper.\u2026ypeConstructor.parameters"

    invoke-static {v4, v11}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lr3/j;->D0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LU3/O;

    if-nez v4, :cond_8

    const/4 v4, 0x0

    goto :goto_3

    :cond_8
    invoke-interface {v4}, LU3/O;->z()I

    move-result v4

    :goto_3
    if-nez v4, :cond_9

    goto :goto_5

    :cond_9
    const/4 v11, 0x3

    if-eq v4, v11, :cond_c

    goto :goto_4

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Given class "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a read-only collection"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_4
    invoke-static {v2}, LT3/e;->a(LU3/e;)LU3/e;

    move-result-object v2

    :cond_c
    :goto_5
    if-nez v2, :cond_e

    iget-object v2, v10, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v2, Lg4/a;

    iget-object v2, v2, Lg4/a;->k:Landroidx/recyclerview/widget/y;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast v2, LA1/e;

    if-eqz v2, :cond_d

    invoke-virtual {v2, v1}, LA1/e;->U(La4/n;)LU3/e;

    move-result-object v2

    goto :goto_6

    :cond_d
    const-string v0, "resolver"

    invoke-static {v0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_e
    :goto_6
    if-nez v2, :cond_f

    const/4 v1, 0x0

    goto :goto_7

    :cond_f
    invoke-interface {v2}, LU3/g;->E()LJ4/M;

    move-result-object v1

    :goto_7
    if-eqz v1, :cond_10

    :goto_8
    move-object v11, v1

    goto :goto_9

    :cond_10
    new-instance v0, Ls4/c;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, v7, La4/p;->a:Ljava/lang/reflect/Type;

    invoke-static {v1, v3}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.Map<K, *>"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    move-object/from16 v16, v11

    instance-of v2, v1, La4/C;

    if-eqz v2, :cond_27

    iget-object v2, v6, Lw0/i;->f:Ljava/lang/Object;

    check-cast v2, Lg4/f;

    check-cast v1, La4/C;

    invoke-interface {v2, v1}, Lg4/f;->a(La4/C;)LU3/O;

    move-result-object v1

    if-nez v1, :cond_13

    const/4 v11, 0x0

    goto :goto_9

    :cond_13
    invoke-interface {v1}, LU3/g;->E()LJ4/M;

    move-result-object v1

    goto :goto_8

    :goto_9
    if-nez v11, :cond_14

    const/4 v1, 0x0

    return-object v1

    :cond_14
    const/4 v1, 0x3

    if-ne v9, v1, :cond_15

    const/4 v9, 0x0

    goto :goto_b

    :cond_15
    if-nez v13, :cond_16

    const/4 v1, 0x1

    if-eq v15, v1, :cond_16

    const/4 v1, 0x1

    goto :goto_a

    :cond_16
    const/4 v1, 0x0

    :goto_a
    move v9, v1

    :goto_b
    if-nez v0, :cond_17

    const/4 v1, 0x0

    goto :goto_c

    :cond_17
    invoke-virtual/range {p3 .. p3}, LJ4/C;->q0()LJ4/M;

    move-result-object v1

    :goto_c
    invoke-static {v1, v11}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual/range {p1 .. p1}, La4/p;->f()Z

    move-result v1

    if-nez v1, :cond_18

    if-eqz v9, :cond_18

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LJ4/G;->F0(Z)LJ4/G;

    move-result-object v0

    return-object v0

    :cond_18
    invoke-virtual/range {p1 .. p1}, La4/p;->f()Z

    move-result v0

    const-string v1, "constructor.parameters"

    if-nez v0, :cond_1a

    invoke-virtual/range {p1 .. p1}, La4/p;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v11}, LJ4/M;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_d

    :cond_19
    const/4 v0, 0x0

    goto :goto_e

    :cond_1a
    :goto_d
    const/4 v0, 0x1

    :goto_e
    invoke-interface {v11}, LJ4/M;->g()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_1e

    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v2}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v0

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_f
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, LU3/O;

    iget-object v0, v8, Li4/a;->d:Ljava/util/Set;

    const/4 v1, 0x0

    invoke-static {v14, v1, v0}, LK/I;->T(LU3/O;LJ4/M;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {v14, v8}, Li4/d;->a(LU3/O;Li4/a;)LJ4/P;

    move-result-object v0

    move-object/from16 v17, v10

    move-object/from16 p3, v13

    goto :goto_11

    :cond_1b
    new-instance v15, LJ4/E;

    iget-object v0, v10, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v0, Lg4/a;

    iget-object v5, v0, Lg4/a;->a:LI4/l;

    new-instance v4, Li4/c;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p1

    move-object/from16 v17, v10

    move-object v10, v4

    move-object/from16 v4, p2

    move-object/from16 p3, v13

    move-object v13, v5

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Li4/c;-><init>(Lw0/i;LU3/O;La4/p;Li4/a;LJ4/M;)V

    invoke-direct {v15, v13, v10}, LJ4/E;-><init>(LI4/l;LE3/a;)V

    invoke-virtual/range {p1 .. p1}, La4/p;->f()Z

    move-result v0

    if-eqz v0, :cond_1c

    move-object v1, v8

    goto :goto_10

    :cond_1c
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Li4/a;->b(I)Li4/a;

    move-result-object v1

    :goto_10
    iget-object v0, v6, Lw0/i;->h:Ljava/lang/Object;

    check-cast v0, Li4/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14, v1, v15}, Li4/e;->g(LU3/O;Li4/a;LJ4/C;)LJ4/P;

    move-result-object v0

    :goto_11
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v13, p3

    move-object/from16 v10, v17

    goto :goto_f

    :cond_1d
    :goto_12
    move-object/from16 v1, v16

    goto/16 :goto_1a

    :cond_1e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, La4/p;->e()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_20

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v2}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LU3/O;

    new-instance v3, LJ4/Q;

    invoke-interface {v2}, LU3/j;->r()Ls4/f;

    move-result-object v2

    invoke-virtual {v2}, Ls4/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LJ4/v;->c(Ljava/lang/String;)LJ4/p;

    move-result-object v2

    const/4 v4, 0x1

    invoke-direct {v3, v4, v2}, LJ4/Q;-><init>(ILJ4/C;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_1f
    invoke-static {v0}, Lr3/j;->P0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v12

    goto :goto_12

    :cond_20
    invoke-virtual/range {p1 .. p1}, La4/p;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lr3/j;->T0(Ljava/util/List;)LU4/n;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, LU4/n;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    move-object v3, v0

    check-cast v3, LU4/b;

    iget-object v4, v3, LU4/b;->e:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-virtual {v3}, LU4/b;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr3/u;

    iget-object v4, v3, Lr3/u;->b:Ljava/lang/Object;

    check-cast v4, Lj4/d;

    invoke-interface {v2}, Ljava/util/List;->size()I

    iget v3, v3, Lr3/u;->a:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LU3/O;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x3

    invoke-static {v7, v10, v8, v13}, Li4/d;->b(IZLh4/B;I)Li4/a;

    move-result-object v14

    const-string v8, "parameter"

    invoke-static {v3, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v8, v4, La4/E;

    if-eqz v8, :cond_25

    check-cast v4, La4/E;

    invoke-virtual {v4}, La4/E;->e()La4/B;

    move-result-object v8

    iget-object v4, v4, La4/E;->a:Ljava/lang/reflect/WildcardType;

    invoke-interface {v4}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v4, v12}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lr3/h;->m0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v5}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    const/4 v4, 0x3

    goto :goto_15

    :cond_21
    move v4, v7

    :goto_15
    if-eqz v8, :cond_24

    invoke-interface {v3}, LU3/O;->z()I

    move-result v10

    const/4 v13, 0x1

    if-ne v10, v13, :cond_23

    :cond_22
    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x3

    goto :goto_16

    :cond_23
    invoke-interface {v3}, LU3/O;->z()I

    move-result v10

    if-eq v4, v10, :cond_22

    :cond_24
    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x3

    goto :goto_18

    :goto_16
    invoke-static {v7, v13, v10, v15}, Li4/d;->b(IZLh4/B;I)Li4/a;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Lw0/i;->I(Lj4/d;Li4/a;)LJ4/C;

    move-result-object v7

    invoke-static {v7, v4, v3}, LK/I;->q(LJ4/C;ILU3/O;)LJ4/Q;

    move-result-object v3

    :goto_17
    const/4 v7, 0x1

    goto :goto_19

    :goto_18
    invoke-static {v3, v14}, Li4/d;->a(LU3/O;Li4/a;)LJ4/P;

    move-result-object v3

    goto :goto_17

    :cond_25
    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x3

    new-instance v3, LJ4/Q;

    invoke-virtual {v6, v4, v14}, Lw0/i;->I(Lj4/d;Li4/a;)LJ4/C;

    move-result-object v4

    const/4 v7, 0x1

    invoke-direct {v3, v7, v4}, LJ4/Q;-><init>(ILJ4/C;)V

    :goto_19
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    :cond_26
    invoke-static {v1}, Lr3/j;->P0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v12

    goto/16 :goto_12

    :goto_1a
    invoke-static {v11, v1, v12, v9}, LJ4/d;->p(LJ4/M;LV3/h;Ljava/util/List;Z)LJ4/G;

    move-result-object v0

    return-object v0

    :cond_27
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Unknown classifier kind: "

    invoke-static {v1, v2}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    new-instance v0, Ls4/c;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, v7, La4/p;->a:Ljava/lang/reflect/Type;

    invoke-static {v1, v3}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()V
    .locals 2

    iget v0, p0, Lw0/i;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw0/i;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/b;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->h()V

    iget-object v0, p0, Lw0/i;->g:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/b;

    iget-object v0, v0, Landroidx/recyclerview/widget/b;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, Lx4/a;

    iget-object p0, p0, Lw0/i;->h:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-static {p0}, Lr3/j;->J0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LV3/b;

    invoke-direct {v1, p0}, Lx4/a;-><init>(LV3/b;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lw0/i;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lw0/i;->g:Ljava/lang/Object;

    check-cast v1, Lo1/b;

    iget-object v1, v1, Lo1/b;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    iget-object p0, p0, Lw0/i;->e:Ljava/lang/Object;

    check-cast p0, Ll4/m;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch
.end method

.method public i(Ls4/f;)Ll4/k;
    .locals 3

    iget-object p0, p0, Lw0/i;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/b;

    new-instance v0, Landroidx/recyclerview/widget/b;

    iget-object v1, p0, Landroidx/recyclerview/widget/b;->f:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/b;

    iget-object v2, p0, Landroidx/recyclerview/widget/b;->g:Ljava/lang/Object;

    check-cast v2, LU3/e;

    invoke-direct {v0, p0, p1, v1, v2}, Landroidx/recyclerview/widget/b;-><init>(Landroidx/recyclerview/widget/b;Ls4/f;Landroidx/recyclerview/widget/b;LU3/e;)V

    return-object v0
.end method

.method public j(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 4

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lw0/i;->f:Ljava/lang/Object;

    check-cast v0, Ln/j;

    invoke-virtual {v0, p1}, Ln/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3, p2, p3}, Lw0/i;->j(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "This graph contains cyclic dependencies"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public l(Ljava/lang/String;)Landroidx/fragment/app/r;
    .locals 0

    iget-object p0, p0, Lw0/i;->f:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/Q;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/Q;->c:Landroidx/fragment/app/r;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public n(Ls4/f;Lx4/f;)V
    .locals 0

    iget-object p0, p0, Lw0/i;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/b;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/b;->n(Ls4/f;Lx4/f;)V

    return-void
.end method

.method public o(Ljava/lang/String;)Landroidx/fragment/app/r;
    .locals 2

    iget-object p0, p0, Lw0/i;->f:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Q;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/fragment/app/Q;->c:Landroidx/fragment/app/r;

    iget-object v1, v0, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Landroidx/fragment/app/r;->w:Landroidx/fragment/app/M;

    iget-object v0, v0, Landroidx/fragment/app/L;->c:Lw0/i;

    invoke-virtual {v0, p1}, Lw0/i;->o(Ljava/lang/String;)Landroidx/fragment/app/r;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public p(Lj/b;)Lj/f;
    .locals 5

    iget-object v0, p0, Lw0/i;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj/f;

    if-eqz v3, :cond_0

    iget-object v4, v3, Lj/f;->b:Lj/b;

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lj/f;

    iget-object p0, p0, Lw0/i;->f:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-direct {v1, p0, p1}, Lj/f;-><init>(Landroid/content/Context;Lj/b;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public q(Lj/b;Lk/j;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lw0/i;->p(Lj/b;)Lj/f;

    move-result-object p1

    iget-object v0, p0, Lw0/i;->h:Ljava/lang/Object;

    check-cast v0, Ln/j;

    invoke-virtual {v0, p2}, Ln/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Menu;

    if-nez v1, :cond_0

    new-instance v1, Lk/y;

    iget-object v2, p0, Lw0/i;->f:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2, p2}, Lk/y;-><init>(Landroid/content/Context;Lk/j;)V

    invoke-virtual {v0, p2, v1}, Ln/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lw0/i;->e:Ljava/lang/Object;

    check-cast p0, Landroid/view/ActionMode$Callback;

    invoke-interface {p0, p1, v1}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public r(Ls4/b;Ls4/f;)Ll4/j;
    .locals 0

    iget-object p0, p0, Lw0/i;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/b;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/b;->r(Ls4/b;Ls4/f;)Ll4/j;

    move-result-object p0

    return-object p0
.end method

.method public s(Ls4/f;Ls4/b;Ls4/f;)V
    .locals 0

    iget-object p0, p0, Lw0/i;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/b;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/b;->s(Ls4/f;Ls4/b;Ls4/f;)V

    return-void
.end method

.method public t(Ls4/f;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lw0/i;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/b;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/b;->t(Ls4/f;Ljava/lang/Object;)V

    return-void
.end method

.method public u()Ljava/util/ArrayList;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lw0/i;->f:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Q;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public v()Ljava/util/ArrayList;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lw0/i;->f:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Q;

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroidx/fragment/app/Q;->c:Landroidx/fragment/app/r;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public w(Ls4/b;Ljava/util/List;)LU3/e;
    .locals 1

    const-string v0, "classId"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LU3/y;

    invoke-direct {v0, p1, p2}, LU3/y;-><init>(Ls4/b;Ljava/util/List;)V

    iget-object p0, p0, Lw0/i;->h:Ljava/lang/Object;

    check-cast p0, LI4/e;

    invoke-virtual {p0, v0}, LI4/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LU3/e;

    return-object p0
.end method

.method public x()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lw0/i;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lw0/i;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lw0/i;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public y(Landroidx/recyclerview/widget/I;)Landroidx/emoji2/text/f;
    .locals 2

    iget-object v0, p0, Lw0/i;->h:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/z;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/emoji2/text/f;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/I;

    if-eq v0, p1, :cond_1

    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/z;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/recyclerview/widget/z;-><init>(Landroidx/recyclerview/widget/I;I)V

    iput-object v0, p0, Lw0/i;->h:Ljava/lang/Object;

    :cond_1
    iget-object p0, p0, Lw0/i;->h:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/z;

    return-object p0
.end method

.method public z(Lw0/j;)Lw0/g;
    .locals 5

    const-string v0, "SELECT * FROM SystemIdInfo WHERE work_spec_id=? AND generation=?"

    const/4 v1, 0x2

    invoke-static {v1, v0}, La0/m;->h(ILjava/lang/String;)La0/m;

    move-result-object v0

    iget-object v2, p1, Lw0/j;->a:Ljava/lang/String;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    invoke-virtual {v0, v3}, La0/m;->E(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3, v2}, La0/m;->q(ILjava/lang/String;)V

    :goto_0
    iget p1, p1, Lw0/j;->b:I

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, La0/m;->s(IJ)V

    iget-object p0, p0, Lw0/i;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->b()V

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, La4/x;->S(Landroidx/work/impl/WorkDatabase;La0/m;Z)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    const-string p1, "work_spec_id"

    invoke-static {p0, p1}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p1

    const-string v1, "generation"

    invoke-static {p0, v1}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "system_id"

    invoke-static {p0, v2}, La4/x;->v(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    new-instance v2, Lw0/g;

    invoke-direct {v2, v4, p1, v1}, Lw0/g;-><init>(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v2

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, La0/m;->j()V

    return-object v4

    :goto_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, La0/m;->j()V

    throw p1
.end method

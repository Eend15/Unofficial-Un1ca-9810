.class public abstract LA0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "DiagnosticsWrkr"

    invoke-static {v0}, Ln0/o;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tagWithPrefix(\"DiagnosticsWrkr\")"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, LA0/d;->a:Ljava/lang/String;

    return-void
.end method

.method public static final a(Lw0/l;Lw0/s;Lw0/i;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 17

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n Id \t Class Name\t Job Id\t State\t Unique Name\t Tags\t"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw0/p;

    invoke-static {v2}, Lp4/g;->x(Lw0/p;)Lw0/j;

    move-result-object v3

    move-object/from16 v4, p2

    invoke-virtual {v4, v3}, Lw0/i;->z(Lw0/j;)Lw0/g;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    iget v3, v3, Lw0/g;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :cond_0
    move-object v3, v5

    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "SELECT name FROM workname WHERE work_spec_id=?"

    const/4 v7, 0x1

    invoke-static {v7, v6}, La0/m;->h(ILjava/lang/String;)La0/m;

    move-result-object v6

    iget-object v8, v2, Lw0/p;->a:Ljava/lang/String;

    if-nez v8, :cond_1

    invoke-virtual {v6, v7}, La0/m;->E(I)V

    :goto_2
    move-object/from16 v7, p0

    goto :goto_3

    :cond_1
    invoke-virtual {v6, v7, v8}, La0/m;->q(ILjava/lang/String;)V

    goto :goto_2

    :goto_3
    iget-object v9, v7, Lw0/l;->e:Ljava/lang/Object;

    check-cast v9, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->b()V

    const/4 v10, 0x0

    invoke-static {v9, v6, v10}, La4/x;->S(Landroidx/work/impl/WorkDatabase;La0/m;Z)Landroid/database/Cursor;

    move-result-object v9

    :try_start_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    :goto_4
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v9, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_2

    move-object v12, v5

    goto :goto_5

    :cond_2
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    :goto_5
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_7

    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    invoke-virtual {v6}, La0/m;->j()V

    const/4 v14, 0x0

    const/16 v16, 0x3e

    const-string v12, ","

    const/4 v13, 0x0

    const/4 v15, 0x0

    invoke-static/range {v11 .. v16}, Lr3/j;->A0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE3/b;I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v10, p1

    invoke-virtual {v10, v8}, Lw0/s;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    const-string v12, ","

    invoke-static/range {v11 .. v16}, Lr3/j;->A0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE3/b;I)Ljava/lang/String;

    move-result-object v6

    const-string v9, "\n"

    const-string v11, "\t "

    invoke-static {v9, v8, v11}, LB/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lw0/p;->c:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lw0/p;->b:I

    packed-switch v2, :pswitch_data_0

    const/4 v0, 0x0

    throw v0

    :pswitch_0
    const-string v2, "CANCELLED"

    goto :goto_6

    :pswitch_1
    const-string v2, "BLOCKED"

    goto :goto_6

    :pswitch_2
    const-string v2, "FAILED"

    goto :goto_6

    :pswitch_3
    const-string v2, "SUCCEEDED"

    goto :goto_6

    :pswitch_4
    const-string v2, "RUNNING"

    goto :goto_6

    :pswitch_5
    const-string v2, "ENQUEUED"

    :goto_6
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x9

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :goto_7
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    invoke-virtual {v6}, La0/m;->j()V

    throw v0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

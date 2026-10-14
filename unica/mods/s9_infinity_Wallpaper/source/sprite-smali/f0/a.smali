.class public final synthetic Lf0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/database/sqlite/SQLiteDatabase$CursorFactory;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lf0/a;->a:I

    iput-object p2, p0, Lf0/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;
    .locals 0

    iget p1, p0, Lf0/a;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lf0/a;->b:Ljava/lang/Object;

    check-cast p0, Lf0/b;

    new-instance p1, Lf0/h;

    invoke-static {p4}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-direct {p1, p4}, Lf0/h;-><init>(Landroid/database/sqlite/SQLiteProgram;)V

    iget-object p0, p0, Lf0/b;->d:Le0/e;

    invoke-interface {p0, p1}, Le0/e;->a(Le0/d;)V

    new-instance p0, Landroid/database/sqlite/SQLiteCursor;

    invoke-direct {p0, p2, p3, p4}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lf0/a;->b:Ljava/lang/Object;

    check-cast p0, Le0/e;

    new-instance p1, Lf0/h;

    invoke-static {p4}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-direct {p1, p4}, Lf0/h;-><init>(Landroid/database/sqlite/SQLiteProgram;)V

    invoke-interface {p0, p1}, Le0/e;->a(Le0/d;)V

    new-instance p0, Landroid/database/sqlite/SQLiteCursor;

    invoke-direct {p0, p2, p3, p4}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

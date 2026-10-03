.class public final Lf0/i;
.super Lf0/h;
.source "SourceFile"

# interfaces
.implements Le0/d;


# instance fields
.field public final e:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 0

    invoke-direct {p0, p1}, Lf0/h;-><init>(Landroid/database/sqlite/SQLiteProgram;)V

    iput-object p1, p0, Lf0/i;->e:Landroid/database/sqlite/SQLiteStatement;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget-object p0, p0, Lf0/i;->e:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result p0

    return p0
.end method

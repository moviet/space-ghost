.class public Lfineclouds/com/mylibrary/a/b/c;
.super Ljava/lang/Object;
.source "CollectionSource.java"

# interfaces
.implements Lfineclouds/com/mylibrary/a/b/b;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lfineclouds/com/mylibrary/a/b/a;

.field private c:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lfineclouds/com/mylibrary/a/b/c;->a:Landroid/content/Context;

    .line 20
    new-instance v0, Lfineclouds/com/mylibrary/a/b/a;

    invoke-direct {v0, p1}, Lfineclouds/com/mylibrary/a/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lfineclouds/com/mylibrary/a/b/c;->b:Lfineclouds/com/mylibrary/a/b/a;

    .line 21
    iget-object v0, p0, Lfineclouds/com/mylibrary/a/b/c;->b:Lfineclouds/com/mylibrary/a/b/a;

    invoke-virtual {v0}, Lfineclouds/com/mylibrary/a/b/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lfineclouds/com/mylibrary/a/b/c;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 22
    return-void
.end method

.method private b(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const-string v0, "content"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 40
    const-string v1, "type = ?"

    .line 41
    iget-object v2, p0, Lfineclouds/com/mylibrary/a/b/c;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "collection_info_table"

    invoke-virtual {v2, v3, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 25
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 26
    const-string v1, "content"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v1, p0, Lfineclouds/com/mylibrary/a/b/c;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "collection_info_table"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Landroid/database/Cursor;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    invoke-direct {p0, p1}, Lfineclouds/com/mylibrary/a/b/c;->b(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 93
    return-object v0
.end method

.method public b(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 47
    const-string v1, "content = ?"

    .line 48
    iget-object v2, p0, Lfineclouds/com/mylibrary/a/b/c;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "collection_info_table"

    invoke-virtual {v2, v3, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 64
    const-string v3, "type = ?"

    .line 65
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 66
    iget-object v0, p0, Lfineclouds/com/mylibrary/a/b/c;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "collection_info_table"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    .line 67
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 68
    invoke-virtual {p0, v0}, Lfineclouds/com/mylibrary/a/b/c;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

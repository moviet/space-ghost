.class public Lcom/fineclouds/spaceghostq1/dual/b/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DualDBHelper.java"


# static fields
.field private static a:Lcom/fineclouds/spaceghostq1/dual/b/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 48
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/fineclouds/spaceghostq1/dual/b/a;
    .locals 4

    .prologue
    .line 37
    sget-object v0, Lcom/fineclouds/spaceghostq1/dual/b/a;->a:Lcom/fineclouds/spaceghostq1/dual/b/a;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/fineclouds/spaceghostq1/dual/b/a;

    const-string v1, "dualspace.db"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/fineclouds/spaceghostq1/dual/b/a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sput-object v0, Lcom/fineclouds/spaceghostq1/dual/b/a;->a:Lcom/fineclouds/spaceghostq1/dual/b/a;

    .line 40
    :cond_0
    sget-object v0, Lcom/fineclouds/spaceghostq1/dual/b/a;->a:Lcom/fineclouds/spaceghostq1/dual/b/a;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 51
    const-string v0, "create table dualapp(_id integer primary key autoincrement, package text, category text, appState text, decribe text, date text);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .prologue
    .line 56
    const-string v0, "DualDBHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string v0, "DROP TABLE IF EXISTS dualapp"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, p1}, Lcom/fineclouds/spaceghostq1/dual/b/a;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 60
    return-void
.end method

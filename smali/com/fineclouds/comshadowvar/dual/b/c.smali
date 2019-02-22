.class public Lcom/fineclouds/spaceghostq1/dual/b/c;
.super Lcom/a/a/c/b/b/a;
.source "DualGetResolver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/c/b/b/a",
        "<",
        "Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/a/a/c/b/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;
    .locals 4

    .prologue
    .line 17
    new-instance v0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    invoke-direct {v0}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;-><init>()V

    .line 18
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->a(I)V

    .line 19
    const-string v1, "package"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->b(Ljava/lang/String;)V

    .line 20
    const-string v1, "category"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->d(Ljava/lang/String;)V

    .line 21
    const-string v1, "appState"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->c(Ljava/lang/String;)V

    .line 22
    const-string v1, "decribe"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->b(I)V

    .line 23
    const-string v1, "date"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->a(Ljava/lang/Long;)V

    .line 24
    return-object v0
.end method

.method public synthetic b(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/fineclouds/spaceghostq1/dual/b/c;->a(Landroid/database/Cursor;)Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    move-result-object v0

    return-object v0
.end method

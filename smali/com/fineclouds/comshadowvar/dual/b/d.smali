.class public Lcom/fineclouds/spaceghostq1/dual/b/d;
.super Lcom/a/a/c/b/c/a;
.source "DualPutResolver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/c/b/c/a",
        "<",
        "Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/a/a/c/b/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 15
    check-cast p1, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    invoke-virtual {p0, p1}, Lcom/fineclouds/spaceghostq1/dual/b/d;->c(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)Lcom/a/a/c/c/b;
    .locals 2

    .prologue
    .line 19
    invoke-static {}, Lcom/a/a/c/c/b;->c()Lcom/a/a/c/c/b$a;

    move-result-object v0

    const-string v1, "dualapp"

    .line 20
    invoke-virtual {v0, v1}, Lcom/a/a/c/c/b$a;->a(Ljava/lang/String;)Lcom/a/a/c/c/b$b;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/a/a/c/c/b$b;->a()Lcom/a/a/c/c/b;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)Lcom/a/a/c/c/e;
    .locals 4

    .prologue
    .line 27
    invoke-static {}, Lcom/a/a/c/c/e;->d()Lcom/a/a/c/c/e$a;

    move-result-object v0

    const-string v1, "dualapp"

    .line 28
    invoke-virtual {v0, v1}, Lcom/a/a/c/c/e$a;->a(Ljava/lang/String;)Lcom/a/a/c/c/e$b;

    move-result-object v0

    const-string v1, "_id = ? "

    .line 29
    invoke-virtual {v0, v1}, Lcom/a/a/c/c/e$b;->a(Ljava/lang/String;)Lcom/a/a/c/c/e$b;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 30
    invoke-virtual {p1}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->d()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/a/a/c/c/e$b;->a([Ljava/lang/Object;)Lcom/a/a/c/c/e$b;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/a/a/c/c/e$b;->a()Lcom/a/a/c/c/e;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic b(Ljava/lang/Object;)Lcom/a/a/c/c/e;
    .locals 1

    .prologue
    .line 15
    check-cast p1, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    invoke-virtual {p0, p1}, Lcom/fineclouds/spaceghostq1/dual/b/d;->b(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)Lcom/a/a/c/c/e;

    move-result-object v0

    return-object v0
.end method

.method protected c(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 37
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 38
    const-string v1, "package"

    invoke-virtual {p1}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v1, "category"

    invoke-virtual {p1}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v1, "appState"

    invoke-virtual {p1}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v1, "appState"

    invoke-virtual {p1}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->f()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 42
    const-string v1, "date"

    invoke-virtual {p1}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->b()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 43
    return-object v0
.end method

.method protected synthetic c(Ljava/lang/Object;)Lcom/a/a/c/c/b;
    .locals 1

    .prologue
    .line 15
    check-cast p1, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    invoke-virtual {p0, p1}, Lcom/fineclouds/spaceghostq1/dual/b/d;->a(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)Lcom/a/a/c/c/b;

    move-result-object v0

    return-object v0
.end method

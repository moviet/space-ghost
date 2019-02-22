.class public Lcom/fineclouds/spaceghostq1/dual/c/a;
.super Ljava/lang/Object;
.source "DualAppModeslImp.java"


# static fields
.field private static a:Lcom/fineclouds/spaceghostq1/dual/c/a;


# instance fields
.field private b:Lcom/a/a/c/c;

.field private c:Lcom/a/a/a/a;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/dual/c/a;->d:Landroid/content/Context;

    .line 42
    invoke-direct {p0, p1}, Lcom/fineclouds/spaceghostq1/dual/c/a;->b(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/fineclouds/spaceghostq1/dual/c/a;
    .locals 2

    .prologue
    .line 61
    const-class v1, Lcom/fineclouds/spaceghostq1/dual/c/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/fineclouds/spaceghostq1/dual/c/a;->a:Lcom/fineclouds/spaceghostq1/dual/c/a;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/fineclouds/spaceghostq1/dual/c/a;

    invoke-direct {v0, p0}, Lcom/fineclouds/spaceghostq1/dual/c/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/fineclouds/spaceghostq1/dual/c/a;->a:Lcom/fineclouds/spaceghostq1/dual/c/a;

    .line 63
    sget-object v0, Lcom/fineclouds/spaceghostq1/dual/c/a;->a:Lcom/fineclouds/spaceghostq1/dual/c/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/fineclouds/spaceghostq1/dual/c/a;->a:Lcom/fineclouds/spaceghostq1/dual/c/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 46
    invoke-static {p1}, Lcom/fineclouds/spaceghostq1/dual/b/a;->a(Landroid/content/Context;)Lcom/fineclouds/spaceghostq1/dual/b/a;

    move-result-object v0

    .line 47
    invoke-static {}, Lcom/a/a/c/a/a;->e()Lcom/a/a/c/a/a$a;

    move-result-object v1

    .line 48
    invoke-virtual {v1, v0}, Lcom/a/a/c/a/a$a;->a(Landroid/database/sqlite/SQLiteOpenHelper;)Lcom/a/a/c/a/a$b;

    move-result-object v0

    const-class v1, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    .line 49
    invoke-static {}, Lcom/a/a/c/b;->c()Lcom/a/a/c/b$a;

    move-result-object v2

    new-instance v3, Lcom/fineclouds/spaceghostq1/dual/b/d;

    invoke-direct {v3}, Lcom/fineclouds/spaceghostq1/dual/b/d;-><init>()V

    .line 50
    invoke-virtual {v2, v3}, Lcom/a/a/c/b$a;->a(Lcom/a/a/c/b/c/e;)Lcom/a/a/c/b$d;

    move-result-object v2

    new-instance v3, Lcom/fineclouds/spaceghostq1/dual/b/c;

    invoke-direct {v3}, Lcom/fineclouds/spaceghostq1/dual/b/c;-><init>()V

    .line 51
    invoke-virtual {v2, v3}, Lcom/a/a/c/b$d;->a(Lcom/a/a/c/b/b/b;)Lcom/a/a/c/b$c;

    move-result-object v2

    new-instance v3, Lcom/fineclouds/spaceghostq1/dual/b/b;

    invoke-direct {v3}, Lcom/fineclouds/spaceghostq1/dual/b/b;-><init>()V

    .line 52
    invoke-virtual {v2, v3}, Lcom/a/a/c/b$c;->a(Lcom/a/a/c/b/a/b;)Lcom/a/a/c/b$b;

    move-result-object v2

    .line 53
    invoke-virtual {v2}, Lcom/a/a/c/b$b;->a()Lcom/a/a/c/b;

    move-result-object v2

    .line 49
    invoke-virtual {v0, v1, v2}, Lcom/a/a/c/a/a$b;->a(Ljava/lang/Class;Lcom/a/a/c/b;)Lcom/a/a/c/a/a$b;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/a/a/c/a/a$b;->a()Lcom/a/a/c/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/c/a;->b:Lcom/a/a/c/c;

    .line 55
    invoke-static {}, Lcom/a/a/a/a/a;->a()Lcom/a/a/a/a/a$a;

    move-result-object v0

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/a/a/a$a;->a(Landroid/content/ContentResolver;)Lcom/a/a/a/a/a$b;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/a/a/a/a/a$b;->a()Lcom/a/a/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/c/a;->c:Lcom/a/a/a/a;

    .line 58
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/a/a/c/b/a/c;
    .locals 3

    .prologue
    .line 91
    invoke-static {}, Lcom/a/a/c/c/a;->d()Lcom/a/a/c/c/a$a;

    move-result-object v0

    const-string v1, "dualapp"

    invoke-virtual {v0, v1}, Lcom/a/a/c/c/a$a;->a(Ljava/lang/String;)Lcom/a/a/c/c/a$b;

    move-result-object v0

    const-string v1, "package = ? "

    .line 92
    invoke-virtual {v0, v1}, Lcom/a/a/c/c/a$b;->a(Ljava/lang/String;)Lcom/a/a/c/c/a$b;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 93
    invoke-virtual {v0, v1}, Lcom/a/a/c/c/a$b;->a([Ljava/lang/Object;)Lcom/a/a/c/c/a$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c/c/a$b;->a()Lcom/a/a/c/c/a;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/dual/c/a;->b:Lcom/a/a/c/c;

    invoke-virtual {v1}, Lcom/a/a/c/c;->c()Lcom/a/a/c/b/a/d$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/a/c/b/a/d$a;->a(Lcom/a/a/c/c/a;)Lcom/a/a/c/b/a/e$a;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/a/a/c/b/a/e$a;->a()Lcom/a/a/c/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c/b/a/e;->a()Lcom/a/a/c/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)Lcom/a/a/c/b/c/f;
    .locals 3

    .prologue
    .line 70
    const-string v0, "DualAppModeslImp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertDualApp: appModel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/c/a;->b:Lcom/a/a/c/c;

    invoke-virtual {v0}, Lcom/a/a/c/c;->b()Lcom/a/a/c/b/c/b$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/a/a/c/b/c/b$a;->a(Ljava/lang/Object;)Lcom/a/a/c/b/c/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c/b/c/d$a;->a()Lcom/a/a/c/b/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c/b/c/d;->a()Lcom/a/a/c/b/c/f;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    invoke-static {}, Lcom/a/a/c/c/c;->j()Lcom/a/a/c/c/c$a;

    move-result-object v0

    const-string v1, "dualapp"

    invoke-virtual {v0, v1}, Lcom/a/a/c/c/c$a;->a(Ljava/lang/String;)Lcom/a/a/c/c/c$b;

    move-result-object v0

    const-string v1, "date DESC"

    .line 77
    invoke-virtual {v0, v1}, Lcom/a/a/c/c/c$b;->b(Ljava/lang/String;)Lcom/a/a/c/c/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c/c/c$b;->a()Lcom/a/a/c/c/c;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/dual/c/a;->b:Lcom/a/a/c/c;

    invoke-virtual {v1}, Lcom/a/a/c/c;->a()Lcom/a/a/c/b/b/c$a;

    move-result-object v1

    const-class v2, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    invoke-virtual {v1, v2}, Lcom/a/a/c/b/b/c$a;->a(Ljava/lang/Class;)Lcom/a/a/c/b/b/d$a;

    move-result-object v1

    .line 79
    invoke-virtual {v1, v0}, Lcom/a/a/c/b/b/d$a;->a(Lcom/a/a/c/c/c;)Lcom/a/a/c/b/b/d$b;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/a/a/c/b/b/d$b;->a()Lcom/a/a/c/b/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c/b/b/d;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)Lcom/a/a/c/b/c/f;
    .locals 5

    .prologue
    .line 100
    const-string v0, "DualAppModeslImp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDualApps: appModel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 102
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 103
    const-string v3, "date"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 104
    const/4 v0, 0x0

    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/dual/c/a;->b:Lcom/a/a/c/c;

    invoke-virtual {v1}, Lcom/a/a/c/c;->b()Lcom/a/a/c/b/c/b$a;

    move-result-object v1

    .line 107
    invoke-virtual {v1, v2}, Lcom/a/a/c/b/c/b$a;->a(Landroid/content/ContentValues;)Lcom/a/a/c/b/c/c$a;

    move-result-object v1

    new-instance v2, Lcom/fineclouds/spaceghostq1/dual/c/a$1;

    invoke-direct {v2, p0, p1}, Lcom/fineclouds/spaceghostq1/dual/c/a$1;-><init>(Lcom/fineclouds/spaceghostq1/dual/c/a;Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V

    .line 108
    invoke-virtual {v1, v2}, Lcom/a/a/c/b/c/c$a;->a(Lcom/a/a/c/b/c/e;)Lcom/a/a/c/b/c/c$b;

    move-result-object v1

    .line 130
    invoke-virtual {v1}, Lcom/a/a/c/b/c/c$b;->a()Lcom/a/a/c/b/c/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c/b/c/c;->a()Lcom/a/a/c/b/c/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    .line 131
    :catch_0
    move-exception v1

    .line 132
    const-string v2, "DualAppModeslImp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDualApps: e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

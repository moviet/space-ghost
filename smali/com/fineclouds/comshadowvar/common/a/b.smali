.class public Lcom/fineclouds/spaceghostq1/common/a/b;
.super Ljava/lang/Object;
.source "DualAcache.java"


# static fields
.field private static volatile b:Lcom/fineclouds/spaceghostq1/common/a/b;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/common/a/b;->a:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/fineclouds/spaceghostq1/common/a/b;
    .locals 2

    .prologue
    .line 18
    sget-object v0, Lcom/fineclouds/spaceghostq1/common/a/b;->b:Lcom/fineclouds/spaceghostq1/common/a/b;

    if-nez v0, :cond_1

    .line 19
    const-class v1, Lcom/fineclouds/spaceghostq1/common/a/b;

    monitor-enter v1

    .line 20
    :try_start_0
    sget-object v0, Lcom/fineclouds/spaceghostq1/common/a/b;->b:Lcom/fineclouds/spaceghostq1/common/a/b;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/fineclouds/spaceghostq1/common/a/b;

    invoke-direct {v0}, Lcom/fineclouds/spaceghostq1/common/a/b;-><init>()V

    sput-object v0, Lcom/fineclouds/spaceghostq1/common/a/b;->b:Lcom/fineclouds/spaceghostq1/common/a/b;

    .line 23
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_1
    sget-object v0, Lcom/fineclouds/spaceghostq1/common/a/b;->b:Lcom/fineclouds/spaceghostq1/common/a/b;

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/a/b;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 41
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/a/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 42
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    iget-object v2, p1, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->b:Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    iget-object v0, v0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 48
    :cond_1
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/a/b;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/a/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 35
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/a/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 37
    :cond_0
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
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
    .line 29
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/a/b;->a:Ljava/util/List;

    return-object v0
.end method

.class public Lcom/lody/virtual/server/am/ServiceRecord;
.super Landroid/os/Binder;
.source "ServiceRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/server/am/ServiceRecord$DeathRecipient;,
        Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;
    }
.end annotation


# instance fields
.field public activeSince:J

.field public final bindings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;",
            ">;"
        }
    .end annotation
.end field

.field public lastActivityTime:J

.field public process:Lcom/lody/virtual/server/am/ProcessRecord;

.field public serviceInfo:Landroid/content/pm/ServiceInfo;

.field public startId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/am/ServiceRecord;->bindings:Ljava/util/List;

    return-void
.end method


# virtual methods
.method addToBoundIntent(Landroid/content/Intent;Landroid/app/IServiceConnection;)V
    .locals 3

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/am/ServiceRecord;->peekBinding(Landroid/content/Intent;)Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;

    move-result-object v0

    .line 61
    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;

    invoke-direct {v0}, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;-><init>()V

    .line 63
    iput-object p1, v0, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;->intent:Landroid/content/Intent;

    .line 64
    iget-object v1, p0, Lcom/lody/virtual/server/am/ServiceRecord;->bindings:Ljava/util/List;

    monitor-enter v1

    .line 65
    :try_start_0
    iget-object v2, p0, Lcom/lody/virtual/server/am/ServiceRecord;->bindings:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_0
    invoke-virtual {v0, p2}, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;->addConnection(Landroid/app/IServiceConnection;)V

    .line 69
    return-void

    .line 66
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public containConnection(Landroid/app/IServiceConnection;)Z
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lody/virtual/server/am/ServiceRecord;->bindings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;

    .line 25
    invoke-virtual {v0, p1}, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;->containConnection(Landroid/app/IServiceConnection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    const/4 v0, 0x1

    .line 29
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClientCount()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lody/virtual/server/am/ServiceRecord;->bindings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method getConnectionCount()I
    .locals 4

    .prologue
    .line 38
    const/4 v0, 0x0

    .line 39
    iget-object v2, p0, Lcom/lody/virtual/server/am/ServiceRecord;->bindings:Ljava/util/List;

    monitor-enter v2

    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/am/ServiceRecord;->bindings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;

    .line 41
    iget-object v0, v0, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;->connections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    monitor-exit v2

    .line 44
    return v1

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method peekBinding(Landroid/content/Intent;)Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;
    .locals 4

    .prologue
    .line 49
    iget-object v1, p0, Lcom/lody/virtual/server/am/ServiceRecord;->bindings:Ljava/util/List;

    monitor-enter v1

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/am/ServiceRecord;->bindings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;

    .line 51
    iget-object v3, v0, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3, p1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    monitor-exit v1

    .line 56
    :goto_0
    return-object v0

    .line 55
    :cond_1
    monitor-exit v1

    .line 56
    const/4 v0, 0x0

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

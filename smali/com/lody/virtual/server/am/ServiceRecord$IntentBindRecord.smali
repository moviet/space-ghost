.class public Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;
.super Ljava/lang/Object;
.source "ServiceRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/am/ServiceRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentBindRecord"
.end annotation


# instance fields
.field public binder:Landroid/os/IBinder;

.field public final connections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/IServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field public doRebind:Z

.field intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;->connections:Ljava/util/List;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;->doRebind:Z

    return-void
.end method


# virtual methods
.method public addConnection(Landroid/app/IServiceConnection;)V
    .locals 3

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;->containConnection(Landroid/app/IServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;->connections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :try_start_0
    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/lody/virtual/server/am/ServiceRecord$DeathRecipient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/lody/virtual/server/am/ServiceRecord$DeathRecipient;-><init>(Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;Landroid/app/IServiceConnection;Lcom/lody/virtual/server/am/ServiceRecord$1;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public containConnection(Landroid/app/IServiceConnection;)Z
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;->connections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IServiceConnection;

    .line 79
    invoke-interface {v0}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v0, v2, :cond_0

    .line 80
    const/4 v0, 0x1

    .line 83
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeConnection(Landroid/app/IServiceConnection;)V
    .locals 4

    .prologue
    .line 98
    iget-object v1, p0, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;->connections:Ljava/util/List;

    monitor-enter v1

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;->connections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 100
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IServiceConnection;

    .line 102
    invoke-interface {v0}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v0, v3, :cond_0

    .line 103
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    return-void
.end method

.class public final Lcom/lody/virtual/server/am/VPendingIntents;
.super Ljava/lang/Object;
.source "VPendingIntents.java"


# instance fields
.field private final mLruHistory:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/lody/virtual/helper/proto/PendingIntentData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/am/VPendingIntents;->mLruHistory:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/lody/virtual/server/am/VPendingIntents;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lody/virtual/server/am/VPendingIntents;->mLruHistory:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method final addPendingIntent(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 26
    iget-object v1, p0, Lcom/lody/virtual/server/am/VPendingIntents;->mLruHistory:Ljava/util/Map;

    monitor-enter v1

    .line 28
    :try_start_0
    new-instance v0, Lcom/lody/virtual/server/am/VPendingIntents$1;

    invoke-direct {v0, p0, p1}, Lcom/lody/virtual/server/am/VPendingIntents$1;-><init>(Lcom/lody/virtual/server/am/VPendingIntents;Landroid/os/IBinder;)V

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/lody/virtual/server/am/VPendingIntents;->mLruHistory:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/helper/proto/PendingIntentData;

    .line 39
    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/lody/virtual/server/am/VPendingIntents;->mLruHistory:Ljava/util/Map;

    new-instance v2, Lcom/lody/virtual/helper/proto/PendingIntentData;

    invoke-direct {v2, p2, p1}, Lcom/lody/virtual/helper/proto/PendingIntentData;-><init>(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :goto_1
    monitor-exit v1

    .line 45
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 36
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 42
    :cond_0
    :try_start_2
    iput-object p2, v0, Lcom/lody/virtual/helper/proto/PendingIntentData;->creator:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method final getPendingIntent(Landroid/os/IBinder;)Lcom/lody/virtual/helper/proto/PendingIntentData;
    .locals 2

    .prologue
    .line 20
    iget-object v1, p0, Lcom/lody/virtual/server/am/VPendingIntents;->mLruHistory:Ljava/util/Map;

    monitor-enter v1

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/am/VPendingIntents;->mLruHistory:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/helper/proto/PendingIntentData;

    monitor-exit v1

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final removePendingIntent(Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 48
    iget-object v1, p0, Lcom/lody/virtual/server/am/VPendingIntents;->mLruHistory:Ljava/util/Map;

    monitor-enter v1

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/am/VPendingIntents;->mLruHistory:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    monitor-exit v1

    .line 51
    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

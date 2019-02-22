.class public Lcom/lody/virtual/client/local/VIntentFilterManager;
.super Ljava/lang/Object;
.source "VIntentFilterManager.java"


# static fields
.field private static mRemote:Lcom/lody/virtual/service/interfaces/IIntentFilterObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInterface()Lcom/lody/virtual/service/interfaces/IIntentFilterObserver;
    .locals 3

    .prologue
    .line 16
    sget-object v0, Lcom/lody/virtual/client/local/VIntentFilterManager;->mRemote:Lcom/lody/virtual/service/interfaces/IIntentFilterObserver;

    if-nez v0, :cond_1

    .line 17
    const-class v1, Lcom/lody/virtual/client/local/VIntentFilterManager;

    monitor-enter v1

    .line 18
    :try_start_0
    sget-object v0, Lcom/lody/virtual/client/local/VIntentFilterManager;->mRemote:Lcom/lody/virtual/service/interfaces/IIntentFilterObserver;

    if-nez v0, :cond_0

    .line 19
    const-string v0, "intent_filter"

    invoke-static {v0}, Lcom/lody/virtual/client/service/ServiceManagerNative;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/lody/virtual/service/interfaces/IIntentFilterObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lody/virtual/service/interfaces/IIntentFilterObserver;

    move-result-object v0

    .line 21
    const-class v2, Lcom/lody/virtual/service/interfaces/IIntentFilterObserver;

    invoke-static {v2, v0}, Lcom/lody/virtual/client/local/LocalProxyUtils;->genProxy(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/service/interfaces/IIntentFilterObserver;

    sput-object v0, Lcom/lody/virtual/client/local/VIntentFilterManager;->mRemote:Lcom/lody/virtual/service/interfaces/IIntentFilterObserver;

    .line 23
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_1
    sget-object v0, Lcom/lody/virtual/client/local/VIntentFilterManager;->mRemote:Lcom/lody/virtual/service/interfaces/IIntentFilterObserver;

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

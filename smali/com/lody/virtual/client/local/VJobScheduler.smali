.class public Lcom/lody/virtual/client/local/VJobScheduler;
.super Ljava/lang/Object;
.source "VJobScheduler.java"


# static fields
.field private static final sInstance:Lcom/lody/virtual/client/local/VJobScheduler;


# instance fields
.field private mRemote:Lcom/lody/virtual/service/IJobScheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/lody/virtual/client/local/VJobScheduler;

    invoke-direct {v0}, Lcom/lody/virtual/client/local/VJobScheduler;-><init>()V

    sput-object v0, Lcom/lody/virtual/client/local/VJobScheduler;->sInstance:Lcom/lody/virtual/client/local/VJobScheduler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/lody/virtual/client/local/VJobScheduler;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/lody/virtual/client/local/VJobScheduler;->sInstance:Lcom/lody/virtual/client/local/VJobScheduler;

    return-object v0
.end method


# virtual methods
.method public cancel(I)V
    .locals 1

    .prologue
    .line 64
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VJobScheduler;->getRemote()Lcom/lody/virtual/service/IJobScheduler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/service/IJobScheduler;->cancel(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public cancelAll()V
    .locals 1

    .prologue
    .line 56
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VJobScheduler;->getRemote()Lcom/lody/virtual/service/IJobScheduler;

    move-result-object v0

    invoke-interface {v0}, Lcom/lody/virtual/service/IJobScheduler;->cancelAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getAllPendingJobs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VJobScheduler;->getRemote()Lcom/lody/virtual/service/IJobScheduler;

    move-result-object v0

    invoke-interface {v0}, Lcom/lody/virtual/service/IJobScheduler;->getAllPendingJobs()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 50
    :goto_0
    return-object v0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method

.method public getRemote()Lcom/lody/virtual/service/IJobScheduler;
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lody/virtual/client/local/VJobScheduler;->mRemote:Lcom/lody/virtual/service/IJobScheduler;

    if-nez v0, :cond_1

    .line 24
    monitor-enter p0

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/client/local/VJobScheduler;->mRemote:Lcom/lody/virtual/service/IJobScheduler;

    if-nez v0, :cond_0

    .line 26
    const-string v0, "job"

    invoke-static {v0}, Lcom/lody/virtual/client/service/ServiceManagerNative;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lody/virtual/service/IJobScheduler$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lody/virtual/service/IJobScheduler;

    move-result-object v0

    .line 27
    const-class v1, Lcom/lody/virtual/service/IJobScheduler;

    invoke-static {v1, v0}, Lcom/lody/virtual/client/local/LocalProxyUtils;->genProxy(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/service/IJobScheduler;

    iput-object v0, p0, Lcom/lody/virtual/client/local/VJobScheduler;->mRemote:Lcom/lody/virtual/service/IJobScheduler;

    .line 29
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/lody/virtual/client/local/VJobScheduler;->mRemote:Lcom/lody/virtual/service/IJobScheduler;

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public schedule(Landroid/app/job/JobInfo;)I
    .locals 1

    .prologue
    .line 40
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VJobScheduler;->getRemote()Lcom/lody/virtual/service/IJobScheduler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/service/IJobScheduler;->schedule(Landroid/app/job/JobInfo;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 42
    :goto_0
    return v0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

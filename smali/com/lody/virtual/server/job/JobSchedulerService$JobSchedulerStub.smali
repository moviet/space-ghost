.class final Lcom/lody/virtual/server/job/JobSchedulerService$JobSchedulerStub;
.super Lcom/lody/virtual/service/IJobScheduler$Stub;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "JobSchedulerStub"
.end annotation


# instance fields
.field private final mPersistCache:Lcom/lody/virtual/helper/utils/collection/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lody/virtual/helper/utils/collection/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lody/virtual/server/job/JobSchedulerService;


# direct methods
.method constructor <init>(Lcom/lody/virtual/server/job/JobSchedulerService;)V
    .locals 1

    .prologue
    .line 640
    iput-object p1, p0, Lcom/lody/virtual/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/lody/virtual/server/job/JobSchedulerService;

    invoke-direct {p0}, Lcom/lody/virtual/service/IJobScheduler$Stub;-><init>()V

    .line 644
    new-instance v0, Lcom/lody/virtual/helper/utils/collection/SparseArray;

    invoke-direct {v0}, Lcom/lody/virtual/helper/utils/collection/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService$JobSchedulerStub;->mPersistCache:Lcom/lody/virtual/helper/utils/collection/SparseArray;

    return-void
.end method

.method private canPersistJobs(II)Z
    .locals 4

    .prologue
    .line 669
    iget-object v1, p0, Lcom/lody/virtual/server/job/JobSchedulerService$JobSchedulerStub;->mPersistCache:Lcom/lody/virtual/helper/utils/collection/SparseArray;

    monitor-enter v1

    .line 670
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService$JobSchedulerStub;->mPersistCache:Lcom/lody/virtual/helper/utils/collection/SparseArray;

    invoke-virtual {v0, p2}, Lcom/lody/virtual/helper/utils/collection/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 671
    if-eqz v0, :cond_0

    .line 672
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 680
    :goto_0
    monitor-exit v1

    .line 681
    return v0

    .line 677
    :cond_0
    const/4 v0, 0x1

    .line 678
    iget-object v2, p0, Lcom/lody/virtual/server/job/JobSchedulerService$JobSchedulerStub;->mPersistCache:Lcom/lody/virtual/helper/utils/collection/SparseArray;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lcom/lody/virtual/helper/utils/collection/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 680
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private enforceValidJobRequest(ILandroid/app/job/JobInfo;)V
    .locals 4

    .prologue
    .line 650
    invoke-virtual {p2}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v0

    .line 651
    invoke-static {}, Lcom/lody/virtual/server/pm/VPackageManagerService;->get()Lcom/lody/virtual/server/pm/VPackageManagerService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/lody/virtual/os/VUserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/lody/virtual/server/pm/VPackageManagerService;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 652
    if-nez v1, :cond_0

    .line 653
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 655
    :cond_0
    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v2, p1, :cond_1

    .line 656
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cannot schedule job in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 657
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 659
    :cond_1
    const-string v2, "android.permission.BIND_JOB_SERVICE"

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 660
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduled service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " does not require android.permission.BIND_JOB_SERVICE permission"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 663
    :cond_2
    return-void
.end method


# virtual methods
.method public cancel(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 735
    invoke-static {}, Lcom/lody/virtual/os/VBinder;->getCallingUid()I

    move-result v0

    .line 737
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 739
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/lody/virtual/server/job/JobSchedulerService;

    invoke-virtual {v1, v0, p1}, Lcom/lody/virtual/server/job/JobSchedulerService;->cancelJob(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 741
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 743
    return-void

    .line 741
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public cancelAll()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 723
    invoke-static {}, Lcom/lody/virtual/os/VBinder;->getCallingUid()I

    move-result v0

    .line 725
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 727
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/lody/virtual/server/job/JobSchedulerService;

    invoke-virtual {v1, v0}, Lcom/lody/virtual/server/job/JobSchedulerService;->cancelJobsForUid(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 729
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 731
    return-void

    .line 729
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getAllPendingJobs()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 711
    invoke-static {}, Lcom/lody/virtual/os/VBinder;->getCallingUid()I

    move-result v0

    .line 713
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 715
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/lody/virtual/server/job/JobSchedulerService;

    invoke-virtual {v1, v0}, Lcom/lody/virtual/server/job/JobSchedulerService;->getPendingJobs(I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 717
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public schedule(Landroid/app/job/JobInfo;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 690
    invoke-static {}, Lcom/lody/virtual/os/VBinder;->getCallingPid()I

    move-result v0

    .line 691
    invoke-static {}, Lcom/lody/virtual/os/VBinder;->getCallingUid()I

    move-result v1

    .line 693
    invoke-direct {p0, v1, p1}, Lcom/lody/virtual/server/job/JobSchedulerService$JobSchedulerStub;->enforceValidJobRequest(ILandroid/app/job/JobInfo;)V

    .line 694
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 695
    invoke-direct {p0, v0, v1}, Lcom/lody/virtual/server/job/JobSchedulerService$JobSchedulerStub;->canPersistJobs(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 696
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error: requested job be persisted without holding RECEIVE_BOOT_COMPLETED permission."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 701
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 703
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/lody/virtual/server/job/JobSchedulerService;

    invoke-virtual {v0, p1, v1}, Lcom/lody/virtual/server/job/JobSchedulerService;->schedule(Landroid/app/job/JobInfo;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 705
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

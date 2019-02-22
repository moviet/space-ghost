.class public Lcom/lody/virtual/server/job/JobSchedulerService;
.super Ljava/lang/Object;
.source "JobSchedulerService.java"

# interfaces
.implements Lcom/lody/virtual/server/job/JobCompletedListener;
.implements Lcom/lody/virtual/server/job/StateChangedListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/server/job/JobSchedulerService$JobSchedulerStub;,
        Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final MAX_JOB_CONTEXTS_COUNT:I = 0x3

.field static final MIN_CHARGING_COUNT:I = 0x1

.field static final MIN_CONNECTIVITY_COUNT:I = 0x2

.field static final MIN_IDLE_COUNT:I = 0x1

.field static final MIN_READY_JOBS_COUNT:I = 0x2

.field static final MSG_CHECK_JOB:I = 0x1

.field static final MSG_JOB_EXPIRED:I = 0x0

.field static final TAG:Ljava/lang/String; = "JobSchedulerService"

.field private static sThis:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/lody/virtual/server/job/JobSchedulerService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mActiveServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lody/virtual/server/job/JobServiceContext;",
            ">;"
        }
    .end annotation
.end field

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lody/virtual/server/job/controllers/StateController;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;

.field final mJobSchedulerStub:Lcom/lody/virtual/server/job/JobSchedulerService$JobSchedulerStub;

.field final mJobs:Lcom/lody/virtual/server/job/JobStore;

.field final mPendingJobs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lody/virtual/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field mReadyToRock:Z

.field final mStartedUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/lody/virtual/server/job/JobSchedulerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService;->mStartedUsers:Ljava/util/ArrayList;

    .line 115
    new-instance v0, Lcom/lody/virtual/server/job/JobSchedulerService$1;

    invoke-direct {v0, p0}, Lcom/lody/virtual/server/job/JobSchedulerService$1;-><init>(Lcom/lody/virtual/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 252
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-static {p0}, Lcom/lody/virtual/server/job/controllers/TimeController;->get(Lcom/lody/virtual/server/job/JobSchedulerService;)Lcom/lody/virtual/server/job/controllers/TimeController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-static {p0}, Lcom/lody/virtual/server/job/controllers/IdleController;->get(Lcom/lody/virtual/server/job/JobSchedulerService;)Lcom/lody/virtual/server/job/controllers/IdleController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    new-instance v0, Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;-><init>(Lcom/lody/virtual/server/job/JobSchedulerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService;->mHandler:Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;

    .line 256
    new-instance v0, Lcom/lody/virtual/server/job/JobSchedulerService$JobSchedulerStub;

    invoke-direct {v0, p0}, Lcom/lody/virtual/server/job/JobSchedulerService$JobSchedulerStub;-><init>(Lcom/lody/virtual/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService;->mJobSchedulerStub:Lcom/lody/virtual/server/job/JobSchedulerService$JobSchedulerStub;

    .line 257
    invoke-static {p0}, Lcom/lody/virtual/server/job/JobStore;->initAndGet(Lcom/lody/virtual/server/job/JobSchedulerService;)Lcom/lody/virtual/server/job/JobStore;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService;->mJobs:Lcom/lody/virtual/server/job/JobStore;

    .line 258
    return-void
.end method

.method static synthetic access$000(Lcom/lody/virtual/server/job/JobSchedulerService;I)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/job/JobSchedulerService;->cancelJobsForUser(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/lody/virtual/server/job/JobSchedulerService;Lcom/lody/virtual/server/job/controllers/JobStatus;)Z
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/job/JobSchedulerService;->stopJobOnServiceContextLocked(Lcom/lody/virtual/server/job/controllers/JobStatus;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/lody/virtual/server/job/JobSchedulerService;Lcom/lody/virtual/server/job/controllers/JobStatus;)Z
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/job/JobSchedulerService;->isCurrentlyActiveLocked(Lcom/lody/virtual/server/job/controllers/JobStatus;)Z

    move-result v0

    return v0
.end method

.method private cancelJobImpl(Lcom/lody/virtual/server/job/controllers/JobStatus;)V
    .locals 2

    .prologue
    .line 231
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/job/JobSchedulerService;->stopTrackingJob(Lcom/lody/virtual/server/job/controllers/JobStatus;)Z

    .line 232
    iget-object v1, p0, Lcom/lody/virtual/server/job/JobSchedulerService;->mJobs:Lcom/lody/virtual/server/job/JobStore;

    monitor-enter v1

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 236
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/job/JobSchedulerService;->stopJobOnServiceContextLocked(Lcom/lody/virtual/server/job/controllers/JobStatus;)Z

    .line 237
    monitor-exit v1

    .line 238
    return-void

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private cancelJobsForUser(I)V
    .locals 3

    .prologue
    .line 184
    iget-object v1, p0, Lcom/lody/virtual/server/job/JobSchedulerService;->mJobs:Lcom/lody/virtual/server/job/JobStore;

    monitor-enter v1

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService;->mJobs:Lcom/lody/virtual/server/job/JobStore;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/server/job/JobStore;->getJobsByUser(I)Ljava/util/List;

    move-result-object v2

    .line 186
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 188
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/job/controllers/JobStatus;

    .line 189
    invoke-direct {p0, v0}, Lcom/lody/virtual/server/job/JobSchedulerService;->cancelJobImpl(Lcom/lody/virtual/server/job/controllers/JobStatus;)V

    .line 187
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 191
    :cond_0
    return-void
.end method

.method public static get()Lcom/lody/virtual/server/job/JobSchedulerService;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/lody/virtual/server/job/JobSchedulerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/job/JobSchedulerService;

    return-object v0
.end method

.method private getRescheduleJobForFailure(Lcom/lody/virtual/server/job/controllers/JobStatus;)Lcom/lody/virtual/server/job/controllers/JobStatus;
    .locals 7

    .prologue
    .line 365
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 366
    invoke-virtual {p1}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 368
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v4

    .line 369
    invoke-virtual {p1}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getNumFailures()I

    move-result v1

    add-int/lit8 v6, v1, 0x1

    .line 372
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 381
    long-to-float v0, v4

    add-int/lit8 v1, v6, -0x1

    .line 382
    invoke-static {v0, v1}, Ljava/lang/Math;->scalb(FI)F

    move-result v0

    float-to-long v0, v0

    .line 385
    :goto_0
    const-wide/32 v4, 0x112a880

    .line 386
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 387
    new-instance v0, Lcom/lody/virtual/server/job/controllers/JobStatus;

    add-long/2addr v2, v4

    const-wide v4, 0x7fffffffffffffffL

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/lody/virtual/server/job/controllers/JobStatus;-><init>(Lcom/lody/virtual/server/job/controllers/JobStatus;JJI)V

    return-object v0

    .line 374
    :pswitch_0
    int-to-long v0, v6

    mul-long/2addr v0, v4

    .line 375
    goto :goto_0

    .line 372
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private getRescheduleJobForPeriodic(Lcom/lody/virtual/server/job/controllers/JobStatus;)Lcom/lody/virtual/server/job/controllers/JobStatus;
    .locals 7

    .prologue
    .line 402
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 404
    invoke-virtual {p1}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 405
    add-long/2addr v2, v0

    .line 406
    invoke-virtual {p1}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v0

    .line 407
    add-long v4, v2, v0

    .line 408
    new-instance v0, Lcom/lody/virtual/server/job/controllers/JobStatus;

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/lody/virtual/server/job/controllers/JobStatus;-><init>(Lcom/lody/virtual/server/job/controllers/JobStatus;JJI)V

    return-object v0
.end method

.method public static getStub()Lcom/lody/virtual/server/job/JobSchedulerService$JobSchedulerStub;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/lody/virtual/server/job/JobSchedulerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/lody/virtual/server/job/JobSchedulerService;->mJobSchedulerStub:Lcom/lody/virtual/server/job/JobSchedulerService$JobSchedulerStub;

    return-object v0
.end method

.method private isCurrentlyActiveLocked(Lcom/lody/virtual/server/job/controllers/JobStatus;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 345
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/job/JobServiceContext;

    .line 347
    invoke-virtual {v0}, Lcom/lody/virtual/server/job/JobServiceContext;->getRunningJob()Lcom/lody/virtual/server/job/controllers/JobStatus;

    move-result-object v0

    .line 348
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    invoke-virtual {p1}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getJobId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/lody/virtual/server/job/controllers/JobStatus;->matches(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    const/4 v2, 0x1

    .line 352
    :cond_0
    return v2

    .line 345
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private startTrackingJob(Lcom/lody/virtual/server/job/controllers/JobStatus;)V
    .locals 3

    .prologue
    .line 291
    iget-object v1, p0, Lcom/lody/virtual/server/job/JobSchedulerService;->mJobs:Lcom/lody/virtual/server/job/JobStore;

    monitor-enter v1

    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService;->mJobs:Lcom/lody/virtual/server/job/JobStore;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/server/job/JobStore;->add(Lcom/lody/virtual/server/job/controllers/JobStatus;)Z

    move-result v2

    .line 293
    iget-boolean v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService;->mReadyToRock:Z

    .line 294
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    if-eqz v0, :cond_1

    .line 296
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/job/controllers/StateController;

    .line 298
    if-eqz v2, :cond_0

    .line 299
    invoke-virtual {v0, p1}, Lcom/lody/virtual/server/job/controllers/StateController;->maybeStopTrackingJob(Lcom/lody/virtual/server/job/controllers/JobStatus;)V

    .line 301
    :cond_0
    invoke-virtual {v0, p1}, Lcom/lody/virtual/server/job/controllers/StateController;->maybeStartTrackingJob(Lcom/lody/virtual/server/job/controllers/JobStatus;)V

    .line 296
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 294
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 304
    :cond_1
    return-void
.end method

.method private stopJobOnServiceContextLocked(Lcom/lody/virtual/server/job/controllers/JobStatus;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 328
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/job/JobServiceContext;

    .line 330
    invoke-virtual {v0}, Lcom/lody/virtual/server/job/JobServiceContext;->getRunningJob()Lcom/lody/virtual/server/job/controllers/JobStatus;

    move-result-object v3

    .line 331
    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getUid()I

    move-result v4

    invoke-virtual {p1}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getJobId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/lody/virtual/server/job/controllers/JobStatus;->matches(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 332
    invoke-virtual {v0}, Lcom/lody/virtual/server/job/JobServiceContext;->cancelExecutingJob()V

    .line 333
    const/4 v2, 0x1

    .line 336
    :cond_0
    return v2

    .line 328
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private stopTrackingJob(Lcom/lody/virtual/server/job/controllers/JobStatus;)Z
    .locals 3

    .prologue
    .line 313
    iget-object v1, p0, Lcom/lody/virtual/server/job/JobSchedulerService;->mJobs:Lcom/lody/virtual/server/job/JobStore;

    monitor-enter v1

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService;->mJobs:Lcom/lody/virtual/server/job/JobStore;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/server/job/JobStore;->remove(Lcom/lody/virtual/server/job/controllers/JobStatus;)Z

    move-result v2

    .line 316
    iget-boolean v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService;->mReadyToRock:Z

    .line 317
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 319
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/job/controllers/StateController;

    .line 321
    invoke-virtual {v0, p1}, Lcom/lody/virtual/server/job/controllers/StateController;->maybeStopTrackingJob(Lcom/lody/virtual/server/job/controllers/JobStatus;)V

    .line 319
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 317
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 324
    :cond_0
    return v2
.end method

.method public static systemReady(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 138
    new-instance v0, Lcom/lody/virtual/server/job/JobSchedulerService;

    invoke-direct {v0, p0}, Lcom/lody/virtual/server/job/JobSchedulerService;-><init>(Landroid/content/Context;)V

    .line 139
    invoke-virtual {v0}, Lcom/lody/virtual/server/job/JobSchedulerService;->onBootPhase()V

    .line 140
    sget-object v1, Lcom/lody/virtual/server/job/JobSchedulerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 141
    return-void
.end method


# virtual methods
.method public cancelJob(II)V
    .locals 2

    .prologue
    .line 219
    iget-object v1, p0, Lcom/lody/virtual/server/job/JobSchedulerService;->mJobs:Lcom/lody/virtual/server/job/JobStore;

    monitor-enter v1

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService;->mJobs:Lcom/lody/virtual/server/job/JobStore;

    invoke-virtual {v0, p1, p2}, Lcom/lody/virtual/server/job/JobStore;->getJobByUidAndJobId(II)Lcom/lody/virtual/server/job/controllers/JobStatus;

    move-result-object v0

    .line 221
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    if-eqz v0, :cond_0

    .line 223
    invoke-direct {p0, v0}, Lcom/lody/virtual/server/job/JobSchedulerService;->cancelJobImpl(Lcom/lody/virtual/server/job/controllers/JobStatus;)V

    .line 225
    :cond_0
    return-void

    .line 221
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public cancelJobsForUid(I)V
    .locals 3

    .prologue
    .line 201
    iget-object v1, p0, Lcom/lody/virtual/server/job/JobSchedulerService;->mJobs:Lcom/lody/virtual/server/job/JobStore;

    monitor-enter v1

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService;->mJobs:Lcom/lody/virtual/server/job/JobStore;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/server/job/JobStore;->getJobsByUid(I)Ljava/util/List;

    move-result-object v2

    .line 203
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 205
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/job/controllers/JobStatus;

    .line 206
    invoke-direct {p0, v0}, Lcom/lody/virtual/server/job/JobSchedulerService;->cancelJobImpl(Lcom/lody/virtual/server/job/controllers/JobStatus;)V

    .line 204
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 203
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 208
    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 454
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getPendingJobs(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 170
    iget-object v3, p0, Lcom/lody/virtual/server/job/JobSchedulerService;->mJobs:Lcom/lody/virtual/server/job/JobStore;

    monitor-enter v3

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService;->mJobs:Lcom/lody/virtual/server/job/JobStore;

    invoke-virtual {v0}, Lcom/lody/virtual/server/job/JobStore;->getJobs()Lcom/lody/virtual/helper/utils/collection/ArraySet;

    move-result-object v4

    .line 172
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v4}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 173
    invoke-virtual {v4, v1}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/job/controllers/JobStatus;

    .line 174
    invoke-virtual {v0}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getUid()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 175
    invoke-virtual {v0}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 178
    :cond_1
    monitor-exit v3

    .line 179
    return-object v2

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onBootPhase()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 262
    iget-object v5, p0, Lcom/lody/virtual/server/job/JobSchedulerService;->mJobs:Lcom/lody/virtual/server/job/JobStore;

    monitor-enter v5

    .line 264
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService;->mReadyToRock:Z

    move v0, v3

    .line 266
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/lody/virtual/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    new-instance v2, Lcom/lody/virtual/server/job/JobServiceContext;

    .line 268
    invoke-virtual {p0}, Lcom/lody/virtual/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Lcom/lody/virtual/server/job/JobServiceContext;-><init>(Lcom/lody/virtual/server/job/JobSchedulerService;Landroid/os/Looper;)V

    .line 267
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService;->mJobs:Lcom/lody/virtual/server/job/JobStore;

    invoke-virtual {v0}, Lcom/lody/virtual/server/job/JobStore;->getJobs()Lcom/lody/virtual/helper/utils/collection/ArraySet;

    move-result-object v6

    move v4, v3

    .line 272
    :goto_1
    invoke-virtual {v6}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->size()I

    move-result v0

    if-ge v4, v0, :cond_2

    .line 273
    invoke-virtual {v6, v4}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/job/controllers/JobStatus;

    move v2, v3

    .line 274
    :goto_2
    iget-object v1, p0, Lcom/lody/virtual/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 275
    iget-object v1, p0, Lcom/lody/virtual/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/job/controllers/StateController;

    invoke-virtual {v1, v0}, Lcom/lody/virtual/server/job/controllers/StateController;->maybeStartTrackingJob(Lcom/lody/virtual/server/job/controllers/JobStatus;)V

    .line 274
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 272
    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 279
    :cond_2
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService;->mHandler:Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 280
    monitor-exit v5

    .line 281
    return-void

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onControllerStateChanged()V
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService;->mHandler:Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 446
    return-void
.end method

.method public onJobCompleted(Lcom/lody/virtual/server/job/controllers/JobStatus;Z)V
    .locals 2

    .prologue
    .line 423
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/job/JobSchedulerService;->stopTrackingJob(Lcom/lody/virtual/server/job/controllers/JobStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    :goto_0
    return-void

    .line 426
    :cond_0
    if-eqz p2, :cond_2

    .line 427
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/job/JobSchedulerService;->getRescheduleJobForFailure(Lcom/lody/virtual/server/job/controllers/JobStatus;)Lcom/lody/virtual/server/job/controllers/JobStatus;

    move-result-object v0

    .line 428
    invoke-direct {p0, v0}, Lcom/lody/virtual/server/job/JobSchedulerService;->startTrackingJob(Lcom/lody/virtual/server/job/controllers/JobStatus;)V

    .line 433
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService;->mHandler:Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 429
    :cond_2
    invoke-virtual {p1}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/job/JobSchedulerService;->getRescheduleJobForPeriodic(Lcom/lody/virtual/server/job/controllers/JobStatus;)Lcom/lody/virtual/server/job/controllers/JobStatus;

    move-result-object v0

    .line 431
    invoke-direct {p0, v0}, Lcom/lody/virtual/server/job/JobSchedulerService;->startTrackingJob(Lcom/lody/virtual/server/job/controllers/JobStatus;)V

    goto :goto_1
.end method

.method public onRunJobNow(Lcom/lody/virtual/server/job/controllers/JobStatus;)V
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService;->mHandler:Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 451
    return-void
.end method

.method public onStartUser(I)V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService;->mStartedUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService;->mHandler:Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 147
    return-void
.end method

.method public onStopUser(I)V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService;->mStartedUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 151
    return-void
.end method

.method public schedule(Landroid/app/job/JobInfo;I)I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 161
    new-instance v0, Lcom/lody/virtual/server/job/controllers/JobStatus;

    invoke-direct {v0, p1, p2}, Lcom/lody/virtual/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;I)V

    .line 162
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    invoke-virtual {p0, p2, v1}, Lcom/lody/virtual/server/job/JobSchedulerService;->cancelJob(II)V

    .line 163
    invoke-direct {p0, v0}, Lcom/lody/virtual/server/job/JobSchedulerService;->startTrackingJob(Lcom/lody/virtual/server/job/controllers/JobStatus;)V

    .line 164
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService;->mHandler:Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {v0, v2}, Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 165
    return v2
.end method

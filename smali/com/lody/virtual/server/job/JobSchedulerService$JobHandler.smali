.class Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;
.super Landroid/os/Handler;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JobHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/lody/virtual/server/job/JobSchedulerService;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/lody/virtual/server/job/JobSchedulerService;

    .line 460
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 461
    return-void
.end method

.method private isReadyToBeCancelledLocked(Lcom/lody/virtual/server/job/controllers/JobStatus;)Z
    .locals 1

    .prologue
    .line 593
    invoke-virtual {p1}, Lcom/lody/virtual/server/job/controllers/JobStatus;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/lody/virtual/server/job/JobSchedulerService;

    # invokes: Lcom/lody/virtual/server/job/JobSchedulerService;->isCurrentlyActiveLocked(Lcom/lody/virtual/server/job/controllers/JobStatus;)Z
    invoke-static {v0, p1}, Lcom/lody/virtual/server/job/JobSchedulerService;->access$200(Lcom/lody/virtual/server/job/JobSchedulerService;Lcom/lody/virtual/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isReadyToBeExecutedLocked(Lcom/lody/virtual/server/job/controllers/JobStatus;)Z
    .locals 5

    .prologue
    .line 580
    invoke-virtual {p1}, Lcom/lody/virtual/server/job/controllers/JobStatus;->isReady()Z

    move-result v0

    .line 581
    iget-object v1, p0, Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/lody/virtual/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/lody/virtual/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 582
    iget-object v2, p0, Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/lody/virtual/server/job/JobSchedulerService;

    # invokes: Lcom/lody/virtual/server/job/JobSchedulerService;->isCurrentlyActiveLocked(Lcom/lody/virtual/server/job/controllers/JobStatus;)Z
    invoke-static {v2, p1}, Lcom/lody/virtual/server/job/JobSchedulerService;->access$200(Lcom/lody/virtual/server/job/JobSchedulerService;Lcom/lody/virtual/server/job/controllers/JobStatus;)Z

    move-result v2

    .line 583
    iget-object v3, p0, Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/lody/virtual/server/job/JobSchedulerService;

    iget-object v3, v3, Lcom/lody/virtual/server/job/JobSchedulerService;->mStartedUsers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getUserId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 584
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeQueueReadyJobsForExecutionLockedH()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 535
    .line 539
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 540
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/lody/virtual/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/lody/virtual/server/job/JobSchedulerService;->mJobs:Lcom/lody/virtual/server/job/JobStore;

    invoke-virtual {v0}, Lcom/lody/virtual/server/job/JobStore;->getJobs()Lcom/lody/virtual/helper/utils/collection/ArraySet;

    move-result-object v8

    move v1, v2

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    .line 541
    :goto_0
    invoke-virtual {v8}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 542
    invoke-virtual {v8, v1}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/job/controllers/JobStatus;

    .line 543
    invoke-direct {p0, v0}, Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;->isReadyToBeExecutedLocked(Lcom/lody/virtual/server/job/controllers/JobStatus;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 544
    invoke-virtual {v0}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getNumFailures()I

    move-result v9

    if-lez v9, :cond_0

    .line 545
    add-int/lit8 v4, v4, 0x1

    .line 547
    :cond_0
    invoke-virtual {v0}, Lcom/lody/virtual/server/job/controllers/JobStatus;->hasIdleConstraint()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 548
    add-int/lit8 v5, v5, 0x1

    .line 550
    :cond_1
    invoke-virtual {v0}, Lcom/lody/virtual/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v0}, Lcom/lody/virtual/server/job/controllers/JobStatus;->hasUnmeteredConstraint()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 551
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 553
    :cond_3
    invoke-virtual {v0}, Lcom/lody/virtual/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 554
    add-int/lit8 v6, v6, 0x1

    .line 556
    :cond_4
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 541
    :cond_5
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 557
    :cond_6
    invoke-direct {p0, v0}, Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;->isReadyToBeCancelledLocked(Lcom/lody/virtual/server/job/controllers/JobStatus;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 558
    iget-object v9, p0, Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/lody/virtual/server/job/JobSchedulerService;

    # invokes: Lcom/lody/virtual/server/job/JobSchedulerService;->stopJobOnServiceContextLocked(Lcom/lody/virtual/server/job/controllers/JobStatus;)Z
    invoke-static {v9, v0}, Lcom/lody/virtual/server/job/JobSchedulerService;->access$100(Lcom/lody/virtual/server/job/JobSchedulerService;Lcom/lody/virtual/server/job/controllers/JobStatus;)Z

    goto :goto_1

    .line 561
    :cond_7
    if-gtz v4, :cond_8

    if-ge v5, v10, :cond_8

    if-ge v3, v11, :cond_8

    if-ge v6, v10, :cond_8

    .line 565
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v11, :cond_9

    .line 566
    :cond_8
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    .line 567
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/lody/virtual/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/lody/virtual/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 570
    :cond_9
    return-void
.end method

.method private maybeRunPendingJobsH()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 602
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/lody/virtual/server/job/JobSchedulerService;

    iget-object v5, v0, Lcom/lody/virtual/server/job/JobSchedulerService;->mJobs:Lcom/lody/virtual/server/job/JobStore;

    monitor-enter v5

    .line 603
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/lody/virtual/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/lody/virtual/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 607
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 608
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/job/controllers/JobStatus;

    .line 610
    const/4 v1, 0x0

    move v4, v1

    move-object v2, v3

    :goto_1
    iget-object v1, p0, Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/lody/virtual/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/lody/virtual/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_1

    .line 611
    iget-object v1, p0, Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/lody/virtual/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/lody/virtual/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/job/JobServiceContext;

    .line 612
    invoke-virtual {v1}, Lcom/lody/virtual/server/job/JobServiceContext;->getRunningJob()Lcom/lody/virtual/server/job/controllers/JobStatus;

    move-result-object v7

    .line 613
    if-eqz v7, :cond_3

    invoke-virtual {v0}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getUid()I

    move-result v8

    .line 614
    invoke-virtual {v0}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getJobId()I

    move-result v9

    .line 613
    invoke-virtual {v7, v8, v9}, Lcom/lody/virtual/server/job/controllers/JobStatus;->matches(II)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v2, v3

    .line 623
    :cond_1
    if-eqz v2, :cond_0

    .line 624
    invoke-virtual {v2, v0}, Lcom/lody/virtual/server/job/JobServiceContext;->executeRunnableJob(Lcom/lody/virtual/server/job/controllers/JobStatus;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 628
    iget-object v1, p0, Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/lody/virtual/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/lody/virtual/server/job/JobSchedulerService;->mJobs:Lcom/lody/virtual/server/job/JobStore;

    invoke-virtual {v1, v0}, Lcom/lody/virtual/server/job/JobStore;->remove(Lcom/lody/virtual/server/job/controllers/JobStatus;)Z

    .line 630
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 633
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 619
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Lcom/lody/virtual/server/job/JobServiceContext;->isAvailable()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 610
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v2, v1

    goto :goto_1

    .line 633
    :cond_4
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 634
    return-void

    :cond_5
    move-object v1, v2

    goto :goto_2
.end method

.method private queueReadyJobsForExecutionLockedH()V
    .locals 4

    .prologue
    .line 500
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/lody/virtual/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/lody/virtual/server/job/JobSchedulerService;->mJobs:Lcom/lody/virtual/server/job/JobStore;

    invoke-virtual {v0}, Lcom/lody/virtual/server/job/JobStore;->getJobs()Lcom/lody/virtual/helper/utils/collection/ArraySet;

    move-result-object v2

    .line 504
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 505
    invoke-virtual {v2, v1}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/job/controllers/JobStatus;

    .line 506
    invoke-direct {p0, v0}, Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;->isReadyToBeExecutedLocked(Lcom/lody/virtual/server/job/controllers/JobStatus;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 510
    iget-object v3, p0, Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/lody/virtual/server/job/JobSchedulerService;

    iget-object v3, v3, Lcom/lody/virtual/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 511
    :cond_1
    invoke-direct {p0, v0}, Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;->isReadyToBeCancelledLocked(Lcom/lody/virtual/server/job/controllers/JobStatus;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 512
    iget-object v3, p0, Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/lody/virtual/server/job/JobSchedulerService;

    # invokes: Lcom/lody/virtual/server/job/JobSchedulerService;->stopJobOnServiceContextLocked(Lcom/lody/virtual/server/job/controllers/JobStatus;)Z
    invoke-static {v3, v0}, Lcom/lody/virtual/server/job/JobSchedulerService;->access$100(Lcom/lody/virtual/server/job/JobSchedulerService;Lcom/lody/virtual/server/job/controllers/JobStatus;)Z

    goto :goto_1

    .line 523
    :cond_2
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 465
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/lody/virtual/server/job/JobSchedulerService;

    iget-object v1, v0, Lcom/lody/virtual/server/job/JobSchedulerService;->mJobs:Lcom/lody/virtual/server/job/JobStore;

    monitor-enter v1

    .line 466
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/lody/virtual/server/job/JobSchedulerService;

    iget-boolean v0, v0, Lcom/lody/virtual/server/job/JobSchedulerService;->mReadyToRock:Z

    if-nez v0, :cond_0

    .line 467
    monitor-exit v1

    .line 493
    :goto_0
    return-void

    .line 469
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 490
    :goto_1
    invoke-direct {p0}, Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;->maybeRunPendingJobsH()V

    .line 492
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;->removeMessages(I)V

    goto :goto_0

    .line 469
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 472
    :pswitch_0
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/lody/virtual/server/job/JobSchedulerService;

    iget-object v1, v0, Lcom/lody/virtual/server/job/JobSchedulerService;->mJobs:Lcom/lody/virtual/server/job/JobStore;

    monitor-enter v1

    .line 473
    :try_start_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lody/virtual/server/job/controllers/JobStatus;

    .line 476
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/lody/virtual/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/lody/virtual/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/lody/virtual/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/lody/virtual/server/job/JobSchedulerService;->mJobs:Lcom/lody/virtual/server/job/JobStore;

    .line 477
    invoke-virtual {v2, v0}, Lcom/lody/virtual/server/job/JobStore;->containsJob(Lcom/lody/virtual/server/job/controllers/JobStatus;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 478
    iget-object v2, p0, Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/lody/virtual/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/lody/virtual/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    :cond_1
    invoke-direct {p0}, Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;->queueReadyJobsForExecutionLockedH()V

    .line 481
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 484
    :pswitch_1
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/lody/virtual/server/job/JobSchedulerService;

    iget-object v1, v0, Lcom/lody/virtual/server/job/JobSchedulerService;->mJobs:Lcom/lody/virtual/server/job/JobStore;

    monitor-enter v1

    .line 486
    :try_start_3
    invoke-direct {p0}, Lcom/lody/virtual/server/job/JobSchedulerService$JobHandler;->maybeQueueReadyJobsForExecutionLockedH()V

    .line 487
    monitor-exit v1

    goto :goto_1

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    .line 470
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

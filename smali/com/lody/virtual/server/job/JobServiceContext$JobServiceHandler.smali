.class Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;
.super Landroid/os/Handler;
.source "JobServiceContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/job/JobServiceContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JobServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/server/job/JobServiceContext;


# direct methods
.method constructor <init>(Lcom/lody/virtual/server/job/JobServiceContext;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/lody/virtual/server/job/JobServiceContext;

    .line 248
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 249
    return-void
.end method

.method private closeAndCleanupJobH(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 435
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/lody/virtual/server/job/JobServiceContext;

    # getter for: Lcom/lody/virtual/server/job/JobServiceContext;->mRunningJob:Lcom/lody/virtual/server/job/controllers/JobStatus;
    invoke-static {v0}, Lcom/lody/virtual/server/job/JobServiceContext;->access$400(Lcom/lody/virtual/server/job/JobServiceContext;)Lcom/lody/virtual/server/job/controllers/JobStatus;

    move-result-object v0

    .line 436
    iget-object v1, p0, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/lody/virtual/server/job/JobServiceContext;

    # getter for: Lcom/lody/virtual/server/job/JobServiceContext;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/lody/virtual/server/job/JobServiceContext;->access$500(Lcom/lody/virtual/server/job/JobServiceContext;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 437
    :try_start_0
    iget-object v2, p0, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/lody/virtual/server/job/JobServiceContext;

    # getter for: Lcom/lody/virtual/server/job/JobServiceContext;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lody/virtual/server/job/JobServiceContext;->access$600(Lcom/lody/virtual/server/job/JobServiceContext;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/lody/virtual/server/job/JobServiceContext;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 438
    iget-object v2, p0, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/lody/virtual/server/job/JobServiceContext;

    const/4 v3, 0x0

    # setter for: Lcom/lody/virtual/server/job/JobServiceContext;->mRunningJob:Lcom/lody/virtual/server/job/controllers/JobStatus;
    invoke-static {v2, v3}, Lcom/lody/virtual/server/job/JobServiceContext;->access$402(Lcom/lody/virtual/server/job/JobServiceContext;Lcom/lody/virtual/server/job/controllers/JobStatus;)Lcom/lody/virtual/server/job/controllers/JobStatus;

    .line 439
    iget-object v2, p0, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/lody/virtual/server/job/JobServiceContext;

    const/4 v3, 0x0

    # setter for: Lcom/lody/virtual/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;
    invoke-static {v2, v3}, Lcom/lody/virtual/server/job/JobServiceContext;->access$302(Lcom/lody/virtual/server/job/JobServiceContext;Landroid/app/job/JobParameters;)Landroid/app/job/JobParameters;

    .line 440
    iget-object v2, p0, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/lody/virtual/server/job/JobServiceContext;

    const/4 v3, -0x1

    iput v3, v2, Lcom/lody/virtual/server/job/JobServiceContext;->mVerb:I

    .line 441
    iget-object v2, p0, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/lody/virtual/server/job/JobServiceContext;

    # getter for: Lcom/lody/virtual/server/job/JobServiceContext;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/lody/virtual/server/job/JobServiceContext;->access$100(Lcom/lody/virtual/server/job/JobServiceContext;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 442
    iget-object v2, p0, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/lody/virtual/server/job/JobServiceContext;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/lody/virtual/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    .line 443
    iget-object v2, p0, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/lody/virtual/server/job/JobServiceContext;

    const/4 v3, 0x1

    # setter for: Lcom/lody/virtual/server/job/JobServiceContext;->mAvailable:Z
    invoke-static {v2, v3}, Lcom/lody/virtual/server/job/JobServiceContext;->access$702(Lcom/lody/virtual/server/job/JobServiceContext;Z)Z

    .line 444
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    iget-object v1, p0, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/lody/virtual/server/job/JobServiceContext;

    # invokes: Lcom/lody/virtual/server/job/JobServiceContext;->removeOpTimeOut()V
    invoke-static {v1}, Lcom/lody/virtual/server/job/JobServiceContext;->access$000(Lcom/lody/virtual/server/job/JobServiceContext;)V

    .line 446
    invoke-virtual {p0, v4}, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->removeMessages(I)V

    .line 447
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->removeMessages(I)V

    .line 448
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->removeMessages(I)V

    .line 449
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->removeMessages(I)V

    .line 450
    iget-object v1, p0, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/lody/virtual/server/job/JobServiceContext;

    # getter for: Lcom/lody/virtual/server/job/JobServiceContext;->mCompletedListener:Lcom/lody/virtual/server/job/JobCompletedListener;
    invoke-static {v1}, Lcom/lody/virtual/server/job/JobServiceContext;->access$800(Lcom/lody/virtual/server/job/JobServiceContext;)Lcom/lody/virtual/server/job/JobCompletedListener;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/lody/virtual/server/job/JobCompletedListener;->onJobCompleted(Lcom/lody/virtual/server/job/controllers/JobStatus;Z)V

    .line 451
    return-void

    .line 444
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handleCancelH()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 358
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/lody/virtual/server/job/JobServiceContext;

    # getter for: Lcom/lody/virtual/server/job/JobServiceContext;->mRunningJob:Lcom/lody/virtual/server/job/controllers/JobStatus;
    invoke-static {v0}, Lcom/lody/virtual/server/job/JobServiceContext;->access$400(Lcom/lody/virtual/server/job/JobServiceContext;)Lcom/lody/virtual/server/job/controllers/JobStatus;

    move-result-object v0

    if-nez v0, :cond_1

    .line 379
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/lody/virtual/server/job/JobServiceContext;

    iget v0, v0, Lcom/lody/virtual/server/job/JobServiceContext;->mVerb:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 364
    :pswitch_1
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/lody/virtual/server/job/JobServiceContext;

    # getter for: Lcom/lody/virtual/server/job/JobServiceContext;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/lody/virtual/server/job/JobServiceContext;->access$100(Lcom/lody/virtual/server/job/JobServiceContext;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 367
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    invoke-direct {p0}, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->sendStopMessageH()V

    goto :goto_0

    .line 361
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private handleFinishedH(Z)V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/lody/virtual/server/job/JobServiceContext;

    iget v0, v0, Lcom/lody/virtual/server/job/JobServiceContext;->mVerb:I

    packed-switch v0, :pswitch_data_0

    .line 345
    :goto_0
    return-void

    .line 340
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    goto :goto_0

    .line 337
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleOpTimeoutH()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 383
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/lody/virtual/server/job/JobServiceContext;

    iget v0, v0, Lcom/lody/virtual/server/job/JobServiceContext;->mVerb:I

    packed-switch v0, :pswitch_data_0

    .line 403
    invoke-direct {p0, v1}, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    .line 405
    :goto_0
    return-void

    .line 385
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    goto :goto_0

    .line 391
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    goto :goto_0

    .line 396
    :pswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    goto :goto_0

    .line 400
    :pswitch_3
    invoke-direct {p0}, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->sendStopMessageH()V

    goto :goto_0

    .line 383
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private handleServiceBoundH()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 286
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/lody/virtual/server/job/JobServiceContext;

    iget v0, v0, Lcom/lody/virtual/server/job/JobServiceContext;->mVerb:I

    if-eqz v0, :cond_0

    .line 287
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    .line 301
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/lody/virtual/server/job/JobServiceContext;

    # getter for: Lcom/lody/virtual/server/job/JobServiceContext;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/lody/virtual/server/job/JobServiceContext;->access$100(Lcom/lody/virtual/server/job/JobServiceContext;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    invoke-direct {p0, v1}, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    goto :goto_0

    .line 295
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/lody/virtual/server/job/JobServiceContext;

    const/4 v1, 0x1

    iput v1, v0, Lcom/lody/virtual/server/job/JobServiceContext;->mVerb:I

    .line 296
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/lody/virtual/server/job/JobServiceContext;

    # invokes: Lcom/lody/virtual/server/job/JobServiceContext;->scheduleOpTimeOut()V
    invoke-static {v0}, Lcom/lody/virtual/server/job/JobServiceContext;->access$200(Lcom/lody/virtual/server/job/JobServiceContext;)V

    .line 297
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/lody/virtual/server/job/JobServiceContext;

    iget-object v0, v0, Lcom/lody/virtual/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    iget-object v1, p0, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/lody/virtual/server/job/JobServiceContext;

    # getter for: Lcom/lody/virtual/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;
    invoke-static {v1}, Lcom/lody/virtual/server/job/JobServiceContext;->access$300(Lcom/lody/virtual/server/job/JobServiceContext;)Landroid/app/job/JobParameters;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/job/IJobService;->startJob(Landroid/app/job/JobParameters;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private handleStartedH(Z)V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/lody/virtual/server/job/JobServiceContext;

    iget v0, v0, Lcom/lody/virtual/server/job/JobServiceContext;->mVerb:I

    packed-switch v0, :pswitch_data_0

    .line 328
    :goto_0
    return-void

    .line 313
    :pswitch_0
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/lody/virtual/server/job/JobServiceContext;

    const/4 v1, 0x2

    iput v1, v0, Lcom/lody/virtual/server/job/JobServiceContext;->mVerb:I

    .line 314
    if-nez p1, :cond_0

    .line 316
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->handleFinishedH(Z)V

    goto :goto_0

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/lody/virtual/server/job/JobServiceContext;

    # getter for: Lcom/lody/virtual/server/job/JobServiceContext;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/lody/virtual/server/job/JobServiceContext;->access$100(Lcom/lody/virtual/server/job/JobServiceContext;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    invoke-direct {p0}, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->handleCancelH()V

    goto :goto_0

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/lody/virtual/server/job/JobServiceContext;

    # invokes: Lcom/lody/virtual/server/job/JobServiceContext;->scheduleOpTimeOut()V
    invoke-static {v0}, Lcom/lody/virtual/server/job/JobServiceContext;->access$200(Lcom/lody/virtual/server/job/JobServiceContext;)V

    goto :goto_0

    .line 311
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private sendStopMessageH()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 412
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/lody/virtual/server/job/JobServiceContext;

    # invokes: Lcom/lody/virtual/server/job/JobServiceContext;->removeOpTimeOut()V
    invoke-static {v0}, Lcom/lody/virtual/server/job/JobServiceContext;->access$000(Lcom/lody/virtual/server/job/JobServiceContext;)V

    .line 413
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/lody/virtual/server/job/JobServiceContext;

    iget v0, v0, Lcom/lody/virtual/server/job/JobServiceContext;->mVerb:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 415
    invoke-direct {p0, v2}, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    .line 426
    :goto_0
    return-void

    .line 419
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/lody/virtual/server/job/JobServiceContext;

    const/4 v1, 0x3

    iput v1, v0, Lcom/lody/virtual/server/job/JobServiceContext;->mVerb:I

    .line 420
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/lody/virtual/server/job/JobServiceContext;

    # invokes: Lcom/lody/virtual/server/job/JobServiceContext;->scheduleOpTimeOut()V
    invoke-static {v0}, Lcom/lody/virtual/server/job/JobServiceContext;->access$200(Lcom/lody/virtual/server/job/JobServiceContext;)V

    .line 421
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/lody/virtual/server/job/JobServiceContext;

    iget-object v0, v0, Lcom/lody/virtual/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    iget-object v1, p0, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/lody/virtual/server/job/JobServiceContext;

    # getter for: Lcom/lody/virtual/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;
    invoke-static {v1}, Lcom/lody/virtual/server/job/JobServiceContext;->access$300(Lcom/lody/virtual/server/job/JobServiceContext;)Landroid/app/job/JobParameters;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/job/IJobService;->stopJob(Landroid/app/job/JobParameters;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 422
    :catch_0
    move-exception v0

    .line 424
    invoke-direct {p0, v2}, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 253
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 255
    :pswitch_0
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/lody/virtual/server/job/JobServiceContext;

    # invokes: Lcom/lody/virtual/server/job/JobServiceContext;->removeOpTimeOut()V
    invoke-static {v0}, Lcom/lody/virtual/server/job/JobServiceContext;->access$000(Lcom/lody/virtual/server/job/JobServiceContext;)V

    .line 256
    invoke-direct {p0}, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->handleServiceBoundH()V

    goto :goto_0

    .line 259
    :pswitch_1
    iget-object v2, p0, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/lody/virtual/server/job/JobServiceContext;

    # invokes: Lcom/lody/virtual/server/job/JobServiceContext;->removeOpTimeOut()V
    invoke-static {v2}, Lcom/lody/virtual/server/job/JobServiceContext;->access$000(Lcom/lody/virtual/server/job/JobServiceContext;)V

    .line 261
    iget-object v2, p0, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/lody/virtual/server/job/JobServiceContext;

    iget v2, v2, Lcom/lody/virtual/server/job/JobServiceContext;->mVerb:I

    if-ne v2, v0, :cond_2

    .line 262
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v0, :cond_1

    .line 263
    :goto_1
    invoke-direct {p0, v0}, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->handleStartedH(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 262
    goto :goto_1

    .line 264
    :cond_2
    iget-object v2, p0, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/lody/virtual/server/job/JobServiceContext;

    iget v2, v2, Lcom/lody/virtual/server/job/JobServiceContext;->mVerb:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/lody/virtual/server/job/JobServiceContext;

    iget v2, v2, Lcom/lody/virtual/server/job/JobServiceContext;->mVerb:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 266
    :cond_3
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v0, :cond_4

    .line 267
    :goto_2
    invoke-direct {p0, v0}, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->handleFinishedH(Z)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 266
    goto :goto_2

    .line 271
    :pswitch_2
    invoke-direct {p0}, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->handleCancelH()V

    goto :goto_0

    .line 274
    :pswitch_3
    invoke-direct {p0}, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->handleOpTimeoutH()V

    goto :goto_0

    .line 277
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    goto :goto_0

    .line 253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

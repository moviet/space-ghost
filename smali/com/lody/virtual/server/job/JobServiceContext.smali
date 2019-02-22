.class public Lcom/lody/virtual/server/job/JobServiceContext;
.super Landroid/app/job/IJobCallback$Stub;
.source "JobServiceContext.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;
    }
.end annotation


# static fields
.field private static final EXECUTING_TIMESLICE_MILLIS:J = 0xea60L

.field private static final MSG_CALLBACK:I = 0x1

.field private static final MSG_CANCEL:I = 0x3

.field private static final MSG_SERVICE_BOUND:I = 0x2

.field private static final MSG_SHUTDOWN_EXECUTION:I = 0x4

.field private static final MSG_TIMEOUT:I = 0x0

.field private static final OP_TIMEOUT_MILLIS:J = 0x1f40L

.field private static final TAG:Ljava/lang/String; = "JobServiceContext"

.field static final VERB_BINDING:I = 0x0

.field static final VERB_EXECUTING:I = 0x2

.field static final VERB_STARTING:I = 0x1

.field static final VERB_STOPPING:I = 0x3


# instance fields
.field private mAvailable:Z

.field private final mCallbackHandler:Landroid/os/Handler;

.field private mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mCompletedListener:Lcom/lody/virtual/server/job/JobCompletedListener;

.field private final mContext:Landroid/content/Context;

.field private mExecutionStartTimeElapsed:J

.field private final mLock:Ljava/lang/Object;

.field private mParams:Landroid/app/job/JobParameters;

.field private mRunningJob:Lcom/lody/virtual/server/job/controllers/JobStatus;

.field private mTimeoutElapsed:J

.field mVerb:I

.field service:Landroid/app/job/IJobService;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/lody/virtual/server/job/JobCompletedListener;Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Landroid/app/job/IJobCallback$Stub;-><init>()V

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/job/JobServiceContext;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    .line 105
    iput-object p1, p0, Lcom/lody/virtual/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    .line 106
    new-instance v0, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;

    invoke-direct {v0, p0, p3}, Lcom/lody/virtual/server/job/JobServiceContext$JobServiceHandler;-><init>(Lcom/lody/virtual/server/job/JobServiceContext;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lody/virtual/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    .line 107
    iput-object p2, p0, Lcom/lody/virtual/server/job/JobServiceContext;->mCompletedListener:Lcom/lody/virtual/server/job/JobCompletedListener;

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lody/virtual/server/job/JobServiceContext;->mAvailable:Z

    .line 109
    return-void
.end method

.method constructor <init>(Lcom/lody/virtual/server/job/JobSchedulerService;Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p1}, Lcom/lody/virtual/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/lody/virtual/server/job/JobServiceContext;-><init>(Landroid/content/Context;Lcom/lody/virtual/server/job/JobCompletedListener;Landroid/os/Looper;)V

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/lody/virtual/server/job/JobServiceContext;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/lody/virtual/server/job/JobServiceContext;->removeOpTimeOut()V

    return-void
.end method

.method static synthetic access$100(Lcom/lody/virtual/server/job/JobServiceContext;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobServiceContext;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lody/virtual/server/job/JobServiceContext;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/lody/virtual/server/job/JobServiceContext;->scheduleOpTimeOut()V

    return-void
.end method

.method static synthetic access$300(Lcom/lody/virtual/server/job/JobServiceContext;)Landroid/app/job/JobParameters;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    return-object v0
.end method

.method static synthetic access$302(Lcom/lody/virtual/server/job/JobServiceContext;Landroid/app/job/JobParameters;)Landroid/app/job/JobParameters;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/lody/virtual/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    return-object p1
.end method

.method static synthetic access$400(Lcom/lody/virtual/server/job/JobServiceContext;)Lcom/lody/virtual/server/job/controllers/JobStatus;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobServiceContext;->mRunningJob:Lcom/lody/virtual/server/job/controllers/JobStatus;

    return-object v0
.end method

.method static synthetic access$402(Lcom/lody/virtual/server/job/JobServiceContext;Lcom/lody/virtual/server/job/controllers/JobStatus;)Lcom/lody/virtual/server/job/controllers/JobStatus;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/lody/virtual/server/job/JobServiceContext;->mRunningJob:Lcom/lody/virtual/server/job/controllers/JobStatus;

    return-object p1
.end method

.method static synthetic access$500(Lcom/lody/virtual/server/job/JobServiceContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lody/virtual/server/job/JobServiceContext;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$702(Lcom/lody/virtual/server/job/JobServiceContext;Z)Z
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/lody/virtual/server/job/JobServiceContext;->mAvailable:Z

    return p1
.end method

.method static synthetic access$800(Lcom/lody/virtual/server/job/JobServiceContext;)Lcom/lody/virtual/server/job/JobCompletedListener;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobServiceContext;->mCompletedListener:Lcom/lody/virtual/server/job/JobCompletedListener;

    return-object v0
.end method

.method private removeOpTimeOut()V
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 472
    return-void
.end method

.method private scheduleOpTimeOut()V
    .locals 4

    .prologue
    .line 460
    invoke-direct {p0}, Lcom/lody/virtual/server/job/JobServiceContext;->removeOpTimeOut()V

    .line 462
    iget v0, p0, Lcom/lody/virtual/server/job/JobServiceContext;->mVerb:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-wide/32 v0, 0xea60

    .line 464
    :goto_0
    iget-object v2, p0, Lcom/lody/virtual/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 465
    iget-object v3, p0, Lcom/lody/virtual/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 466
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lody/virtual/server/job/JobServiceContext;->mTimeoutElapsed:J

    .line 467
    return-void

    .line 462
    :cond_0
    const-wide/16 v0, 0x1f40

    goto :goto_0
.end method

.method private verifyCallingUid()Z
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobServiceContext;->mRunningJob:Lcom/lody/virtual/server/job/controllers/JobStatus;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lody/virtual/os/VBinder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/lody/virtual/server/job/JobServiceContext;->mRunningJob:Lcom/lody/virtual/server/job/controllers/JobStatus;

    invoke-virtual {v1}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getUid()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 236
    :cond_0
    const/4 v0, 0x0

    .line 238
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public acknowledgeStartMessage(IZ)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 200
    invoke-direct {p0}, Lcom/lody/virtual/server/job/JobServiceContext;->verifyCallingUid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v2, p0, Lcom/lody/virtual/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    if-eqz p2, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v2, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public acknowledgeStopMessage(IZ)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 191
    invoke-direct {p0}, Lcom/lody/virtual/server/job/JobServiceContext;->verifyCallingUid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v2, p0, Lcom/lody/virtual/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    if-eqz p2, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v2, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 194
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method cancelExecutingJob()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 161
    return-void
.end method

.method executeRunnableJob(Lcom/lody/virtual/server/job/controllers/JobStatus;)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 118
    iget-object v3, p0, Lcom/lody/virtual/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 119
    :try_start_0
    iget-boolean v0, p0, Lcom/lody/virtual/server/job/JobServiceContext;->mAvailable:Z

    if-nez v0, :cond_0

    .line 121
    monitor-exit v3

    move v0, v1

    .line 143
    :goto_0
    return v0

    .line 124
    :cond_0
    iput-object p1, p0, Lcom/lody/virtual/server/job/JobServiceContext;->mRunningJob:Lcom/lody/virtual/server/job/controllers/JobStatus;

    .line 125
    sget-object v4, Lmirror/android/app/job/JobParameters;->ctor:Lmirror/RefConstructor;

    const/4 v0, 0x4

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, v5, v0

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getJobId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x2

    invoke-virtual {p1}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v6, 0x3

    .line 126
    invoke-virtual {p1}, Lcom/lody/virtual/server/job/controllers/JobStatus;->isConstraintsSatisfied()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v6

    .line 125
    invoke-virtual {v4, v5}, Lmirror/RefConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobParameters;

    iput-object v0, p0, Lcom/lody/virtual/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 127
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lody/virtual/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lcom/lody/virtual/server/job/JobServiceContext;->mVerb:I

    .line 130
    invoke-direct {p0}, Lcom/lody/virtual/server/job/JobServiceContext;->scheduleOpTimeOut()V

    .line 131
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 132
    invoke-static {}, Lcom/lody/virtual/server/am/VActivityManagerService;->get()Lcom/lody/virtual/server/am/VActivityManagerService;

    move-result-object v4

    const/4 v5, 0x5

    new-instance v6, Lcom/lody/virtual/os/VUserHandle;

    .line 134
    invoke-virtual {p1}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getUserId()I

    move-result v7

    invoke-direct {v6, v7}, Lcom/lody/virtual/os/VUserHandle;-><init>(I)V

    .line 132
    invoke-virtual {v4, v0, p0, v5, v6}, Lcom/lody/virtual/server/am/VActivityManagerService;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILcom/lody/virtual/os/VUserHandle;)Z

    move-result v0

    .line 135
    if-nez v0, :cond_2

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lody/virtual/server/job/JobServiceContext;->mRunningJob:Lcom/lody/virtual/server/job/controllers/JobStatus;

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lody/virtual/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 138
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/lody/virtual/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    .line 139
    invoke-direct {p0}, Lcom/lody/virtual/server/job/JobServiceContext;->removeOpTimeOut()V

    .line 140
    monitor-exit v3

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 126
    goto :goto_1

    .line 142
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lody/virtual/server/job/JobServiceContext;->mAvailable:Z

    .line 143
    monitor-exit v3

    move v0, v2

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getExecutionStartTimeElapsed()J
    .locals 2

    .prologue
    .line 173
    iget-wide v0, p0, Lcom/lody/virtual/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    return-wide v0
.end method

.method getRunningJob()Lcom/lody/virtual/server/job/controllers/JobStatus;
    .locals 2

    .prologue
    .line 153
    iget-object v1, p0, Lcom/lody/virtual/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobServiceContext;->mRunningJob:Lcom/lody/virtual/server/job/controllers/JobStatus;

    monitor-exit v1

    return-object v0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getTimeoutElapsed()J
    .locals 2

    .prologue
    .line 177
    iget-wide v0, p0, Lcom/lody/virtual/server/job/JobServiceContext;->mTimeoutElapsed:J

    return-wide v0
.end method

.method isAvailable()Z
    .locals 2

    .prologue
    .line 167
    iget-object v1, p0, Lcom/lody/virtual/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 168
    :try_start_0
    iget-boolean v0, p0, Lcom/lody/virtual/server/job/JobServiceContext;->mAvailable:Z

    monitor-exit v1

    return v0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public jobFinished(IZ)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 182
    invoke-direct {p0}, Lcom/lody/virtual/server/job/JobServiceContext;->verifyCallingUid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v2, p0, Lcom/lody/virtual/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    if-eqz p2, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v2, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 185
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobServiceContext;->mRunningJob:Lcom/lody/virtual/server/job/controllers/JobStatus;

    invoke-virtual {v0}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 221
    :goto_0
    return-void

    .line 219
    :cond_0
    invoke-static {p2}, Landroid/app/job/IJobService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/job/IJobService;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    .line 220
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 227
    return-void
.end method

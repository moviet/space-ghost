.class public Lcom/lody/virtual/server/job/controllers/JobStatus;
.super Ljava/lang/Object;
.source "JobStatus.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field public static final NO_EARLIEST_RUNTIME:J = 0x0L

.field public static final NO_LATEST_RUNTIME:J = 0x7fffffffffffffffL


# instance fields
.field final chargingConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final connectivityConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final deadlineConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private earliestRunTimeElapsedMillis:J

.field final idleConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final job:Landroid/app/job/JobInfo;

.field private latestRunTimeElapsedMillis:J

.field final name:Ljava/lang/String;

.field private final numFailures:I

.field final tag:Ljava/lang/String;

.field final timeDelayConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final uId:I

.field final unmeteredConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/app/job/JobInfo;I)V
    .locals 4

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lody/virtual/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;II)V

    .line 75
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 77
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iput-wide v2, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    .line 79
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    .line 86
    :goto_0
    return-void

    .line 81
    :cond_0
    sget-object v0, Lmirror/android/app/job/JobInfo;->hasEarlyConstraint:Lmirror/RefBoolean;

    invoke-virtual {v0, p1}, Lmirror/RefBoolean;->get(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v0

    add-long/2addr v0, v2

    :goto_1
    iput-wide v0, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    .line 83
    sget-object v0, Lmirror/android/app/job/JobInfo;->hasLateConstraint:Lmirror/RefBoolean;

    invoke-virtual {v0, p1}, Lmirror/RefBoolean;->get(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v0

    add-long/2addr v0, v2

    :goto_2
    iput-wide v0, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    goto :goto_0

    .line 82
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 84
    :cond_2
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_2
.end method

.method private constructor <init>(Landroid/app/job/JobInfo;II)V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->chargingConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->timeDelayConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->deadlineConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->idleConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->unmeteredConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->connectivityConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    iput-object p1, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 65
    iput p2, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->uId:I

    .line 66
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->name:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*job*/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->tag:Ljava/lang/String;

    .line 68
    iput p3, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->numFailures:I

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/app/job/JobInfo;IJJ)V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lody/virtual/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;II)V

    .line 99
    iput-wide p3, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    .line 100
    iput-wide p5, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    .line 101
    return-void
.end method

.method public constructor <init>(Lcom/lody/virtual/server/job/controllers/JobStatus;JJI)V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p1, Lcom/lody/virtual/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p1}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getUid()I

    move-result v1

    invoke-direct {p0, v0, v1, p6}, Lcom/lody/virtual/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;II)V

    .line 108
    iput-wide p2, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    .line 109
    iput-wide p4, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    .line 110
    return-void
.end method

.method private formatRunTime(JJ)Ljava/lang/String;
    .locals 7

    .prologue
    .line 224
    cmp-long v0, p1, p3

    if-nez v0, :cond_0

    .line 225
    const-string v0, "none"

    .line 232
    :goto_0
    return-object v0

    .line 227
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 228
    sub-long v0, p1, v0

    .line 229
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 230
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 232
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v4, -0x3e8

    div-long/2addr v0, v4

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lcom/lody/virtual/server/job/controllers/JobStatus;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public getEarliestRunTime()J
    .locals 2

    .prologue
    .line 177
    iget-wide v0, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    return-wide v0
.end method

.method public getExtras()Landroid/os/PersistableBundle;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method public getJob()Landroid/app/job/JobInfo;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    return-object v0
.end method

.method public getJobId()I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    return v0
.end method

.method public getLatestRunTimeElapsed()J
    .locals 2

    .prologue
    .line 181
    iget-wide v0, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumFailures()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->numFailures:I

    return v0
.end method

.method public getServiceComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getServiceToken()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->uId:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->uId:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->uId:I

    invoke-static {v0}, Lcom/lody/virtual/os/VUserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public hasChargingConstraint()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result v0

    return v0
.end method

.method public hasConnectivityConstraint()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 149
    iget-object v1, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getNetworkType()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeadlineConstraint()Z
    .locals 4

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIdleConstraint()Z
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result v0

    return v0
.end method

.method public hasTimingDelayConstraint()Z
    .locals 4

    .prologue
    .line 161
    iget-wide v0, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUnmeteredConstraint()Z
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getNetworkType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isConstraintsSatisfied()Z
    .locals 1

    .prologue
    .line 197
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->chargingConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/lody/virtual/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->timeDelayConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 199
    :cond_1
    invoke-virtual {p0}, Lcom/lody/virtual/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->connectivityConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 200
    :cond_2
    invoke-virtual {p0}, Lcom/lody/virtual/server/job/controllers/JobStatus;->hasUnmeteredConstraint()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->unmeteredConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 201
    :cond_3
    invoke-virtual {p0}, Lcom/lody/virtual/server/job/controllers/JobStatus;->hasIdleConstraint()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->idleConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isPersisted()Z
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isReady()Z
    .locals 1

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/server/job/controllers/JobStatus;->isConstraintsSatisfied()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/lody/virtual/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->deadlineConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public matches(II)Z
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->uId:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " jId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 243
    invoke-virtual {p0}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 211
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",jId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 212
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 213
    invoke-virtual {p0}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",R=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    const-wide/16 v4, 0x0

    .line 214
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/lody/virtual/server/job/controllers/JobStatus;->formatRunTime(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    const-wide v4, 0x7fffffffffffffffL

    .line 215
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/lody/virtual/server/job/controllers/JobStatus;->formatRunTime(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",N="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 216
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getNetworkType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",C="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",I="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 217
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",F="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->numFailures:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",P="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lody/virtual/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 218
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 219
    invoke-virtual {p0}, Lcom/lody/virtual/server/job/controllers/JobStatus;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "(READY)"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

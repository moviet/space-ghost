.class public Lcom/lody/virtual/server/job/controllers/TimeController;
.super Lcom/lody/virtual/server/job/controllers/StateController;
.source "TimeController.java"


# static fields
.field private static final ACTION_JOB_DELAY_EXPIRED:Ljava/lang/String; = "android.content.jobscheduler.JOB_DELAY_EXPIRED"

.field private static final ACTION_JOB_EXPIRED:Ljava/lang/String; = "android.content.jobscheduler.JOB_DEADLINE_EXPIRED"

.field private static final TAG:Ljava/lang/String; = "JobScheduler.Time"

.field private static mSingleton:Lcom/lody/virtual/server/job/controllers/TimeController;


# instance fields
.field private final mAlarmExpiredReceiver:Landroid/content/BroadcastReceiver;

.field private mAlarmService:Landroid/app/AlarmManager;

.field private final mDeadlineExpiredAlarmIntent:Landroid/app/PendingIntent;

.field private final mNextDelayExpiredAlarmIntent:Landroid/app/PendingIntent;

.field private mNextDelayExpiredElapsedMillis:J

.field private mNextJobExpiredElapsedMillis:J

.field private final mTrackedJobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lody/virtual/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/lody/virtual/server/job/StateChangedListener;Landroid/content/Context;)V
    .locals 6

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    const/4 v3, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/job/controllers/StateController;-><init>(Lcom/lody/virtual/server/job/StateChangedListener;Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lody/virtual/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    .line 235
    new-instance v0, Lcom/lody/virtual/server/job/controllers/TimeController$1;

    invoke-direct {v0, p0}, Lcom/lody/virtual/server/job/controllers/TimeController$1;-><init>(Lcom/lody/virtual/server/job/controllers/TimeController;)V

    iput-object v0, p0, Lcom/lody/virtual/server/job/controllers/TimeController;->mAlarmExpiredReceiver:Landroid/content/BroadcastReceiver;

    .line 54
    iget-object v0, p0, Lcom/lody/virtual/server/job/controllers/TimeController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.content.jobscheduler.JOB_DEADLINE_EXPIRED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-static {v0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/server/job/controllers/TimeController;->mDeadlineExpiredAlarmIntent:Landroid/app/PendingIntent;

    .line 57
    iget-object v0, p0, Lcom/lody/virtual/server/job/controllers/TimeController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.content.jobscheduler.JOB_DELAY_EXPIRED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-static {v0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/server/job/controllers/TimeController;->mNextDelayExpiredAlarmIntent:Landroid/app/PendingIntent;

    .line 60
    iput-wide v4, p0, Lcom/lody/virtual/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    .line 61
    iput-wide v4, p0, Lcom/lody/virtual/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    .line 64
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.content.jobscheduler.JOB_DEADLINE_EXPIRED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 65
    const-string v1, "android.content.jobscheduler.JOB_DELAY_EXPIRED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/lody/virtual/server/job/controllers/TimeController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lody/virtual/server/job/controllers/TimeController;->mAlarmExpiredReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/lody/virtual/server/job/controllers/TimeController;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/lody/virtual/server/job/controllers/TimeController;->checkExpiredDeadlinesAndResetAlarm()V

    return-void
.end method

.method static synthetic access$100(Lcom/lody/virtual/server/job/controllers/TimeController;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/lody/virtual/server/job/controllers/TimeController;->checkExpiredDelaysAndResetAlarm()V

    return-void
.end method

.method private canStopTrackingJob(Lcom/lody/virtual/server/job/controllers/JobStatus;)Z
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p1}, Lcom/lody/virtual/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/lody/virtual/server/job/controllers/JobStatus;->timeDelayConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 113
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    :cond_0
    invoke-virtual {p1}, Lcom/lody/virtual/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/lody/virtual/server/job/controllers/JobStatus;->deadlineConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 115
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized checkExpiredDeadlinesAndResetAlarm()V
    .locals 9

    .prologue
    .line 129
    monitor-enter p0

    const-wide v4, 0x7fffffffffffffffL

    .line 130
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 132
    iget-object v0, p0, Lcom/lody/virtual/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 133
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/job/controllers/JobStatus;

    .line 135
    invoke-virtual {v0}, Lcom/lody/virtual/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    invoke-virtual {v0}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v2

    .line 140
    cmp-long v8, v2, v6

    if-gtz v8, :cond_1

    .line 141
    iget-object v2, v0, Lcom/lody/virtual/server/job/controllers/JobStatus;->deadlineConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 142
    iget-object v2, p0, Lcom/lody/virtual/server/job/controllers/TimeController;->mStateChangedListener:Lcom/lody/virtual/server/job/StateChangedListener;

    invoke-interface {v2, v0}, Lcom/lody/virtual/server/job/StateChangedListener;->onRunJobNow(Lcom/lody/virtual/server/job/controllers/JobStatus;)V

    .line 143
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move-wide v0, v2

    .line 149
    :goto_1
    :try_start_1
    invoke-direct {p0, v0, v1}, Lcom/lody/virtual/server/job/controllers/TimeController;->setDeadlineExpiredAlarm(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    monitor-exit p0

    return-void

    :cond_2
    move-wide v0, v4

    goto :goto_1
.end method

.method private declared-synchronized checkExpiredDelaysAndResetAlarm()V
    .locals 11

    .prologue
    const/4 v1, 0x1

    .line 157
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 158
    const-wide v4, 0x7fffffffffffffffL

    .line 159
    const/4 v2, 0x0

    .line 160
    iget-object v0, p0, Lcom/lody/virtual/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 161
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 162
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/job/controllers/JobStatus;

    .line 163
    invoke-virtual {v0}, Lcom/lody/virtual/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 166
    invoke-virtual {v0}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v6

    .line 167
    cmp-long v3, v6, v8

    if-gtz v3, :cond_2

    .line 168
    iget-object v3, v0, Lcom/lody/virtual/server/job/controllers/JobStatus;->timeDelayConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 169
    invoke-direct {p0, v0}, Lcom/lody/virtual/server/job/controllers/TimeController;->canStopTrackingJob(Lcom/lody/virtual/server/job/controllers/JobStatus;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    .line 172
    :cond_1
    invoke-virtual {v0}, Lcom/lody/virtual/server/job/controllers/JobStatus;->isReady()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    move-wide v2, v4

    :goto_1
    move-wide v4, v2

    move v2, v0

    .line 180
    goto :goto_0

    .line 176
    :cond_2
    cmp-long v0, v4, v6

    if-lez v0, :cond_5

    move v0, v2

    move-wide v2, v6

    .line 177
    goto :goto_1

    .line 181
    :cond_3
    if-eqz v2, :cond_4

    .line 182
    iget-object v0, p0, Lcom/lody/virtual/server/job/controllers/TimeController;->mStateChangedListener:Lcom/lody/virtual/server/job/StateChangedListener;

    invoke-interface {v0}, Lcom/lody/virtual/server/job/StateChangedListener;->onControllerStateChanged()V

    .line 184
    :cond_4
    invoke-direct {p0, v4, v5}, Lcom/lody/virtual/server/job/controllers/TimeController;->setDelayExpiredAlarm(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    monitor-exit p0

    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    move v0, v2

    move-wide v2, v4

    goto :goto_1
.end method

.method private ensureAlarmService()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lody/virtual/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/lody/virtual/server/job/controllers/TimeController;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/lody/virtual/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    .line 122
    :cond_0
    return-void
.end method

.method public static declared-synchronized get(Lcom/lody/virtual/server/job/JobSchedulerService;)Lcom/lody/virtual/server/job/controllers/TimeController;
    .locals 3

    .prologue
    .line 46
    const-class v1, Lcom/lody/virtual/server/job/controllers/TimeController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lody/virtual/server/job/controllers/TimeController;->mSingleton:Lcom/lody/virtual/server/job/controllers/TimeController;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/lody/virtual/server/job/controllers/TimeController;

    invoke-virtual {p0}, Lcom/lody/virtual/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/lody/virtual/server/job/controllers/TimeController;-><init>(Lcom/lody/virtual/server/job/StateChangedListener;Landroid/content/Context;)V

    sput-object v0, Lcom/lody/virtual/server/job/controllers/TimeController;->mSingleton:Lcom/lody/virtual/server/job/controllers/TimeController;

    .line 49
    :cond_0
    sget-object v0, Lcom/lody/virtual/server/job/controllers/TimeController;->mSingleton:Lcom/lody/virtual/server/job/controllers/TimeController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private maybeAdjustAlarmTime(J)J
    .locals 3

    .prologue
    .line 219
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 220
    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 223
    :cond_0
    return-wide p1
.end method

.method private maybeUpdateAlarms(JJ)V
    .locals 3

    .prologue
    .line 188
    iget-wide v0, p0, Lcom/lody/virtual/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/job/controllers/TimeController;->setDelayExpiredAlarm(J)V

    .line 191
    :cond_0
    iget-wide v0, p0, Lcom/lody/virtual/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    cmp-long v0, p3, v0

    if-gez v0, :cond_1

    .line 192
    invoke-direct {p0, p3, p4}, Lcom/lody/virtual/server/job/controllers/TimeController;->setDeadlineExpiredAlarm(J)V

    .line 194
    :cond_1
    return-void
.end method

.method private setDeadlineExpiredAlarm(J)V
    .locals 5

    .prologue
    .line 213
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/job/controllers/TimeController;->maybeAdjustAlarmTime(J)J

    move-result-wide v0

    .line 214
    iput-wide v0, p0, Lcom/lody/virtual/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    .line 215
    iget-object v0, p0, Lcom/lody/virtual/server/job/controllers/TimeController;->mDeadlineExpiredAlarmIntent:Landroid/app/PendingIntent;

    iget-wide v2, p0, Lcom/lody/virtual/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    invoke-direct {p0, v0, v2, v3}, Lcom/lody/virtual/server/job/controllers/TimeController;->updateAlarmWithPendingIntent(Landroid/app/PendingIntent;J)V

    .line 216
    return-void
.end method

.method private setDelayExpiredAlarm(J)V
    .locals 5

    .prologue
    .line 202
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/job/controllers/TimeController;->maybeAdjustAlarmTime(J)J

    move-result-wide v0

    .line 203
    iput-wide v0, p0, Lcom/lody/virtual/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    .line 204
    iget-object v0, p0, Lcom/lody/virtual/server/job/controllers/TimeController;->mNextDelayExpiredAlarmIntent:Landroid/app/PendingIntent;

    iget-wide v2, p0, Lcom/lody/virtual/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    invoke-direct {p0, v0, v2, v3}, Lcom/lody/virtual/server/job/controllers/TimeController;->updateAlarmWithPendingIntent(Landroid/app/PendingIntent;J)V

    .line 205
    return-void
.end method

.method private updateAlarmWithPendingIntent(Landroid/app/PendingIntent;J)V
    .locals 2

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/lody/virtual/server/job/controllers/TimeController;->ensureAlarmService()V

    .line 228
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/lody/virtual/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 233
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method


# virtual methods
.method public dumpControllerState(Ljava/io/PrintWriter;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 250
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Alarms ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Next delay alarm in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/lody/virtual/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    sub-long/2addr v4, v0

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Next deadline alarm in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/lody/virtual/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    sub-long v0, v4, v0

    div-long/2addr v0, v6

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 256
    const-string v0, "Tracking:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/lody/virtual/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/job/controllers/JobStatus;

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 259
    invoke-virtual {v0}, Lcom/lody/virtual/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 260
    invoke-virtual {v0}, Lcom/lody/virtual/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :cond_0
    const-string v1, "N/A"

    goto :goto_1

    .line 260
    :cond_1
    const-string v0, "N/A"

    goto :goto_2

    .line 263
    :cond_2
    return-void
.end method

.method public declared-synchronized maybeStartTrackingJob(Lcom/lody/virtual/server/job/controllers/JobStatus;)V
    .locals 8

    .prologue
    const-wide v2, 0x7fffffffffffffffL

    .line 75
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/lody/virtual/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/lody/virtual/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    :cond_0
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/job/controllers/TimeController;->maybeStopTrackingJob(Lcom/lody/virtual/server/job/controllers/JobStatus;)V

    .line 77
    iget-object v0, p0, Lcom/lody/virtual/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    iget-object v1, p0, Lcom/lody/virtual/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 78
    :cond_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/job/controllers/JobStatus;

    .line 80
    invoke-virtual {v0}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    .line 85
    :cond_2
    invoke-interface {v1, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 87
    invoke-virtual {p1}, Lcom/lody/virtual/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v0

    move-wide v4, v0

    .line 88
    :goto_0
    invoke-virtual {p1}, Lcom/lody/virtual/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v0

    .line 86
    :goto_1
    invoke-direct {p0, v4, v5, v0, v1}, Lcom/lody/virtual/server/job/controllers/TimeController;->maybeUpdateAlarms(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    move-wide v4, v2

    .line 87
    goto :goto_0

    :cond_5
    move-wide v0, v2

    .line 88
    goto :goto_1

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized maybeStopTrackingJob(Lcom/lody/virtual/server/job/controllers/JobStatus;)V
    .locals 1

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/lody/virtual/server/job/controllers/TimeController;->checkExpiredDelaysAndResetAlarm()V

    .line 101
    invoke-direct {p0}, Lcom/lody/virtual/server/job/controllers/TimeController;->checkExpiredDeadlinesAndResetAlarm()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :cond_0
    monitor-exit p0

    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.class public Lcom/lody/virtual/server/job/controllers/IdleController;
.super Lcom/lody/virtual/server/job/controllers/StateController;
.source "IdleController.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/server/job/controllers/IdleController$IdlenessTracker;
    }
.end annotation


# static fields
.field private static final ACTION_TRIGGER_IDLE:Ljava/lang/String; = "com.android.server.task.controllers.IdleController.ACTION_TRIGGER_IDLE"

.field private static final IDLE_WINDOW_SLOP:J = 0x493e0L

.field private static final INACTIVITY_IDLE_THRESHOLD:J = 0x4100a0L

.field private static final TAG:Ljava/lang/String; = "IdleController"

.field private static volatile sController:Lcom/lody/virtual/server/job/controllers/IdleController;

.field private static sCreationLock:Ljava/lang/Object;


# instance fields
.field mIdleTracker:Lcom/lody/virtual/server/job/controllers/IdleController$IdlenessTracker;

.field final mTrackedTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lody/virtual/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/lody/virtual/server/job/controllers/IdleController;->sCreationLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/lody/virtual/server/job/StateChangedListener;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/job/controllers/StateController;-><init>(Lcom/lody/virtual/server/job/StateChangedListener;Landroid/content/Context;)V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    .line 49
    invoke-direct {p0}, Lcom/lody/virtual/server/job/controllers/IdleController;->initIdleStateTracking()V

    .line 50
    return-void
.end method

.method public static get(Lcom/lody/virtual/server/job/JobSchedulerService;)Lcom/lody/virtual/server/job/controllers/IdleController;
    .locals 3

    .prologue
    .line 39
    sget-object v1, Lcom/lody/virtual/server/job/controllers/IdleController;->sCreationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Lcom/lody/virtual/server/job/controllers/IdleController;->sController:Lcom/lody/virtual/server/job/controllers/IdleController;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/lody/virtual/server/job/controllers/IdleController;

    invoke-virtual {p0}, Lcom/lody/virtual/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/lody/virtual/server/job/controllers/IdleController;-><init>(Lcom/lody/virtual/server/job/StateChangedListener;Landroid/content/Context;)V

    sput-object v0, Lcom/lody/virtual/server/job/controllers/IdleController;->sController:Lcom/lody/virtual/server/job/controllers/IdleController;

    .line 43
    :cond_0
    sget-object v0, Lcom/lody/virtual/server/job/controllers/IdleController;->sController:Lcom/lody/virtual/server/job/controllers/IdleController;

    monitor-exit v1

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initIdleStateTracking()V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/lody/virtual/server/job/controllers/IdleController$IdlenessTracker;

    invoke-direct {v0, p0}, Lcom/lody/virtual/server/job/controllers/IdleController$IdlenessTracker;-><init>(Lcom/lody/virtual/server/job/controllers/IdleController;)V

    iput-object v0, p0, Lcom/lody/virtual/server/job/controllers/IdleController;->mIdleTracker:Lcom/lody/virtual/server/job/controllers/IdleController$IdlenessTracker;

    .line 90
    iget-object v0, p0, Lcom/lody/virtual/server/job/controllers/IdleController;->mIdleTracker:Lcom/lody/virtual/server/job/controllers/IdleController$IdlenessTracker;

    invoke-virtual {v0}, Lcom/lody/virtual/server/job/controllers/IdleController$IdlenessTracker;->startTracking()V

    .line 91
    return-void
.end method


# virtual methods
.method public dumpControllerState(Ljava/io/PrintWriter;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 165
    iget-object v2, p0, Lcom/lody/virtual/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    monitor-enter v2

    .line 166
    :try_start_0
    const-string v1, "Idle: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/lody/virtual/server/job/controllers/IdleController;->mIdleTracker:Lcom/lody/virtual/server/job/controllers/IdleController$IdlenessTracker;

    invoke-virtual {v1}, Lcom/lody/virtual/server/job/controllers/IdleController$IdlenessTracker;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "true"

    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/lody/virtual/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    move v1, v0

    .line 169
    :goto_1
    iget-object v0, p0, Lcom/lody/virtual/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/lody/virtual/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/job/controllers/JobStatus;

    .line 171
    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 173
    const-string v0, ".."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 167
    :cond_0
    const-string v1, "false"

    goto :goto_0

    .line 175
    :cond_1
    monitor-exit v2

    .line 176
    return-void

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public maybeStartTrackingJob(Lcom/lody/virtual/server/job/controllers/JobStatus;)V
    .locals 3

    .prologue
    .line 57
    invoke-virtual {p1}, Lcom/lody/virtual/server/job/controllers/JobStatus;->hasIdleConstraint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v1, p0, Lcom/lody/virtual/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p1, Lcom/lody/virtual/server/job/controllers/JobStatus;->idleConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lcom/lody/virtual/server/job/controllers/IdleController;->mIdleTracker:Lcom/lody/virtual/server/job/controllers/IdleController$IdlenessTracker;

    invoke-virtual {v2}, Lcom/lody/virtual/server/job/controllers/IdleController$IdlenessTracker;->isIdle()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 61
    monitor-exit v1

    .line 63
    :cond_0
    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public maybeStopTrackingJob(Lcom/lody/virtual/server/job/controllers/JobStatus;)V
    .locals 2

    .prologue
    .line 67
    iget-object v1, p0, Lcom/lody/virtual/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 69
    monitor-exit v1

    .line 70
    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method reportNewIdleState(Z)V
    .locals 3

    .prologue
    .line 76
    iget-object v1, p0, Lcom/lody/virtual/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/job/controllers/JobStatus;

    .line 78
    iget-object v0, v0, Lcom/lody/virtual/server/job/controllers/JobStatus;->idleConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    iget-object v0, p0, Lcom/lody/virtual/server/job/controllers/IdleController;->mStateChangedListener:Lcom/lody/virtual/server/job/StateChangedListener;

    invoke-interface {v0}, Lcom/lody/virtual/server/job/StateChangedListener;->onControllerStateChanged()V

    .line 82
    return-void
.end method

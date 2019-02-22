.class Lcom/lody/virtual/server/job/controllers/IdleController$IdlenessTracker;
.super Landroid/content/BroadcastReceiver;
.source "IdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/job/controllers/IdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IdlenessTracker"
.end annotation


# instance fields
.field private mAlarm:Landroid/app/AlarmManager;

.field mIdle:Z

.field private mIdleTriggerIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Lcom/lody/virtual/server/job/controllers/IdleController;


# direct methods
.method public constructor <init>(Lcom/lody/virtual/server/job/controllers/IdleController;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 98
    iput-object p1, p0, Lcom/lody/virtual/server/job/controllers/IdleController$IdlenessTracker;->this$0:Lcom/lody/virtual/server/job/controllers/IdleController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 99
    iget-object v0, p1, Lcom/lody/virtual/server/job/controllers/IdleController;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/lody/virtual/server/job/controllers/IdleController$IdlenessTracker;->mAlarm:Landroid/app/AlarmManager;

    .line 101
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.task.controllers.IdleController.ACTION_TRIGGER_IDLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android"

    .line 102
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    .line 103
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 104
    iget-object v1, p1, Lcom/lody/virtual/server/job/controllers/IdleController;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/server/job/controllers/IdleController$IdlenessTracker;->mIdleTriggerIntent:Landroid/app/PendingIntent;

    .line 108
    iput-boolean v2, p0, Lcom/lody/virtual/server/job/controllers/IdleController$IdlenessTracker;->mIdle:Z

    .line 109
    return-void
.end method


# virtual methods
.method public isIdle()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/lody/virtual/server/job/controllers/IdleController$IdlenessTracker;->mIdle:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    .line 134
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 136
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.DREAMING_STOPPED"

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 139
    :cond_0
    iget-boolean v0, p0, Lcom/lody/virtual/server/job/controllers/IdleController$IdlenessTracker;->mIdle:Z

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/lody/virtual/server/job/controllers/IdleController$IdlenessTracker;->mAlarm:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/lody/virtual/server/job/controllers/IdleController$IdlenessTracker;->mIdleTriggerIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lody/virtual/server/job/controllers/IdleController$IdlenessTracker;->mIdle:Z

    .line 142
    iget-object v0, p0, Lcom/lody/virtual/server/job/controllers/IdleController$IdlenessTracker;->this$0:Lcom/lody/virtual/server/job/controllers/IdleController;

    iget-boolean v1, p0, Lcom/lody/virtual/server/job/controllers/IdleController$IdlenessTracker;->mIdle:Z

    invoke-virtual {v0, v1}, Lcom/lody/virtual/server/job/controllers/IdleController;->reportNewIdleState(Z)V

    .line 160
    :cond_1
    :goto_0
    return-void

    .line 144
    :cond_2
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.intent.action.DREAMING_STARTED"

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 149
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 150
    const-wide/32 v2, 0x4100a0

    add-long/2addr v2, v0

    .line 151
    iget-object v0, p0, Lcom/lody/virtual/server/job/controllers/IdleController$IdlenessTracker;->mAlarm:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    const-wide/32 v4, 0x493e0

    iget-object v6, p0, Lcom/lody/virtual/server/job/controllers/IdleController$IdlenessTracker;->mIdleTriggerIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setWindow(IJJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 153
    :cond_4
    const-string v1, "com.android.server.task.controllers.IdleController.ACTION_TRIGGER_IDLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    iget-boolean v0, p0, Lcom/lody/virtual/server/job/controllers/IdleController$IdlenessTracker;->mIdle:Z

    if-nez v0, :cond_1

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lody/virtual/server/job/controllers/IdleController$IdlenessTracker;->mIdle:Z

    .line 157
    iget-object v0, p0, Lcom/lody/virtual/server/job/controllers/IdleController$IdlenessTracker;->this$0:Lcom/lody/virtual/server/job/controllers/IdleController;

    iget-boolean v1, p0, Lcom/lody/virtual/server/job/controllers/IdleController$IdlenessTracker;->mIdle:Z

    invoke-virtual {v0, v1}, Lcom/lody/virtual/server/job/controllers/IdleController;->reportNewIdleState(Z)V

    goto :goto_0
.end method

.method public startTracking()V
    .locals 2

    .prologue
    .line 116
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 119
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    const-string v1, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    const-string v1, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    const-string v1, "com.android.server.task.controllers.IdleController.ACTION_TRIGGER_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/lody/virtual/server/job/controllers/IdleController$IdlenessTracker;->this$0:Lcom/lody/virtual/server/job/controllers/IdleController;

    iget-object v1, v1, Lcom/lody/virtual/server/job/controllers/IdleController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 130
    return-void
.end method

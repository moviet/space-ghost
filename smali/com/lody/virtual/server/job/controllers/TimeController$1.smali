.class Lcom/lody/virtual/server/job/controllers/TimeController$1;
.super Landroid/content/BroadcastReceiver;
.source "TimeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/job/controllers/TimeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/server/job/controllers/TimeController;


# direct methods
.method constructor <init>(Lcom/lody/virtual/server/job/controllers/TimeController;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/lody/virtual/server/job/controllers/TimeController$1;->this$0:Lcom/lody/virtual/server/job/controllers/TimeController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 240
    const-string v0, "android.content.jobscheduler.JOB_DEADLINE_EXPIRED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/lody/virtual/server/job/controllers/TimeController$1;->this$0:Lcom/lody/virtual/server/job/controllers/TimeController;

    # invokes: Lcom/lody/virtual/server/job/controllers/TimeController;->checkExpiredDeadlinesAndResetAlarm()V
    invoke-static {v0}, Lcom/lody/virtual/server/job/controllers/TimeController;->access$000(Lcom/lody/virtual/server/job/controllers/TimeController;)V

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    const-string v0, "android.content.jobscheduler.JOB_DELAY_EXPIRED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/lody/virtual/server/job/controllers/TimeController$1;->this$0:Lcom/lody/virtual/server/job/controllers/TimeController;

    # invokes: Lcom/lody/virtual/server/job/controllers/TimeController;->checkExpiredDelaysAndResetAlarm()V
    invoke-static {v0}, Lcom/lody/virtual/server/job/controllers/TimeController;->access$100(Lcom/lody/virtual/server/job/controllers/TimeController;)V

    goto :goto_0
.end method

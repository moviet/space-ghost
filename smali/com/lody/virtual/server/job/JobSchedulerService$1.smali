.class Lcom/lody/virtual/server/job/JobSchedulerService$1;
.super Landroid/content/BroadcastReceiver;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/server/job/JobSchedulerService;


# direct methods
.method constructor <init>(Lcom/lody/virtual/server/job/JobSchedulerService;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/lody/virtual/server/job/JobSchedulerService$1;->this$0:Lcom/lody/virtual/server/job/JobSchedulerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 119
    const-string v0, "virtual.android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    const-string v0, "android.intent.extra.UID"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 121
    iget-object v1, p0, Lcom/lody/virtual/server/job/JobSchedulerService$1;->this$0:Lcom/lody/virtual/server/job/JobSchedulerService;

    invoke-virtual {v1, v0}, Lcom/lody/virtual/server/job/JobSchedulerService;->cancelJobsForUid(I)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    const-string v0, "virtual.android.intent.action.USER_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const-string v0, "android.intent.extra.user_handle"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 124
    iget-object v1, p0, Lcom/lody/virtual/server/job/JobSchedulerService$1;->this$0:Lcom/lody/virtual/server/job/JobSchedulerService;

    # invokes: Lcom/lody/virtual/server/job/JobSchedulerService;->cancelJobsForUser(I)V
    invoke-static {v1, v0}, Lcom/lody/virtual/server/job/JobSchedulerService;->access$000(Lcom/lody/virtual/server/job/JobSchedulerService;I)V

    goto :goto_0
.end method

.class Lcom/lody/virtual/server/pm/VUserManagerService$2$1;
.super Ljava/lang/Thread;
.source "VUserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/server/pm/VUserManagerService$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lody/virtual/server/pm/VUserManagerService$2;


# direct methods
.method constructor <init>(Lcom/lody/virtual/server/pm/VUserManagerService$2;)V
    .locals 0

    .prologue
    .line 767
    iput-object p1, p0, Lcom/lody/virtual/server/pm/VUserManagerService$2$1;->this$1:Lcom/lody/virtual/server/pm/VUserManagerService$2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 769
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService$2$1;->this$1:Lcom/lody/virtual/server/pm/VUserManagerService$2;

    iget-object v0, v0, Lcom/lody/virtual/server/pm/VUserManagerService$2;->this$0:Lcom/lody/virtual/server/pm/VUserManagerService;

    # getter for: Lcom/lody/virtual/server/pm/VUserManagerService;->mInstallLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/lody/virtual/server/pm/VUserManagerService;->access$000(Lcom/lody/virtual/server/pm/VUserManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 770
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService$2$1;->this$1:Lcom/lody/virtual/server/pm/VUserManagerService$2;

    iget-object v0, v0, Lcom/lody/virtual/server/pm/VUserManagerService$2;->this$0:Lcom/lody/virtual/server/pm/VUserManagerService;

    # getter for: Lcom/lody/virtual/server/pm/VUserManagerService;->mPackagesLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/lody/virtual/server/pm/VUserManagerService;->access$100(Lcom/lody/virtual/server/pm/VUserManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 771
    :try_start_1
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService$2$1;->this$1:Lcom/lody/virtual/server/pm/VUserManagerService$2;

    iget-object v0, v0, Lcom/lody/virtual/server/pm/VUserManagerService$2;->this$0:Lcom/lody/virtual/server/pm/VUserManagerService;

    iget-object v3, p0, Lcom/lody/virtual/server/pm/VUserManagerService$2$1;->this$1:Lcom/lody/virtual/server/pm/VUserManagerService$2;

    iget v3, v3, Lcom/lody/virtual/server/pm/VUserManagerService$2;->val$userHandle:I

    # invokes: Lcom/lody/virtual/server/pm/VUserManagerService;->removeUserStateLocked(I)V
    invoke-static {v0, v3}, Lcom/lody/virtual/server/pm/VUserManagerService;->access$200(Lcom/lody/virtual/server/pm/VUserManagerService;I)V

    .line 772
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 773
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 774
    return-void

    .line 772
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 773
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.class final Lcom/lody/virtual/server/am/StaticBroadcastSystem$StaticBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StaticBroadcastSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/am/StaticBroadcastSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StaticBroadcastReceiver"
.end annotation


# instance fields
.field private appId:I

.field private filter:Landroid/content/IntentFilter;

.field private info:Landroid/content/pm/ActivityInfo;

.field final synthetic this$0:Lcom/lody/virtual/server/am/StaticBroadcastSystem;


# direct methods
.method private constructor <init>(Lcom/lody/virtual/server/am/StaticBroadcastSystem;ILandroid/content/pm/ActivityInfo;Landroid/content/IntentFilter;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/lody/virtual/server/am/StaticBroadcastSystem$StaticBroadcastReceiver;->this$0:Lcom/lody/virtual/server/am/StaticBroadcastSystem;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 106
    iput p2, p0, Lcom/lody/virtual/server/am/StaticBroadcastSystem$StaticBroadcastReceiver;->appId:I

    .line 107
    iput-object p3, p0, Lcom/lody/virtual/server/am/StaticBroadcastSystem$StaticBroadcastReceiver;->info:Landroid/content/pm/ActivityInfo;

    .line 108
    iput-object p4, p0, Lcom/lody/virtual/server/am/StaticBroadcastSystem$StaticBroadcastReceiver;->filter:Landroid/content/IntentFilter;

    .line 109
    return-void
.end method

.method synthetic constructor <init>(Lcom/lody/virtual/server/am/StaticBroadcastSystem;ILandroid/content/pm/ActivityInfo;Landroid/content/IntentFilter;Lcom/lody/virtual/server/am/StaticBroadcastSystem$1;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lody/virtual/server/am/StaticBroadcastSystem$StaticBroadcastReceiver;-><init>(Lcom/lody/virtual/server/am/StaticBroadcastSystem;ILandroid/content/pm/ActivityInfo;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    .line 113
    iget-object v0, p0, Lcom/lody/virtual/server/am/StaticBroadcastSystem$StaticBroadcastReceiver;->this$0:Lcom/lody/virtual/server/am/StaticBroadcastSystem;

    # getter for: Lcom/lody/virtual/server/am/StaticBroadcastSystem;->mApp:Lcom/lody/virtual/server/pm/VAppManagerService;
    invoke-static {v0}, Lcom/lody/virtual/server/am/StaticBroadcastSystem;->access$200(Lcom/lody/virtual/server/am/StaticBroadcastSystem;)Lcom/lody/virtual/server/pm/VAppManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/server/pm/VAppManagerService;->isBooting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/lody/virtual/server/am/StaticBroadcastSystem$StaticBroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/lody/virtual/server/am/StaticBroadcastSystem$StaticBroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v5

    .line 119
    iget-object v0, p0, Lcom/lody/virtual/server/am/StaticBroadcastSystem$StaticBroadcastReceiver;->this$0:Lcom/lody/virtual/server/am/StaticBroadcastSystem;

    # getter for: Lcom/lody/virtual/server/am/StaticBroadcastSystem;->mAMS:Lcom/lody/virtual/server/am/VActivityManagerService;
    invoke-static {v0}, Lcom/lody/virtual/server/am/StaticBroadcastSystem;->access$300(Lcom/lody/virtual/server/am/StaticBroadcastSystem;)Lcom/lody/virtual/server/am/VActivityManagerService;

    move-result-object v6

    monitor-enter v6

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/am/StaticBroadcastSystem$StaticBroadcastReceiver;->this$0:Lcom/lody/virtual/server/am/StaticBroadcastSystem;

    # getter for: Lcom/lody/virtual/server/am/StaticBroadcastSystem;->mAMS:Lcom/lody/virtual/server/am/VActivityManagerService;
    invoke-static {v0}, Lcom/lody/virtual/server/am/StaticBroadcastSystem;->access$300(Lcom/lody/virtual/server/am/StaticBroadcastSystem;)Lcom/lody/virtual/server/am/VActivityManagerService;

    move-result-object v0

    iget v1, p0, Lcom/lody/virtual/server/am/StaticBroadcastSystem$StaticBroadcastReceiver;->appId:I

    iget-object v2, p0, Lcom/lody/virtual/server/am/StaticBroadcastSystem$StaticBroadcastReceiver;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, p2

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lody/virtual/server/am/VActivityManagerService;->handleStaticBroadcast(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/content/BroadcastReceiver;Landroid/content/BroadcastReceiver$PendingResult;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 121
    invoke-virtual {v5}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 123
    :cond_2
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

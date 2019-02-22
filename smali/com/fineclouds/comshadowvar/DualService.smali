.class public Lcom/fineclouds/spaceghostq1/DualService;
.super Landroid/app/Service;
.source "DualService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fineclouds/spaceghostq1/DualService$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private b:Lcom/fineclouds/spaceghostq1/DualService$a;

.field private c:Lcom/fineclouds/spaceghostq1/a/a;

.field private d:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 25
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Lcom/fineclouds/spaceghostq1/DualService;->a:I

    .line 114
    new-instance v0, Lcom/fineclouds/spaceghostq1/DualService$1;

    invoke-direct {v0, p0}, Lcom/fineclouds/spaceghostq1/DualService$1;-><init>(Lcom/fineclouds/spaceghostq1/DualService;)V

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/DualService;->d:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/fineclouds/spaceghostq1/DualService;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/fineclouds/spaceghostq1/DualService;->a:I

    return v0
.end method

.method static synthetic a(Lcom/fineclouds/spaceghostq1/DualService;Lcom/fineclouds/spaceghostq1/DualService$a;)Lcom/fineclouds/spaceghostq1/DualService$a;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/DualService;->b:Lcom/fineclouds/spaceghostq1/DualService$a;

    return-object p1
.end method

.method private b()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 53
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 54
    return-object v0
.end method

.method static synthetic b(Lcom/fineclouds/spaceghostq1/DualService;)Landroid/app/Notification;
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/fineclouds/spaceghostq1/DualService;->b()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/fineclouds/spaceghostq1/DualService;)Lcom/fineclouds/spaceghostq1/DualService$a;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/DualService;->b:Lcom/fineclouds/spaceghostq1/DualService$a;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/DualService;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/fineclouds/spaceghostq1/DualService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 106
    return-void
.end method

.method static synthetic d(Lcom/fineclouds/spaceghostq1/DualService;)Lcom/fineclouds/spaceghostq1/a/a;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/DualService;->c:Lcom/fineclouds/spaceghostq1/a/a;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 109
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 110
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/DualService;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/fineclouds/spaceghostq1/DualService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 112
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 35
    const-string v0, "DualService"

    const-string v1, "setForeground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 38
    iget v0, p0, Lcom/fineclouds/spaceghostq1/DualService;->a:I

    invoke-direct {p0}, Lcom/fineclouds/spaceghostq1/DualService;->b()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fineclouds/spaceghostq1/DualService;->startForeground(ILandroid/app/Notification;)V

    .line 50
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/DualService;->b:Lcom/fineclouds/spaceghostq1/DualService$a;

    if-nez v0, :cond_1

    .line 43
    new-instance v0, Lcom/fineclouds/spaceghostq1/DualService$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fineclouds/spaceghostq1/DualService$a;-><init>(Lcom/fineclouds/spaceghostq1/DualService;Lcom/fineclouds/spaceghostq1/DualService$1;)V

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/DualService;->b:Lcom/fineclouds/spaceghostq1/DualService$a;

    .line 46
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fineclouds/spaceghostq1/common/service/DualAccessibilityService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/DualService;->b:Lcom/fineclouds/spaceghostq1/DualService$a;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/fineclouds/spaceghostq1/DualService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 48
    const-string v1, "DualService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBind="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 86
    const-string v0, "DualService"

    const-string v1, "onCreate: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v0, Lcom/fineclouds/spaceghostq1/a/a;

    invoke-direct {v0, p0}, Lcom/fineclouds/spaceghostq1/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/DualService;->c:Lcom/fineclouds/spaceghostq1/a/a;

    .line 88
    invoke-direct {p0}, Lcom/fineclouds/spaceghostq1/DualService;->d()V

    .line 89
    invoke-virtual {p0}, Lcom/fineclouds/spaceghostq1/DualService;->a()V

    .line 90
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 101
    invoke-direct {p0}, Lcom/fineclouds/spaceghostq1/DualService;->c()V

    .line 102
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .prologue
    .line 94
    const-string v0, "DualService"

    const-string v1, "onStartCommand: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.class public Lcom/lody/virtual/client/stub/DaemonService;
.super Lcom/lody/virtual/helper/component/BaseService;
.source "DaemonService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/lody/virtual/helper/component/BaseService;-><init>()V

    return-void
.end method

.method public static startup(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lody/virtual/client/stub/DaemonService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 17
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 27
    invoke-super {p0}, Lcom/lody/virtual/helper/component/BaseService;->onCreate()V

    .line 29
    :try_start_0
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 30
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 31
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 32
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/lody/virtual/client/stub/DaemonService;->startForeground(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 21
    invoke-super {p0}, Lcom/lody/virtual/helper/component/BaseService;->onDestroy()V

    .line 22
    invoke-static {p0}, Lcom/lody/virtual/client/stub/DaemonService;->startup(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method

.class Lcom/fineclouds/spaceghostq1/DualService$a;
.super Ljava/lang/Object;
.source "DualService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fineclouds/spaceghostq1/DualService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/fineclouds/spaceghostq1/DualService;


# direct methods
.method private constructor <init>(Lcom/fineclouds/spaceghostq1/DualService;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/DualService$a;->a:Lcom/fineclouds/spaceghostq1/DualService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fineclouds/spaceghostq1/DualService;Lcom/fineclouds/spaceghostq1/DualService$1;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/fineclouds/spaceghostq1/DualService$a;-><init>(Lcom/fineclouds/spaceghostq1/DualService;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .prologue
    .line 66
    const-string v0, "DualService"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    check-cast p2, Lcom/fineclouds/spaceghostq1/common/service/DualAccessibilityService$a;

    .line 71
    invoke-virtual {p2}, Lcom/fineclouds/spaceghostq1/common/service/DualAccessibilityService$a;->a()Lcom/fineclouds/spaceghostq1/common/service/DualAccessibilityService;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/DualService$a;->a:Lcom/fineclouds/spaceghostq1/DualService;

    iget-object v2, p0, Lcom/fineclouds/spaceghostq1/DualService$a;->a:Lcom/fineclouds/spaceghostq1/DualService;

    invoke-static {v2}, Lcom/fineclouds/spaceghostq1/DualService;->a(Lcom/fineclouds/spaceghostq1/DualService;)I

    move-result v2

    iget-object v3, p0, Lcom/fineclouds/spaceghostq1/DualService$a;->a:Lcom/fineclouds/spaceghostq1/DualService;

    invoke-static {v3}, Lcom/fineclouds/spaceghostq1/DualService;->b(Lcom/fineclouds/spaceghostq1/DualService;)Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/fineclouds/spaceghostq1/DualService;->startForeground(ILandroid/app/Notification;)V

    .line 73
    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/DualService$a;->a:Lcom/fineclouds/spaceghostq1/DualService;

    invoke-static {v1}, Lcom/fineclouds/spaceghostq1/DualService;->a(Lcom/fineclouds/spaceghostq1/DualService;)I

    move-result v1

    iget-object v2, p0, Lcom/fineclouds/spaceghostq1/DualService$a;->a:Lcom/fineclouds/spaceghostq1/DualService;

    invoke-static {v2}, Lcom/fineclouds/spaceghostq1/DualService;->b(Lcom/fineclouds/spaceghostq1/DualService;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 74
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopForeground(Z)V

    .line 76
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/DualService$a;->a:Lcom/fineclouds/spaceghostq1/DualService;

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/DualService$a;->a:Lcom/fineclouds/spaceghostq1/DualService;

    invoke-static {v1}, Lcom/fineclouds/spaceghostq1/DualService;->c(Lcom/fineclouds/spaceghostq1/DualService;)Lcom/fineclouds/spaceghostq1/DualService$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fineclouds/spaceghostq1/DualService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 77
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/DualService$a;->a:Lcom/fineclouds/spaceghostq1/DualService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fineclouds/spaceghostq1/DualService;->a(Lcom/fineclouds/spaceghostq1/DualService;Lcom/fineclouds/spaceghostq1/DualService$a;)Lcom/fineclouds/spaceghostq1/DualService$a;

    .line 79
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/DualService$a;->a:Lcom/fineclouds/spaceghostq1/DualService;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/DualService;->d(Lcom/fineclouds/spaceghostq1/DualService;)Lcom/fineclouds/spaceghostq1/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fineclouds/spaceghostq1/a/a;->a()V

    .line 80
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 61
    const-string v0, "DualService"

    const-string v1, " onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method

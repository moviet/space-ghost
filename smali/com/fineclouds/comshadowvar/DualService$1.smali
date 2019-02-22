.class Lcom/fineclouds/spaceghostq1/DualService$1;
.super Landroid/content/BroadcastReceiver;
.source "DualService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fineclouds/spaceghostq1/DualService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fineclouds/spaceghostq1/DualService;


# direct methods
.method constructor <init>(Lcom/fineclouds/spaceghostq1/DualService;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/DualService$1;->a:Lcom/fineclouds/spaceghostq1/DualService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 117
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 118
    const-string v1, "DualService"

    const-string v2, "onReceive: ACTION_TIME_TICK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/DualService$1;->a:Lcom/fineclouds/spaceghostq1/DualService;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/DualService;->d(Lcom/fineclouds/spaceghostq1/DualService;)Lcom/fineclouds/spaceghostq1/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fineclouds/spaceghostq1/a/a;->a()V

    .line 122
    :cond_0
    return-void
.end method

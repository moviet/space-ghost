.class public Lcom/fineclouds/spaceghostq1/common/service/DualAccessibilityService;
.super Landroid/app/Service;
.source "DualAccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fineclouds/spaceghostq1/common/service/DualAccessibilityService$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 26
    const-string v0, "DualAccessibility"

    const-string v1, "DualAccessibilityService: onBind()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    new-instance v0, Lcom/fineclouds/spaceghostq1/common/service/DualAccessibilityService$a;

    invoke-direct {v0, p0}, Lcom/fineclouds/spaceghostq1/common/service/DualAccessibilityService$a;-><init>(Lcom/fineclouds/spaceghostq1/common/service/DualAccessibilityService;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 32
    const-string v0, "DualAccessibility"

    const-string v1, "DualAccessibilityService: onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 34
    return-void
.end method

.class public Lcom/lody/virtual/server/am/VActivityManagerService;
.super Lcom/lody/virtual/service/IActivityManager$Stub;
.source "VActivityManagerService.java"


# static fields
.field private static final BROADCAST_NOT_STARTED_PKG:Z

.field private static final TAG:Ljava/lang/String;

.field private static final sService:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/lody/virtual/server/am/VActivityManagerService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private am:Landroid/app/ActivityManager;

.field private final mHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lody/virtual/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainStack:Lcom/lody/virtual/server/am/ActivityStack;

.field private final mPendingIntents:Lcom/lody/virtual/server/am/VPendingIntents;

.field private final mPidsSelfLocked:Lcom/lody/virtual/helper/utils/collection/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lody/virtual/helper/utils/collection/SparseArray",
            "<",
            "Lcom/lody/virtual/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessNames:Lcom/lody/virtual/server/am/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lody/virtual/server/am/ProcessMap",
            "<",
            "Lcom/lody/virtual/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/lody/virtual/server/am/VActivityManagerService;->sService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 78
    const-class v0, Lcom/lody/virtual/server/am/VActivityManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/server/am/VActivityManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/lody/virtual/service/IActivityManager$Stub;-><init>()V

    .line 79
    new-instance v0, Lcom/lody/virtual/helper/utils/collection/SparseArray;

    invoke-direct {v0}, Lcom/lody/virtual/helper/utils/collection/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/utils/collection/SparseArray;

    .line 80
    new-instance v0, Lcom/lody/virtual/server/am/ActivityStack;

    invoke-direct {v0, p0}, Lcom/lody/virtual/server/am/ActivityStack;-><init>(Lcom/lody/virtual/server/am/VActivityManagerService;)V

    iput-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mMainStack:Lcom/lody/virtual/server/am/ActivityStack;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mHistory:Ljava/util/List;

    .line 82
    new-instance v0, Lcom/lody/virtual/server/am/ProcessMap;

    invoke-direct {v0}, Lcom/lody/virtual/server/am/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mProcessNames:Lcom/lody/virtual/server/am/ProcessMap;

    .line 83
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    .line 84
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->am:Landroid/app/ActivityManager;

    .line 85
    new-instance v0, Lcom/lody/virtual/server/am/VPendingIntents;

    invoke-direct {v0}, Lcom/lody/virtual/server/am/VPendingIntents;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPendingIntents:Lcom/lody/virtual/server/am/VPendingIntents;

    return-void
.end method

.method static synthetic access$000(Lcom/lody/virtual/server/am/VActivityManagerService;Lcom/lody/virtual/server/am/ProcessRecord;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/am/VActivityManagerService;->onProcessDead(Lcom/lody/virtual/server/am/ProcessRecord;)V

    return-void
.end method

.method private addRecord(Lcom/lody/virtual/server/am/ServiceRecord;)V
    .locals 2

    .prologue
    .line 247
    iget-object v1, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mHistory:Ljava/util/List;

    monitor-enter v1

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mHistory:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    monitor-exit v1

    .line 250
    return-void

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private attachClient(ILandroid/os/IBinder;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 612
    invoke-static {p2}, Lcom/lody/virtual/client/IVClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lody/virtual/client/IVClient;

    move-result-object v3

    .line 613
    if-nez v3, :cond_0

    .line 614
    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    .line 659
    :goto_0
    return-void

    .line 619
    :cond_0
    :try_start_0
    sget-object v0, Lmirror/android/app/ApplicationThreadNative;->asInterface:Lmirror/RefStaticMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v3}, Lcom/lody/virtual/client/IVClient;->getAppThread()Landroid/os/IBinder;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v0, v2}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 623
    :goto_1
    if-nez v2, :cond_1

    .line 624
    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    .line 620
    :catch_0
    move-exception v0

    move-object v2, v1

    goto :goto_1

    .line 629
    :cond_1
    :try_start_1
    invoke-interface {v3}, Lcom/lody/virtual/client/IVClient;->getToken()Landroid/os/IBinder;

    move-result-object v0

    .line 630
    instance-of v4, v0, Lcom/lody/virtual/server/am/ProcessRecord;

    if-eqz v4, :cond_3

    .line 631
    check-cast v0, Lcom/lody/virtual/server/am/ProcessRecord;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    move-object v1, v0

    .line 636
    :goto_3
    if-nez v1, :cond_2

    .line 637
    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    .line 642
    :cond_2
    :try_start_2
    new-instance v0, Lcom/lody/virtual/server/am/VActivityManagerService$1;

    invoke-direct {v0, p0, p2, v1}, Lcom/lody/virtual/server/am/VActivityManagerService$1;-><init>(Lcom/lody/virtual/server/am/VActivityManagerService;Landroid/os/IBinder;Lcom/lody/virtual/server/am/ProcessRecord;)V

    const/4 v4, 0x0

    invoke-interface {p2, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 652
    :goto_4
    iput-object v3, v1, Lcom/lody/virtual/server/am/ProcessRecord;->client:Lcom/lody/virtual/client/IVClient;

    .line 653
    iput-object v2, v1, Lcom/lody/virtual/server/am/ProcessRecord;->appThread:Landroid/os/IInterface;

    .line 654
    iput p1, v1, Lcom/lody/virtual/server/am/ProcessRecord;->pid:I

    .line 655
    iget-object v2, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mProcessNames:Lcom/lody/virtual/server/am/ProcessMap;

    monitor-enter v2

    .line 656
    :try_start_3
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mProcessNames:Lcom/lody/virtual/server/am/ProcessMap;

    iget-object v3, v1, Lcom/lody/virtual/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v4, v1, Lcom/lody/virtual/server/am/ProcessRecord;->vuid:I

    invoke-virtual {v0, v3, v4, v1}, Lcom/lody/virtual/server/am/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 657
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/utils/collection/SparseArray;

    iget v3, v1, Lcom/lody/virtual/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v3, v1}, Lcom/lody/virtual/helper/utils/collection/SparseArray;->put(ILjava/lang/Object;)V

    .line 658
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 649
    :catch_1
    move-exception v0

    .line 650
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    .line 633
    :catch_2
    move-exception v0

    goto :goto_3

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method private connectService(Landroid/app/IServiceConnection;Landroid/content/ComponentName;Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;)V
    .locals 2

    .prologue
    .line 534
    :try_start_0
    new-instance v0, Lcom/lody/virtual/server/secondary/BinderDelegateService;

    iget-object v1, p3, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;->binder:Landroid/os/IBinder;

    invoke-direct {v0, p2, v1}, Lcom/lody/virtual/server/secondary/BinderDelegateService;-><init>(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 535
    invoke-interface {p1, p2, v0}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    :goto_0
    return-void

    .line 536
    :catch_0
    move-exception v0

    .line 537
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private findRecordLocked(ILandroid/content/pm/ServiceInfo;)Lcom/lody/virtual/server/am/ServiceRecord;
    .locals 4

    .prologue
    .line 253
    iget-object v1, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mHistory:Ljava/util/List;

    monitor-enter v1

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/am/ServiceRecord;

    .line 255
    iget-object v3, v0, Lcom/lody/virtual/server/am/ServiceRecord;->process:Lcom/lody/virtual/server/am/ProcessRecord;

    iget v3, v3, Lcom/lody/virtual/server/am/ProcessRecord;->userId:I

    if-ne v3, p1, :cond_0

    iget-object v3, v0, Lcom/lody/virtual/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-static {p2, v3}, Lcom/lody/virtual/helper/utils/ComponentUtils;->isSameComponent(Landroid/content/pm/ComponentInfo;Landroid/content/pm/ComponentInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 256
    monitor-exit v1

    .line 259
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private findRecordLocked(Landroid/app/IServiceConnection;)Lcom/lody/virtual/server/am/ServiceRecord;
    .locals 4

    .prologue
    .line 264
    iget-object v1, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mHistory:Ljava/util/List;

    monitor-enter v1

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/am/ServiceRecord;

    .line 266
    invoke-virtual {v0, p1}, Lcom/lody/virtual/server/am/ServiceRecord;->containConnection(Landroid/app/IServiceConnection;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 267
    monitor-exit v1

    .line 270
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static get()Lcom/lody/virtual/server/am/VActivityManagerService;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/lody/virtual/server/am/VActivityManagerService;->sService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/am/VActivityManagerService;

    return-object v0
.end method

.method private getProcessName(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 602
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->am:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 603
    iget v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, p1, :cond_0

    .line 604
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 607
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleBroadcastIntent(Landroid/os/IInterface;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;ZLandroid/content/BroadcastReceiver$PendingResult;)V
    .locals 4

    .prologue
    .line 1009
    invoke-static {p3}, Lcom/lody/virtual/helper/utils/ComponentUtils;->toComponentName(Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1010
    invoke-virtual {p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1035
    :cond_0
    :goto_0
    return-void

    .line 1013
    :cond_1
    invoke-virtual {p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1014
    invoke-virtual {p4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1017
    :cond_2
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_3

    .line 1018
    sget-object v0, Lmirror/android/app/IApplicationThreadKitkat;->scheduleReceiver:Lmirror/RefMethod;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p4, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lmirror/android/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Lmirror/RefStaticObject;

    .line 1019
    invoke-virtual {v3}, Lmirror/RefStaticObject;->get()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p6}, Landroid/content/BroadcastReceiver$PendingResult;->getResultCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-virtual {p6}, Landroid/content/BroadcastReceiver$PendingResult;->getResultData()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const/4 v3, 0x0

    .line 1020
    invoke-virtual {p6, v3}, Landroid/content/BroadcastReceiver$PendingResult;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1018
    invoke-virtual {v0, p1, v1}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1030
    :catch_0
    move-exception v0

    .line 1031
    if-eqz p6, :cond_0

    .line 1032
    invoke-virtual {p6}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    goto :goto_0

    .line 1021
    :cond_3
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_4

    .line 1022
    sget-object v0, Lmirror/android/app/IApplicationThreadJBMR1;->scheduleReceiver:Lmirror/RefMethod;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p4, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lmirror/android/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Lmirror/RefStaticObject;

    .line 1023
    invoke-virtual {v3}, Lmirror/RefStaticObject;->get()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p6}, Landroid/content/BroadcastReceiver$PendingResult;->getResultCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-virtual {p6}, Landroid/content/BroadcastReceiver$PendingResult;->getResultData()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const/4 v3, 0x0

    .line 1024
    invoke-virtual {p6, v3}, Landroid/content/BroadcastReceiver$PendingResult;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1022
    invoke-virtual {v0, p1, v1}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1026
    :cond_4
    sget-object v0, Lmirror/android/app/IApplicationThreadICSMR1;->scheduleReceiver:Lmirror/RefMethod;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p4, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lmirror/android/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Lmirror/RefStaticObject;

    .line 1027
    invoke-virtual {v3}, Lmirror/RefStaticObject;->get()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p6}, Landroid/content/BroadcastReceiver$PendingResult;->getResultCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-virtual {p6}, Landroid/content/BroadcastReceiver$PendingResult;->getResultData()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const/4 v3, 0x0

    .line 1028
    invoke-virtual {p6, v3}, Landroid/content/BroadcastReceiver$PendingResult;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1026
    invoke-virtual {v0, p1, v1}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private onProcessDead(Lcom/lody/virtual/server/am/ProcessRecord;)V
    .locals 5

    .prologue
    .line 662
    sget-object v0, Lcom/lody/virtual/server/am/VActivityManagerService;->TAG:Ljava/lang/String;

    const-string v1, "Process %s died."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/lody/virtual/server/am/ProcessRecord;->processName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 663
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mProcessNames:Lcom/lody/virtual/server/am/ProcessMap;

    iget-object v1, p1, Lcom/lody/virtual/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/lody/virtual/server/am/ProcessRecord;->vuid:I

    invoke-virtual {v0, v1, v2}, Lcom/lody/virtual/server/am/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 664
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/utils/collection/SparseArray;

    iget v1, p1, Lcom/lody/virtual/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Lcom/lody/virtual/helper/utils/collection/SparseArray;->remove(I)V

    .line 665
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/am/VActivityManagerService;->processDead(Lcom/lody/virtual/server/am/ProcessRecord;)V

    .line 666
    iget-object v0, p1, Lcom/lody/virtual/server/am/ProcessRecord;->lock:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 667
    return-void
.end method

.method private parseVPid(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lody/virtual/client/core/VirtualCore;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":p"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 590
    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 592
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 597
    :goto_0
    return v0

    .line 593
    :catch_0
    move-exception v0

    .line 594
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 597
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private performStartProcessLocked(IILandroid/content/pm/ApplicationInfo;Ljava/lang/String;)Lcom/lody/virtual/server/am/ProcessRecord;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 723
    new-instance v1, Lcom/lody/virtual/server/am/ProcessRecord;

    invoke-direct {v1, p3, p4, p1, p2}, Lcom/lody/virtual/server/am/ProcessRecord;-><init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;II)V

    .line 724
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 725
    const-string v3, "_VA_|_binder_"

    invoke-static {v2, v3, v1}, Lcom/lody/virtual/helper/compat/BundleCompat;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 726
    const-string v3, "_VA_|_vuid_"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 727
    const-string v3, "_VA_|_process_"

    invoke-virtual {v2, v3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    const-string v3, "_VA_|_pkg_"

    iget-object v4, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    invoke-static {p2}, Lcom/lody/virtual/client/stub/StubManifest;->getStubAuthority(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "_VA_|_init_process_"

    invoke-static {v3, v4, v0, v2}, Lcom/lody/virtual/client/service/ProviderCall;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 730
    if-nez v2, :cond_0

    .line 736
    :goto_0
    return-object v0

    .line 733
    :cond_0
    const-string v0, "_VA_|_pid_"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 734
    const-string v3, "_VA_|_client_"

    invoke-static {v2, v3}, Lcom/lody/virtual/helper/compat/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 735
    invoke-direct {p0, v0, v2}, Lcom/lody/virtual/server/am/VActivityManagerService;->attachClient(ILandroid/os/IBinder;)V

    move-object v0, v1

    .line 736
    goto :goto_0
.end method

.method private queryFreeVPidForProcess()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 740
    move v1, v2

    :goto_0
    sget v0, Lcom/lody/virtual/client/stub/StubManifest;->STUB_COUNT:I

    if-ge v1, v0, :cond_1

    .line 741
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/utils/collection/SparseArray;

    invoke-virtual {v0}, Lcom/lody/virtual/helper/utils/collection/SparseArray;->size()I

    move-result v0

    .line 743
    :goto_1
    add-int/lit8 v3, v0, -0x1

    if-lez v0, :cond_3

    .line 744
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/utils/collection/SparseArray;

    invoke-virtual {v0, v3}, Lcom/lody/virtual/helper/utils/collection/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/am/ProcessRecord;

    .line 745
    iget v0, v0, Lcom/lody/virtual/server/am/ProcessRecord;->vpid:I

    if-ne v0, v1, :cond_0

    .line 746
    const/4 v0, 0x1

    .line 750
    :goto_2
    if-eqz v0, :cond_2

    .line 740
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move v0, v3

    .line 749
    goto :goto_1

    .line 755
    :cond_1
    const/4 v1, -0x1

    :cond_2
    return v1

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method private static resolveServiceInfo(Landroid/content/Intent;I)Landroid/content/pm/ServiceInfo;
    .locals 1

    .prologue
    .line 96
    if-eqz p0, :cond_0

    .line 97
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/lody/virtual/client/core/VirtualCore;->resolveServiceInfo(Landroid/content/Intent;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    .line 102
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startServiceCommon(Landroid/content/Intent;ZI)Landroid/content/ComponentName;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 283
    invoke-static {p1, p3}, Lcom/lody/virtual/server/am/VActivityManagerService;->resolveServiceInfo(Landroid/content/Intent;I)Landroid/content/pm/ServiceInfo;

    move-result-object v6

    .line 284
    if-nez v6, :cond_0

    .line 322
    :goto_0
    return-object v0

    .line 287
    :cond_0
    invoke-static {v6}, Lcom/lody/virtual/helper/utils/ComponentUtils;->getProcessName(Landroid/content/pm/ComponentInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, p3, v3}, Lcom/lody/virtual/server/am/VActivityManagerService;->startProcessIfNeedLocked(Ljava/lang/String;ILjava/lang/String;)Lcom/lody/virtual/server/am/ProcessRecord;

    move-result-object v3

    .line 290
    sget-object v1, Lcom/lody/virtual/server/am/VActivityManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startServiceCommon serviceInfo.packageName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    if-nez v3, :cond_1

    .line 293
    sget-object v1, Lcom/lody/virtual/server/am/VActivityManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to start new Process for : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v6}, Lcom/lody/virtual/helper/utils/ComponentUtils;->toComponentName(Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 296
    :cond_1
    iget-object v0, v3, Lcom/lody/virtual/server/am/ProcessRecord;->appThread:Landroid/os/IInterface;

    .line 297
    invoke-direct {p0, p3, v6}, Lcom/lody/virtual/server/am/VActivityManagerService;->findRecordLocked(ILandroid/content/pm/ServiceInfo;)Lcom/lody/virtual/server/am/ServiceRecord;

    move-result-object v1

    .line 298
    if-nez v1, :cond_2

    .line 299
    new-instance v1, Lcom/lody/virtual/server/am/ServiceRecord;

    invoke-direct {v1}, Lcom/lody/virtual/server/am/ServiceRecord;-><init>()V

    .line 300
    iput v2, v1, Lcom/lody/virtual/server/am/ServiceRecord;->startId:I

    .line 301
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/lody/virtual/server/am/ServiceRecord;->activeSince:J

    .line 302
    iput-object v3, v1, Lcom/lody/virtual/server/am/ServiceRecord;->process:Lcom/lody/virtual/server/am/ProcessRecord;

    .line 303
    iput-object v6, v1, Lcom/lody/virtual/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 305
    :try_start_0
    iget-object v3, v1, Lcom/lody/virtual/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4}, Lcom/lody/virtual/helper/compat/IApplicationThreadCompat;->scheduleCreateService(Landroid/os/IInterface;Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :goto_1
    invoke-direct {p0, v1}, Lcom/lody/virtual/server/am/VActivityManagerService;->addRecord(Lcom/lody/virtual/server/am/ServiceRecord;)V

    .line 311
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/lody/virtual/server/am/ServiceRecord;->lastActivityTime:J

    .line 312
    if-eqz p2, :cond_4

    .line 313
    iget v3, v1, Lcom/lody/virtual/server/am/ServiceRecord;->startId:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/lody/virtual/server/am/ServiceRecord;->startId:I

    .line 314
    iget-object v3, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_3

    iget-object v3, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v4, 0x5

    if-ge v3, v4, :cond_3

    const/4 v2, 0x1

    .line 317
    :cond_3
    :try_start_1
    iget v3, v1, Lcom/lody/virtual/server/am/ServiceRecord;->startId:I

    const/4 v4, 0x0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/lody/virtual/helper/compat/IApplicationThreadCompat;->scheduleServiceArgs(Landroid/os/IInterface;Landroid/os/IBinder;ZIILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 322
    :cond_4
    :goto_2
    invoke-static {v6}, Lcom/lody/virtual/helper/utils/ComponentUtils;->toComponentName(Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;

    move-result-object v0

    goto/16 :goto_0

    .line 306
    :catch_0
    move-exception v3

    .line 307
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 318
    :catch_1
    move-exception v0

    .line 319
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method public static systemReady(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/lody/virtual/server/am/VActivityManagerService;

    invoke-direct {v0}, Lcom/lody/virtual/server/am/VActivityManagerService;-><init>()V

    invoke-virtual {v0, p0}, Lcom/lody/virtual/server/am/VActivityManagerService;->onCreate(Landroid/content/Context;)V

    .line 93
    return-void
.end method


# virtual methods
.method public acquireProviderClient(ILandroid/content/pm/ProviderInfo;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 204
    iget-object v1, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/utils/collection/SparseArray;

    monitor-enter v1

    .line 205
    :try_start_0
    invoke-static {}, Lcom/lody/virtual/os/VBinder;->getCallingPid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lody/virtual/server/am/VActivityManagerService;->findProcessLocked(I)Lcom/lody/virtual/server/am/ProcessRecord;

    move-result-object v0

    .line 206
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    if-nez v0, :cond_0

    .line 208
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Who are you?"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 210
    :cond_0
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 212
    monitor-enter p0

    .line 213
    :try_start_2
    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, v1}, Lcom/lody/virtual/server/am/VActivityManagerService;->startProcessIfNeedLocked(Ljava/lang/String;ILjava/lang/String;)Lcom/lody/virtual/server/am/ProcessRecord;

    move-result-object v0

    .line 214
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 215
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/lody/virtual/server/am/ProcessRecord;->client:Lcom/lody/virtual/client/IVClient;

    invoke-interface {v1}, Lcom/lody/virtual/client/IVClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    :try_start_3
    iget-object v0, v0, Lcom/lody/virtual/server/am/ProcessRecord;->client:Lcom/lody/virtual/client/IVClient;

    invoke-interface {v0, p2}, Lcom/lody/virtual/client/IVClient;->acquireProviderClient(Landroid/content/pm/ProviderInfo;)Landroid/os/IBinder;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    .line 222
    :goto_0
    return-object v0

    .line 214
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 222
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addPendingIntent(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPendingIntents:Lcom/lody/virtual/server/am/VPendingIntents;

    invoke-virtual {v0, p1, p2}, Lcom/lody/virtual/server/am/VPendingIntents;->addPendingIntent(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public appDoneExecuting()V
    .locals 3

    .prologue
    .line 883
    iget-object v1, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/utils/collection/SparseArray;

    monitor-enter v1

    .line 884
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/utils/collection/SparseArray;

    invoke-static {}, Lcom/lody/virtual/os/VBinder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lody/virtual/helper/utils/collection/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/am/ProcessRecord;

    .line 885
    if-eqz v0, :cond_0

    .line 886
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/lody/virtual/server/am/ProcessRecord;->doneExecuting:Z

    .line 887
    iget-object v0, v0, Lcom/lody/virtual/server/am/ProcessRecord;->lock:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 889
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 890
    sget-object v0, Lcom/lody/virtual/server/am/VActivityManagerService;->TAG:Ljava/lang/String;

    const-string v1, "appDoneExecuting"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 891
    return-void

    .line 889
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bindService(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;II)I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 384
    monitor-enter p0

    .line 385
    :try_start_0
    invoke-static {p3, p7}, Lcom/lody/virtual/server/am/VActivityManagerService;->resolveServiceInfo(Landroid/content/Intent;I)Landroid/content/pm/ServiceInfo;

    move-result-object v4

    .line 386
    if-nez v4, :cond_0

    .line 387
    monitor-exit p0

    .line 421
    :goto_0
    return v0

    .line 389
    :cond_0
    invoke-direct {p0, p7, v4}, Lcom/lody/virtual/server/am/VActivityManagerService;->findRecordLocked(ILandroid/content/pm/ServiceInfo;)Lcom/lody/virtual/server/am/ServiceRecord;

    move-result-object v2

    .line 390
    if-nez v2, :cond_2

    move v3, v1

    .line 391
    :goto_1
    if-eqz v3, :cond_1

    .line 392
    and-int/lit8 v3, p6, 0x1

    if-eqz v3, :cond_1

    .line 393
    const/4 v2, 0x0

    invoke-direct {p0, p3, v2, p7}, Lcom/lody/virtual/server/am/VActivityManagerService;->startServiceCommon(Landroid/content/Intent;ZI)Landroid/content/ComponentName;

    .line 394
    invoke-direct {p0, p7, v4}, Lcom/lody/virtual/server/am/VActivityManagerService;->findRecordLocked(ILandroid/content/pm/ServiceInfo;)Lcom/lody/virtual/server/am/ServiceRecord;

    move-result-object v2

    .line 397
    :cond_1
    if-nez v2, :cond_3

    .line 398
    monitor-exit p0

    goto :goto_0

    .line 422
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v3, v0

    .line 390
    goto :goto_1

    .line 400
    :cond_3
    :try_start_1
    invoke-virtual {v2, p3}, Lcom/lody/virtual/server/am/ServiceRecord;->peekBinding(Landroid/content/Intent;)Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;

    move-result-object v3

    .line 402
    if-eqz v3, :cond_5

    iget-object v0, v3, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;->binder:Landroid/os/IBinder;

    if-eqz v0, :cond_5

    iget-object v0, v3, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;->binder:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 403
    iget-boolean v0, v3, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;->doRebind:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    .line 405
    :try_start_2
    iget-object v0, v2, Lcom/lody/virtual/server/am/ServiceRecord;->process:Lcom/lody/virtual/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/lody/virtual/server/am/ProcessRecord;->appThread:Landroid/os/IInterface;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v0, v2, p3, v4, v5}, Lcom/lody/virtual/helper/compat/IApplicationThreadCompat;->scheduleBindService(Landroid/os/IInterface;Landroid/os/IBinder;Landroid/content/Intent;ZI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 410
    :cond_4
    :goto_2
    :try_start_3
    new-instance v0, Landroid/content/ComponentName;

    iget-object v4, v2, Lcom/lody/virtual/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Lcom/lody/virtual/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-direct {p0, p5, v0, v3}, Lcom/lody/virtual/server/am/VActivityManagerService;->connectService(Landroid/app/IServiceConnection;Landroid/content/ComponentName;Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;)V

    .line 419
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/lody/virtual/server/am/ServiceRecord;->lastActivityTime:J

    .line 420
    invoke-virtual {v2, p3, p5}, Lcom/lody/virtual/server/am/ServiceRecord;->addToBoundIntent(Landroid/content/Intent;Landroid/app/IServiceConnection;)V

    .line 421
    monitor-exit p0

    move v0, v1

    goto :goto_0

    .line 406
    :catch_0
    move-exception v0

    .line 407
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 414
    :cond_5
    :try_start_4
    iget-object v0, v2, Lcom/lody/virtual/server/am/ServiceRecord;->process:Lcom/lody/virtual/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/lody/virtual/server/am/ProcessRecord;->appThread:Landroid/os/IInterface;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, p3, v3, v4}, Lcom/lody/virtual/helper/compat/IApplicationThreadCompat;->scheduleBindService(Landroid/os/IInterface;Landroid/os/IBinder;Landroid/content/Intent;ZI)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 415
    :catch_1
    move-exception v0

    .line 416
    :try_start_5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3
.end method

.method public bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILcom/lody/virtual/os/VUserHandle;)Z
    .locals 3

    .prologue
    .line 945
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 946
    const-string v1, "_VA_|_user_id_"

    invoke-virtual {p4}, Lcom/lody/virtual/os/VUserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 947
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method

.method public clearProcess(Landroid/content/pm/ActivityInfo;I)V
    .locals 3

    .prologue
    .line 706
    invoke-static {}, Lcom/lody/virtual/server/pm/VAppManagerService;->get()Lcom/lody/virtual/server/pm/VAppManagerService;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lody/virtual/server/pm/VAppManagerService;->findAppInfo(Ljava/lang/String;)Lcom/lody/virtual/helper/proto/AppSetting;

    move-result-object v0

    .line 707
    iget v0, v0, Lcom/lody/virtual/helper/proto/AppSetting;->appId:I

    invoke-static {p2, v0}, Lcom/lody/virtual/os/VUserHandle;->getUid(II)I

    move-result v0

    .line 708
    iget-object v1, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mProcessNames:Lcom/lody/virtual/server/am/ProcessMap;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/lody/virtual/server/am/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 709
    return-void
.end method

.method public dump()V
    .locals 0

    .prologue
    .line 853
    return-void
.end method

.method public findProcessLocked(I)Lcom/lody/virtual/server/am/ProcessRecord;
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/utils/collection/SparseArray;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/helper/utils/collection/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/am/ProcessRecord;

    return-object v0
.end method

.method public findProcessLocked(Ljava/lang/String;I)Lcom/lody/virtual/server/am/ProcessRecord;
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mProcessNames:Lcom/lody/virtual/server/am/ProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/lody/virtual/server/am/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/am/ProcessRecord;

    return-object v0
.end method

.method public getActivityClassForToken(ILandroid/os/IBinder;)Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mMainStack:Lcom/lody/virtual/server/am/ActivityStack;

    invoke-virtual {v0, p1, p2}, Lcom/lody/virtual/server/am/ActivityStack;->getActivityClassForToken(ILandroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getAppProcessName(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 772
    iget-object v1, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/utils/collection/SparseArray;

    monitor-enter v1

    .line 773
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/utils/collection/SparseArray;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/helper/utils/collection/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/am/ProcessRecord;

    .line 774
    if-eqz v0, :cond_0

    .line 775
    iget-object v0, v0, Lcom/lody/virtual/server/am/ProcessRecord;->processName:Ljava/lang/String;

    monitor-exit v1

    .line 778
    :goto_0
    return-object v0

    .line 777
    :cond_0
    monitor-exit v1

    .line 778
    const/4 v0, 0x0

    goto :goto_0

    .line 777
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCallingActivity(ILandroid/os/IBinder;)Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mMainStack:Lcom/lody/virtual/server/am/ActivityStack;

    invoke-virtual {v0, p1, p2}, Lcom/lody/virtual/server/am/ActivityStack;->getCallingActivity(ILandroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getCallingPackage(ILandroid/os/IBinder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mMainStack:Lcom/lody/virtual/server/am/ActivityStack;

    invoke-virtual {v0, p1, p2}, Lcom/lody/virtual/server/am/ActivityStack;->getCallingPackage(ILandroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFreeStubCount()I
    .locals 2

    .prologue
    .line 671
    sget v0, Lcom/lody/virtual/client/stub/StubManifest;->STUB_COUNT:I

    iget-object v1, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/utils/collection/SparseArray;

    invoke-virtual {v1}, Lcom/lody/virtual/helper/utils/collection/SparseArray;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getInitialPackage(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 867
    iget-object v1, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/utils/collection/SparseArray;

    monitor-enter v1

    .line 868
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/utils/collection/SparseArray;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/helper/utils/collection/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/am/ProcessRecord;

    .line 869
    if-eqz v0, :cond_0

    .line 870
    iget-object v0, v0, Lcom/lody/virtual/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    monitor-exit v1

    .line 872
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 873
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPackageForToken(ILandroid/os/IBinder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mMainStack:Lcom/lody/virtual/server/am/ActivityStack;

    invoke-virtual {v0, p1, p2}, Lcom/lody/virtual/server/am/ActivityStack;->getPackageForToken(ILandroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPendingIntent(Landroid/os/IBinder;)Lcom/lody/virtual/helper/proto/PendingIntentData;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPendingIntents:Lcom/lody/virtual/server/am/VPendingIntents;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/server/am/VPendingIntents;->getPendingIntent(Landroid/os/IBinder;)Lcom/lody/virtual/helper/proto/PendingIntentData;

    move-result-object v0

    return-object v0
.end method

.method public getProcessPkgList(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 783
    iget-object v2, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/utils/collection/SparseArray;

    monitor-enter v2

    .line 784
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/utils/collection/SparseArray;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/helper/utils/collection/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/am/ProcessRecord;

    .line 785
    if-eqz v0, :cond_0

    .line 786
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/lody/virtual/server/am/ProcessRecord;->pkgList:Ljava/util/Set;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v2

    move-object v0, v1

    .line 789
    :goto_0
    return-object v0

    .line 788
    :cond_0
    monitor-exit v2

    .line 789
    const/4 v0, 0x0

    goto :goto_0

    .line 788
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getServices(III)Lcom/lody/virtual/helper/proto/VParceledListSlice;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lcom/lody/virtual/helper/proto/VParceledListSlice",
            "<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 543
    iget-object v1, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mHistory:Ljava/util/List;

    monitor-enter v1

    .line 544
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 545
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/am/ServiceRecord;

    .line 546
    iget-object v4, v0, Lcom/lody/virtual/server/am/ServiceRecord;->process:Lcom/lody/virtual/server/am/ProcessRecord;

    iget v4, v4, Lcom/lody/virtual/server/am/ProcessRecord;->userId:I

    if-ne v4, p3, :cond_0

    .line 549
    new-instance v4, Landroid/app/ActivityManager$RunningServiceInfo;

    invoke-direct {v4}, Landroid/app/ActivityManager$RunningServiceInfo;-><init>()V

    .line 550
    iget-object v5, v0, Lcom/lody/virtual/server/am/ServiceRecord;->process:Lcom/lody/virtual/server/am/ProcessRecord;

    iget v5, v5, Lcom/lody/virtual/server/am/ProcessRecord;->vuid:I

    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    .line 551
    iget-object v5, v0, Lcom/lody/virtual/server/am/ServiceRecord;->process:Lcom/lody/virtual/server/am/ProcessRecord;

    iget v5, v5, Lcom/lody/virtual/server/am/ProcessRecord;->pid:I

    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    .line 552
    iget-object v5, v0, Lcom/lody/virtual/server/am/ServiceRecord;->process:Lcom/lody/virtual/server/am/ProcessRecord;

    iget v5, v5, Lcom/lody/virtual/server/am/ProcessRecord;->pid:I

    invoke-virtual {p0, v5}, Lcom/lody/virtual/server/am/VActivityManagerService;->findProcessLocked(I)Lcom/lody/virtual/server/am/ProcessRecord;

    move-result-object v5

    .line 553
    if-eqz v5, :cond_1

    .line 554
    iget-object v6, v5, Lcom/lody/virtual/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v6, v4, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    .line 555
    iget-object v5, v5, Lcom/lody/virtual/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    .line 557
    :cond_1
    iget-wide v6, v0, Lcom/lody/virtual/server/am/ServiceRecord;->activeSince:J

    iput-wide v6, v4, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    .line 558
    iget-wide v6, v0, Lcom/lody/virtual/server/am/ServiceRecord;->lastActivityTime:J

    iput-wide v6, v4, Landroid/app/ActivityManager$RunningServiceInfo;->lastActivityTime:J

    .line 559
    invoke-virtual {v0}, Lcom/lody/virtual/server/am/ServiceRecord;->getClientCount()I

    move-result v5

    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->clientCount:I

    .line 560
    iget-object v5, v0, Lcom/lody/virtual/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-static {v5}, Lcom/lody/virtual/helper/utils/ComponentUtils;->toComponentName(Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;

    move-result-object v5

    iput-object v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 561
    iget v0, v0, Lcom/lody/virtual/server/am/ServiceRecord;->startId:I

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v4, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    goto :goto_0

    .line 564
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 561
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 563
    :cond_3
    :try_start_1
    new-instance v0, Lcom/lody/virtual/helper/proto/VParceledListSlice;

    invoke-direct {v0, v2}, Lcom/lody/virtual/helper/proto/VParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public getSystemPid()I
    .locals 1

    .prologue
    .line 148
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->myUid()I

    move-result v0

    return v0
.end method

.method public getTaskInfo(I)Lcom/lody/virtual/helper/proto/AppTaskInfo;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mMainStack:Lcom/lody/virtual/server/am/ActivityStack;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/server/am/ActivityStack;->getTaskInfo(I)Lcom/lody/virtual/helper/proto/AppTaskInfo;

    move-result-object v0

    return-object v0
.end method

.method public getUidByPid(I)I
    .locals 2

    .prologue
    .line 713
    iget-object v1, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/utils/collection/SparseArray;

    monitor-enter v1

    .line 714
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/am/VActivityManagerService;->findProcessLocked(I)Lcom/lody/virtual/server/am/ProcessRecord;

    move-result-object v0

    .line 715
    if-eqz v0, :cond_0

    .line 716
    iget v0, v0, Lcom/lody/virtual/server/am/ProcessRecord;->vuid:I

    monitor-exit v1

    .line 719
    :goto_0
    return v0

    .line 718
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 719
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    goto :goto_0

    .line 718
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public handleApplicationCrash()V
    .locals 0

    .prologue
    .line 879
    return-void
.end method

.method public handleStaticBroadcast(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/content/BroadcastReceiver;Landroid/content/BroadcastReceiver$PendingResult;)Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 960
    const-string v0, "_VA_|_user_id_"

    invoke-virtual {p3, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 961
    const-string v0, "_VA_|_component_"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 962
    const-string v1, "_VA_|_intent_"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 963
    if-eqz v0, :cond_0

    .line 964
    invoke-static {p2}, Lcom/lody/virtual/helper/utils/ComponentUtils;->toComponentName(Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 988
    :goto_0
    return v0

    .line 968
    :cond_0
    if-nez v1, :cond_5

    move-object v3, p3

    .line 971
    :goto_1
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lody/virtual/client/env/SpecialComponentList;->restoreAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 972
    if-eqz v0, :cond_1

    .line 973
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 975
    :cond_1
    if-ltz v4, :cond_3

    .line 976
    invoke-static {v4, p1}, Lcom/lody/virtual/os/VUserHandle;->getUid(II)I

    move-result v1

    move-object v0, p0

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 977
    invoke-virtual/range {v0 .. v5}, Lcom/lody/virtual/server/am/VActivityManagerService;->handleStaticBroadcastAsUser(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/content/BroadcastReceiver;Landroid/content/BroadcastReceiver$PendingResult;)V

    :cond_2
    move v0, v6

    .line 988
    goto :goto_0

    .line 978
    :cond_3
    if-ne v4, v5, :cond_4

    .line 979
    invoke-static {}, Lcom/lody/virtual/os/VUserManager;->get()Lcom/lody/virtual/os/VUserManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lody/virtual/os/VUserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 980
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/os/VUserInfo;

    .line 981
    iget v0, v0, Lcom/lody/virtual/os/VUserInfo;->id:I

    invoke-static {v0, p1}, Lcom/lody/virtual/os/VUserHandle;->getUid(II)I

    move-result v1

    move-object v0, p0

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 982
    invoke-virtual/range {v0 .. v5}, Lcom/lody/virtual/server/am/VActivityManagerService;->handleStaticBroadcastAsUser(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/content/BroadcastReceiver;Landroid/content/BroadcastReceiver$PendingResult;)V

    goto :goto_2

    .line 985
    :cond_4
    sget-object v0, Lcom/lody/virtual/server/am/VActivityManagerService;->TAG:Ljava/lang/String;

    const-string v1, "Unknown User for receive the broadcast : #%d."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 986
    goto :goto_0

    :cond_5
    move-object v3, v1

    goto :goto_1
.end method

.method public handleStaticBroadcastAsUser(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/content/BroadcastReceiver;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 7

    .prologue
    .line 994
    monitor-enter p0

    .line 995
    :try_start_0
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/lody/virtual/server/am/VActivityManagerService;->findProcessLocked(Ljava/lang/String;I)Lcom/lody/virtual/server/am/ProcessRecord;

    move-result-object v0

    .line 999
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/lody/virtual/server/am/ProcessRecord;->appThread:Landroid/os/IInterface;

    if-eqz v1, :cond_0

    .line 1000
    iget-object v1, v0, Lcom/lody/virtual/server/am/ProcessRecord;->appThread:Landroid/os/IInterface;

    invoke-static {p1}, Lcom/lody/virtual/os/VUserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {p4}, Landroid/content/BroadcastReceiver;->isOrderedBroadcast()Z

    move-result v5

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/lody/virtual/server/am/VActivityManagerService;->handleBroadcastIntent(Landroid/os/IInterface;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;ZLandroid/content/BroadcastReceiver$PendingResult;)V

    .line 1003
    :cond_0
    monitor-exit p0

    .line 1004
    return-void

    .line 1003
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initProcess(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 676
    monitor-enter p0

    .line 677
    :try_start_0
    invoke-virtual {p0, p2, p3, p1}, Lcom/lody/virtual/server/am/VActivityManagerService;->startProcessIfNeedLocked(Ljava/lang/String;ILjava/lang/String;)Lcom/lody/virtual/server/am/ProcessRecord;

    move-result-object v0

    .line 678
    if-eqz v0, :cond_0

    iget v0, v0, Lcom/lody/virtual/server/am/ProcessRecord;->vpid:I

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 679
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isAppPid(I)Z
    .locals 2

    .prologue
    .line 765
    iget-object v1, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/utils/collection/SparseArray;

    monitor-enter v1

    .line 766
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/am/VActivityManagerService;->findProcessLocked(I)Lcom/lody/virtual/server/am/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 767
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isAppProcess(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 760
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/am/VActivityManagerService;->parseVPid(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAppRunning(Ljava/lang/String;I)Z
    .locals 5

    .prologue
    .line 826
    const/4 v1, 0x0

    .line 827
    iget-object v3, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/utils/collection/SparseArray;

    monitor-enter v3

    .line 828
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/utils/collection/SparseArray;

    invoke-virtual {v0}, Lcom/lody/virtual/helper/utils/collection/SparseArray;->size()I

    move-result v0

    .line 829
    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_1

    .line 830
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/utils/collection/SparseArray;

    invoke-virtual {v0, v2}, Lcom/lody/virtual/helper/utils/collection/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/am/ProcessRecord;

    .line 831
    iget v4, v0, Lcom/lody/virtual/server/am/ProcessRecord;->userId:I

    if-ne v4, p2, :cond_0

    iget-object v0, v0, Lcom/lody/virtual/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 832
    const/4 v0, 0x1

    .line 836
    :goto_1
    monitor-exit v3

    return v0

    :cond_0
    move v0, v2

    .line 835
    goto :goto_0

    .line 837
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public isVAServiceToken(Landroid/os/IBinder;)Z
    .locals 1

    .prologue
    .line 478
    instance-of v0, p1, Lcom/lody/virtual/server/am/ServiceRecord;

    return v0
.end method

.method public killAllApps()V
    .locals 3

    .prologue
    .line 794
    iget-object v2, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/utils/collection/SparseArray;

    monitor-enter v2

    .line 795
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/utils/collection/SparseArray;

    invoke-virtual {v0}, Lcom/lody/virtual/helper/utils/collection/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/utils/collection/SparseArray;

    invoke-virtual {v0, v1}, Lcom/lody/virtual/helper/utils/collection/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/am/ProcessRecord;

    .line 797
    iget v0, v0, Lcom/lody/virtual/server/am/ProcessRecord;->pid:I

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 795
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 799
    :cond_0
    monitor-exit v2

    .line 800
    return-void

    .line 799
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public killAppByPkg(Ljava/lang/String;I)V
    .locals 7

    .prologue
    .line 804
    iget-object v4, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mProcessNames:Lcom/lody/virtual/server/am/ProcessMap;

    monitor-enter v4

    .line 805
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mProcessNames:Lcom/lody/virtual/server/am/ProcessMap;

    invoke-virtual {v0}, Lcom/lody/virtual/server/am/ProcessMap;->getMap()Lcom/lody/virtual/helper/utils/collection/ArrayMap;

    move-result-object v5

    .line 806
    invoke-virtual {v5}, Lcom/lody/virtual/helper/utils/collection/ArrayMap;->size()I

    move-result v0

    .line 807
    :goto_0
    add-int/lit8 v3, v0, -0x1

    if-lez v0, :cond_3

    .line 808
    invoke-virtual {v5, v3}, Lcom/lody/virtual/helper/utils/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/helper/utils/collection/SparseArray;

    .line 809
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-virtual {v0}, Lcom/lody/virtual/helper/utils/collection/SparseArray;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 810
    invoke-virtual {v0, v2}, Lcom/lody/virtual/helper/utils/collection/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/am/ProcessRecord;

    .line 811
    const/4 v6, -0x1

    if-eq p2, v6, :cond_1

    .line 812
    invoke-static {p2}, Lcom/lody/virtual/os/VUserHandle;->getUserId(I)I

    move-result v6

    if-eq v6, p2, :cond_1

    .line 809
    :cond_0
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 816
    :cond_1
    iget-object v6, v1, Lcom/lody/virtual/server/am/ProcessRecord;->pkgList:Ljava/util/Set;

    invoke-interface {v6, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 817
    iget v1, v1, Lcom/lody/virtual/server/am/ProcessRecord;->pid:I

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    goto :goto_2

    .line 821
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v0, v3

    .line 820
    goto :goto_0

    .line 821
    :cond_3
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 822
    return-void
.end method

.method public killApplicationProcess(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 842
    iget-object v1, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mProcessNames:Lcom/lody/virtual/server/am/ProcessMap;

    monitor-enter v1

    .line 843
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mProcessNames:Lcom/lody/virtual/server/am/ProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/lody/virtual/server/am/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/am/ProcessRecord;

    .line 844
    if-eqz v0, :cond_0

    .line 845
    iget v0, v0, Lcom/lody/virtual/server/am/ProcessRecord;->pid:I

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 847
    :cond_0
    monitor-exit v1

    .line 848
    return-void

    .line 847
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onActivityCreated(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;III)V
    .locals 10

    .prologue
    .line 153
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 154
    invoke-virtual {p0, v0}, Lcom/lody/virtual/server/am/VActivityManagerService;->findProcessLocked(I)Lcom/lody/virtual/server/am/ProcessRecord;

    move-result-object v1

    .line 155
    sget-object v0, Lcom/lody/virtual/server/am/VActivityManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityCreated targetApp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " intent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    if-eqz v1, :cond_0

    .line 157
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mMainStack:Lcom/lody/virtual/server/am/ActivityStack;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/lody/virtual/server/am/ActivityStack;->onActivityCreated(Lcom/lody/virtual/server/am/ProcessRecord;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;III)V

    .line 159
    :cond_0
    return-void
.end method

.method public onActivityDestroyed(ILandroid/os/IBinder;)Z
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mMainStack:Lcom/lody/virtual/server/am/ActivityStack;

    invoke-virtual {v0, p1, p2}, Lcom/lody/virtual/server/am/ActivityStack;->onActivityDestroyed(ILandroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public onActivityResumed(ILandroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mMainStack:Lcom/lody/virtual/server/am/ActivityStack;

    invoke-virtual {v0, p1, p2}, Lcom/lody/virtual/server/am/ActivityStack;->onActivityResumed(ILandroid/os/IBinder;)V

    .line 164
    return-void
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 106
    invoke-static {p1}, Lcom/lody/virtual/server/am/AttributeCache;->init(Landroid/content/Context;)V

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 108
    const/4 v1, 0x0

    .line 110
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x89

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 116
    :goto_0
    if-nez v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to found PackageInfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 119
    :cond_0
    sget-object v0, Lcom/lody/virtual/server/am/VActivityManagerService;->sService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 239
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/lody/virtual/service/IActivityManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 242
    throw v0
.end method

.method public peekService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/os/IBinder;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 499
    monitor-enter p0

    .line 500
    :try_start_0
    invoke-static {p1, p3}, Lcom/lody/virtual/server/am/VActivityManagerService;->resolveServiceInfo(Landroid/content/Intent;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 501
    if-nez v1, :cond_0

    .line 502
    monitor-exit p0

    .line 511
    :goto_0
    return-object v0

    .line 504
    :cond_0
    invoke-direct {p0, p3, v1}, Lcom/lody/virtual/server/am/VActivityManagerService;->findRecordLocked(ILandroid/content/pm/ServiceInfo;)Lcom/lody/virtual/server/am/ServiceRecord;

    move-result-object v1

    .line 505
    if-eqz v1, :cond_1

    .line 506
    invoke-virtual {v1, p1}, Lcom/lody/virtual/server/am/ServiceRecord;->peekBinding(Landroid/content/Intent;)Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;

    move-result-object v1

    .line 507
    if-eqz v1, :cond_1

    .line 508
    iget-object v0, v1, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;->binder:Landroid/os/IBinder;

    monitor-exit p0

    goto :goto_0

    .line 512
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 511
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public processDead(Lcom/lody/virtual/server/am/ProcessRecord;)V
    .locals 4

    .prologue
    .line 188
    iget-object v1, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mHistory:Ljava/util/List;

    monitor-enter v1

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 190
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/am/ServiceRecord;

    .line 192
    iget-object v0, v0, Lcom/lody/virtual/server/am/ServiceRecord;->process:Lcom/lody/virtual/server/am/ProcessRecord;

    iget v0, v0, Lcom/lody/virtual/server/am/ProcessRecord;->pid:I

    iget v3, p1, Lcom/lody/virtual/server/am/ProcessRecord;->pid:I

    if-ne v0, v3, :cond_0

    .line 193
    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 196
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mMainStack:Lcom/lody/virtual/server/am/ActivityStack;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/server/am/ActivityStack;->processDied(Lcom/lody/virtual/server/am/ProcessRecord;)V

    .line 197
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    return-void
.end method

.method public processRestarted(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 569
    invoke-static {}, Lcom/lody/virtual/server/am/VActivityManagerService;->getCallingPid()I

    move-result v0

    .line 570
    invoke-static {}, Lcom/lody/virtual/server/pm/VAppManagerService;->get()Lcom/lody/virtual/server/pm/VAppManagerService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lody/virtual/server/pm/VAppManagerService;->getAppId(Ljava/lang/String;)I

    move-result v1

    .line 571
    invoke-static {p3, v1}, Lcom/lody/virtual/os/VUserHandle;->getUid(II)I

    move-result v1

    .line 572
    monitor-enter p0

    .line 573
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/lody/virtual/server/am/VActivityManagerService;->findProcessLocked(I)Lcom/lody/virtual/server/am/ProcessRecord;

    move-result-object v2

    .line 574
    if-nez v2, :cond_0

    .line 575
    invoke-static {}, Lcom/lody/virtual/server/pm/VPackageManagerService;->get()Lcom/lody/virtual/server/pm/VPackageManagerService;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, p3}, Lcom/lody/virtual/server/pm/VPackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 576
    if-eqz v2, :cond_0

    .line 577
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 578
    invoke-direct {p0, v0}, Lcom/lody/virtual/server/am/VActivityManagerService;->getProcessName(I)Ljava/lang/String;

    move-result-object v0

    .line 579
    invoke-direct {p0, v0}, Lcom/lody/virtual/server/am/VActivityManagerService;->parseVPid(Ljava/lang/String;)I

    move-result v0

    .line 580
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 581
    invoke-direct {p0, v1, v0, v2, p2}, Lcom/lody/virtual/server/am/VActivityManagerService;->performStartProcessLocked(IILandroid/content/pm/ApplicationInfo;Ljava/lang/String;)Lcom/lody/virtual/server/am/ProcessRecord;

    .line 585
    :cond_0
    monitor-exit p0

    .line 586
    return-void

    .line 585
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;I)V
    .locals 4

    .prologue
    .line 517
    monitor-enter p0

    .line 518
    :try_start_0
    check-cast p1, Lcom/lody/virtual/server/am/ServiceRecord;

    .line 519
    if-eqz p1, :cond_0

    .line 520
    invoke-virtual {p1, p2}, Lcom/lody/virtual/server/am/ServiceRecord;->peekBinding(Landroid/content/Intent;)Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;

    move-result-object v1

    .line 521
    if-eqz v1, :cond_0

    .line 522
    iput-object p3, v1, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;->binder:Landroid/os/IBinder;

    .line 523
    iget-object v0, v1, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;->connections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IServiceConnection;

    .line 524
    iget-object v3, p1, Lcom/lody/virtual/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-static {v3}, Lcom/lody/virtual/helper/utils/ComponentUtils;->toComponentName(Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;

    move-result-object v3

    .line 525
    invoke-direct {p0, v0, v3, v1}, Lcom/lody/virtual/server/am/VActivityManagerService;->connectService(Landroid/app/IServiceConnection;Landroid/content/ComponentName;Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;)V

    goto :goto_0

    .line 529
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 530
    return-void
.end method

.method public registerProcessObserver(Lcom/lody/virtual/service/interfaces/IProcessObserver;)V
    .locals 0

    .prologue
    .line 858
    return-void
.end method

.method public removePendingIntent(Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPendingIntents:Lcom/lody/virtual/server/am/VPendingIntents;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/server/am/VPendingIntents;->removePendingIntent(Landroid/os/IBinder;)V

    .line 144
    return-void
.end method

.method public sendBroadcastAsUser(Landroid/content/Intent;Lcom/lody/virtual/os/VUserHandle;)V
    .locals 3

    .prologue
    .line 939
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 940
    const-string v1, "_VA_|_user_id_"

    invoke-virtual {p2}, Lcom/lody/virtual/os/VUserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 941
    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 942
    return-void
.end method

.method public sendBroadcastAsUser(Landroid/content/Intent;Lcom/lody/virtual/os/VUserHandle;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 951
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 952
    const-string v1, "_VA_|_user_id_"

    invoke-virtual {p2}, Lcom/lody/virtual/os/VUserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 954
    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 955
    return-void
.end method

.method public sendOrderedBroadcastAsUser(Landroid/content/Intent;Lcom/lody/virtual/os/VUserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    .prologue
    .line 931
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 932
    const-string v1, "_VA_|_user_id_"

    invoke-virtual {p2}, Lcom/lody/virtual/os/VUserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 934
    const/4 v2, 0x0

    move-object v1, p1

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 936
    return-void
.end method

.method public serviceDoneExecuting(Landroid/os/IBinder;IIII)V
    .locals 2

    .prologue
    .line 484
    monitor-enter p0

    .line 485
    :try_start_0
    check-cast p1, Lcom/lody/virtual/server/am/ServiceRecord;

    .line 486
    if-nez p1, :cond_0

    .line 487
    monitor-exit p0

    .line 495
    :goto_0
    return-void

    .line 489
    :cond_0
    const/4 v0, 0x2

    if-ne v0, p2, :cond_1

    .line 490
    iget-object v1, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mHistory:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    :try_start_1
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mHistory:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 492
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 494
    :cond_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 492
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;ZI)V
    .locals 0

    .prologue
    .line 379
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Landroid/os/Bundle;Ljava/lang/String;II)I
    .locals 8

    .prologue
    .line 126
    monitor-enter p0

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mMainStack:Lcom/lody/virtual/server/am/ActivityStack;

    move v1, p7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/lody/virtual/server/am/ActivityStack;->startActivityLocked(ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v0

    monitor-exit p0

    return v0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startProcessIfNeedLocked(Ljava/lang/String;ILjava/lang/String;)Lcom/lody/virtual/server/am/ProcessRecord;
    .locals 4

    .prologue
    .line 683
    invoke-static {}, Lcom/lody/virtual/server/am/VActivityManagerService;->get()Lcom/lody/virtual/server/am/VActivityManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/server/am/VActivityManagerService;->getFreeStubCount()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 685
    invoke-virtual {p0}, Lcom/lody/virtual/server/am/VActivityManagerService;->killAllApps()V

    .line 687
    :cond_0
    invoke-static {}, Lcom/lody/virtual/server/pm/VPackageManagerService;->get()Lcom/lody/virtual/server/pm/VPackageManagerService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1, p2}, Lcom/lody/virtual/server/pm/VPackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 688
    invoke-static {}, Lcom/lody/virtual/server/pm/VAppManagerService;->get()Lcom/lody/virtual/server/pm/VAppManagerService;

    move-result-object v0

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/lody/virtual/server/pm/VAppManagerService;->findAppInfo(Ljava/lang/String;)Lcom/lody/virtual/helper/proto/AppSetting;

    move-result-object v0

    .line 689
    iget v0, v0, Lcom/lody/virtual/helper/proto/AppSetting;->appId:I

    invoke-static {p2, v0}, Lcom/lody/virtual/os/VUserHandle;->getUid(II)I

    move-result v2

    .line 690
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mProcessNames:Lcom/lody/virtual/server/am/ProcessMap;

    invoke-virtual {v0, p1, v2}, Lcom/lody/virtual/server/am/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/am/ProcessRecord;

    .line 691
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/lody/virtual/server/am/ProcessRecord;->client:Lcom/lody/virtual/client/IVClient;

    invoke-interface {v3}, Lcom/lody/virtual/client/IVClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 702
    :cond_1
    :goto_0
    return-object v0

    .line 694
    :cond_2
    invoke-direct {p0}, Lcom/lody/virtual/server/am/VActivityManagerService;->queryFreeVPidForProcess()I

    move-result v0

    .line 695
    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    .line 696
    const/4 v0, 0x0

    goto :goto_0

    .line 698
    :cond_3
    invoke-direct {p0, v2, v0, v1, p1}, Lcom/lody/virtual/server/am/VActivityManagerService;->performStartProcessLocked(IILandroid/content/pm/ApplicationInfo;Ljava/lang/String;)Lcom/lody/virtual/server/am/ProcessRecord;

    move-result-object v0

    .line 699
    if-eqz v0, :cond_1

    .line 700
    iget-object v2, v0, Lcom/lody/virtual/server/am/ProcessRecord;->pkgList:Ljava/util/Set;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public startService(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 276
    monitor-enter p0

    .line 277
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p2, v0, p4}, Lcom/lody/virtual/server/am/VActivityManagerService;->startServiceCommon(Landroid/content/Intent;ZI)Landroid/content/ComponentName;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopService(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;I)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 327
    monitor-enter p0

    .line 328
    :try_start_0
    invoke-static {p2, p4}, Lcom/lody/virtual/server/am/VActivityManagerService;->resolveServiceInfo(Landroid/content/Intent;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 329
    if-nez v1, :cond_0

    .line 330
    monitor-exit p0

    .line 348
    :goto_0
    return v0

    .line 332
    :cond_0
    invoke-direct {p0, p4, v1}, Lcom/lody/virtual/server/am/VActivityManagerService;->findRecordLocked(ILandroid/content/pm/ServiceInfo;)Lcom/lody/virtual/server/am/ServiceRecord;

    move-result-object v1

    .line 333
    if-nez v1, :cond_1

    .line 334
    monitor-exit p0

    goto :goto_0

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 336
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/lody/virtual/server/am/ServiceRecord;->getClientCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-gtz v0, :cond_2

    .line 338
    :try_start_2
    iget-object v0, v1, Lcom/lody/virtual/server/am/ServiceRecord;->process:Lcom/lody/virtual/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/lody/virtual/server/am/ProcessRecord;->appThread:Landroid/os/IInterface;

    invoke-static {v0, v1}, Lcom/lody/virtual/helper/compat/IApplicationThreadCompat;->scheduleStopService(Landroid/os/IInterface;Landroid/os/IBinder;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 342
    :goto_1
    :try_start_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_2

    .line 343
    iget-object v2, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mHistory:Ljava/util/List;

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 344
    :try_start_4
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mHistory:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 345
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 348
    :cond_2
    const/4 v0, 0x1

    :try_start_5
    monitor-exit p0

    goto :goto_0

    .line 339
    :catch_0
    move-exception v0

    .line 340
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 345
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;II)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 354
    monitor-enter p0

    .line 355
    :try_start_0
    check-cast p2, Lcom/lody/virtual/server/am/ServiceRecord;

    .line 357
    if-eqz p2, :cond_2

    iget v1, p2, Lcom/lody/virtual/server/am/ServiceRecord;->startId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, p3, :cond_0

    const/4 v1, -0x1

    if-ne p3, v1, :cond_2

    .line 359
    :cond_0
    :try_start_1
    sget-object v0, Lcom/lody/virtual/server/am/VActivityManagerService;->TAG:Ljava/lang/String;

    const-string v1, "stopService scheduleStopService"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    iget-object v0, p2, Lcom/lody/virtual/server/am/ServiceRecord;->process:Lcom/lody/virtual/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/lody/virtual/server/am/ProcessRecord;->appThread:Landroid/os/IInterface;

    invoke-static {v0, p2}, Lcom/lody/virtual/helper/compat/IApplicationThreadCompat;->scheduleStopService(Landroid/os/IInterface;Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 364
    :goto_0
    :try_start_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 365
    iget-object v1, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mHistory:Ljava/util/List;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 366
    :try_start_3
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mHistory:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 367
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 369
    :cond_1
    const/4 v0, 0x1

    :try_start_4
    monitor-exit p0

    .line 371
    :goto_1
    return v0

    .line 361
    :catch_0
    move-exception v0

    .line 362
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 372
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 367
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    .line 371
    :cond_2
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method public stopUser(ILandroid/app/IStopUserCallback$Stub;)I
    .locals 4

    .prologue
    .line 911
    iget-object v2, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/utils/collection/SparseArray;

    monitor-enter v2

    .line 912
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/utils/collection/SparseArray;

    invoke-virtual {v0}, Lcom/lody/virtual/helper/utils/collection/SparseArray;->size()I

    move-result v0

    .line 913
    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    .line 914
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/utils/collection/SparseArray;

    invoke-virtual {v0, v1}, Lcom/lody/virtual/helper/utils/collection/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/am/ProcessRecord;

    .line 915
    iget v3, v0, Lcom/lody/virtual/server/am/ProcessRecord;->vuid:I

    if-ne v3, p1, :cond_0

    .line 916
    iget v0, v0, Lcom/lody/virtual/server/am/ProcessRecord;->pid:I

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_0
    move v0, v1

    .line 918
    goto :goto_0

    .line 919
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 921
    :try_start_1
    invoke-virtual {p2, p1}, Landroid/app/IStopUserCallback$Stub;->userStopped(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 925
    :goto_1
    const/4 v0, 0x0

    return v0

    .line 919
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 922
    :catch_0
    move-exception v0

    .line 923
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;ZI)V
    .locals 1

    .prologue
    .line 464
    monitor-enter p0

    .line 465
    :try_start_0
    check-cast p1, Lcom/lody/virtual/server/am/ServiceRecord;

    .line 466
    if-eqz p1, :cond_0

    .line 467
    invoke-virtual {p1, p2}, Lcom/lody/virtual/server/am/ServiceRecord;->peekBinding(Landroid/content/Intent;)Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;

    move-result-object v0

    .line 468
    if-eqz v0, :cond_0

    .line 469
    iput-boolean p3, v0, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;->doRebind:Z

    .line 472
    :cond_0
    monitor-exit p0

    .line 473
    return-void

    .line 472
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unbindService(Landroid/app/IServiceConnection;I)Z
    .locals 4

    .prologue
    .line 428
    monitor-enter p0

    .line 429
    :try_start_0
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/am/VActivityManagerService;->findRecordLocked(Landroid/app/IServiceConnection;)Lcom/lody/virtual/server/am/ServiceRecord;

    move-result-object v1

    .line 430
    if-nez v1, :cond_0

    .line 431
    const/4 v0, 0x0

    monitor-exit p0

    .line 458
    :goto_0
    return v0

    .line 434
    :cond_0
    iget-object v0, v1, Lcom/lody/virtual/server/am/ServiceRecord;->bindings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;

    .line 435
    invoke-virtual {v0, p1}, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;->containConnection(Landroid/app/IServiceConnection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 438
    invoke-virtual {v0, p1}, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;->removeConnection(Landroid/app/IServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    :try_start_1
    iget-object v3, v1, Lcom/lody/virtual/server/am/ServiceRecord;->process:Lcom/lody/virtual/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/lody/virtual/server/am/ProcessRecord;->appThread:Landroid/os/IInterface;

    iget-object v0, v0, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;->intent:Landroid/content/Intent;

    invoke-static {v3, v1, v0}, Lcom/lody/virtual/helper/compat/IApplicationThreadCompat;->scheduleUnbindService(Landroid/os/IInterface;Landroid/os/IBinder;Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 441
    :catch_0
    move-exception v0

    .line 442
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 459
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 446
    :cond_2
    :try_start_3
    iget v0, v1, Lcom/lody/virtual/server/am/ServiceRecord;->startId:I

    if-gtz v0, :cond_3

    invoke-virtual {v1}, Lcom/lody/virtual/server/am/ServiceRecord;->getConnectionCount()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-gtz v0, :cond_3

    .line 448
    :try_start_4
    iget-object v0, v1, Lcom/lody/virtual/server/am/ServiceRecord;->process:Lcom/lody/virtual/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/lody/virtual/server/am/ProcessRecord;->appThread:Landroid/os/IInterface;

    invoke-static {v0, v1}, Lcom/lody/virtual/helper/compat/IApplicationThreadCompat;->scheduleStopService(Landroid/os/IInterface;Landroid/os/IBinder;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 452
    :goto_2
    :try_start_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_3

    .line 453
    iget-object v2, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mHistory:Ljava/util/List;

    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 454
    :try_start_6
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mHistory:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 455
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 458
    :cond_3
    const/4 v0, 0x1

    :try_start_7
    monitor-exit p0

    goto :goto_0

    .line 449
    :catch_1
    move-exception v0

    .line 450
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 455
    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method public unregisterProcessObserver(Lcom/lody/virtual/service/interfaces/IProcessObserver;)V
    .locals 0

    .prologue
    .line 863
    return-void
.end method

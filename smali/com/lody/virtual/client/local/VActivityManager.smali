.class public Lcom/lody/virtual/client/local/VActivityManager;
.super Ljava/lang/Object;
.source "VActivityManager.java"


# static fields
.field private static final sAM:Lcom/lody/virtual/client/local/VActivityManager;


# instance fields
.field private final mActivities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/lody/virtual/client/local/ActivityClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mRemote:Lcom/lody/virtual/service/IActivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/lody/virtual/client/local/VActivityManager;

    invoke-direct {v0}, Lcom/lody/virtual/client/local/VActivityManager;-><init>()V

    sput-object v0, Lcom/lody/virtual/client/local/VActivityManager;->sAM:Lcom/lody/virtual/client/local/VActivityManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/lody/virtual/client/local/VActivityManager;->mActivities:Ljava/util/Map;

    return-void
.end method

.method public static get()Lcom/lody/virtual/client/local/VActivityManager;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/lody/virtual/client/local/VActivityManager;->sAM:Lcom/lody/virtual/client/local/VActivityManager;

    return-object v0
.end method


# virtual methods
.method public acquireProviderClient(ILandroid/content/pm/ProviderInfo;)Landroid/os/IInterface;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 394
    sget-object v0, Lmirror/android/content/ContentProviderNative;->asInterface:Lmirror/RefStaticMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VActivityManager;->getService()Lcom/lody/virtual/service/IActivityManager;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/lody/virtual/service/IActivityManager;->acquireProviderClient(ILandroid/content/pm/ProviderInfo;)Landroid/os/IBinder;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    return-object v0
.end method

.method public addPendingIntent(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VActivityManager;->getService()Lcom/lody/virtual/service/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lody/virtual/service/IActivityManager;->addPendingIntent(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method public appDoneExecuting()V
    .locals 1

    .prologue
    .line 346
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VActivityManager;->getService()Lcom/lody/virtual/service/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/lody/virtual/service/IActivityManager;->appDoneExecuting()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :goto_0
    return-void

    .line 347
    :catch_0
    move-exception v0

    .line 348
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public bindService(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;II)I
    .locals 8

    .prologue
    .line 209
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VActivityManager;->getService()Lcom/lody/virtual/service/IActivityManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/lody/virtual/service/IActivityManager;->bindService(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 211
    :goto_0
    return v0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public finishActivity(Landroid/os/IBinder;)V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 410
    invoke-virtual {p0, p1}, Lcom/lody/virtual/client/local/VActivityManager;->getActivityRecord(Landroid/os/IBinder;)Lcom/lody/virtual/client/local/ActivityClientRecord;

    move-result-object v0

    .line 411
    if-eqz v0, :cond_0

    .line 412
    iget-object v0, v0, Lcom/lody/virtual/client/local/ActivityClientRecord;->activity:Landroid/app/Activity;

    move-object v1, v0

    .line 416
    :goto_0
    sget-object v0, Lmirror/android/app/Activity;->mParent:Lmirror/RefObject;

    invoke-virtual {v0, v1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 417
    if-nez v0, :cond_1

    .line 424
    sget-object v0, Lmirror/android/app/Activity;->mFinished:Lmirror/RefBoolean;

    invoke-virtual {v0, v1}, Lmirror/RefBoolean;->get(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 425
    sget-object v0, Lmirror/android/app/Activity;->mResultCode:Lmirror/RefInt;

    invoke-virtual {v0, v1}, Lmirror/RefInt;->get(Ljava/lang/Object;)I

    move-result v2

    .line 426
    sget-object v0, Lmirror/android/app/Activity;->mResultData:Lmirror/RefObject;

    invoke-virtual {v0, v1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 427
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_2

    .line 428
    sget-object v3, Lmirror/android/app/IActivityManagerL;->finishActivity:Lmirror/RefMethod;

    sget-object v4, Lmirror/android/app/ActivityManagerNative;->getDefault:Lmirror/RefStaticMethod;

    new-array v5, v6, [Ljava/lang/Object;

    .line 429
    invoke-virtual {v4, v5}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    .line 431
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v7

    aput-object v0, v5, v8

    .line 433
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v9

    .line 428
    invoke-virtual {v3, v4, v5}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    :goto_1
    sget-object v0, Lmirror/android/app/Activity;->mFinished:Lmirror/RefBoolean;

    invoke-virtual {v0, v1, v7}, Lmirror/RefBoolean;->set(Ljava/lang/Object;Z)V

    .line 446
    :cond_0
    return-void

    :cond_1
    move-object v1, v0

    .line 421
    goto :goto_0

    .line 436
    :cond_2
    sget-object v3, Lmirror/android/app/IActivityManagerICS;->finishActivity:Lmirror/RefMethod;

    sget-object v4, Lmirror/android/app/ActivityManagerNative;->getDefault:Lmirror/RefStaticMethod;

    new-array v5, v6, [Ljava/lang/Object;

    .line 437
    invoke-virtual {v4, v5}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p1, v5, v6

    .line 439
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v7

    aput-object v0, v5, v8

    .line 436
    invoke-virtual {v3, v4, v5}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public getActivityForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;
    .locals 2

    .prologue
    .line 168
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VActivityManager;->getService()Lcom/lody/virtual/service/IActivityManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/lody/virtual/service/IActivityManager;->getActivityClassForToken(ILandroid/os/IBinder;)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 170
    :goto_0
    return-object v0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public getActivityRecord(Landroid/os/IBinder;)Lcom/lody/virtual/client/local/ActivityClientRecord;
    .locals 2

    .prologue
    .line 111
    iget-object v1, p0, Lcom/lody/virtual/client/local/VActivityManager;->mActivities:Ljava/util/Map;

    monitor-enter v1

    .line 112
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/client/local/VActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/local/ActivityClientRecord;

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAppProcessName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VActivityManager;->getService()Lcom/lody/virtual/service/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/service/IActivityManager;->getAppProcessName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 276
    :goto_0
    return-object v0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;
    .locals 2

    .prologue
    .line 144
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VActivityManager;->getService()Lcom/lody/virtual/service/IActivityManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/lody/virtual/service/IActivityManager;->getCallingActivity(ILandroid/os/IBinder;)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VActivityManager;->getService()Lcom/lody/virtual/service/IActivityManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/lody/virtual/service/IActivityManager;->getCallingPackage(ILandroid/os/IBinder;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 154
    :goto_0
    return-object v0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getInitialPackage(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VActivityManager;->getService()Lcom/lody/virtual/service/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/service/IActivityManager;->getInitialPackage(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 284
    :goto_0
    return-object v0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VActivityManager;->getService()Lcom/lody/virtual/service/IActivityManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/lody/virtual/service/IActivityManager;->getPackageForToken(ILandroid/os/IBinder;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 162
    :goto_0
    return-object v0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getPendingIntent(Landroid/os/IBinder;)Lcom/lody/virtual/helper/proto/PendingIntentData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VActivityManager;->getService()Lcom/lody/virtual/service/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/service/IActivityManager;->getPendingIntent(Landroid/os/IBinder;)Lcom/lody/virtual/helper/proto/PendingIntentData;

    move-result-object v0

    return-object v0
.end method

.method public getProcessPkgList(I)Ljava/util/List;
    .locals 1
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
    .line 354
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VActivityManager;->getService()Lcom/lody/virtual/service/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/service/IActivityManager;->getProcessPkgList(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 356
    :goto_0
    return-object v0

    .line 355
    :catch_0
    move-exception v0

    .line 356
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method

.method public getService()Lcom/lody/virtual/service/IActivityManager;
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lody/virtual/client/local/VActivityManager;->mRemote:Lcom/lody/virtual/service/IActivityManager;

    if-nez v0, :cond_1

    .line 55
    const-class v1, Lcom/lody/virtual/client/local/VActivityManager;

    monitor-enter v1

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/client/local/VActivityManager;->mRemote:Lcom/lody/virtual/service/IActivityManager;

    if-nez v0, :cond_0

    .line 57
    const-string v0, "activity"

    .line 58
    invoke-static {v0}, Lcom/lody/virtual/client/service/ServiceManagerNative;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lody/virtual/service/IActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lody/virtual/service/IActivityManager;

    move-result-object v0

    .line 59
    const-class v2, Lcom/lody/virtual/service/IActivityManager;

    invoke-static {v2, v0}, Lcom/lody/virtual/client/local/LocalProxyUtils;->genProxy(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/service/IActivityManager;

    iput-object v0, p0, Lcom/lody/virtual/client/local/VActivityManager;->mRemote:Lcom/lody/virtual/service/IActivityManager;

    .line 61
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/lody/virtual/client/local/VActivityManager;->mRemote:Lcom/lody/virtual/service/IActivityManager;

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getServices(II)Lcom/lody/virtual/helper/proto/VParceledListSlice;
    .locals 2

    .prologue
    .line 257
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VActivityManager;->getService()Lcom/lody/virtual/service/IActivityManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Lcom/lody/virtual/service/IActivityManager;->getServices(III)Lcom/lody/virtual/helper/proto/VParceledListSlice;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 259
    :goto_0
    return-object v0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/helper/proto/VParceledListSlice;

    goto :goto_0
.end method

.method public getSystemPid()I
    .locals 1

    .prologue
    .line 379
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VActivityManager;->getService()Lcom/lody/virtual/service/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/lody/virtual/service/IActivityManager;->getSystemPid()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 381
    :goto_0
    return v0

    .line 380
    :catch_0
    move-exception v0

    .line 381
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getTaskInfo(I)Lcom/lody/virtual/helper/proto/AppTaskInfo;
    .locals 1

    .prologue
    .line 136
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VActivityManager;->getService()Lcom/lody/virtual/service/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/service/IActivityManager;->getTaskInfo(I)Lcom/lody/virtual/helper/proto/AppTaskInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 138
    :goto_0
    return-object v0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/helper/proto/AppTaskInfo;

    goto :goto_0
.end method

.method public getUidByPid(I)I
    .locals 1

    .prologue
    .line 371
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VActivityManager;->getService()Lcom/lody/virtual/service/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/service/IActivityManager;->getUidByPid(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 373
    :goto_0
    return v0

    .line 372
    :catch_0
    move-exception v0

    .line 373
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public handleApplicationCrash()V
    .locals 1

    .prologue
    .line 298
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VActivityManager;->getService()Lcom/lody/virtual/service/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/lody/virtual/service/IActivityManager;->handleApplicationCrash()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :goto_0
    return-void

    .line 299
    :catch_0
    move-exception v0

    .line 300
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public initProcess(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 458
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VActivityManager;->getService()Lcom/lody/virtual/service/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/lody/virtual/service/IActivityManager;->initProcess(Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 460
    :goto_0
    return v0

    .line 459
    :catch_0
    move-exception v0

    .line 460
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public isAppPid(I)Z
    .locals 1

    .prologue
    .line 362
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VActivityManager;->getService()Lcom/lody/virtual/service/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/service/IActivityManager;->isAppPid(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 364
    :goto_0
    return v0

    .line 363
    :catch_0
    move-exception v0

    .line 364
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isAppProcess(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 290
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VActivityManager;->getService()Lcom/lody/virtual/service/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/service/IActivityManager;->isAppProcess(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 292
    :goto_0
    return v0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isAppRunning(Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 450
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VActivityManager;->getService()Lcom/lody/virtual/service/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lody/virtual/service/IActivityManager;->isAppRunning(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 452
    :goto_0
    return v0

    .line 451
    :catch_0
    move-exception v0

    .line 452
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isVAServiceToken(Landroid/os/IBinder;)Z
    .locals 1

    .prologue
    .line 473
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VActivityManager;->getService()Lcom/lody/virtual/service/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/service/IActivityManager;->isVAServiceToken(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 475
    :goto_0
    return v0

    .line 474
    :catch_0
    move-exception v0

    .line 475
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public killAllApps()V
    .locals 1

    .prologue
    .line 306
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VActivityManager;->getService()Lcom/lody/virtual/service/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/lody/virtual/service/IActivityManager;->killAllApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :goto_0
    return-void

    .line 307
    :catch_0
    move-exception v0

    .line 308
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public killAppByPkg(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 330
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VActivityManager;->getService()Lcom/lody/virtual/service/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lody/virtual/service/IActivityManager;->killAppByPkg(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :goto_0
    return-void

    .line 331
    :catch_0
    move-exception v0

    .line 332
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public killApplicationProcess(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 314
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VActivityManager;->getService()Lcom/lody/virtual/service/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lody/virtual/service/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :goto_0
    return-void

    .line 315
    :catch_0
    move-exception v0

    .line 316
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onActivityCreate(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/IBinder;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Ljava/lang/String;III)Lcom/lody/virtual/client/local/ActivityClientRecord;
    .locals 10

    .prologue
    .line 99
    new-instance v9, Lcom/lody/virtual/client/local/ActivityClientRecord;

    invoke-direct {v9}, Lcom/lody/virtual/client/local/ActivityClientRecord;-><init>()V

    .line 100
    iput-object p4, v9, Lcom/lody/virtual/client/local/ActivityClientRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 101
    iget-object v0, p0, Lcom/lody/virtual/client/local/VActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v0, p3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VActivityManager;->getService()Lcom/lody/virtual/service/IActivityManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-interface/range {v0 .. v8}, Lcom/lody/virtual/service/IActivityManager;->onActivityCreated(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-object v9

    .line 104
    :catch_0
    move-exception v0

    .line 105
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onActivityDestroy(Landroid/os/IBinder;)Z
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/lody/virtual/client/local/VActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VActivityManager;->getService()Lcom/lody/virtual/service/IActivityManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/lody/virtual/service/IActivityManager;->onActivityDestroyed(ILandroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 130
    :goto_0
    return v0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 117
    sget-object v0, Lmirror/android/app/Activity;->mToken:Lmirror/RefObject;

    invoke-virtual {v0, p1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 119
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VActivityManager;->getService()Lcom/lody/virtual/service/IActivityManager;

    move-result-object v1

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/lody/virtual/service/IActivityManager;->onActivityResumed(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public peekService(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 241
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VActivityManager;->getService()Lcom/lody/virtual/service/IActivityManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Lcom/lody/virtual/service/IActivityManager;->peekService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 243
    :goto_0
    return-object v0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    goto :goto_0
.end method

.method public processRestarted(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 266
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VActivityManager;->getService()Lcom/lody/virtual/service/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/lody/virtual/service/IActivityManager;->processRestarted(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :goto_0
    return-void

    .line 267
    :catch_0
    move-exception v0

    .line 268
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 249
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VActivityManager;->getService()Lcom/lody/virtual/service/IActivityManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/lody/virtual/service/IActivityManager;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 251
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public registerProcessObserver(Lcom/lody/virtual/service/interfaces/IProcessObserver;)V
    .locals 1

    .prologue
    .line 322
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VActivityManager;->getService()Lcom/lody/virtual/service/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/service/IActivityManager;->registerProcessObserver(Lcom/lody/virtual/service/interfaces/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v0

    .line 324
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public removePendingIntent(Landroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VActivityManager;->getService()Lcom/lody/virtual/service/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/service/IActivityManager;->removePendingIntent(Landroid/os/IBinder;)V

    .line 407
    return-void
.end method

.method public sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 386
    iget-object v0, p0, Lcom/lody/virtual/client/local/VActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/local/ActivityClientRecord;

    .line 387
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/lody/virtual/client/local/ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 388
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->mainThread()Ljava/lang/Object;

    move-result-object v0

    .line 389
    sget-object v1, Lmirror/android/app/ActivityThread;->sendActivityResult:Lmirror/RefMethod;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    :cond_0
    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;I)V
    .locals 2

    .prologue
    .line 465
    invoke-static {p1, p2}, Lcom/lody/virtual/helper/utils/ComponentUtils;->redirectBroadcastIntent(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v0

    .line 466
    if-eqz v0, :cond_0

    .line 467
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 469
    :cond_0
    return-void
.end method

.method public serviceDoneExecuting(Landroid/os/IBinder;III)V
    .locals 6

    .prologue
    .line 233
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VActivityManager;->getService()Lcom/lody/virtual/service/IActivityManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v5

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/lody/virtual/service/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v0

    .line 235
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V
    .locals 7

    .prologue
    .line 201
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VActivityManager;->getService()Lcom/lody/virtual/service/IActivityManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/lody/virtual/service/IActivityManager;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public startActivity(Landroid/content/Intent;I)I
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 87
    if-gez p2, :cond_0

    .line 88
    const/4 v0, -0x8

    .line 94
    :goto_0
    return v0

    .line 90
    :cond_0
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lody/virtual/client/core/VirtualCore;->resolveActivityInfo(Landroid/content/Intent;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 91
    if-nez v2, :cond_1

    .line 92
    const/4 v0, -0x1

    goto :goto_0

    .line 94
    :cond_1
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/lody/virtual/client/local/VActivityManager;->startActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Landroid/os/Bundle;Ljava/lang/String;II)I

    move-result v0

    goto :goto_0
.end method

.method public startActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Landroid/os/Bundle;Ljava/lang/String;II)I
    .locals 8

    .prologue
    .line 68
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VActivityManager;->getService()Lcom/lody/virtual/service/IActivityManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/lody/virtual/service/IActivityManager;->startActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Landroid/os/Bundle;Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 70
    :goto_0
    return v0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/IBinder;Landroid/os/Bundle;Ljava/lang/String;II)I
    .locals 8

    .prologue
    .line 75
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0, p1, p6}, Lcom/lody/virtual/client/core/VirtualCore;->resolveActivityInfo(Landroid/content/Intent;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 76
    if-nez v2, :cond_0

    .line 77
    const/4 v0, -0x1

    .line 82
    :goto_0
    return v0

    .line 80
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VActivityManager;->getService()Lcom/lody/virtual/service/IActivityManager;

    move-result-object v0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/lody/virtual/service/IActivityManager;->startActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Landroid/os/Bundle;Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public startService(Landroid/os/IInterface;Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/ComponentName;
    .locals 2

    .prologue
    .line 177
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VActivityManager;->getService()Lcom/lody/virtual/service/IActivityManager;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v0, p2, p3, p4}, Lcom/lody/virtual/service/IActivityManager;->startService(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 179
    :goto_1
    return-object v0

    .line 177
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_1
.end method

.method public stopService(Landroid/os/IInterface;Landroid/content/Intent;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 185
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VActivityManager;->getService()Lcom/lody/virtual/service/IActivityManager;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v0, p2, p3, v2}, Lcom/lody/virtual/service/IActivityManager;->stopService(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 187
    :goto_1
    return v0

    .line 185
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1
.end method

.method public stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z
    .locals 2

    .prologue
    .line 193
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VActivityManager;->getService()Lcom/lody/virtual/service/IActivityManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/lody/virtual/service/IActivityManager;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 195
    :goto_0
    return v0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V
    .locals 2

    .prologue
    .line 225
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VActivityManager;->getService()Lcom/lody/virtual/service/IActivityManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/lody/virtual/service/IActivityManager;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public unbindService(Landroid/app/IServiceConnection;)Z
    .locals 2

    .prologue
    .line 217
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VActivityManager;->getService()Lcom/lody/virtual/service/IActivityManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/lody/virtual/service/IActivityManager;->unbindService(Landroid/app/IServiceConnection;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 219
    :goto_0
    return v0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public unregisterProcessObserver(Lcom/lody/virtual/service/interfaces/IProcessObserver;)V
    .locals 1

    .prologue
    .line 338
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VActivityManager;->getService()Lcom/lody/virtual/service/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/service/IActivityManager;->unregisterProcessObserver(Lcom/lody/virtual/service/interfaces/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :goto_0
    return-void

    .line 339
    :catch_0
    move-exception v0

    .line 340
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

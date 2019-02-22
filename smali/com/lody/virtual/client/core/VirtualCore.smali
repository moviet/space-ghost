.class public final Lcom/lody/virtual/client/core/VirtualCore;
.super Ljava/lang/Object;
.source "VirtualCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/client/core/VirtualCore$ProcessType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VirtualCore"

.field private static gCore:Lcom/lody/virtual/client/core/VirtualCore;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private activityDelegate:Lcom/lody/virtual/client/hook/delegate/ActivityDelegate;

.field private context:Landroid/content/Context;

.field private hostPkgInfo:Landroid/content/pm/PackageInfo;

.field private hostPkgName:Ljava/lang/String;

.field private initLock:Landroid/os/ConditionVariable;

.field private isStartUp:Z

.field private mService:Lcom/lody/virtual/service/IAppManager;

.field private mainProcessName:Ljava/lang/String;

.field private mainThread:Ljava/lang/Object;

.field private final myUid:I

.field private phoneInfoDelegate:Lcom/lody/virtual/client/hook/delegate/PhoneInfoDelegate;

.field private processName:Ljava/lang/String;

.field private processType:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

.field private systemPid:I

.field private unHookPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/lody/virtual/client/core/VirtualCore;

    invoke-direct {v0}, Lcom/lody/virtual/client/core/VirtualCore;-><init>()V

    sput-object v0, Lcom/lody/virtual/client/core/VirtualCore;->gCore:Lcom/lody/virtual/client/core/VirtualCore;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->myUid:I

    .line 79
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->initLock:Landroid/os/ConditionVariable;

    .line 87
    return-void
.end method

.method public static get()Lcom/lody/virtual/client/core/VirtualCore;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/lody/virtual/client/core/VirtualCore;->gCore:Lcom/lody/virtual/client/core/VirtualCore;

    return-object v0
.end method

.method public static getPM()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 118
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method private getService()Lcom/lody/virtual/service/IAppManager;
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->mService:Lcom/lody/virtual/service/IAppManager;

    if-nez v0, :cond_1

    .line 189
    monitor-enter p0

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->mService:Lcom/lody/virtual/service/IAppManager;

    if-nez v0, :cond_0

    .line 191
    const-string v0, "app"

    .line 192
    invoke-static {v0}, Lcom/lody/virtual/client/service/ServiceManagerNative;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lody/virtual/service/IAppManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lody/virtual/service/IAppManager;

    move-result-object v0

    .line 193
    const-class v1, Lcom/lody/virtual/service/IAppManager;

    invoke-static {v1, v0}, Lcom/lody/virtual/client/local/LocalProxyUtils;->genProxy(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/service/IAppManager;

    iput-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->mService:Lcom/lody/virtual/service/IAppManager;

    .line 195
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->mService:Lcom/lody/virtual/service/IAppManager;

    return-object v0

    .line 195
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static mainThread()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 122
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    iget-object v0, v0, Lcom/lody/virtual/client/core/VirtualCore;->mainThread:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public findApp(Ljava/lang/String;)Lcom/lody/virtual/helper/proto/AppSetting;
    .locals 1

    .prologue
    .line 313
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/client/core/VirtualCore;->getService()Lcom/lody/virtual/service/IAppManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/service/IAppManager;->findAppInfo(Ljava/lang/String;)Lcom/lody/virtual/helper/proto/AppSetting;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 315
    :goto_0
    return-object v0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/helper/proto/AppSetting;

    goto :goto_0
.end method

.method public findAppPermissions(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 321
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/client/core/VirtualCore;->getService()Lcom/lody/virtual/service/IAppManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/service/IAppManager;->findAppPermissions(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 323
    :goto_0
    return-object v0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method

.method public getActivityDelegate()Lcom/lody/virtual/client/hook/delegate/ActivityDelegate;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->activityDelegate:Lcom/lody/virtual/client/hook/delegate/ActivityDelegate;

    return-object v0
.end method

.method public getAllApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lody/virtual/helper/proto/AppSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 404
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/client/core/VirtualCore;->getService()Lcom/lody/virtual/service/IAppManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/lody/virtual/service/IAppManager;->getAllApps()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 406
    :goto_0
    return-object v0

    .line 405
    :catch_0
    move-exception v0

    .line 406
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method

.method public getAppCount()I
    .locals 1

    .prologue
    .line 329
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/client/core/VirtualCore;->getService()Lcom/lody/virtual/service/IAppManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/lody/virtual/service/IAppManager;->getAppCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 331
    :goto_0
    return v0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getGids()[I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->hostPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->gids:[I

    return-object v0
.end method

.method public getHostPkg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->hostPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getInitLock()Landroid/os/ConditionVariable;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->initLock:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method public getLaunchIntent(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 271
    invoke-static {}, Lcom/lody/virtual/client/local/VPackageManager;->get()Lcom/lody/virtual/client/local/VPackageManager;

    move-result-object v1

    .line 272
    new-instance v3, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 273
    const-string v0, "android.intent.category.INFO"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    iget-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->context:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0, v4, p2}, Lcom/lody/virtual/client/local/VPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 278
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_3

    .line 280
    :cond_0
    const-string v0, "android.intent.category.INFO"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 281
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    iget-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->context:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0, v4, p2}, Lcom/lody/virtual/client/local/VPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    .line 285
    :goto_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 286
    :cond_1
    const/4 v0, 0x0

    .line 292
    :goto_1
    return-object v0

    .line 288
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 289
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 290
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 291
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 290
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v0, v1

    .line 292
    goto :goto_1

    :cond_3
    move-object v2, v0

    goto :goto_0
.end method

.method public getMainProcessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->mainProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneInfoDelegate()Lcom/lody/virtual/client/hook/delegate/PhoneInfoDelegate;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->phoneInfoDelegate:Lcom/lody/virtual/client/hook/delegate/PhoneInfoDelegate;

    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->processName:Ljava/lang/String;

    return-object v0
.end method

.method public getResources(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 5

    .prologue
    .line 349
    invoke-virtual {p0, p1}, Lcom/lody/virtual/client/core/VirtualCore;->findApp(Ljava/lang/String;)Lcom/lody/virtual/helper/proto/AppSetting;

    move-result-object v1

    .line 350
    if-eqz v1, :cond_0

    .line 351
    sget-object v0, Lmirror/android/content/res/AssetManager;->ctor:Lmirror/RefConstructor;

    invoke-virtual {v0}, Lmirror/RefConstructor;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    .line 352
    sget-object v2, Lmirror/android/content/res/AssetManager;->addAssetPath:Lmirror/RefMethod;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v1, v1, Lcom/lody/virtual/helper/proto/AppSetting;->apkPath:Ljava/lang/String;

    aput-object v1, v3, v4

    invoke-virtual {v2, v0, v3}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-object v1, p0, Lcom/lody/virtual/client/core/VirtualCore;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 354
    new-instance v1, Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v0, v3, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    move-object v0, v1

    .line 356
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSystemPid()I
    .locals 1

    .prologue
    .line 430
    iget v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->systemPid:I

    return v0
.end method

.method public getUnHookPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->unHookPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method public installApp(Ljava/lang/String;I)Lcom/lody/virtual/helper/proto/InstallResult;
    .locals 1

    .prologue
    .line 256
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/client/core/VirtualCore;->getService()Lcom/lody/virtual/service/IAppManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lody/virtual/service/IAppManager;->installApp(Ljava/lang/String;I)Lcom/lody/virtual/helper/proto/InstallResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 258
    :goto_0
    return-object v0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/helper/proto/InstallResult;

    goto :goto_0
.end method

.method public isAppInstalled(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 264
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/client/core/VirtualCore;->getService()Lcom/lody/virtual/service/IAppManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/service/IAppManager;->isAppInstalled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 266
    :goto_0
    return v0

    .line 265
    :catch_0
    move-exception v0

    .line 266
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
    .line 251
    invoke-static {}, Lcom/lody/virtual/client/local/VActivityManager;->get()Lcom/lody/virtual/client/local/VActivityManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lody/virtual/client/local/VActivityManager;->isAppRunning(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isChildProcess()Z
    .locals 2

    .prologue
    .line 218
    sget-object v0, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;->CHILD:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    iget-object v1, p0, Lcom/lody/virtual/client/core/VirtualCore;->processType:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMainProcess()Z
    .locals 2

    .prologue
    .line 211
    sget-object v0, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;->Main:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    iget-object v1, p0, Lcom/lody/virtual/client/core/VirtualCore;->processType:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOutsideInstalled(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 422
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/client/core/VirtualCore;->unHookPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 426
    :cond_0
    :goto_0
    return v0

    .line 423
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isServiceProcess()Z
    .locals 2

    .prologue
    .line 225
    sget-object v0, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;->Server:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    iget-object v1, p0, Lcom/lody/virtual/client/core/VirtualCore;->processType:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStartup()Z
    .locals 1

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->isStartUp:Z

    return v0
.end method

.method public isVAppProcess()Z
    .locals 2

    .prologue
    .line 204
    sget-object v0, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;->VAppClient:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    iget-object v1, p0, Lcom/lody/virtual/client/core/VirtualCore;->processType:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public killAllApps()V
    .locals 1

    .prologue
    .line 399
    invoke-static {}, Lcom/lody/virtual/client/local/VActivityManager;->get()Lcom/lody/virtual/client/local/VActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/local/VActivityManager;->killAllApps()V

    .line 400
    return-void
.end method

.method public killApp(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 395
    invoke-static {}, Lcom/lody/virtual/client/local/VActivityManager;->get()Lcom/lody/virtual/client/local/VActivityManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lody/virtual/client/local/VActivityManager;->killAppByPkg(Ljava/lang/String;I)V

    .line 396
    return-void
.end method

.method public myUid()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->myUid:I

    return v0
.end method

.method public myUserId()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->myUid:I

    invoke-static {v0}, Lcom/lody/virtual/os/VUserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public preOpt(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 243
    invoke-virtual {p0, p1}, Lcom/lody/virtual/client/core/VirtualCore;->findApp(Ljava/lang/String;)Lcom/lody/virtual/helper/proto/AppSetting;

    move-result-object v0

    .line 244
    const-string v1, "VirtualCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preOpt pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " info:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/lody/virtual/helper/proto/AppSetting;->dependSystem:Z

    if-nez v1, :cond_0

    .line 246
    iget-object v1, v0, Lcom/lody/virtual/helper/proto/AppSetting;->apkPath:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/lody/virtual/helper/proto/AppSetting;->getOdexFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/DexFile;->close()V

    .line 248
    :cond_0
    return-void
.end method

.method public preloadAllApps()V
    .locals 1

    .prologue
    .line 412
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/client/core/VirtualCore;->getService()Lcom/lody/virtual/service/IAppManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/lody/virtual/service/IAppManager;->preloadAllApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :goto_0
    return-void

    .line 413
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public resolveActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 2

    .prologue
    .line 382
    invoke-static {}, Lcom/lody/virtual/client/local/VPackageManager;->get()Lcom/lody/virtual/client/local/VPackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/lody/virtual/client/local/VPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized resolveActivityInfo(Landroid/content/Intent;I)Landroid/content/pm/ActivityInfo;
    .locals 4

    .prologue
    .line 361
    monitor-enter p0

    const/4 v0, 0x0

    .line 362
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_2

    .line 363
    invoke-static {}, Lcom/lody/virtual/client/local/VPackageManager;->get()Lcom/lody/virtual/client/local/VPackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3, p2}, Lcom/lody/virtual/client/local/VPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 364
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    .line 365
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 366
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 372
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 373
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-static {}, Lcom/lody/virtual/client/local/VPackageManager;->get()Lcom/lody/virtual/client/local/VPackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Lcom/lody/virtual/client/local/VPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 375
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    :cond_1
    monitor-exit p0

    return-object v0

    .line 369
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/lody/virtual/client/core/VirtualCore;->resolveActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resolveServiceInfo(Landroid/content/Intent;I)Landroid/content/pm/ServiceInfo;
    .locals 4

    .prologue
    .line 386
    const/4 v0, 0x0

    .line 387
    invoke-static {}, Lcom/lody/virtual/client/local/VPackageManager;->get()Lcom/lody/virtual/client/local/VPackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3, p2}, Lcom/lody/virtual/client/local/VPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 388
    if-eqz v1, :cond_0

    .line 389
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 391
    :cond_0
    return-object v0
.end method

.method public setActivityDelegate(Lcom/lody/virtual/client/hook/delegate/ActivityDelegate;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/lody/virtual/client/core/VirtualCore;->activityDelegate:Lcom/lody/virtual/client/hook/delegate/ActivityDelegate;

    .line 99
    return-void
.end method

.method public setLoadingPage(Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 297
    if-eqz p2, :cond_0

    .line 298
    sget-object v0, Lmirror/android/app/Activity;->mToken:Lmirror/RefObject;

    invoke-virtual {v0, p2}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-virtual {p0, p1, v0}, Lcom/lody/virtual/client/core/VirtualCore;->setLoadingPage(Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 300
    :cond_0
    return-void
.end method

.method public setLoadingPage(Landroid/content/Intent;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 303
    const-string v0, "VirtualCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLoadingPage intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    if-eqz p2, :cond_0

    .line 305
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 306
    const-string v1, "_VA_|_loading_token_"

    invoke-static {v0, v1, p2}, Lcom/lody/virtual/helper/compat/BundleCompat;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 307
    const-string v1, "_VA_|_sender_"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 309
    :cond_0
    return-void
.end method

.method public setPhoneInfoDelegate(Lcom/lody/virtual/client/hook/delegate/PhoneInfoDelegate;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/lody/virtual/client/core/VirtualCore;->phoneInfoDelegate:Lcom/lody/virtual/client/hook/delegate/PhoneInfoDelegate;

    .line 107
    return-void
.end method

.method public startup(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 148
    iget-boolean v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->isStartUp:Z

    if-nez v0, :cond_2

    .line 149
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 150
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "VirtualCore.startup() must called in main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_0
    iput-object p1, p0, Lcom/lody/virtual/client/core/VirtualCore;->context:Landroid/content/Context;

    .line 153
    sget-object v0, Lmirror/android/app/ActivityThread;->currentActivityThread:Lmirror/RefStaticMethod;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->mainThread:Ljava/lang/Object;

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->unHookPackageManager:Landroid/content/pm/PackageManager;

    .line 155
    iget-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->unHookPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->hostPkgInfo:Landroid/content/pm/PackageInfo;

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->hostPkgName:Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iput-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->mainProcessName:Ljava/lang/String;

    .line 161
    sget-object v0, Lmirror/android/app/ActivityThread;->getProcessName:Lmirror/RefMethod;

    iget-object v1, p0, Lcom/lody/virtual/client/core/VirtualCore;->mainThread:Ljava/lang/Object;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->processName:Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->processName:Ljava/lang/String;

    iget-object v1, p0, Lcom/lody/virtual/client/core/VirtualCore;->mainProcessName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 163
    sget-object v0, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;->Main:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    iput-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->processType:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    .line 171
    :goto_0
    const-string v0, "VirtualCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startup processType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lody/virtual/client/core/VirtualCore;->processType:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    invoke-virtual {p0}, Lcom/lody/virtual/client/core/VirtualCore;->isVAppProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    invoke-static {}, Lcom/lody/virtual/client/local/VActivityManager;->get()Lcom/lody/virtual/client/local/VActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/local/VActivityManager;->getSystemPid()I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->systemPid:I

    .line 175
    :cond_1
    invoke-static {}, Lcom/lody/virtual/client/core/PatchManager;->getInstance()Lcom/lody/virtual/client/core/PatchManager;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lcom/lody/virtual/client/core/PatchManager;->init()V

    .line 177
    invoke-virtual {v0}, Lcom/lody/virtual/client/core/PatchManager;->injectAll()V

    .line 178
    invoke-static {p1}, Lcom/lody/virtual/client/fixer/ContextFixer;->fixContext(Landroid/content/Context;)V

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->isStartUp:Z

    .line 180
    iget-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->initLock:Landroid/os/ConditionVariable;

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->initLock:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->initLock:Landroid/os/ConditionVariable;

    .line 185
    :cond_2
    return-void

    .line 164
    :cond_3
    iget-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->processName:Ljava/lang/String;

    sget-object v1, Lcom/lody/virtual/client/env/Constants;->SERVER_PROCESS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 165
    sget-object v0, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;->Server:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    iput-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->processType:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    goto :goto_0

    .line 166
    :cond_4
    invoke-static {}, Lcom/lody/virtual/client/local/VActivityManager;->get()Lcom/lody/virtual/client/local/VActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lody/virtual/client/core/VirtualCore;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/local/VActivityManager;->isAppProcess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 167
    sget-object v0, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;->VAppClient:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    iput-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->processType:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    goto :goto_0

    .line 169
    :cond_5
    sget-object v0, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;->CHILD:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    iput-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->processType:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    goto :goto_0
.end method

.method public uninstallApp(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 341
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/client/core/VirtualCore;->getService()Lcom/lody/virtual/service/IAppManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/service/IAppManager;->uninstallApp(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 345
    :goto_0
    return v0

    .line 342
    :catch_0
    move-exception v0

    .line 345
    const/4 v0, 0x0

    goto :goto_0
.end method

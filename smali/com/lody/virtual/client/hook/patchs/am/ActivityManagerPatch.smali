.class public Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch;
.super Lcom/lody/virtual/client/hook/base/PatchDelegate;
.source "ActivityManagerPatch.java"


# annotations
.annotation runtime Lcom/lody/virtual/client/hook/base/Patch;
    value = {
        Lcom/lody/virtual/client/hook/patchs/am/StartActivity;,
        Lcom/lody/virtual/client/hook/patchs/am/StartActivityAsCaller;,
        Lcom/lody/virtual/client/hook/patchs/am/StartActivityAndWait;,
        Lcom/lody/virtual/client/hook/patchs/am/StartActivityWithConfig;,
        Lcom/lody/virtual/client/hook/patchs/am/StartActivityIntentSender;,
        Lcom/lody/virtual/client/hook/patchs/am/StartNextMatchingActivity;,
        Lcom/lody/virtual/client/hook/patchs/am/StartVoiceActivity;,
        Lcom/lody/virtual/client/hook/patchs/am/GetIntentSender;,
        Lcom/lody/virtual/client/hook/patchs/am/RegisterReceiver;,
        Lcom/lody/virtual/client/hook/patchs/am/GetContentProvider;,
        Lcom/lody/virtual/client/hook/patchs/am/GetContentProviderExternal;,
        Lcom/lody/virtual/client/hook/patchs/am/GetActivityClassForToken;,
        Lcom/lody/virtual/client/hook/patchs/am/GetTasks;,
        Lcom/lody/virtual/client/hook/patchs/am/GetRunningAppProcesses;,
        Lcom/lody/virtual/client/hook/patchs/am/StartService;,
        Lcom/lody/virtual/client/hook/patchs/am/StopService;,
        Lcom/lody/virtual/client/hook/patchs/am/StopServiceToken;,
        Lcom/lody/virtual/client/hook/patchs/am/BindService;,
        Lcom/lody/virtual/client/hook/patchs/am/UnbindService;,
        Lcom/lody/virtual/client/hook/patchs/am/PeekService;,
        Lcom/lody/virtual/client/hook/patchs/am/ServiceDoneExecuting;,
        Lcom/lody/virtual/client/hook/patchs/am/UnbindFinished;,
        Lcom/lody/virtual/client/hook/patchs/am/PublishService;,
        Lcom/lody/virtual/client/hook/patchs/am/HandleIncomingUser;,
        Lcom/lody/virtual/client/hook/patchs/am/SetServiceForeground;,
        Lcom/lody/virtual/client/hook/patchs/am/BroadcastIntent;,
        Lcom/lody/virtual/client/hook/patchs/am/GetCallingPackage;,
        Lcom/lody/virtual/client/hook/patchs/am/GrantUriPermissionFromOwner;,
        Lcom/lody/virtual/client/hook/patchs/am/CheckGrantUriPermission;,
        Lcom/lody/virtual/client/hook/patchs/am/GetPersistedUriPermissions;,
        Lcom/lody/virtual/client/hook/patchs/am/KillApplicationProcess;,
        Lcom/lody/virtual/client/hook/patchs/am/ForceStopPackage;,
        Lcom/lody/virtual/client/hook/patchs/am/AddPackageDependency;,
        Lcom/lody/virtual/client/hook/patchs/am/UpdateDeviceOwner;,
        Lcom/lody/virtual/client/hook/patchs/am/CrashApplication;,
        Lcom/lody/virtual/client/hook/patchs/am/GetPackageForToken;,
        Lcom/lody/virtual/client/hook/patchs/am/GetPackageForIntentSender;,
        Lcom/lody/virtual/client/hook/patchs/am/SetPackageAskScreenCompat;,
        Lcom/lody/virtual/client/hook/patchs/am/GetPackageAskScreenCompat;,
        Lcom/lody/virtual/client/hook/patchs/am/CheckPermission;,
        Lcom/lody/virtual/client/hook/patchs/am/PublishContentProviders;,
        Lcom/lody/virtual/client/hook/patchs/am/GetCurrentUser;,
        Lcom/lody/virtual/client/hook/patchs/am/UnstableProviderDied;,
        Lcom/lody/virtual/client/hook/patchs/am/GetCallingActivity;,
        Lcom/lody/virtual/client/hook/patchs/am/FinishActivity;,
        Lcom/lody/virtual/client/hook/patchs/am/GetServices;,
        Lcom/lody/virtual/client/hook/patchs/am/SetTaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch$isUserRunning;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lody/virtual/client/hook/base/PatchDelegate",
        "<",
        "Lcom/lody/virtual/client/hook/base/HookDelegate",
        "<",
        "Landroid/os/IInterface;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/PatchDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method protected createHookDelegate()Lcom/lody/virtual/client/hook/base/HookDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lody/virtual/client/hook/base/HookDelegate",
            "<",
            "Landroid/os/IInterface;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch$1;

    invoke-direct {v0, p0}, Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch$1;-><init>(Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch;)V

    return-object v0
.end method

.method protected bridge synthetic createHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch;->createHookDelegate()Lcom/lody/virtual/client/hook/base/HookDelegate;

    move-result-object v0

    return-object v0
.end method

.method public inject()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 78
    sget-object v0, Lmirror/android/app/ActivityManagerNative;->gDefault:Lmirror/RefStaticObject;

    invoke-virtual {v0}, Lmirror/RefStaticObject;->type()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lmirror/android/app/IActivityManager;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 79
    sget-object v1, Lmirror/android/app/ActivityManagerNative;->gDefault:Lmirror/RefStaticObject;

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/base/HookDelegate;

    invoke-virtual {v0}, Lcom/lody/virtual/client/hook/base/HookDelegate;->getProxyInterface()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmirror/RefStaticObject;->set(Ljava/lang/Object;)V

    .line 86
    :cond_0
    :goto_0
    new-instance v1, Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch$2;

    invoke-direct {v1, p0}, Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch$2;-><init>(Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch;)V

    .line 92
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/lody/virtual/client/hook/base/HookBinderDelegate;->copyHooks(Lcom/lody/virtual/client/interfaces/IHookObject;)V

    .line 93
    sget-object v0, Lmirror/android/os/ServiceManager;->sCache:Lmirror/RefStaticObject;

    invoke-virtual {v0}, Lmirror/RefStaticObject;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "activity"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    return-void

    .line 81
    :cond_1
    sget-object v0, Lmirror/android/app/ActivityManagerNative;->gDefault:Lmirror/RefStaticObject;

    invoke-virtual {v0}, Lmirror/RefStaticObject;->type()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lmirror/android/util/Singleton;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 82
    sget-object v0, Lmirror/android/app/ActivityManagerNative;->gDefault:Lmirror/RefStaticObject;

    invoke-virtual {v0}, Lmirror/RefStaticObject;->get()Ljava/lang/Object;

    move-result-object v1

    .line 83
    sget-object v2, Lmirror/android/util/Singleton;->mInstance:Lmirror/RefObject;

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/base/HookDelegate;

    invoke-virtual {v0}, Lcom/lody/virtual/client/hook/base/HookDelegate;->getProxyInterface()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isEnvBad()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 151
    sget-object v0, Lmirror/android/app/ActivityManagerNative;->getDefault:Lmirror/RefStaticMethod;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/base/HookDelegate;

    invoke-virtual {v0}, Lcom/lody/virtual/client/hook/base/HookDelegate;->getProxyInterface()Ljava/lang/Object;

    move-result-object v0

    if-eq v2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected onBindHooks()V
    .locals 3

    .prologue
    .line 98
    invoke-super {p0}, Lcom/lody/virtual/client/hook/base/PatchDelegate;->onBindHooks()V

    .line 99
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->isVAppProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastUidHook;

    const-string v1, "checkPermissionWithToken"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastUidHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 101
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch$isUserRunning;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch$isUserRunning;-><init>(Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch;Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 102
    new-instance v0, Lcom/lody/virtual/client/hook/base/ResultStaticHook;

    const-string v1, "updateConfiguration"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/hook/base/ResultStaticHook;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 103
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;

    const-string v1, "setAppLockedVerifying"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 104
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch$3;

    const-string v1, "checkUriPermission"

    invoke-direct {v0, p0, v1}, Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch$3;-><init>(Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 110
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch$4;

    const-string v1, "getRecentTasks"

    invoke-direct {v0, p0, v1}, Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch$4;-><init>(Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 134
    :cond_0
    return-void
.end method

.class public final Lcom/lody/virtual/client/hook/patchs/pm/PackageManagerPatch;
.super Lcom/lody/virtual/client/hook/base/PatchDelegate;
.source "PackageManagerPatch.java"


# annotations
.annotation runtime Lcom/lody/virtual/client/hook/base/Patch;
    value = {
        Lcom/lody/virtual/client/hook/patchs/pm/GetPackageInfo;,
        Lcom/lody/virtual/client/hook/patchs/pm/GetApplicationInfo;,
        Lcom/lody/virtual/client/hook/patchs/pm/GetActivityInfo;,
        Lcom/lody/virtual/client/hook/patchs/pm/GetServiceInfo;,
        Lcom/lody/virtual/client/hook/patchs/pm/GetPermissions;,
        Lcom/lody/virtual/client/hook/patchs/pm/GetProviderInfo;,
        Lcom/lody/virtual/client/hook/patchs/pm/GetReceiverInfo;,
        Lcom/lody/virtual/client/hook/patchs/pm/GetPermissionFlags;,
        Lcom/lody/virtual/client/hook/patchs/pm/CheckSignatures;,
        Lcom/lody/virtual/client/hook/patchs/pm/ResolveIntent;,
        Lcom/lody/virtual/client/hook/patchs/pm/ResolveService;,
        Lcom/lody/virtual/client/hook/patchs/pm/ResolveContentProvider;,
        Lcom/lody/virtual/client/hook/patchs/pm/QueryIntentActivities;,
        Lcom/lody/virtual/client/hook/patchs/pm/QueryIntentServices;,
        Lcom/lody/virtual/client/hook/patchs/pm/QueryIntentReceivers;,
        Lcom/lody/virtual/client/hook/patchs/pm/QueryIntentContentProviders;,
        Lcom/lody/virtual/client/hook/patchs/pm/QueryContentProviders;,
        Lcom/lody/virtual/client/hook/patchs/pm/CheckPermission;,
        Lcom/lody/virtual/client/hook/patchs/pm/RevokeRuntimePermission;,
        Lcom/lody/virtual/client/hook/patchs/pm/SetPackageStoppedState;,
        Lcom/lody/virtual/client/hook/patchs/pm/GetInstalledPackages;,
        Lcom/lody/virtual/client/hook/patchs/pm/GetInstalledApplications;,
        Lcom/lody/virtual/client/hook/patchs/pm/SetApplicationEnabledSetting;,
        Lcom/lody/virtual/client/hook/patchs/pm/GetApplicationEnabledSetting;,
        Lcom/lody/virtual/client/hook/patchs/pm/SetApplicationBlockedSettingAsUser;,
        Lcom/lody/virtual/client/hook/patchs/pm/GetApplicationBlockedSettingAsUser;,
        Lcom/lody/virtual/client/hook/patchs/pm/DeleteApplicationCacheFiles;,
        Lcom/lody/virtual/client/hook/patchs/pm/GetInstallerPackageName;,
        Lcom/lody/virtual/client/hook/patchs/pm/IsPackageAvailable;,
        Lcom/lody/virtual/client/hook/patchs/pm/IsPackageForzen;,
        Lcom/lody/virtual/client/hook/patchs/pm/GetComponentEnabledSetting;,
        Lcom/lody/virtual/client/hook/patchs/pm/SetComponentEnabledSetting;,
        Lcom/lody/virtual/client/hook/patchs/pm/GetPackageUid;,
        Lcom/lody/virtual/client/hook/patchs/pm/GetPackageUidEtc;,
        Lcom/lody/virtual/client/hook/patchs/pm/GetPackageGids;,
        Lcom/lody/virtual/client/hook/patchs/pm/GetPackageGidsEtc;,
        Lcom/lody/virtual/client/hook/patchs/pm/GetPackagesForUid;,
        Lcom/lody/virtual/client/hook/patchs/pm/AddPackageToPreferred;,
        Lcom/lody/virtual/client/hook/patchs/pm/RemovePackageFromPreferred;,
        Lcom/lody/virtual/client/hook/patchs/pm/ClearPackagePreferredActivities;,
        Lcom/lody/virtual/client/hook/patchs/pm/GetPreferredActivities;,
        Lcom/lody/virtual/client/hook/patchs/pm/ClearPackagePersistentPreferredActivities;,
        Lcom/lody/virtual/client/hook/patchs/pm/GetPermissionGroupInfo;,
        Lcom/lody/virtual/client/hook/patchs/pm/DeletePackage;,
        Lcom/lody/virtual/client/hook/patchs/pm/GetPackageInstaller;,
        Lcom/lody/virtual/client/hook/patchs/pm/AddOnPermissionsChangeListener;,
        Lcom/lody/virtual/client/hook/patchs/pm/RemoveOnPermissionsChangeListener;,
        Lcom/lody/virtual/client/hook/patchs/pm/ActivitySupportsIntent;
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
    .line 50
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
    .line 54
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/pm/PackageManagerPatch$1;

    invoke-direct {v0, p0}, Lcom/lody/virtual/client/hook/patchs/pm/PackageManagerPatch$1;-><init>(Lcom/lody/virtual/client/hook/patchs/pm/PackageManagerPatch;)V

    return-object v0
.end method

.method protected bridge synthetic createHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/pm/PackageManagerPatch;->createHookDelegate()Lcom/lody/virtual/client/hook/base/HookDelegate;

    move-result-object v0

    return-object v0
.end method

.method public inject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/pm/PackageManagerPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/base/HookDelegate;

    invoke-virtual {v0}, Lcom/lody/virtual/client/hook/base/HookDelegate;->getProxyInterface()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    .line 73
    sget-object v1, Lmirror/android/app/ActivityThread;->sPackageManager:Lmirror/RefStaticObject;

    invoke-virtual {v1, v0}, Lmirror/RefStaticObject;->set(Ljava/lang/Object;)V

    .line 75
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/pm/PackageManagerPatch$2;

    invoke-direct {v0, p0}, Lcom/lody/virtual/client/hook/patchs/pm/PackageManagerPatch$2;-><init>(Lcom/lody/virtual/client/hook/patchs/pm/PackageManagerPatch;)V

    .line 81
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/pm/PackageManagerPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/base/HookBinderDelegate;->copyHooks(Lcom/lody/virtual/client/interfaces/IHookObject;)V

    .line 82
    const-string v1, "package"

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/base/HookBinderDelegate;->replaceService(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public isEnvBad()Z
    .locals 2

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/pm/PackageManagerPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/base/HookDelegate;

    invoke-virtual {v0}, Lcom/lody/virtual/client/hook/base/HookDelegate;->getProxyInterface()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lmirror/android/app/ActivityThread;->sPackageManager:Lmirror/RefStaticObject;

    invoke-virtual {v1}, Lmirror/RefStaticObject;->get()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBindHooks()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 64
    invoke-super {p0}, Lcom/lody/virtual/client/hook/base/PatchDelegate;->onBindHooks()V

    .line 65
    new-instance v0, Lcom/lody/virtual/client/hook/base/ResultStaticHook;

    const-string v1, "addPermissionAsync"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/hook/base/ResultStaticHook;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/pm/PackageManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 66
    new-instance v0, Lcom/lody/virtual/client/hook/base/ResultStaticHook;

    const-string v1, "addPermission"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/hook/base/ResultStaticHook;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/pm/PackageManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 67
    return-void
.end method

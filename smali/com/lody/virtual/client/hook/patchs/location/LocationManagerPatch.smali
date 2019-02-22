.class public Lcom/lody/virtual/client/hook/patchs/location/LocationManagerPatch;
.super Lcom/lody/virtual/client/hook/base/PatchDelegate;
.source "LocationManagerPatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/client/hook/patchs/location/LocationManagerPatch$BaseHook;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lody/virtual/client/hook/base/PatchDelegate",
        "<",
        "Lcom/lody/virtual/client/hook/binders/LocationBinderDelegate;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/PatchDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method protected createHookDelegate()Lcom/lody/virtual/client/hook/binders/LocationBinderDelegate;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/lody/virtual/client/hook/binders/LocationBinderDelegate;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/binders/LocationBinderDelegate;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic createHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/location/LocationManagerPatch;->createHookDelegate()Lcom/lody/virtual/client/hook/binders/LocationBinderDelegate;

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
    .line 28
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/location/LocationManagerPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/binders/LocationBinderDelegate;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/binders/LocationBinderDelegate;->replaceService(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public isEnvBad()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 93
    sget-object v2, Lmirror/android/os/ServiceManager;->getService:Lmirror/RefStaticMethod;

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "location"

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/location/LocationManagerPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v3

    if-eq v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected onBindHooks()V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Lcom/lody/virtual/client/hook/base/PatchDelegate;->onBindHooks()V

    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 55
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "addTestProvider"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/location/LocationManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 56
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "removeTestProvider"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/location/LocationManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 57
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "setTestProviderLocation"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/location/LocationManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 58
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "clearTestProviderLocation"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/location/LocationManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 59
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "setTestProviderEnabled"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/location/LocationManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 60
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "clearTestProviderEnabled"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/location/LocationManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 61
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "setTestProviderStatus"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/location/LocationManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 62
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "clearTestProviderStatus"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/location/LocationManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 64
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 65
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "addGpsMeasurementsListener"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/location/LocationManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 66
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "addGpsNavigationMessageListener"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/location/LocationManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 69
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    .line 70
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "addGpsStatusListener"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/location/LocationManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 72
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_3

    .line 73
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/location/LocationManagerPatch$BaseHook;

    const-string v1, "requestLocationUpdates"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/patchs/location/LocationManagerPatch$BaseHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/location/LocationManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 74
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "removeUpdates"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/location/LocationManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 75
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "requestGeofence"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/location/LocationManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 76
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "removeGeofence"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/location/LocationManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 77
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/location/LocationManagerPatch$BaseHook;

    const-string v1, "getLastLocation"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/patchs/location/LocationManagerPatch$BaseHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/location/LocationManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 80
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "4.1.2"

    .line 81
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 82
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "requestLocationUpdates"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/location/LocationManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 83
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "requestLocationUpdatesPI"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/location/LocationManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 84
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "removeUpdates"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/location/LocationManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 85
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "removeUpdatesPI"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/location/LocationManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 86
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "addProximityAlert"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/location/LocationManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 87
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "getLastKnownLocation"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/location/LocationManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 89
    :cond_4
    return-void
.end method

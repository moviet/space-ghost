.class public Lcom/lody/virtual/client/hook/patchs/notification/NotificationManagerPatch;
.super Lcom/lody/virtual/client/hook/base/PatchDelegate;
.source "NotificationManagerPatch.java"


# annotations
.annotation runtime Lcom/lody/virtual/client/hook/base/Patch;
    value = {
        Lcom/lody/virtual/client/hook/patchs/notification/CancelAllNotifications;,
        Lcom/lody/virtual/client/hook/patchs/notification/EnqueueNotificationWithTag;,
        Lcom/lody/virtual/client/hook/patchs/notification/CancelNotificationWithTag;,
        Lcom/lody/virtual/client/hook/patchs/notification/EnqueueNotificationWithTagPriority;,
        Lcom/lody/virtual/client/hook/patchs/notification/EnqueueNotification;
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
    .line 23
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
    .line 27
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/notification/NotificationManagerPatch$1;

    invoke-direct {v0, p0}, Lcom/lody/virtual/client/hook/patchs/notification/NotificationManagerPatch$1;-><init>(Lcom/lody/virtual/client/hook/patchs/notification/NotificationManagerPatch;)V

    return-object v0
.end method

.method protected bridge synthetic createHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/notification/NotificationManagerPatch;->createHookDelegate()Lcom/lody/virtual/client/hook/base/HookDelegate;

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
    .line 51
    sget-object v1, Lmirror/android/app/NotificationManager;->sService:Lmirror/RefStaticObject;

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/notification/NotificationManagerPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/base/HookDelegate;

    invoke-virtual {v0}, Lcom/lody/virtual/client/hook/base/HookDelegate;->getProxyInterface()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmirror/RefStaticObject;->set(Ljava/lang/Object;)V

    .line 52
    sget-object v1, Lmirror/android/widget/Toast;->sService:Lmirror/RefStaticObject;

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/notification/NotificationManagerPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/base/HookDelegate;

    invoke-virtual {v0}, Lcom/lody/virtual/client/hook/base/HookDelegate;->getProxyInterface()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmirror/RefStaticObject;->set(Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method public isEnvBad()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 57
    sget-object v0, Lmirror/android/app/NotificationManager;->getService:Lmirror/RefStaticMethod;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/notification/NotificationManagerPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

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
    .locals 2

    .prologue
    .line 37
    invoke-super {p0}, Lcom/lody/virtual/client/hook/base/PatchDelegate;->onBindHooks()V

    .line 38
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;

    const-string v1, "enqueueToast"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/notification/NotificationManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 39
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;

    const-string v1, "cancelToast"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/notification/NotificationManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 40
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;

    const-string v1, "areNotificationsEnabledForPackage"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/notification/NotificationManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 41
    new-instance v0, Lcom/lody/virtual/client/hook/base/StaticHook;

    const-string v1, "registerListener"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/StaticHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/notification/NotificationManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 42
    new-instance v0, Lcom/lody/virtual/client/hook/base/StaticHook;

    const-string v1, "unregisterListener"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/StaticHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/notification/NotificationManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 43
    new-instance v0, Lcom/lody/virtual/client/hook/base/StaticHook;

    const-string v1, "getAppActiveNotifications"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/StaticHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/notification/NotificationManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 44
    const-string v0, "samsung"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;

    const-string v1, "removeEdgeNotification"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/notification/NotificationManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 47
    :cond_0
    return-void
.end method

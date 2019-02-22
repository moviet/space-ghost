.class public Lcom/lody/virtual/client/hook/patchs/isub/ISubPatch;
.super Lcom/lody/virtual/client/hook/base/PatchDelegate;
.source "ISubPatch.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lody/virtual/client/hook/base/PatchDelegate",
        "<",
        "Lcom/lody/virtual/client/hook/binders/ISubBinderDelegate;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/PatchDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookApply(Lcom/lody/virtual/client/hook/binders/ISubBinderDelegate;)V
    .locals 2

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/lody/virtual/client/hook/base/PatchDelegate;->afterHookApply(Lcom/lody/virtual/client/interfaces/IHookObject;)V

    .line 23
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;

    const-string v1, "getAllSubInfoList"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/isub/ISubPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 24
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;

    const-string v1, "getAllSubInfoCount"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/isub/ISubPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 25
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "getActiveSubscriptionInfo"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/isub/ISubPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 26
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "getActiveSubscriptionInfoForIccId"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/isub/ISubPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 27
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "getActiveSubscriptionInfoForSimSlotIndex"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/isub/ISubPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 28
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "getActiveSubscriptionInfoList"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/isub/ISubPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 29
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "getActiveSubInfoCount"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/isub/ISubPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 30
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "getSubscriptionProperty"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/isub/ISubPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 31
    return-void
.end method

.method protected bridge synthetic afterHookApply(Lcom/lody/virtual/client/interfaces/IHookObject;)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, Lcom/lody/virtual/client/hook/binders/ISubBinderDelegate;

    invoke-virtual {p0, p1}, Lcom/lody/virtual/client/hook/patchs/isub/ISubPatch;->afterHookApply(Lcom/lody/virtual/client/hook/binders/ISubBinderDelegate;)V

    return-void
.end method

.method protected createHookDelegate()Lcom/lody/virtual/client/hook/binders/ISubBinderDelegate;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/lody/virtual/client/hook/binders/ISubBinderDelegate;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/binders/ISubBinderDelegate;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic createHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/isub/ISubPatch;->createHookDelegate()Lcom/lody/virtual/client/hook/binders/ISubBinderDelegate;

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
    .line 35
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/isub/ISubPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/binders/ISubBinderDelegate;

    const-string v1, "isub"

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/binders/ISubBinderDelegate;->replaceService(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public isEnvBad()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 40
    sget-object v2, Lmirror/android/os/ServiceManager;->getService:Lmirror/RefStaticMethod;

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "isub"

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/isub/ISubPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v3

    if-eq v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

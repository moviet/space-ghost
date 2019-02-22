.class public Lcom/lody/virtual/client/hook/patchs/net_management/NetworkManagementPatch;
.super Lcom/lody/virtual/client/hook/base/PatchDelegate;
.source "NetworkManagementPatch.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lody/virtual/client/hook/base/PatchDelegate",
        "<",
        "Lcom/lody/virtual/client/hook/binders/NetworkManagementBinderDelegate;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/PatchDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method protected createHookDelegate()Lcom/lody/virtual/client/hook/binders/NetworkManagementBinderDelegate;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/lody/virtual/client/hook/binders/NetworkManagementBinderDelegate;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/binders/NetworkManagementBinderDelegate;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic createHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/net_management/NetworkManagementPatch;->createHookDelegate()Lcom/lody/virtual/client/hook/binders/NetworkManagementBinderDelegate;

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
    .line 22
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/net_management/NetworkManagementPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/binders/NetworkManagementBinderDelegate;

    const-string v1, "network_management"

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/binders/NetworkManagementBinderDelegate;->replaceService(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public isEnvBad()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 33
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/net_management/NetworkManagementPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v2

    sget-object v3, Lmirror/android/os/ServiceManager;->getService:Lmirror/RefStaticMethod;

    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, "network_management"

    aput-object v5, v4, v1

    invoke-virtual {v3, v4}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected onBindHooks()V
    .locals 3

    .prologue
    .line 27
    invoke-super {p0}, Lcom/lody/virtual/client/hook/base/PatchDelegate;->onBindHooks()V

    .line 28
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceUidHook;

    const-string v1, "setUidCleartextNetworkPolicy"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/hook/base/ReplaceUidHook;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/net_management/NetworkManagementPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 29
    return-void
.end method

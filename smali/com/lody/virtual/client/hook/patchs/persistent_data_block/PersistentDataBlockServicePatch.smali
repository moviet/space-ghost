.class public Lcom/lody/virtual/client/hook/patchs/persistent_data_block/PersistentDataBlockServicePatch;
.super Lcom/lody/virtual/client/hook/base/PatchDelegate;
.source "PersistentDataBlockServicePatch.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lody/virtual/client/hook/base/PatchDelegate",
        "<",
        "Lcom/lody/virtual/client/hook/binders/PersistentDataBlockServiceBinderDelegate;",
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
.method protected createHookDelegate()Lcom/lody/virtual/client/hook/binders/PersistentDataBlockServiceBinderDelegate;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/lody/virtual/client/hook/binders/PersistentDataBlockServiceBinderDelegate;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/binders/PersistentDataBlockServiceBinderDelegate;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic createHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/persistent_data_block/PersistentDataBlockServicePatch;->createHookDelegate()Lcom/lody/virtual/client/hook/binders/PersistentDataBlockServiceBinderDelegate;

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
    .line 25
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/persistent_data_block/PersistentDataBlockServicePatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/binders/PersistentDataBlockServiceBinderDelegate;

    const-string v1, "persistent_data_block"

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/binders/PersistentDataBlockServiceBinderDelegate;->replaceService(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public isEnvBad()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 42
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/persistent_data_block/PersistentDataBlockServicePatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v2

    sget-object v3, Lmirror/android/os/ServiceManager;->getService:Lmirror/RefStaticMethod;

    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, "persistent_data_block"

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
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 30
    invoke-super {p0}, Lcom/lody/virtual/client/hook/base/PatchDelegate;->onBindHooks()V

    .line 31
    new-instance v0, Lcom/lody/virtual/client/hook/base/ResultStaticHook;

    const-string v1, "write"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/hook/base/ResultStaticHook;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/persistent_data_block/PersistentDataBlockServicePatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 32
    new-instance v0, Lcom/lody/virtual/client/hook/base/ResultStaticHook;

    const-string v1, "read"

    new-array v2, v3, [B

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/hook/base/ResultStaticHook;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/persistent_data_block/PersistentDataBlockServicePatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 33
    new-instance v0, Lcom/lody/virtual/client/hook/base/ResultStaticHook;

    const-string v1, "wipe"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/hook/base/ResultStaticHook;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/persistent_data_block/PersistentDataBlockServicePatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 34
    new-instance v0, Lcom/lody/virtual/client/hook/base/ResultStaticHook;

    const-string v1, "getDataBlockSize"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/hook/base/ResultStaticHook;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/persistent_data_block/PersistentDataBlockServicePatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 35
    new-instance v0, Lcom/lody/virtual/client/hook/base/ResultStaticHook;

    const-string v1, "getMaximumDataBlockSize"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/hook/base/ResultStaticHook;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/persistent_data_block/PersistentDataBlockServicePatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 36
    new-instance v0, Lcom/lody/virtual/client/hook/base/ResultStaticHook;

    const-string v1, "setOemUnlockEnabled"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/hook/base/ResultStaticHook;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/persistent_data_block/PersistentDataBlockServicePatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 37
    new-instance v0, Lcom/lody/virtual/client/hook/base/ResultStaticHook;

    const-string v1, "getOemUnlockEnabled"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/hook/base/ResultStaticHook;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/persistent_data_block/PersistentDataBlockServicePatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 38
    return-void
.end method

.class public Lcom/lody/virtual/client/hook/patchs/imms/MmsPatch;
.super Lcom/lody/virtual/client/hook/base/PatchDelegate;
.source "MmsPatch.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lody/virtual/client/hook/base/PatchDelegate",
        "<",
        "Lcom/lody/virtual/client/hook/binders/IMMSBinderDelegate;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/PatchDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method protected createHookDelegate()Lcom/lody/virtual/client/hook/binders/IMMSBinderDelegate;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/lody/virtual/client/hook/binders/IMMSBinderDelegate;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/binders/IMMSBinderDelegate;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic createHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/imms/MmsPatch;->createHookDelegate()Lcom/lody/virtual/client/hook/binders/IMMSBinderDelegate;

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
    .line 23
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/imms/MmsPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/binders/IMMSBinderDelegate;

    const-string v1, "imms"

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/binders/IMMSBinderDelegate;->replaceService(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public isEnvBad()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 28
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/imms/MmsPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v2

    sget-object v3, Lmirror/android/os/ServiceManager;->getService:Lmirror/RefStaticMethod;

    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, "imms"

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
    const/4 v2, 0x1

    .line 33
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgHook;

    const-string v1, "sendMessage"

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgHook;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/imms/MmsPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 34
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgHook;

    const-string v1, "downloadMessage"

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgHook;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/imms/MmsPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 35
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;

    const-string v1, "importTextMessage"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/imms/MmsPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 36
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;

    const-string v1, "importMultimediaMessage"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/imms/MmsPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 37
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;

    const-string v1, "deleteStoredMessage"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/imms/MmsPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 38
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;

    const-string v1, "deleteStoredConversation"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/imms/MmsPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 39
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;

    const-string v1, "updateStoredMessageStatus"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/imms/MmsPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 40
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;

    const-string v1, "archiveStoredConversation"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/imms/MmsPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 41
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;

    const-string v1, "addTextMessageDraft"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/imms/MmsPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 42
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;

    const-string v1, "addMultimediaMessageDraft"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/imms/MmsPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 43
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgHook;

    const-string v1, "sendStoredMessage"

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgHook;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/imms/MmsPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 44
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;

    const-string v1, "setAutoPersisting"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/imms/MmsPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 45
    return-void
.end method

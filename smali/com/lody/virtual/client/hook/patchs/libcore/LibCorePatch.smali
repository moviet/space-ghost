.class public Lcom/lody/virtual/client/hook/patchs/libcore/LibCorePatch;
.super Lcom/lody/virtual/client/hook/base/PatchDelegate;
.source "LibCorePatch.java"


# annotations
.annotation runtime Lcom/lody/virtual/client/hook/base/Patch;
    value = {
        Lcom/lody/virtual/client/hook/patchs/libcore/GetUid;,
        Lcom/lody/virtual/client/hook/patchs/libcore/Stat;,
        Lcom/lody/virtual/client/hook/patchs/libcore/Lstat;,
        Lcom/lody/virtual/client/hook/patchs/libcore/Getpwnam;,
        Lcom/lody/virtual/client/hook/patchs/libcore/GetsockoptUcred;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lody/virtual/client/hook/base/PatchDelegate",
        "<",
        "Lcom/lody/virtual/client/hook/base/HookDelegate",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/PatchDelegate;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/lody/virtual/client/hook/patchs/libcore/LibCorePatch;->getOs()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getOs()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lmirror/libcore/io/Libcore;->os:Lmirror/RefStaticObject;

    invoke-virtual {v0}, Lmirror/RefStaticObject;->get()Ljava/lang/Object;

    move-result-object v1

    .line 34
    sget-object v0, Lmirror/libcore/io/ForwardingOs;->os:Lmirror/RefObject;

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lmirror/libcore/io/ForwardingOs;->os:Lmirror/RefObject;

    invoke-virtual {v0, v1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    .line 40
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected createHookDelegate()Lcom/lody/virtual/client/hook/base/HookDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lody/virtual/client/hook/base/HookDelegate",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/libcore/LibCorePatch$1;

    invoke-direct {v0, p0}, Lcom/lody/virtual/client/hook/patchs/libcore/LibCorePatch$1;-><init>(Lcom/lody/virtual/client/hook/patchs/libcore/LibCorePatch;)V

    return-object v0
.end method

.method protected bridge synthetic createHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/libcore/LibCorePatch;->createHookDelegate()Lcom/lody/virtual/client/hook/base/HookDelegate;

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
    .line 55
    sget-object v1, Lmirror/libcore/io/Libcore;->os:Lmirror/RefStaticObject;

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/libcore/LibCorePatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/base/HookDelegate;

    invoke-virtual {v0}, Lcom/lody/virtual/client/hook/base/HookDelegate;->getProxyInterface()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmirror/RefStaticObject;->set(Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public isEnvBad()Z
    .locals 2

    .prologue
    .line 60
    invoke-static {}, Lcom/lody/virtual/client/hook/patchs/libcore/LibCorePatch;->getOs()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/libcore/LibCorePatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/base/HookDelegate;

    invoke-virtual {v0}, Lcom/lody/virtual/client/hook/base/HookDelegate;->getProxyInterface()Ljava/lang/Object;

    move-result-object v0

    if-eq v1, v0, :cond_0

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
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 45
    invoke-super {p0}, Lcom/lody/virtual/client/hook/base/PatchDelegate;->onBindHooks()V

    .line 46
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceUidHook;

    const-string v1, "chown"

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/hook/base/ReplaceUidHook;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/libcore/LibCorePatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 47
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceUidHook;

    const-string v1, "fchown"

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/hook/base/ReplaceUidHook;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/libcore/LibCorePatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 48
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceUidHook;

    const-string v1, "getpwuid"

    invoke-direct {v0, v1, v3}, Lcom/lody/virtual/client/hook/base/ReplaceUidHook;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/libcore/LibCorePatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 49
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceUidHook;

    const-string v1, "lchown"

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/hook/base/ReplaceUidHook;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/libcore/LibCorePatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 50
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceUidHook;

    const-string v1, "setuid"

    invoke-direct {v0, v1, v3}, Lcom/lody/virtual/client/hook/base/ReplaceUidHook;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/libcore/LibCorePatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 51
    return-void
.end method

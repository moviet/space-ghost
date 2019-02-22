.class public Lcom/lody/virtual/client/hook/patchs/window/session/WindowSessionPatch;
.super Lcom/lody/virtual/client/hook/base/PatchDelegate;
.source "WindowSessionPatch.java"


# annotations
.annotation runtime Lcom/lody/virtual/client/hook/base/Patch;
    value = {
        Lcom/lody/virtual/client/hook/patchs/window/session/Add;,
        Lcom/lody/virtual/client/hook/patchs/window/session/AddToDisplay;,
        Lcom/lody/virtual/client/hook/patchs/window/session/AddToDisplayWithoutInputChannel;,
        Lcom/lody/virtual/client/hook/patchs/window/session/AddWithoutInputChannel;,
        Lcom/lody/virtual/client/hook/patchs/window/session/Relayout;
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
.method public constructor <init>(Landroid/os/IInterface;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/base/PatchDelegate;-><init>(Ljava/lang/Object;)V

    .line 20
    return-void
.end method

.method static synthetic access$000(Lcom/lody/virtual/client/hook/patchs/window/session/WindowSessionPatch;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lody/virtual/client/hook/patchs/window/session/WindowSessionPatch;->baseObject:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public createHookDelegate()Lcom/lody/virtual/client/hook/base/HookDelegate;
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
    .line 25
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/window/session/WindowSessionPatch$1;

    invoke-direct {v0, p0}, Lcom/lody/virtual/client/hook/patchs/window/session/WindowSessionPatch$1;-><init>(Lcom/lody/virtual/client/hook/patchs/window/session/WindowSessionPatch;)V

    return-object v0
.end method

.method public bridge synthetic createHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/window/session/WindowSessionPatch;->createHookDelegate()Lcom/lody/virtual/client/hook/base/HookDelegate;

    move-result-object v0

    return-object v0
.end method

.method public inject()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 41
    return-void
.end method

.method public isEnvBad()Z
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/window/session/WindowSessionPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/base/HookDelegate;

    invoke-virtual {v0}, Lcom/lody/virtual/client/hook/base/HookDelegate;->getProxyInterface()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindHooks()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Lcom/lody/virtual/client/hook/base/PatchDelegate;->onBindHooks()V

    .line 36
    return-void
.end method

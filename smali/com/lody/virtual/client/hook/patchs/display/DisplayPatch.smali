.class public Lcom/lody/virtual/client/hook/patchs/display/DisplayPatch;
.super Lcom/lody/virtual/client/hook/base/PatchDelegate;
.source "DisplayPatch.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation runtime Lcom/lody/virtual/client/hook/base/Patch;
    value = {
        Lcom/lody/virtual/client/hook/patchs/display/CreateVirtualDisplay;
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
    .line 18
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
    .line 21
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/display/DisplayPatch$1;

    invoke-direct {v0, p0}, Lcom/lody/virtual/client/hook/patchs/display/DisplayPatch$1;-><init>(Lcom/lody/virtual/client/hook/patchs/display/DisplayPatch;)V

    return-object v0
.end method

.method protected bridge synthetic createHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/display/DisplayPatch;->createHookDelegate()Lcom/lody/virtual/client/hook/base/HookDelegate;

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
    .line 33
    sget-object v0, Lmirror/android/hardware/display/DisplayManagerGlobal;->getInstance:Lmirror/RefStaticMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 34
    sget-object v2, Lmirror/android/hardware/display/DisplayManagerGlobal;->mDm:Lmirror/RefObject;

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/display/DisplayPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/base/HookDelegate;

    invoke-virtual {v0}, Lcom/lody/virtual/client/hook/base/HookDelegate;->getProxyInterface()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public isEnvBad()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    sget-object v0, Lmirror/android/hardware/display/DisplayManagerGlobal;->getInstance:Lmirror/RefStaticMethod;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 40
    sget-object v1, Lmirror/android/hardware/display/DisplayManagerGlobal;->mDm:Lmirror/RefObject;

    invoke-virtual {v1, v0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    .line 41
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/display/DisplayPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/client/hook/base/HookDelegate;

    invoke-virtual {v1}, Lcom/lody/virtual/client/hook/base/HookDelegate;->getProxyInterface()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

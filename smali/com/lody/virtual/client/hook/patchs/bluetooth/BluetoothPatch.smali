.class public Lcom/lody/virtual/client/hook/patchs/bluetooth/BluetoothPatch;
.super Lcom/lody/virtual/client/hook/base/PatchDelegate;
.source "BluetoothPatch.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lody/virtual/client/hook/base/PatchDelegate",
        "<",
        "Lcom/lody/virtual/client/hook/binders/BluetoothBinderDelegate;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/PatchDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method protected createHookDelegate()Lcom/lody/virtual/client/hook/binders/BluetoothBinderDelegate;
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/lody/virtual/client/hook/binders/BluetoothBinderDelegate;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/binders/BluetoothBinderDelegate;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic createHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/bluetooth/BluetoothPatch;->createHookDelegate()Lcom/lody/virtual/client/hook/binders/BluetoothBinderDelegate;

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
    .line 20
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/bluetooth/BluetoothPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/binders/BluetoothBinderDelegate;

    sget-object v1, Lcom/lody/virtual/client/hook/binders/BluetoothBinderDelegate;->SERVICE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/binders/BluetoothBinderDelegate;->replaceService(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public isEnvBad()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 31
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/bluetooth/BluetoothPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v2

    sget-object v3, Lmirror/android/os/ServiceManager;->getService:Lmirror/RefStaticMethod;

    new-array v4, v0, [Ljava/lang/Object;

    sget-object v5, Lcom/lody/virtual/client/hook/binders/BluetoothBinderDelegate;->SERVICE_NAME:Ljava/lang/String;

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
    .locals 0

    .prologue
    .line 25
    invoke-super {p0}, Lcom/lody/virtual/client/hook/base/PatchDelegate;->onBindHooks()V

    .line 27
    return-void
.end method

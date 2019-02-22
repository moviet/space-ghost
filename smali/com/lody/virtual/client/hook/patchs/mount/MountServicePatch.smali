.class public Lcom/lody/virtual/client/hook/patchs/mount/MountServicePatch;
.super Lcom/lody/virtual/client/hook/base/PatchDelegate;
.source "MountServicePatch.java"


# annotations
.annotation runtime Lcom/lody/virtual/client/hook/base/Patch;
    value = {
        Lcom/lody/virtual/client/hook/patchs/mount/GetVolumeList;,
        Lcom/lody/virtual/client/hook/patchs/mount/Mkdirs;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lody/virtual/client/hook/base/PatchDelegate",
        "<",
        "Lcom/lody/virtual/client/hook/binders/MountServiceBinderDelegate;",
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
.method protected createHookDelegate()Lcom/lody/virtual/client/hook/binders/MountServiceBinderDelegate;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/lody/virtual/client/hook/binders/MountServiceBinderDelegate;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/binders/MountServiceBinderDelegate;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic createHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/mount/MountServicePatch;->createHookDelegate()Lcom/lody/virtual/client/hook/binders/MountServiceBinderDelegate;

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
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/mount/MountServicePatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/binders/MountServiceBinderDelegate;

    const-string v1, "mount"

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/binders/MountServiceBinderDelegate;->replaceService(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public isEnvBad()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 28
    sget-object v2, Lmirror/android/os/ServiceManager;->getService:Lmirror/RefStaticMethod;

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "mount"

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/mount/MountServicePatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v3

    if-eq v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

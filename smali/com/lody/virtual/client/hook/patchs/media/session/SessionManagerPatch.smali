.class public Lcom/lody/virtual/client/hook/patchs/media/session/SessionManagerPatch;
.super Lcom/lody/virtual/client/hook/base/PatchDelegate;
.source "SessionManagerPatch.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation runtime Lcom/lody/virtual/client/hook/base/Patch;
    value = {
        Lcom/lody/virtual/client/hook/patchs/media/session/CreateSession;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lody/virtual/client/hook/base/PatchDelegate",
        "<",
        "Lcom/lody/virtual/client/hook/binders/SessionBinderDelegate;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/PatchDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method protected createHookDelegate()Lcom/lody/virtual/client/hook/binders/SessionBinderDelegate;
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/lody/virtual/client/hook/binders/SessionBinderDelegate;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/binders/SessionBinderDelegate;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic createHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/media/session/SessionManagerPatch;->createHookDelegate()Lcom/lody/virtual/client/hook/binders/SessionBinderDelegate;

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
    .line 27
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/media/session/SessionManagerPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/binders/SessionBinderDelegate;

    const-string v1, "media_session"

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/binders/SessionBinderDelegate;->replaceService(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public isEnvBad()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 32
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/media/session/SessionManagerPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v2

    sget-object v3, Lmirror/android/os/ServiceManager;->getService:Lmirror/RefStaticMethod;

    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, "media_session"

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

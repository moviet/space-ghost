.class public Lcom/lody/virtual/client/hook/patchs/graphics/GraphicsStatsPatch;
.super Lcom/lody/virtual/client/hook/base/PatchDelegate;
.source "GraphicsStatsPatch.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lody/virtual/client/hook/base/PatchDelegate",
        "<",
        "Lcom/lody/virtual/client/hook/binders/GraphicsStatsBinderDelegate;",
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
.method protected createHookDelegate()Lcom/lody/virtual/client/hook/binders/GraphicsStatsBinderDelegate;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/lody/virtual/client/hook/binders/GraphicsStatsBinderDelegate;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/binders/GraphicsStatsBinderDelegate;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic createHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/graphics/GraphicsStatsPatch;->createHookDelegate()Lcom/lody/virtual/client/hook/binders/GraphicsStatsBinderDelegate;

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
    .line 28
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/graphics/GraphicsStatsPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/binders/GraphicsStatsBinderDelegate;

    const-string v1, "graphicsstats"

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/binders/GraphicsStatsBinderDelegate;->replaceService(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public isEnvBad()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 33
    sget-object v2, Lmirror/android/os/ServiceManager;->getService:Lmirror/RefStaticMethod;

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "graphicsstats"

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/graphics/GraphicsStatsPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v3

    if-eq v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected onBindHooks()V
    .locals 2

    .prologue
    .line 22
    invoke-super {p0}, Lcom/lody/virtual/client/hook/base/PatchDelegate;->onBindHooks()V

    .line 23
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;

    const-string v1, "requestBufferForProcess"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/graphics/GraphicsStatsPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 24
    return-void
.end method

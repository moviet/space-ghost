.class public Lcom/lody/virtual/client/hook/patchs/job/JobPatch;
.super Lcom/lody/virtual/client/hook/base/PatchDelegate;
.source "JobPatch.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/client/hook/patchs/job/JobPatch$cancel;,
        Lcom/lody/virtual/client/hook/patchs/job/JobPatch$cancelAll;,
        Lcom/lody/virtual/client/hook/patchs/job/JobPatch$getAllPendingJobs;,
        Lcom/lody/virtual/client/hook/patchs/job/JobPatch$schedule;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lody/virtual/client/hook/base/PatchDelegate",
        "<",
        "Lcom/lody/virtual/client/hook/binders/JobBinderDelegate;",
        ">;"
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


# virtual methods
.method protected createHookDelegate()Lcom/lody/virtual/client/hook/binders/JobBinderDelegate;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/lody/virtual/client/hook/binders/JobBinderDelegate;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/binders/JobBinderDelegate;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic createHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/job/JobPatch;->createHookDelegate()Lcom/lody/virtual/client/hook/binders/JobBinderDelegate;

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
    .line 29
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/job/JobPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/binders/JobBinderDelegate;

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/binders/JobBinderDelegate;->replaceService(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public isEnvBad()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 43
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/job/JobPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v2

    sget-object v3, Lmirror/android/os/ServiceManager;->getService:Lmirror/RefStaticMethod;

    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, "jobscheduler"

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
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-super {p0}, Lcom/lody/virtual/client/hook/base/PatchDelegate;->onBindHooks()V

    .line 35
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/job/JobPatch$schedule;

    invoke-direct {v0, p0, v1}, Lcom/lody/virtual/client/hook/patchs/job/JobPatch$schedule;-><init>(Lcom/lody/virtual/client/hook/patchs/job/JobPatch;Lcom/lody/virtual/client/hook/patchs/job/JobPatch$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/job/JobPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 36
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/job/JobPatch$getAllPendingJobs;

    invoke-direct {v0, p0, v1}, Lcom/lody/virtual/client/hook/patchs/job/JobPatch$getAllPendingJobs;-><init>(Lcom/lody/virtual/client/hook/patchs/job/JobPatch;Lcom/lody/virtual/client/hook/patchs/job/JobPatch$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/job/JobPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 37
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/job/JobPatch$cancelAll;

    invoke-direct {v0, p0, v1}, Lcom/lody/virtual/client/hook/patchs/job/JobPatch$cancelAll;-><init>(Lcom/lody/virtual/client/hook/patchs/job/JobPatch;Lcom/lody/virtual/client/hook/patchs/job/JobPatch$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/job/JobPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 38
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/job/JobPatch$cancel;

    invoke-direct {v0, p0, v1}, Lcom/lody/virtual/client/hook/patchs/job/JobPatch$cancel;-><init>(Lcom/lody/virtual/client/hook/patchs/job/JobPatch;Lcom/lody/virtual/client/hook/patchs/job/JobPatch$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/job/JobPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 39
    return-void
.end method

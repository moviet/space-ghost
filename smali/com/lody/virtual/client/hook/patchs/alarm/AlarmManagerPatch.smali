.class public Lcom/lody/virtual/client/hook/patchs/alarm/AlarmManagerPatch;
.super Lcom/lody/virtual/client/hook/base/PatchDelegate;
.source "AlarmManagerPatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/client/hook/patchs/alarm/AlarmManagerPatch$Set;,
        Lcom/lody/virtual/client/hook/patchs/alarm/AlarmManagerPatch$SetTime;,
        Lcom/lody/virtual/client/hook/patchs/alarm/AlarmManagerPatch$SetTimeZone;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lody/virtual/client/hook/base/PatchDelegate",
        "<",
        "Lcom/lody/virtual/client/hook/binders/AlarmBinderDelegate;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/PatchDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method protected createHookDelegate()Lcom/lody/virtual/client/hook/binders/AlarmBinderDelegate;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/lody/virtual/client/hook/binders/AlarmBinderDelegate;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/binders/AlarmBinderDelegate;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic createHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/alarm/AlarmManagerPatch;->createHookDelegate()Lcom/lody/virtual/client/hook/binders/AlarmBinderDelegate;

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
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/alarm/AlarmManagerPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/binders/AlarmBinderDelegate;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/binders/AlarmBinderDelegate;->replaceService(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public isEnvBad()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 42
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/alarm/AlarmManagerPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v2

    sget-object v3, Lmirror/android/os/ServiceManager;->getService:Lmirror/RefStaticMethod;

    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, "alarm"

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
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/alarm/AlarmManagerPatch$Set;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/patchs/alarm/AlarmManagerPatch$Set;-><init>(Lcom/lody/virtual/client/hook/patchs/alarm/AlarmManagerPatch$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/alarm/AlarmManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 36
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/alarm/AlarmManagerPatch$SetTime;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/patchs/alarm/AlarmManagerPatch$SetTime;-><init>(Lcom/lody/virtual/client/hook/patchs/alarm/AlarmManagerPatch$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/alarm/AlarmManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 37
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/alarm/AlarmManagerPatch$SetTimeZone;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/patchs/alarm/AlarmManagerPatch$SetTimeZone;-><init>(Lcom/lody/virtual/client/hook/patchs/alarm/AlarmManagerPatch$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/alarm/AlarmManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 38
    return-void
.end method

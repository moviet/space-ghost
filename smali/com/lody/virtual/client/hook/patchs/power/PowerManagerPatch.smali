.class public Lcom/lody/virtual/client/hook/patchs/power/PowerManagerPatch;
.super Lcom/lody/virtual/client/hook/base/PatchDelegate;
.source "PowerManagerPatch.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lody/virtual/client/hook/base/PatchDelegate",
        "<",
        "Lcom/lody/virtual/client/hook/binders/PowerBinderDelegate;",
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

.method static synthetic access$000(Lcom/lody/virtual/client/hook/patchs/power/PowerManagerPatch;Ljava/lang/reflect/InvocationTargetException;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/patchs/power/PowerManagerPatch;->onHandleError(Ljava/lang/reflect/InvocationTargetException;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private onHandleError(Ljava/lang/reflect/InvocationTargetException;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/SecurityException;

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 63
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method protected createHookDelegate()Lcom/lody/virtual/client/hook/binders/PowerBinderDelegate;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/lody/virtual/client/hook/binders/PowerBinderDelegate;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/binders/PowerBinderDelegate;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic createHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/power/PowerManagerPatch;->createHookDelegate()Lcom/lody/virtual/client/hook/binders/PowerBinderDelegate;

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
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/power/PowerManagerPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/binders/PowerBinderDelegate;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/binders/PowerBinderDelegate;->replaceService(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public isEnvBad()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 68
    sget-object v2, Lmirror/android/os/ServiceManager;->getService:Lmirror/RefStaticMethod;

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "power"

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/power/PowerManagerPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

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
    .line 34
    invoke-super {p0}, Lcom/lody/virtual/client/hook/base/PatchDelegate;->onBindHooks()V

    .line 35
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/power/PowerManagerPatch$1;

    const-string v1, "acquireWakeLock"

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Lcom/lody/virtual/client/hook/patchs/power/PowerManagerPatch$1;-><init>(Lcom/lody/virtual/client/hook/patchs/power/PowerManagerPatch;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/power/PowerManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 45
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/power/PowerManagerPatch$2;

    const-string v1, "acquireWakeLockWithUid"

    invoke-direct {v0, p0, v1}, Lcom/lody/virtual/client/hook/patchs/power/PowerManagerPatch$2;-><init>(Lcom/lody/virtual/client/hook/patchs/power/PowerManagerPatch;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/power/PowerManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 56
    new-instance v0, Lcom/lody/virtual/client/hook/base/ResultStaticHook;

    const-string v1, "updateWakeLockWorkSource"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/hook/base/ResultStaticHook;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/power/PowerManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 57
    return-void
.end method

.class public Lcom/lody/virtual/client/hook/patchs/window/WindowManagerPatch;
.super Lcom/lody/virtual/client/hook/base/PatchDelegate;
.source "WindowManagerPatch.java"


# annotations
.annotation runtime Lcom/lody/virtual/client/hook/base/Patch;
    value = {
        Lcom/lody/virtual/client/hook/patchs/window/OverridePendingAppTransition;,
        Lcom/lody/virtual/client/hook/patchs/window/OverridePendingAppTransitionInPlace;,
        Lcom/lody/virtual/client/hook/patchs/window/OpenSession;,
        Lcom/lody/virtual/client/hook/patchs/window/SetAppStartingWindow;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lody/virtual/client/hook/base/PatchDelegate",
        "<",
        "Lcom/lody/virtual/client/hook/binders/WindowBinderDelegate;",
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
.method protected createHookDelegate()Lcom/lody/virtual/client/hook/binders/WindowBinderDelegate;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/lody/virtual/client/hook/binders/WindowBinderDelegate;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/binders/WindowBinderDelegate;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic createHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/window/WindowManagerPatch;->createHookDelegate()Lcom/lody/virtual/client/hook/binders/WindowBinderDelegate;

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
    .line 30
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/window/WindowManagerPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/binders/WindowBinderDelegate;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/binders/WindowBinderDelegate;->replaceService(Ljava/lang/String;)V

    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_2

    .line 32
    sget-object v0, Lmirror/android/view/WindowManagerGlobal;->sWindowManagerService:Lmirror/RefStaticObject;

    if-eqz v0, :cond_0

    .line 33
    sget-object v1, Lmirror/android/view/WindowManagerGlobal;->sWindowManagerService:Lmirror/RefStaticObject;

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/window/WindowManagerPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/binders/WindowBinderDelegate;

    invoke-virtual {v0}, Lcom/lody/virtual/client/hook/binders/WindowBinderDelegate;->getProxyInterface()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmirror/RefStaticObject;->set(Ljava/lang/Object;)V

    .line 40
    :cond_0
    :goto_0
    sget-object v0, Lmirror/com/android/internal/policy/PhoneWindow;->TYPE:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 41
    sget-object v1, Lmirror/com/android/internal/policy/PhoneWindow;->sWindowManager:Lmirror/RefStaticObject;

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/window/WindowManagerPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/binders/WindowBinderDelegate;

    invoke-virtual {v0}, Lcom/lody/virtual/client/hook/binders/WindowBinderDelegate;->getProxyInterface()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmirror/RefStaticObject;->set(Ljava/lang/Object;)V

    .line 43
    :cond_1
    return-void

    .line 36
    :cond_2
    sget-object v0, Lmirror/android/view/Display;->sWindowManager:Lmirror/RefStaticObject;

    if-eqz v0, :cond_0

    .line 37
    sget-object v1, Lmirror/android/view/Display;->sWindowManager:Lmirror/RefStaticObject;

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/window/WindowManagerPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/binders/WindowBinderDelegate;

    invoke-virtual {v0}, Lcom/lody/virtual/client/hook/binders/WindowBinderDelegate;->getProxyInterface()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmirror/RefStaticObject;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isEnvBad()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 54
    sget-object v2, Lmirror/android/os/ServiceManager;->getService:Lmirror/RefStaticMethod;

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "window"

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/window/WindowManagerPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

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
    .line 47
    invoke-super {p0}, Lcom/lody/virtual/client/hook/base/PatchDelegate;->onBindHooks()V

    .line 48
    new-instance v0, Lcom/lody/virtual/client/hook/base/StaticHook;

    const-string v1, "addAppToken"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/StaticHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/window/WindowManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 49
    new-instance v0, Lcom/lody/virtual/client/hook/base/StaticHook;

    const-string v1, "setScreenCaptureDisabled"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/StaticHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/window/WindowManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 50
    return-void
.end method

.class public Lcom/lody/virtual/client/hook/patchs/input/InputMethodManagerPatch;
.super Lcom/lody/virtual/client/hook/base/PatchDelegate;
.source "InputMethodManagerPatch.java"


# annotations
.annotation runtime Lcom/lody/virtual/client/hook/base/Patch;
    value = {
        Lcom/lody/virtual/client/hook/patchs/input/StartInput;,
        Lcom/lody/virtual/client/hook/patchs/input/WindowGainedFocus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lody/virtual/client/hook/base/PatchDelegate",
        "<",
        "Lcom/lody/virtual/client/hook/binders/IMMBinderDelegate;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/PatchDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method protected createHookDelegate()Lcom/lody/virtual/client/hook/binders/IMMBinderDelegate;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/lody/virtual/client/hook/binders/IMMBinderDelegate;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/binders/IMMBinderDelegate;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic createHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/input/InputMethodManagerPatch;->createHookDelegate()Lcom/lody/virtual/client/hook/binders/IMMBinderDelegate;

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
    .line 26
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/input/InputMethodManagerPatch;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 27
    sget-object v2, Lmirror/com/android/internal/view/inputmethod/InputMethodManager;->mService:Lmirror/RefObject;

    .line 28
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/input/InputMethodManagerPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/binders/IMMBinderDelegate;

    invoke-virtual {v0}, Lcom/lody/virtual/client/hook/binders/IMMBinderDelegate;->getProxyInterface()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/input/InputMethodManagerPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/binders/IMMBinderDelegate;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/binders/IMMBinderDelegate;->replaceService(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public isEnvBad()Z
    .locals 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/input/InputMethodManagerPatch;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 36
    sget-object v1, Lmirror/com/android/internal/view/inputmethod/InputMethodManager;->mService:Lmirror/RefObject;

    .line 37
    invoke-virtual {v1, v0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/input/InputMethodManagerPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/binders/IMMBinderDelegate;

    invoke-virtual {v0}, Lcom/lody/virtual/client/hook/binders/IMMBinderDelegate;->getBaseInterface()Ljava/lang/Object;

    move-result-object v0

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

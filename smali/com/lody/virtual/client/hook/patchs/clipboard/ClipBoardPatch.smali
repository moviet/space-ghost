.class public Lcom/lody/virtual/client/hook/patchs/clipboard/ClipBoardPatch;
.super Lcom/lody/virtual/client/hook/base/PatchDelegate;
.source "ClipBoardPatch.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lody/virtual/client/hook/base/PatchDelegate",
        "<",
        "Lcom/lody/virtual/client/hook/binders/ClipboardBinderDelegate;",
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
.method protected createHookDelegate()Lcom/lody/virtual/client/hook/binders/ClipboardBinderDelegate;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/lody/virtual/client/hook/binders/ClipboardBinderDelegate;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/binders/ClipboardBinderDelegate;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic createHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/clipboard/ClipBoardPatch;->createHookDelegate()Lcom/lody/virtual/client/hook/binders/ClipboardBinderDelegate;

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
    .line 25
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/clipboard/ClipBoardPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/binders/ClipboardBinderDelegate;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/binders/ClipboardBinderDelegate;->replaceService(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public isEnvBad()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 44
    sget-object v2, Lmirror/android/os/ServiceManager;->getService:Lmirror/RefStaticMethod;

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "clipboard"

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/clipboard/ClipBoardPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

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
    .line 30
    invoke-super {p0}, Lcom/lody/virtual/client/hook/base/PatchDelegate;->onBindHooks()V

    .line 31
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "getPrimaryClip"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/clipboard/ClipBoardPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-le v0, v1, :cond_0

    .line 33
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "setPrimaryClip"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/clipboard/ClipBoardPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 34
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "getPrimaryClipDescription"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/clipboard/ClipBoardPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 35
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "hasPrimaryClip"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/clipboard/ClipBoardPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 36
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "addPrimaryClipChangedListener"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/clipboard/ClipBoardPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 37
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "removePrimaryClipChangedListener"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/clipboard/ClipBoardPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 38
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "hasClipboardText"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/clipboard/ClipBoardPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 40
    :cond_0
    return-void
.end method

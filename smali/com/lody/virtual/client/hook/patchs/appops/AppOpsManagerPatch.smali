.class public Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch;
.super Lcom/lody/virtual/client/hook/base/PatchDelegate;
.source "AppOpsManagerPatch.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch$BaseHook;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lody/virtual/client/hook/base/PatchDelegate",
        "<",
        "Lcom/lody/virtual/client/hook/binders/AppOpsBinderDelegate;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppOpsManagerPatch"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/PatchDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method protected createHookDelegate()Lcom/lody/virtual/client/hook/binders/AppOpsBinderDelegate;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/lody/virtual/client/hook/binders/AppOpsBinderDelegate;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/binders/AppOpsBinderDelegate;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic createHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch;->createHookDelegate()Lcom/lody/virtual/client/hook/binders/AppOpsBinderDelegate;

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
    .line 35
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/binders/AppOpsBinderDelegate;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/binders/AppOpsBinderDelegate;->replaceService(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public isEnvBad()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 80
    sget-object v2, Lmirror/android/os/ServiceManager;->getService:Lmirror/RefStaticMethod;

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "appops"

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v3

    if-eq v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected onBindHooks()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 40
    invoke-super {p0}, Lcom/lody/virtual/client/hook/base/PatchDelegate;->onBindHooks()V

    .line 41
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch$BaseHook;

    const-string v1, "checkOperation"

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch$BaseHook;-><init>(Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 42
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch$BaseHook;

    const-string v1, "noteOperation"

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch$BaseHook;-><init>(Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 43
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch$BaseHook;

    const-string v1, "startOperation"

    invoke-direct {v0, p0, v1, v2, v4}, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch$BaseHook;-><init>(Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 44
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch$BaseHook;

    const-string v1, "finishOperation"

    invoke-direct {v0, p0, v1, v2, v4}, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch$BaseHook;-><init>(Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 45
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch$BaseHook;

    const-string v1, "startWatchingMode"

    invoke-direct {v0, p0, v1, v5, v3}, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch$BaseHook;-><init>(Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 46
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch$BaseHook;

    const-string v1, "checkPackage"

    invoke-direct {v0, p0, v1, v6, v3}, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch$BaseHook;-><init>(Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 47
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch$BaseHook;

    const-string v1, "getOpsForPackage"

    invoke-direct {v0, p0, v1, v6, v3}, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch$BaseHook;-><init>(Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 48
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch$BaseHook;

    const-string v1, "setMode"

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch$BaseHook;-><init>(Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 49
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch$BaseHook;

    const-string v1, "checkAudioOperation"

    invoke-direct {v0, p0, v1, v2, v4}, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch$BaseHook;-><init>(Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 50
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch$BaseHook;

    const-string v1, "setAudioRestriction"

    invoke-direct {v0, p0, v1, v2, v5}, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch$BaseHook;-><init>(Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 51
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch$BaseHook;

    const-string v1, "noteProxyOperation"

    invoke-direct {v0, p0, v1, v2, v4}, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch$BaseHook;-><init>(Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 52
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "resetAllModes"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/appops/AppOpsManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 53
    return-void
.end method

.class public Lcom/lody/virtual/client/hook/patchs/user/UserManagerPatch;
.super Lcom/lody/virtual/client/hook/base/PatchDelegate;
.source "UserManagerPatch.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lody/virtual/client/hook/base/PatchDelegate",
        "<",
        "Lcom/lody/virtual/client/hook/binders/UserBinderDelegate;",
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
.method protected createHookDelegate()Lcom/lody/virtual/client/hook/binders/UserBinderDelegate;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/lody/virtual/client/hook/binders/UserBinderDelegate;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/binders/UserBinderDelegate;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic createHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/user/UserManagerPatch;->createHookDelegate()Lcom/lody/virtual/client/hook/binders/UserBinderDelegate;

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
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/user/UserManagerPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/binders/UserBinderDelegate;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/binders/UserBinderDelegate;->replaceService(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public isEnvBad()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 53
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/user/UserManagerPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v2

    sget-object v3, Lmirror/android/os/ServiceManager;->getService:Lmirror/RefStaticMethod;

    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, "user"

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
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 35
    invoke-super {p0}, Lcom/lody/virtual/client/hook/base/PatchDelegate;->onBindHooks()V

    .line 36
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;

    const-string v1, "setApplicationRestrictions"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/user/UserManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 37
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;

    const-string v1, "getApplicationRestrictions"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/user/UserManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 38
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;

    const-string v1, "getApplicationRestrictionsForUser"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/user/UserManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 39
    new-instance v0, Lcom/lody/virtual/client/hook/base/ResultStaticHook;

    const-string v1, "getProfileParent"

    invoke-direct {v0, v1, v3}, Lcom/lody/virtual/client/hook/base/ResultStaticHook;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/user/UserManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 40
    new-instance v0, Lcom/lody/virtual/client/hook/base/ResultStaticHook;

    const-string v1, "getUserIcon"

    invoke-direct {v0, v1, v3}, Lcom/lody/virtual/client/hook/base/ResultStaticHook;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/user/UserManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 41
    new-instance v0, Lcom/lody/virtual/client/hook/base/ResultStaticHook;

    const-string v1, "getUserInfo"

    invoke-direct {v0, v1, v3}, Lcom/lody/virtual/client/hook/base/ResultStaticHook;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/user/UserManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 42
    new-instance v0, Lcom/lody/virtual/client/hook/base/ResultStaticHook;

    const-string v1, "getDefaultGuestRestrictions"

    invoke-direct {v0, v1, v3}, Lcom/lody/virtual/client/hook/base/ResultStaticHook;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/user/UserManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 43
    new-instance v0, Lcom/lody/virtual/client/hook/base/ResultStaticHook;

    const-string v1, "setDefaultGuestRestrictions"

    invoke-direct {v0, v1, v3}, Lcom/lody/virtual/client/hook/base/ResultStaticHook;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/user/UserManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 44
    new-instance v0, Lcom/lody/virtual/client/hook/base/ResultStaticHook;

    const-string v1, "removeRestrictions"

    invoke-direct {v0, v1, v3}, Lcom/lody/virtual/client/hook/base/ResultStaticHook;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/user/UserManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 45
    new-instance v0, Lcom/lody/virtual/client/hook/base/ResultStaticHook;

    const-string v1, "getUsers"

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/hook/base/ResultStaticHook;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/user/UserManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 46
    new-instance v0, Lcom/lody/virtual/client/hook/base/ResultStaticHook;

    const-string v1, "createUser"

    invoke-direct {v0, v1, v3}, Lcom/lody/virtual/client/hook/base/ResultStaticHook;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/user/UserManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 47
    new-instance v0, Lcom/lody/virtual/client/hook/base/ResultStaticHook;

    const-string v1, "createProfileForUser"

    invoke-direct {v0, v1, v3}, Lcom/lody/virtual/client/hook/base/ResultStaticHook;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/user/UserManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 48
    new-instance v0, Lcom/lody/virtual/client/hook/base/ResultStaticHook;

    const-string v1, "getProfiles"

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/hook/base/ResultStaticHook;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/user/UserManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 49
    return-void
.end method

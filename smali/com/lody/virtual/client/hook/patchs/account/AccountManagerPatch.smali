.class public Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;
.super Lcom/lody/virtual/client/hook/base/PatchDelegate;
.source "AccountManagerPatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$renameSharedAccountAsUser;,
        Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$getPreviousName;,
        Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$renameAccount;,
        Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$removeSharedAccountAsUser;,
        Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$getSharedAccountsAsUser;,
        Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$addSharedAccountAsUser;,
        Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$getAuthTokenLabel;,
        Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$accountAuthenticated;,
        Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$confirmCredentialsAsUser;,
        Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$editProperties;,
        Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$updateCredentials;,
        Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$addAccountAsUser;,
        Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$addAccount;,
        Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$getAuthToken;,
        Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$updateAppPermission;,
        Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$setUserData;,
        Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$clearPassword;,
        Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$setPassword;,
        Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$setAuthToken;,
        Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$peekAuthToken;,
        Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$invalidateAuthToken;,
        Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$copyAccountToUser;,
        Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$removeAccountExplicitly;,
        Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$removeAccountAsUser;,
        Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$removeAccount;,
        Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$addAccountExplicitly;,
        Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$getAccountsByFeatures;,
        Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$hasFeatures;,
        Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$getAccountsAsUser;,
        Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$getAccountsByTypeForPackage;,
        Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$getAccountsForPackage;,
        Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$getAccounts;,
        Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$getAuthenticatorTypes;,
        Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$getUserData;,
        Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$getPassword;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lody/virtual/client/hook/base/PatchDelegate",
        "<",
        "Lcom/lody/virtual/client/hook/binders/AccountBinderDelegate;",
        ">;"
    }
.end annotation


# static fields
.field private static Mgr:Lcom/lody/virtual/client/local/VAccountManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/lody/virtual/client/local/VAccountManager;->get()Lcom/lody/virtual/client/local/VAccountManager;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->Mgr:Lcom/lody/virtual/client/local/VAccountManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/PatchDelegate;-><init>()V

    return-void
.end method

.method static synthetic access$3500()Lcom/lody/virtual/client/local/VAccountManager;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->Mgr:Lcom/lody/virtual/client/local/VAccountManager;

    return-object v0
.end method


# virtual methods
.method protected createHookDelegate()Lcom/lody/virtual/client/hook/binders/AccountBinderDelegate;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/lody/virtual/client/hook/binders/AccountBinderDelegate;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/binders/AccountBinderDelegate;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic createHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->createHookDelegate()Lcom/lody/virtual/client/hook/binders/AccountBinderDelegate;

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
    .line 31
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/binders/AccountBinderDelegate;

    const-string v1, "account"

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/binders/AccountBinderDelegate;->replaceService(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public isEnvBad()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 76
    sget-object v2, Lmirror/android/os/ServiceManager;->getService:Lmirror/RefStaticMethod;

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "account"

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

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

    .line 36
    invoke-super {p0}, Lcom/lody/virtual/client/hook/base/PatchDelegate;->onBindHooks()V

    .line 37
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$getPassword;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$getPassword;-><init>(Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 38
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$getUserData;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$getUserData;-><init>(Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 39
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$getAuthenticatorTypes;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$getAuthenticatorTypes;-><init>(Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 40
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$getAccounts;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$getAccounts;-><init>(Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 41
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$getAccountsForPackage;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$getAccountsForPackage;-><init>(Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 42
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$getAccountsByTypeForPackage;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$getAccountsByTypeForPackage;-><init>(Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 43
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$getAccountsAsUser;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$getAccountsAsUser;-><init>(Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 44
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$hasFeatures;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$hasFeatures;-><init>(Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 45
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$getAccountsByFeatures;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$getAccountsByFeatures;-><init>(Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 46
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$addAccountExplicitly;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$addAccountExplicitly;-><init>(Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 47
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$removeAccount;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$removeAccount;-><init>(Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 48
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$removeAccountAsUser;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$removeAccountAsUser;-><init>(Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 49
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$removeAccountExplicitly;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$removeAccountExplicitly;-><init>(Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 50
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$copyAccountToUser;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$copyAccountToUser;-><init>(Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 51
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$invalidateAuthToken;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$invalidateAuthToken;-><init>(Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 52
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$peekAuthToken;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$peekAuthToken;-><init>(Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 53
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$setAuthToken;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$setAuthToken;-><init>(Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 54
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$setPassword;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$setPassword;-><init>(Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 55
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$clearPassword;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$clearPassword;-><init>(Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 56
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$setUserData;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$setUserData;-><init>(Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 57
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$updateAppPermission;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$updateAppPermission;-><init>(Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 58
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$getAuthToken;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$getAuthToken;-><init>(Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 59
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$addAccount;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$addAccount;-><init>(Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 60
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$addAccountAsUser;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$addAccountAsUser;-><init>(Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 61
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$updateCredentials;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$updateCredentials;-><init>(Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 62
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$editProperties;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$editProperties;-><init>(Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 63
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$confirmCredentialsAsUser;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$confirmCredentialsAsUser;-><init>(Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 64
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$accountAuthenticated;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$accountAuthenticated;-><init>(Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 65
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$getAuthTokenLabel;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$getAuthTokenLabel;-><init>(Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 66
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$addSharedAccountAsUser;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$addSharedAccountAsUser;-><init>(Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 67
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$getSharedAccountsAsUser;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$getSharedAccountsAsUser;-><init>(Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 68
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$removeSharedAccountAsUser;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$removeSharedAccountAsUser;-><init>(Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 69
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$renameAccount;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$renameAccount;-><init>(Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 70
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$getPreviousName;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$getPreviousName;-><init>(Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 71
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$renameSharedAccountAsUser;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$renameSharedAccountAsUser;-><init>(Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 72
    return-void
.end method

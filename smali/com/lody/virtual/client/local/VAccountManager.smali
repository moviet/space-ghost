.class public Lcom/lody/virtual/client/local/VAccountManager;
.super Ljava/lang/Object;
.source "VAccountManager.java"


# static fields
.field private static sMgr:Lcom/lody/virtual/client/local/VAccountManager;


# instance fields
.field private mRemote:Lcom/lody/virtual/service/IAccountManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/lody/virtual/client/local/VAccountManager;

    invoke-direct {v0}, Lcom/lody/virtual/client/local/VAccountManager;-><init>()V

    sput-object v0, Lcom/lody/virtual/client/local/VAccountManager;->sMgr:Lcom/lody/virtual/client/local/VAccountManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/lody/virtual/client/local/VAccountManager;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/lody/virtual/client/local/VAccountManager;->sMgr:Lcom/lody/virtual/client/local/VAccountManager;

    return-object v0
.end method


# virtual methods
.method public accountAuthenticated(Landroid/accounts/Account;)Z
    .locals 2

    .prologue
    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VAccountManager;->getRemote()Lcom/lody/virtual/service/IAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/lody/virtual/service/IAccountManager;->accountAuthenticated(ILandroid/accounts/Account;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 105
    :goto_0
    return v0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public addAccount(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 8

    .prologue
    .line 135
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VAccountManager;->getRemote()Lcom/lody/virtual/service/IAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/lody/virtual/service/IAccountManager;->addAccount(ILandroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2

    .prologue
    .line 63
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VAccountManager;->getRemote()Lcom/lody/virtual/service/IAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/lody/virtual/service/IAccountManager;->addAccountExplicitly(ILandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 65
    :goto_0
    return v0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public clearPassword(Landroid/accounts/Account;)V
    .locals 2

    .prologue
    .line 111
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VAccountManager;->getRemote()Lcom/lody/virtual/service/IAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/lody/virtual/service/IAccountManager;->clearPassword(ILandroid/accounts/Account;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public confirmCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;Z)V
    .locals 6

    .prologue
    .line 183
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VAccountManager;->getRemote()Lcom/lody/virtual/service/IAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/lody/virtual/service/IAccountManager;->confirmCredentials(ILandroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public editProperties(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 167
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VAccountManager;->getRemote()Lcom/lody/virtual/service/IAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/lody/virtual/service/IAccountManager;->editProperties(ILandroid/accounts/IAccountManagerResponse;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getAccounts(Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 2

    .prologue
    .line 71
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VAccountManager;->getRemote()Lcom/lody/virtual/service/IAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/lody/virtual/service/IAccountManager;->getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    goto :goto_0
.end method

.method public getAccountsByFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 199
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VAccountManager;->getRemote()Lcom/lody/virtual/service/IAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/lody/virtual/service/IAccountManager;->getAccountsByFeatures(ILandroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V
    .locals 8

    .prologue
    .line 55
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VAccountManager;->getRemote()Lcom/lody/virtual/service/IAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/lody/virtual/service/IAccountManager;->getAuthToken(ILandroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getAuthTokenLabel(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 175
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VAccountManager;->getRemote()Lcom/lody/virtual/service/IAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/lody/virtual/service/IAccountManager;->getAuthTokenLabel(ILandroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;
    .locals 2

    .prologue
    .line 39
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VAccountManager;->getRemote()Lcom/lody/virtual/service/IAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/lody/virtual/service/IAccountManager;->getAuthenticatorTypes(I)[Landroid/accounts/AuthenticatorDescription;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/AuthenticatorDescription;

    goto :goto_0
.end method

.method public getPassword(Landroid/accounts/Account;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 215
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VAccountManager;->getRemote()Lcom/lody/virtual/service/IAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/lody/virtual/service/IAccountManager;->getPassword(ILandroid/accounts/Account;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 217
    :goto_0
    return-object v0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getPreviousName(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VAccountManager;->getRemote()Lcom/lody/virtual/service/IAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/lody/virtual/service/IAccountManager;->getPreviousName(ILandroid/accounts/Account;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getRemote()Lcom/lody/virtual/service/IAccountManager;
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lody/virtual/client/local/VAccountManager;->mRemote:Lcom/lody/virtual/service/IAccountManager;

    if-nez v0, :cond_0

    .line 30
    const-string v0, "account"

    .line 31
    invoke-static {v0}, Lcom/lody/virtual/client/service/ServiceManagerNative;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lody/virtual/service/IAccountManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lody/virtual/service/IAccountManager;

    move-result-object v0

    .line 32
    const-class v1, Lcom/lody/virtual/service/IAccountManager;

    invoke-static {v1, v0}, Lcom/lody/virtual/client/local/LocalProxyUtils;->genProxy(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/service/IAccountManager;

    iput-object v0, p0, Lcom/lody/virtual/client/local/VAccountManager;->mRemote:Lcom/lody/virtual/service/IAccountManager;

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/client/local/VAccountManager;->mRemote:Lcom/lody/virtual/service/IAccountManager;

    return-object v0
.end method

.method public getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 223
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VAccountManager;->getRemote()Lcom/lody/virtual/service/IAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/lody/virtual/service/IAccountManager;->getUserData(ILandroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 225
    :goto_0
    return-object v0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public hasFeatures(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 95
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VAccountManager;->getRemote()Lcom/lody/virtual/service/IAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/lody/virtual/service/IAccountManager;->hasFeatures(ILandroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 191
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VAccountManager;->getRemote()Lcom/lody/virtual/service/IAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/lody/virtual/service/IAccountManager;->invalidateAuthToken(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VAccountManager;->getRemote()Lcom/lody/virtual/service/IAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/lody/virtual/service/IAccountManager;->peekAuthToken(ILandroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 81
    :goto_0
    return-object v0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public removeAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Z)V
    .locals 2

    .prologue
    .line 47
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VAccountManager;->getRemote()Lcom/lody/virtual/service/IAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/lody/virtual/service/IAccountManager;->removeAccount(ILandroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public removeAccountExplicitly(Landroid/accounts/Account;)Z
    .locals 2

    .prologue
    .line 151
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VAccountManager;->getRemote()Lcom/lody/virtual/service/IAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/lody/virtual/service/IAccountManager;->removeAccountExplicitly(ILandroid/accounts/Account;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 153
    :goto_0
    return v0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public renameAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 119
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VAccountManager;->getRemote()Lcom/lody/virtual/service/IAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/lody/virtual/service/IAccountManager;->renameAccount(ILandroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 207
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VAccountManager;->getRemote()Lcom/lody/virtual/service/IAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/lody/virtual/service/IAccountManager;->setAuthToken(ILandroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setPassword(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 127
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VAccountManager;->getRemote()Lcom/lody/virtual/service/IAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/lody/virtual/service/IAccountManager;->setPassword(ILandroid/accounts/Account;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 159
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VAccountManager;->getRemote()Lcom/lody/virtual/service/IAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/lody/virtual/service/IAccountManager;->setUserData(ILandroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 143
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/local/VAccountManager;->getRemote()Lcom/lody/virtual/service/IAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/lody/virtual/service/IAccountManager;->updateCredentials(ILandroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

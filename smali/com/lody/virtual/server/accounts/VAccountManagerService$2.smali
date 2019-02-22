.class Lcom/lody/virtual/server/accounts/VAccountManagerService$2;
.super Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;
.source "VAccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/server/accounts/VAccountManagerService;->hasFeatures(ILandroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/server/accounts/VAccountManagerService;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$features:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lody/virtual/server/accounts/VAccountManagerService;Landroid/accounts/IAccountManagerResponse;ILcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;ZZLjava/lang/String;Landroid/accounts/Account;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$2;->this$0:Lcom/lody/virtual/server/accounts/VAccountManagerService;

    iput-object p8, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$2;->val$account:Landroid/accounts/Account;

    iput-object p9, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$2;->val$features:[Ljava/lang/String;

    invoke-direct/range {p0 .. p7}, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;-><init>(Lcom/lody/virtual/server/accounts/VAccountManagerService;Landroid/accounts/IAccountManagerResponse;ILcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;ZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/lody/virtual/server/accounts/VAccountManagerService$2;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v0

    .line 414
    if-eqz v0, :cond_0

    .line 416
    if-nez p1, :cond_1

    .line 417
    const/4 v1, 0x5

    :try_start_0
    const-string v2, "null bundle"

    invoke-interface {v0, v1, v2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    # getter for: Lcom/lody/virtual/server/accounts/VAccountManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " calling onResult() on response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 423
    const-string v2, "booleanResult"

    const-string v3, "booleanResult"

    const/4 v4, 0x0

    .line 424
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 423
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 425
    invoke-interface {v0, v1}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 426
    :catch_0
    move-exception v0

    .line 428
    # getter for: Lcom/lody/virtual/server/accounts/VAccountManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "failure while notifying response"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public run()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 405
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$2;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    iget-object v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$2;->val$account:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$2;->val$features:[Ljava/lang/String;

    invoke-interface {v0, p0, v1, v2}, Landroid/accounts/IAccountAuthenticator;->hasFeatures(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :goto_0
    return-void

    .line 406
    :catch_0
    move-exception v0

    .line 407
    const/4 v0, 0x1

    const-string v1, "remote exception"

    invoke-virtual {p0, v0, v1}, Lcom/lody/virtual/server/accounts/VAccountManagerService$2;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.class Lcom/lody/virtual/server/accounts/VAccountManagerService$GetAccountsByTypeAndFeatureSession;
.super Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;
.source "VAccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/accounts/VAccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetAccountsByTypeAndFeatureSession"
.end annotation


# instance fields
.field private volatile mAccountsOfType:[Landroid/accounts/Account;

.field private volatile mAccountsWithFeatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mCurrentAccount:I

.field private final mFeatures:[Ljava/lang/String;

.field final synthetic this$0:Lcom/lody/virtual/server/accounts/VAccountManagerService;


# direct methods
.method public constructor <init>(Lcom/lody/virtual/server/accounts/VAccountManagerService;Landroid/accounts/IAccountManagerResponse;ILcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;[Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 1334
    iput-object p1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$GetAccountsByTypeAndFeatureSession;->this$0:Lcom/lody/virtual/server/accounts/VAccountManagerService;

    .line 1335
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;-><init>(Lcom/lody/virtual/server/accounts/VAccountManagerService;Landroid/accounts/IAccountManagerResponse;ILcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;ZZLjava/lang/String;)V

    .line 1330
    iput-object v7, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsOfType:[Landroid/accounts/Account;

    .line 1331
    iput-object v7, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsWithFeatures:Ljava/util/ArrayList;

    .line 1332
    iput v5, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    .line 1337
    iput-object p5, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$GetAccountsByTypeAndFeatureSession;->mFeatures:[Ljava/lang/String;

    .line 1338
    return-void
.end method


# virtual methods
.method public checkAccount()V
    .locals 3

    .prologue
    .line 1351
    iget v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    iget-object v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsOfType:[Landroid/accounts/Account;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1352
    invoke-virtual {p0}, Lcom/lody/virtual/server/accounts/VAccountManagerService$GetAccountsByTypeAndFeatureSession;->sendResult()V

    .line 1371
    :goto_0
    return-void

    .line 1356
    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$GetAccountsByTypeAndFeatureSession;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 1357
    if-nez v0, :cond_1

    .line 1362
    # getter for: Lcom/lody/virtual/server/accounts/VAccountManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAccount: aborting session since we are no longer connected to the authenticator, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1363
    invoke-virtual {p0}, Lcom/lody/virtual/server/accounts/VAccountManagerService$GetAccountsByTypeAndFeatureSession;->toDebugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1362
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1367
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsOfType:[Landroid/accounts/Account;

    iget v2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$GetAccountsByTypeAndFeatureSession;->mFeatures:[Ljava/lang/String;

    invoke-interface {v0, p0, v1, v2}, Landroid/accounts/IAccountAuthenticator;->hasFeatures(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1368
    :catch_0
    move-exception v0

    .line 1369
    const/4 v0, 0x1

    const-string v1, "remote exception"

    invoke-virtual {p0, v0, v1}, Lcom/lody/virtual/server/accounts/VAccountManagerService$GetAccountsByTypeAndFeatureSession;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 1375
    iget v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$GetAccountsByTypeAndFeatureSession;->mNumResults:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$GetAccountsByTypeAndFeatureSession;->mNumResults:I

    .line 1376
    if-nez p1, :cond_0

    .line 1377
    const/4 v0, 0x5

    const-string v1, "null bundle"

    invoke-virtual {p0, v0, v1}, Lcom/lody/virtual/server/accounts/VAccountManagerService$GetAccountsByTypeAndFeatureSession;->onError(ILjava/lang/String;)V

    .line 1385
    :goto_0
    return-void

    .line 1380
    :cond_0
    const-string v0, "booleanResult"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1381
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsWithFeatures:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsOfType:[Landroid/accounts/Account;

    iget v2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1383
    :cond_1
    iget v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    .line 1384
    invoke-virtual {p0}, Lcom/lody/virtual/server/accounts/VAccountManagerService$GetAccountsByTypeAndFeatureSession;->checkAccount()V

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
    .line 1342
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$GetAccountsByTypeAndFeatureSession;->this$0:Lcom/lody/virtual/server/accounts/VAccountManagerService;

    iget v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$GetAccountsByTypeAndFeatureSession;->mUserId:I

    iget-object v2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$GetAccountsByTypeAndFeatureSession;->mAuthenticatorInfo:Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;

    iget-object v2, v2, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;->desc:Landroid/accounts/AuthenticatorDescription;

    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsOfType:[Landroid/accounts/Account;

    .line 1344
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsOfType:[Landroid/accounts/Account;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsWithFeatures:Ljava/util/ArrayList;

    .line 1345
    const/4 v0, 0x0

    iput v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    .line 1347
    invoke-virtual {p0}, Lcom/lody/virtual/server/accounts/VAccountManagerService$GetAccountsByTypeAndFeatureSession;->checkAccount()V

    .line 1348
    return-void
.end method

.method public sendResult()V
    .locals 5

    .prologue
    .line 1388
    invoke-virtual {p0}, Lcom/lody/virtual/server/accounts/VAccountManagerService$GetAccountsByTypeAndFeatureSession;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v2

    .line 1389
    if-eqz v2, :cond_2

    .line 1391
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsWithFeatures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [Landroid/accounts/Account;

    .line 1392
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_0

    .line 1393
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsWithFeatures:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    aput-object v0, v3, v1

    .line 1392
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1395
    :cond_0
    # getter for: Lcom/lody/virtual/server/accounts/VAccountManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->access$300()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1396
    # getter for: Lcom/lody/virtual/server/accounts/VAccountManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " calling onResult() on response "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1400
    const-string v1, "accounts"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 1401
    invoke-interface {v2, v0}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1407
    :cond_2
    :goto_1
    return-void

    .line 1402
    :catch_0
    move-exception v0

    .line 1404
    # getter for: Lcom/lody/virtual/server/accounts/VAccountManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "failure while notifying response"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getAccountsByTypeAndFeatures"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$GetAccountsByTypeAndFeatureSession;->mFeatures:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ","

    iget-object v2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$GetAccountsByTypeAndFeatureSession;->mFeatures:[Ljava/lang/String;

    .line 1413
    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

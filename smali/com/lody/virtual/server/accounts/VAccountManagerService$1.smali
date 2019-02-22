.class Lcom/lody/virtual/server/accounts/VAccountManagerService$1;
.super Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;
.source "VAccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAuthToken(ILandroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/server/accounts/VAccountManagerService;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$authTokenType:Ljava/lang/String;

.field final synthetic val$callerPkg:Ljava/lang/String;

.field final synthetic val$customTokens:Z

.field final synthetic val$loginOptions:Landroid/os/Bundle;

.field final synthetic val$notifyOnAuthFailure:Z

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/lody/virtual/server/accounts/VAccountManagerService;Landroid/accounts/IAccountManagerResponse;ILcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;ZZLjava/lang/String;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/String;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->this$0:Lcom/lody/virtual/server/accounts/VAccountManagerService;

    iput-object p8, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$account:Landroid/accounts/Account;

    iput-object p9, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$authTokenType:Ljava/lang/String;

    iput-object p10, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$loginOptions:Landroid/os/Bundle;

    iput-boolean p11, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$notifyOnAuthFailure:Z

    iput-boolean p12, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$customTokens:Z

    iput p13, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$userId:I

    iput-object p14, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$callerPkg:Ljava/lang/String;

    invoke-direct/range {p0 .. p7}, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;-><init>(Lcom/lody/virtual/server/accounts/VAccountManagerService;Landroid/accounts/IAccountManagerResponse;ILcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;ZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 284
    if-eqz p1, :cond_6

    .line 285
    const-string v0, "authtoken"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 286
    if-eqz v7, :cond_5

    .line 287
    const-string v0, "authAccount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 288
    const-string v0, "accountType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 289
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    :cond_0
    const/4 v0, 0x5

    const-string v1, "the type and name should not be empty"

    invoke-virtual {p0, v0, v1}, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->onError(ILjava/lang/String;)V

    .line 326
    :goto_0
    return-void

    .line 294
    :cond_1
    iget-boolean v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$customTokens:Z

    if-nez v0, :cond_4

    .line 295
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->this$0:Lcom/lody/virtual/server/accounts/VAccountManagerService;

    # getter for: Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->access$000(Lcom/lody/virtual/server/accounts/VAccountManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    monitor-enter v3

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->this$0:Lcom/lody/virtual/server/accounts/VAccountManagerService;

    iget v4, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$userId:I

    invoke-virtual {v0, v4, v1, v2}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAccount(ILjava/lang/String;Ljava/lang/String;)Lcom/lody/virtual/server/accounts/VAccount;

    move-result-object v0

    .line 297
    if-nez v0, :cond_3

    .line 298
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->this$0:Lcom/lody/virtual/server/accounts/VAccountManagerService;

    # getter for: Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->access$000(Lcom/lody/virtual/server/accounts/VAccountManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    iget v4, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$userId:I

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 299
    if-nez v0, :cond_2

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 301
    iget-object v4, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->this$0:Lcom/lody/virtual/server/accounts/VAccountManagerService;

    # getter for: Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->access$000(Lcom/lody/virtual/server/accounts/VAccountManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    iget v5, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$userId:I

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 303
    :cond_2
    new-instance v4, Lcom/lody/virtual/server/accounts/VAccount;

    iget v5, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$userId:I

    new-instance v6, Landroid/accounts/Account;

    invoke-direct {v6, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Lcom/lody/virtual/server/accounts/VAccount;-><init>(ILandroid/accounts/Account;)V

    .line 304
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->this$0:Lcom/lody/virtual/server/accounts/VAccountManagerService;

    # invokes: Lcom/lody/virtual/server/accounts/VAccountManagerService;->serializeAllAccounts()V
    invoke-static {v0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->access$100(Lcom/lody/virtual/server/accounts/VAccountManagerService;)V

    .line 307
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    :cond_4
    const-string v0, "android.accounts.expiry"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 311
    iget-boolean v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$customTokens:Z

    if-eqz v0, :cond_5

    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v8, v0

    if-lez v0, :cond_5

    .line 313
    new-instance v1, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;

    iget-object v2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->this$0:Lcom/lody/virtual/server/accounts/VAccountManagerService;

    iget v3, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$userId:I

    iget-object v4, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$account:Landroid/accounts/Account;

    iget-object v5, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$authTokenType:Ljava/lang/String;

    iget-object v6, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$callerPkg:Ljava/lang/String;

    invoke-direct/range {v1 .. v9}, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;-><init>(Lcom/lody/virtual/server/accounts/VAccountManagerService;ILandroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 314
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->this$0:Lcom/lody/virtual/server/accounts/VAccountManagerService;

    # getter for: Lcom/lody/virtual/server/accounts/VAccountManagerService;->authTokenRecords:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->access$200(Lcom/lody/virtual/server/accounts/VAccountManagerService;)Ljava/util/LinkedList;

    move-result-object v2

    monitor-enter v2

    .line 315
    :try_start_1
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->this$0:Lcom/lody/virtual/server/accounts/VAccountManagerService;

    # getter for: Lcom/lody/virtual/server/accounts/VAccountManagerService;->authTokenRecords:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->access$200(Lcom/lody/virtual/server/accounts/VAccountManagerService;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 316
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->this$0:Lcom/lody/virtual/server/accounts/VAccountManagerService;

    # getter for: Lcom/lody/virtual/server/accounts/VAccountManagerService;->authTokenRecords:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->access$200(Lcom/lody/virtual/server/accounts/VAccountManagerService;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 317
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 320
    :cond_5
    const-string v0, "intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 321
    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$notifyOnAuthFailure:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$customTokens:Z

    if-nez v0, :cond_6

    .line 325
    :cond_6
    invoke-super {p0, p1}, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->onResult(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 307
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 317
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public run()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    iget-object v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$account:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$authTokenType:Ljava/lang/String;

    iget-object v3, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$loginOptions:Landroid/os/Bundle;

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/accounts/IAccountAuthenticator;->getAuthToken(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 280
    return-void
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getAuthToken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$account:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", authTokenType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$authTokenType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", loginOptions "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$loginOptions:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", notifyOnAuthFailure "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$notifyOnAuthFailure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

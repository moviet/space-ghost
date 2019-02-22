.class Lcom/lody/virtual/server/accounts/VAccountManagerService$7;
.super Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;
.source "VAccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/server/accounts/VAccountManagerService;->addAccount(ILandroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/server/accounts/VAccountManagerService;

.field final synthetic val$accountType:Ljava/lang/String;

.field final synthetic val$authTokenType:Ljava/lang/String;

.field final synthetic val$optionsIn:Landroid/os/Bundle;

.field final synthetic val$requiredFeatures:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lody/virtual/server/accounts/VAccountManagerService;Landroid/accounts/IAccountManagerResponse;ILcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;ZZLjava/lang/String;ZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 600
    iput-object p1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$7;->this$0:Lcom/lody/virtual/server/accounts/VAccountManagerService;

    iput-object p10, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$7;->val$authTokenType:Ljava/lang/String;

    iput-object p11, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$7;->val$requiredFeatures:[Ljava/lang/String;

    iput-object p12, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$7;->val$optionsIn:Landroid/os/Bundle;

    iput-object p13, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$7;->val$accountType:Ljava/lang/String;

    invoke-direct/range {p0 .. p9}, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;-><init>(Lcom/lody/virtual/server/accounts/VAccountManagerService;Landroid/accounts/IAccountManagerResponse;ILcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;ZZLjava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 604
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$7;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    iget-object v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$7;->mAuthenticatorInfo:Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;

    iget-object v1, v1, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;->desc:Landroid/accounts/AuthenticatorDescription;

    iget-object v2, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v3, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$7;->val$authTokenType:Ljava/lang/String;

    iget-object v4, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$7;->val$requiredFeatures:[Ljava/lang/String;

    iget-object v5, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$7;->val$optionsIn:Landroid/os/Bundle;

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Landroid/accounts/IAccountAuthenticator;->addAccount(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)V

    .line 606
    return-void
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", addAccount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accountType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$7;->val$accountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requiredFeatures "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$7;->val$requiredFeatures:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ","

    iget-object v2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$7;->val$requiredFeatures:[Ljava/lang/String;

    .line 614
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

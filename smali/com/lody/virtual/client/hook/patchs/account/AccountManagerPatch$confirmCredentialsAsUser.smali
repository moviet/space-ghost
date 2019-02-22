.class Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$confirmCredentialsAsUser;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "AccountManagerPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "confirmCredentialsAsUser"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 479
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/Hook;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$1;)V
    .locals 0

    .prologue
    .line 479
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$confirmCredentialsAsUser;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 487
    aget-object v0, p3, v5

    check-cast v0, Landroid/accounts/IAccountManagerResponse;

    .line 488
    const/4 v1, 0x1

    aget-object v1, p3, v1

    check-cast v1, Landroid/accounts/Account;

    .line 489
    const/4 v2, 0x2

    aget-object v2, p3, v2

    check-cast v2, Landroid/os/Bundle;

    .line 490
    const/4 v3, 0x3

    aget-object v3, p3, v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 491
    # getter for: Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->Mgr:Lcom/lody/virtual/client/local/VAccountManager;
    invoke-static {}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->access$3500()Lcom/lody/virtual/client/local/VAccountManager;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/lody/virtual/client/local/VAccountManager;->confirmCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;Z)V

    .line 492
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 482
    const-string v0, "confirmCredentialsAsUser"

    return-object v0
.end method

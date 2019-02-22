.class Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$updateCredentials;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "AccountManagerPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "updateCredentials"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 445
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/Hook;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$1;)V
    .locals 0

    .prologue
    .line 445
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$updateCredentials;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 453
    aget-object v1, p3, v6

    check-cast v1, Landroid/accounts/IAccountManagerResponse;

    .line 454
    const/4 v0, 0x1

    aget-object v2, p3, v0

    check-cast v2, Landroid/accounts/Account;

    .line 455
    const/4 v0, 0x2

    aget-object v3, p3, v0

    check-cast v3, Ljava/lang/String;

    .line 456
    const/4 v0, 0x3

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 457
    const/4 v0, 0x4

    aget-object v5, p3, v0

    check-cast v5, Landroid/os/Bundle;

    .line 458
    # getter for: Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->Mgr:Lcom/lody/virtual/client/local/VAccountManager;
    invoke-static {}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->access$3500()Lcom/lody/virtual/client/local/VAccountManager;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Lcom/lody/virtual/client/local/VAccountManager;->updateCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 459
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 448
    const-string v0, "updateCredentials"

    return-object v0
.end method

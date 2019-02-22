.class Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$addAccountAsUser;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "AccountManagerPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "addAccountAsUser"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 426
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/Hook;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$1;)V
    .locals 0

    .prologue
    .line 426
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$addAccountAsUser;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 434
    aget-object v1, p3, v7

    check-cast v1, Landroid/accounts/IAccountManagerResponse;

    .line 435
    const/4 v0, 0x1

    aget-object v2, p3, v0

    check-cast v2, Ljava/lang/String;

    .line 436
    const/4 v0, 0x2

    aget-object v3, p3, v0

    check-cast v3, Ljava/lang/String;

    .line 437
    const/4 v0, 0x3

    aget-object v0, p3, v0

    check-cast v0, [Ljava/lang/String;

    move-object v4, v0

    check-cast v4, [Ljava/lang/String;

    .line 438
    const/4 v0, 0x4

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 439
    const/4 v0, 0x5

    aget-object v6, p3, v0

    check-cast v6, Landroid/os/Bundle;

    .line 440
    # getter for: Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->Mgr:Lcom/lody/virtual/client/local/VAccountManager;
    invoke-static {}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->access$3500()Lcom/lody/virtual/client/local/VAccountManager;

    move-result-object v0

    invoke-virtual/range {v0 .. v6}, Lcom/lody/virtual/client/local/VAccountManager;->addAccount(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 441
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 429
    const-string v0, "addAccountAsUser"

    return-object v0
.end method

.class Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$getAccountsByTypeForPackage;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "AccountManagerPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "getAccountsByTypeForPackage"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/Hook;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$1;)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$getAccountsByTypeForPackage;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 153
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/String;

    .line 154
    const/4 v1, 0x1

    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/String;

    .line 155
    # getter for: Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->Mgr:Lcom/lody/virtual/client/local/VAccountManager;
    invoke-static {}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->access$3500()Lcom/lody/virtual/client/local/VAccountManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lody/virtual/client/local/VAccountManager;->getAccounts(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    const-string v0, "getAccountsByTypeForPackage"

    return-object v0
.end method

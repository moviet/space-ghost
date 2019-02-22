.class Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$clearPassword;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "AccountManagerPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "clearPassword"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/Hook;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$1;)V
    .locals 0

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$clearPassword;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 349
    aget-object v0, p3, v2

    check-cast v0, Landroid/accounts/Account;

    .line 350
    # getter for: Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->Mgr:Lcom/lody/virtual/client/local/VAccountManager;
    invoke-static {}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->access$3500()Lcom/lody/virtual/client/local/VAccountManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lody/virtual/client/local/VAccountManager;->clearPassword(Landroid/accounts/Account;)V

    .line 351
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    const-string v0, "clearPassword"

    return-object v0
.end method

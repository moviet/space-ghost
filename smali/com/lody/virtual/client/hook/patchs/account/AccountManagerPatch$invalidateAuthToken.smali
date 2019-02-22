.class Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$invalidateAuthToken;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "AccountManagerPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "invalidateAuthToken"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/Hook;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$1;)V
    .locals 0

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch$invalidateAuthToken;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 289
    aget-object v0, p3, v3

    check-cast v0, Ljava/lang/String;

    .line 290
    const/4 v1, 0x1

    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/String;

    .line 291
    # getter for: Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->Mgr:Lcom/lody/virtual/client/local/VAccountManager;
    invoke-static {}, Lcom/lody/virtual/client/hook/patchs/account/AccountManagerPatch;->access$3500()Lcom/lody/virtual/client/local/VAccountManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/lody/virtual/client/local/VAccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    const-string v0, "invalidateAuthToken"

    return-object v0
.end method

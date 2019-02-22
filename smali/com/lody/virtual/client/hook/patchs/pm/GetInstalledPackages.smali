.class Lcom/lody/virtual/client/hook/patchs/pm/GetInstalledPackages;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "GetInstalledPackages.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/Hook;-><init>()V

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
    .line 31
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 32
    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v2

    .line 34
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/pm/GetInstalledPackages;->isAppProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lody/virtual/client/core/VirtualCore;->getAppCount()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    :goto_0
    invoke-static {}, Lcom/lody/virtual/client/local/VPackageManager;->get()Lcom/lody/virtual/client/local/VPackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/lody/virtual/client/local/VPackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 40
    invoke-static {p2}, Lcom/lody/virtual/helper/compat/ParceledListSliceCompat;->isReturnParceledListSlice(Ljava/lang/reflect/Method;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-static {v0}, Lcom/lody/virtual/helper/compat/ParceledListSliceCompat;->create(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    .line 43
    :cond_0
    return-object v0

    .line 37
    :cond_1
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getUnHookPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "getInstalledPackages"

    return-object v0
.end method

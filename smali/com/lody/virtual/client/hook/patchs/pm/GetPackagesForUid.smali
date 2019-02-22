.class Lcom/lody/virtual/client/hook/patchs/pm/GetPackagesForUid;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "GetPackagesForUid.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/Hook;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 29
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 30
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 31
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lody/virtual/client/core/VirtualCore;->myUid()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/pm/GetPackagesForUid;->getBaseVUid()I

    move-result v0

    .line 34
    :cond_0
    invoke-static {}, Lcom/lody/virtual/client/local/VPackageManager;->get()Lcom/lody/virtual/client/local/VPackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lody/virtual/client/local/VPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-static {}, Lcom/lody/virtual/client/local/VPackageManager;->get()Lcom/lody/virtual/client/local/VPackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lody/virtual/client/local/VPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {}, Lcom/lody/virtual/client/local/VPackageManager;->get()Lcom/lody/virtual/client/local/VPackageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lody/virtual/client/local/VPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 38
    new-instance v3, Lcom/lody/virtual/helper/utils/collection/ArraySet;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/lody/virtual/helper/utils/collection/ArraySet;-><init>(I)V

    .line 39
    if-eqz v1, :cond_1

    array-length v4, v1

    if-lez v4, :cond_1

    .line 40
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 42
    :cond_1
    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    .line 43
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 45
    :cond_2
    if-eqz v2, :cond_3

    array-length v0, v2

    if-lez v0, :cond_3

    .line 46
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 48
    :cond_3
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "getPackagesForUid"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/pm/GetPackagesForUid;->isAppProcess()Z

    move-result v0

    return v0
.end method

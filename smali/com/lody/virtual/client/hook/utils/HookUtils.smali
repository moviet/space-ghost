.class public Lcom/lody/virtual/client/hook/utils/HookUtils;
.super Ljava/lang/Object;
.source "HookUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllInterface(Ljava/lang/Class;)[Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    invoke-static {p0, v0}, Lcom/lody/virtual/client/hook/utils/HookUtils;->getAllInterfaces(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 51
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Class;

    .line 52
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 53
    return-object v1
.end method

.method public static getAllInterfaces(Ljava/lang/Class;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 59
    array-length v1, v0

    if-eqz v1, :cond_0

    .line 60
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 62
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    .line 63
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lody/virtual/client/hook/utils/HookUtils;->getAllInterfaces(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 65
    :cond_1
    return-void
.end method

.method public static replaceFirstAppPkg([Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 16
    if-nez p0, :cond_1

    .line 25
    :cond_0
    :goto_0
    return-object v0

    .line 19
    :cond_1
    const-class v1, Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/lody/virtual/helper/utils/ArrayUtils;->indexOfFirst([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result v1

    .line 20
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 21
    aget-object v0, p0, v1

    check-cast v0, Ljava/lang/String;

    .line 22
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lody/virtual/client/core/VirtualCore;->getHostPkg()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v1

    goto :goto_0
.end method

.method public static replaceLastAppPkg([Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 29
    const-class v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/lody/virtual/helper/utils/ArrayUtils;->indexOfLast([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result v1

    .line 30
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    .line 31
    aget-object v0, p0, v1

    check-cast v0, Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lody/virtual/client/core/VirtualCore;->getHostPkg()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v1

    .line 35
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static replaceSequenceAppPkg([Ljava/lang/Object;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 39
    const-class v0, Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/lody/virtual/helper/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Class;I)I

    move-result v1

    .line 40
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    .line 41
    aget-object v0, p0, v1

    check-cast v0, Ljava/lang/String;

    .line 42
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lody/virtual/client/core/VirtualCore;->getHostPkg()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v1

    .line 45
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

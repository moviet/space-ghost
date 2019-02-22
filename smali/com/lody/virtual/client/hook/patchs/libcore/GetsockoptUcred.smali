.class Lcom/lody/virtual/client/hook/patchs/libcore/GetsockoptUcred;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "GetsockoptUcred.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/Hook;-><init>()V

    return-void
.end method


# virtual methods
.method public afterCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 17
    if-eqz p4, :cond_0

    .line 18
    invoke-static {p4}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object v1

    .line 19
    const-string v0, "vuid"

    invoke-virtual {v1, v0}, Lcom/lody/virtual/helper/utils/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 20
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lody/virtual/client/core/VirtualCore;->myUid()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 21
    const-string v0, "vuid"

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/libcore/GetsockoptUcred;->getBaseVUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/lody/virtual/helper/utils/Reflect;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    .line 24
    :cond_0
    return-object p4
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    const-string v0, "getsockoptUcred"

    return-object v0
.end method

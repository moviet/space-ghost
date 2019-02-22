.class Lcom/lody/virtual/client/hook/patchs/window/OverridePendingAppTransition;
.super Lcom/lody/virtual/client/hook/patchs/window/BasePatchSession;
.source "OverridePendingAppTransition.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/patchs/window/BasePatchSession;-><init>()V

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
    const/4 v1, 0x0

    .line 18
    aget-object v0, p3, v1

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/window/OverridePendingAppTransition;->getHostPkg()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v1

    .line 21
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/patchs/window/BasePatchSession;->call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "overridePendingAppTransition"

    return-object v0
.end method

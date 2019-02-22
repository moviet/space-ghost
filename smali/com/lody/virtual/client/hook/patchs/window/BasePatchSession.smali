.class abstract Lcom/lody/virtual/client/hook/patchs/window/BasePatchSession;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "BasePatchSession.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/Hook;-><init>()V

    return-void
.end method

.method private patchSession(Landroid/os/IInterface;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/window/session/WindowSessionPatch;

    invoke-direct {v0, p1}, Lcom/lody/virtual/client/hook/patchs/window/session/WindowSessionPatch;-><init>(Landroid/os/IInterface;)V

    .line 28
    invoke-virtual {v0}, Lcom/lody/virtual/client/hook/patchs/window/session/WindowSessionPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/base/HookDelegate;

    invoke-virtual {v0}, Lcom/lody/virtual/client/hook/base/HookDelegate;->getProxyInterface()Ljava/lang/Object;

    move-result-object v0

    return-object v0
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
    .line 19
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 20
    instance-of v1, v0, Landroid/os/IInterface;

    if-eqz v1, :cond_0

    .line 21
    check-cast v0, Landroid/os/IInterface;

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/hook/patchs/window/BasePatchSession;->patchSession(Landroid/os/IInterface;)Ljava/lang/Object;

    move-result-object v0

    .line 23
    :cond_0
    return-object v0
.end method

.class Lcom/lody/virtual/client/hook/patchs/am/PeekService;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "PeekService.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/Hook;-><init>()V

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
    .line 25
    invoke-static {p3}, Lcom/lody/virtual/client/hook/utils/HookUtils;->replaceLastAppPkg([Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Landroid/content/Intent;

    .line 27
    const/4 v1, 0x1

    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/String;

    .line 28
    invoke-static {}, Lcom/lody/virtual/client/local/VActivityManager;->get()Lcom/lody/virtual/client/local/VActivityManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/lody/virtual/client/local/VActivityManager;->peekService(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string v0, "peekService"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/am/PeekService;->isAppProcess()Z

    move-result v0

    return v0
.end method

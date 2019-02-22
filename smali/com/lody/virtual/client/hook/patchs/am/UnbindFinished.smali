.class Lcom/lody/virtual/client/hook/patchs/am/UnbindFinished;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "UnbindFinished.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
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
    const/4 v4, 0x0

    .line 26
    aget-object v0, p3, v4

    check-cast v0, Landroid/os/IBinder;

    .line 27
    const/4 v1, 0x1

    aget-object v1, p3, v1

    check-cast v1, Landroid/content/Intent;

    .line 28
    const/4 v2, 0x2

    aget-object v2, p3, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 29
    invoke-static {}, Lcom/lody/virtual/client/local/VActivityManager;->get()Lcom/lody/virtual/client/local/VActivityManager;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/lody/virtual/client/local/VActivityManager;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 30
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string v0, "unbindFinished"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/am/UnbindFinished;->isAppProcess()Z

    move-result v0

    return v0
.end method

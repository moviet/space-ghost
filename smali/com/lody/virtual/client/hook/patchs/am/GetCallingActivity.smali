.class public Lcom/lody/virtual/client/hook/patchs/am/GetCallingActivity;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "GetCallingActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/Hook;-><init>()V

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
    .line 25
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Landroid/os/IBinder;

    .line 26
    invoke-static {}, Lcom/lody/virtual/client/local/VActivityManager;->get()Lcom/lody/virtual/client/local/VActivityManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lody/virtual/client/local/VActivityManager;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string v0, "getCallingActivity"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/am/GetCallingActivity;->isAppProcess()Z

    move-result v0

    return v0
.end method

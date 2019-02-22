.class Lcom/lody/virtual/client/hook/patchs/am/SetPackageAskScreenCompat;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "SetPackageAskScreenCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
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
    const/4 v2, 0x0

    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 24
    array-length v0, p3

    if-lez v0, :cond_0

    aget-object v0, p3, v2

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/am/SetPackageAskScreenCompat;->getHostPkg()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v2

    .line 28
    :cond_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    const-string v0, "setPackageAskScreenCompat"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/am/SetPackageAskScreenCompat;->isAppProcess()Z

    move-result v0

    return v0
.end method

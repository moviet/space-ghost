.class Lcom/lody/virtual/client/hook/patchs/pm/IsPackageForzen;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "IsPackageForzen.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/Hook;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    const-string v0, "sPackageForzen"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/pm/IsPackageForzen;->isAppProcess()Z

    move-result v0

    return v0
.end method

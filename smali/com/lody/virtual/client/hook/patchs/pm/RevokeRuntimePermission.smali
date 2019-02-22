.class Lcom/lody/virtual/client/hook/patchs/pm/RevokeRuntimePermission;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "RevokeRuntimePermission.java"


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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 22
    invoke-static {p3}, Lcom/lody/virtual/client/hook/utils/HookUtils;->replaceFirstAppPkg([Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    const-string v0, "revokeRuntimePermission"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/pm/RevokeRuntimePermission;->isAppProcess()Z

    move-result v0

    return v0
.end method

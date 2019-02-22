.class Lcom/lody/virtual/client/hook/patchs/display/CreateVirtualDisplay;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "CreateVirtualDisplay.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/Hook;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs beforeCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 17
    invoke-static {p3}, Lcom/lody/virtual/client/hook/utils/HookUtils;->replaceFirstAppPkg([Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/base/Hook;->beforeCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string v0, "createVirtualDisplay"

    return-object v0
.end method

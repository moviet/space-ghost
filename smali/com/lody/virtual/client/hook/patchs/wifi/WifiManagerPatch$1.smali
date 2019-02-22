.class Lcom/lody/virtual/client/hook/patchs/wifi/WifiManagerPatch$1;
.super Lcom/lody/virtual/client/hook/base/StaticHook;
.source "WifiManagerPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/client/hook/patchs/wifi/WifiManagerPatch;->onBindHooks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/hook/patchs/wifi/WifiManagerPatch;


# direct methods
.method constructor <init>(Lcom/lody/virtual/client/hook/patchs/wifi/WifiManagerPatch;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/lody/virtual/client/hook/patchs/wifi/WifiManagerPatch$1;->this$0:Lcom/lody/virtual/client/hook/patchs/wifi/WifiManagerPatch;

    invoke-direct {p0, p2}, Lcom/lody/virtual/client/hook/base/StaticHook;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 40
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/base/StaticHook;->call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    .line 41
    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "00-00-00-00-00-00"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    invoke-static {v0}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object v1

    const-string v2, "mMacAddress"

    const-string v3, "00:00:08:76:54:32"

    invoke-virtual {v1, v2, v3}, Lcom/lody/virtual/helper/utils/Reflect;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    .line 47
    :cond_0
    return-object v0
.end method

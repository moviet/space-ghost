.class Lcom/lody/virtual/client/hook/patchs/phonesubinfo/Hook_GetDeviceId;
.super Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;
.source "Hook_GetDeviceId.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "getDeviceId"

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method public afterCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 18
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getPhoneInfoDelegate()Lcom/lody/virtual/client/hook/delegate/PhoneInfoDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getPhoneInfoDelegate()Lcom/lody/virtual/client/hook/delegate/PhoneInfoDelegate;

    move-result-object v0

    invoke-interface {v0, p4}, Lcom/lody/virtual/client/hook/delegate/PhoneInfoDelegate;->getDeviceId(Ljava/lang/Object;)Lcom/lody/virtual/client/hook/base/DelegateResult;

    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0}, Lcom/lody/virtual/client/hook/base/DelegateResult;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, p1, p2, p3, v0}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;->afterCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 24
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;->afterCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

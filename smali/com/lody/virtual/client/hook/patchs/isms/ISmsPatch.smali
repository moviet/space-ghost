.class public Lcom/lody/virtual/client/hook/patchs/isms/ISmsPatch;
.super Lcom/lody/virtual/client/hook/base/PatchDelegate;
.source "ISmsPatch.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lody/virtual/client/hook/base/PatchDelegate",
        "<",
        "Lcom/lody/virtual/client/hook/binders/ISmsBinderDelegate;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/PatchDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method protected createHookDelegate()Lcom/lody/virtual/client/hook/binders/ISmsBinderDelegate;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/lody/virtual/client/hook/binders/ISmsBinderDelegate;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/binders/ISmsBinderDelegate;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic createHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/isms/ISmsPatch;->createHookDelegate()Lcom/lody/virtual/client/hook/binders/ISmsBinderDelegate;

    move-result-object v0

    return-object v0
.end method

.method public inject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/isms/ISmsPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/binders/ISmsBinderDelegate;

    const-string v1, "isms"

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/binders/ISmsBinderDelegate;->replaceService(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public isEnvBad()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/isms/ISmsPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v2

    sget-object v3, Lmirror/android/os/ServiceManager;->getService:Lmirror/RefStaticMethod;

    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, "isms"

    aput-object v5, v4, v1

    invoke-virtual {v3, v4}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected onBindHooks()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 31
    invoke-super {p0}, Lcom/lody/virtual/client/hook/base/PatchDelegate;->onBindHooks()V

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 33
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgHook;

    const-string v1, "getAllMessagesFromIccEfForSubscriber"

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgHook;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/isms/ISmsPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 34
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgHook;

    const-string v1, "updateMessageOnIccEfForSubscriber"

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgHook;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/isms/ISmsPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 35
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgHook;

    const-string v1, "copyMessageToIccEfForSubscriber"

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgHook;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/isms/ISmsPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 36
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgHook;

    const-string v1, "sendDataForSubscriber"

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgHook;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/isms/ISmsPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 37
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgHook;

    const-string v1, "sendDataForSubscriberWithSelfPermissions"

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgHook;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/isms/ISmsPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 38
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgHook;

    const-string v1, "sendTextForSubscriber"

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgHook;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/isms/ISmsPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 39
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgHook;

    const-string v1, "sendTextForSubscriberWithSelfPermissions"

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgHook;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/isms/ISmsPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 40
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgHook;

    const-string v1, "sendMultipartTextForSubscriber"

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgHook;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/isms/ISmsPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 41
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgHook;

    const-string v1, "sendStoredText"

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgHook;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/isms/ISmsPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 42
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgHook;

    const-string v1, "sendStoredMultipartText"

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgHook;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/isms/ISmsPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 44
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;

    const-string v1, "getAllMessagesFromIccEf"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/isms/ISmsPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 45
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgHook;

    const-string v1, "getAllMessagesFromIccEfForSubscriber"

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgHook;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/isms/ISmsPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 46
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;

    const-string v1, "updateMessageOnIccEf"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/isms/ISmsPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 47
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgHook;

    const-string v1, "updateMessageOnIccEfForSubscriber"

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgHook;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/isms/ISmsPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 48
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;

    const-string v1, "copyMessageToIccEf"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/isms/ISmsPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 49
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgHook;

    const-string v1, "copyMessageToIccEfForSubscriber"

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgHook;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/isms/ISmsPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 50
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;

    const-string v1, "sendData"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/isms/ISmsPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 51
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgHook;

    const-string v1, "sendDataForSubscriber"

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgHook;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/isms/ISmsPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 52
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;

    const-string v1, "sendText"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/isms/ISmsPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 53
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgHook;

    const-string v1, "sendTextForSubscriber"

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgHook;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/isms/ISmsPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 54
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;

    const-string v1, "sendMultipartText"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/isms/ISmsPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 55
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgHook;

    const-string v1, "sendMultipartTextForSubscriber"

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgHook;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/isms/ISmsPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 56
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgHook;

    const-string v1, "sendStoredText"

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgHook;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/isms/ISmsPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 57
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgHook;

    const-string v1, "sendStoredMultipartText"

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgHook;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/isms/ISmsPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    goto/16 :goto_0

    .line 58
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 59
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;

    const-string v1, "getAllMessagesFromIccEf"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/isms/ISmsPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 60
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;

    const-string v1, "updateMessageOnIccEf"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/isms/ISmsPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 61
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;

    const-string v1, "copyMessageToIccEf"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/isms/ISmsPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 62
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;

    const-string v1, "sendData"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/isms/ISmsPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 63
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;

    const-string v1, "sendText"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/isms/ISmsPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 64
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;

    const-string v1, "sendMultipartText"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/isms/ISmsPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    goto/16 :goto_0
.end method

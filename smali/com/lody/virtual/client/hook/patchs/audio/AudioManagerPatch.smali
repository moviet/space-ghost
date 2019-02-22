.class public Lcom/lody/virtual/client/hook/patchs/audio/AudioManagerPatch;
.super Lcom/lody/virtual/client/hook/base/PatchDelegate;
.source "AudioManagerPatch.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lody/virtual/client/hook/base/PatchDelegate",
        "<",
        "Lcom/lody/virtual/client/hook/binders/AudioBinderDelegate;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/PatchDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method protected createHookDelegate()Lcom/lody/virtual/client/hook/binders/AudioBinderDelegate;
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/lody/virtual/client/hook/binders/AudioBinderDelegate;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/binders/AudioBinderDelegate;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic createHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/audio/AudioManagerPatch;->createHookDelegate()Lcom/lody/virtual/client/hook/binders/AudioBinderDelegate;

    move-result-object v0

    return-object v0
.end method

.method public inject()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 51
    sget-object v0, Lmirror/android/os/ServiceManager;->sCache:Lmirror/RefStaticObject;

    invoke-virtual {v0}, Lmirror/RefStaticObject;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "audio"

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/audio/AudioManagerPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public isEnvBad()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 56
    sget-object v2, Lmirror/android/os/ServiceManager;->getService:Lmirror/RefStaticMethod;

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "audio"

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/audio/AudioManagerPatch;->getHookDelegate()Lcom/lody/virtual/client/interfaces/IHookObject;

    move-result-object v3

    if-eq v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected onBindHooks()V
    .locals 2

    .prologue
    .line 24
    invoke-super {p0}, Lcom/lody/virtual/client/hook/base/PatchDelegate;->onBindHooks()V

    .line 25
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "adjustVolume"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/audio/AudioManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 26
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "adjustLocalOrRemoteStreamVolume"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/audio/AudioManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 27
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "adjustSuggestedStreamVolume"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/audio/AudioManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 28
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "adjustStreamVolume"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/audio/AudioManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 29
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "adjustMasterVolume"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/audio/AudioManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 30
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "setStreamVolume"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/audio/AudioManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 31
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "setMasterVolume"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/audio/AudioManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 32
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "setMicrophoneMute"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/audio/AudioManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 33
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "setRingerModeExternal"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/audio/AudioManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 34
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "setRingerModeInternal"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/audio/AudioManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 35
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "setMode"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/audio/AudioManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 36
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "avrcpSupportsAbsoluteVolume"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/audio/AudioManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 37
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "abandonAudioFocus"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/audio/AudioManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 38
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "requestAudioFocus"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/audio/AudioManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 39
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "setWiredDeviceConnectionState"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/audio/AudioManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 40
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "setSpeakerphoneOn"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/audio/AudioManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 41
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "setBluetoothScoOn"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/audio/AudioManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 42
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "stopBluetoothSco"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/audio/AudioManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 43
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "startBluetoothSco"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/audio/AudioManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 44
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "disableSafeMediaVolume"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/audio/AudioManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 45
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "registerRemoteControlClient"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/audio/AudioManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 46
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;

    const-string v1, "unregisterAudioFocusClient"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgHook;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/patchs/audio/AudioManagerPatch;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 47
    return-void
.end method

.class public abstract Lcom/lody/virtual/client/hook/base/HookBinderDelegate;
.super Lcom/lody/virtual/client/hook/base/HookDelegate;
.source "HookBinderDelegate.java"

# interfaces
.implements Landroid/os/IBinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/client/hook/base/HookBinderDelegate$AsBinder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lody/virtual/client/hook/base/HookDelegate",
        "<",
        "Landroid/os/IInterface;",
        ">;",
        "Landroid/os/IBinder;"
    }
.end annotation


# instance fields
.field private mBaseBinder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/HookDelegate;-><init>()V

    .line 32
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/HookBinderDelegate;->init()V

    .line 33
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/base/HookDelegate;-><init>([Ljava/lang/Class;)V

    .line 27
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/HookBinderDelegate;->init()V

    .line 28
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/base/HookBinderDelegate;->getBaseInterface()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/base/HookBinderDelegate;->getBaseInterface()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/lody/virtual/client/hook/base/HookBinderDelegate;->mBaseBinder:Landroid/os/IBinder;

    .line 37
    new-instance v0, Lcom/lody/virtual/client/hook/base/HookBinderDelegate$AsBinder;

    invoke-direct {v0, p0, v1}, Lcom/lody/virtual/client/hook/base/HookBinderDelegate$AsBinder;-><init>(Lcom/lody/virtual/client/hook/base/HookBinderDelegate;Lcom/lody/virtual/client/hook/base/HookBinderDelegate$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/base/HookBinderDelegate;->addHook(Lcom/lody/virtual/client/hook/base/Hook;)Lcom/lody/virtual/client/hook/base/Hook;

    .line 38
    return-void

    :cond_0
    move-object v0, v1

    .line 36
    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/HookBinderDelegate;->mBaseBinder:Landroid/os/IBinder;

    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/HookBinderDelegate;->mBaseBinder:Landroid/os/IBinder;

    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public getBaseBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/HookBinderDelegate;->mBaseBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/HookBinderDelegate;->mBaseBinder:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBinderAlive()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/HookBinderDelegate;->mBaseBinder:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    return v0
.end method

.method public linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/HookBinderDelegate;->mBaseBinder:Landroid/os/IBinder;

    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 104
    return-void
.end method

.method public pingBinder()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/HookBinderDelegate;->mBaseBinder:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    return v0
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/base/HookBinderDelegate;->getProxyInterface()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    return-object v0
.end method

.method public replaceService(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/HookBinderDelegate;->mBaseBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lmirror/android/os/ServiceManager;->sCache:Lmirror/RefStaticObject;

    invoke-virtual {v0}, Lmirror/RefStaticObject;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_0
    return-void
.end method

.method public transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/HookBinderDelegate;->mBaseBinder:Landroid/os/IBinder;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0
.end method

.method public unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/HookBinderDelegate;->mBaseBinder:Landroid/os/IBinder;

    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result v0

    return v0
.end method

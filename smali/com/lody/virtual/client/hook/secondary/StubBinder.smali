.class public abstract Lcom/lody/virtual/client/hook/secondary/StubBinder;
.super Ljava/lang/Object;
.source "StubBinder.java"

# interfaces
.implements Landroid/os/IBinder;


# instance fields
.field private mBase:Landroid/os/IBinder;

.field private mClassLoader:Ljava/lang/ClassLoader;

.field private mInterface:Landroid/os/IInterface;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/lody/virtual/client/hook/secondary/StubBinder;->mClassLoader:Ljava/lang/ClassLoader;

    .line 25
    iput-object p2, p0, Lcom/lody/virtual/client/hook/secondary/StubBinder;->mBase:Landroid/os/IBinder;

    .line 26
    return-void
.end method


# virtual methods
.method public abstract createHandler(Ljava/lang/Class;Landroid/os/IInterface;)Ljava/lang/reflect/InvocationHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/IInterface;",
            ")",
            "Ljava/lang/reflect/InvocationHandler;"
        }
    .end annotation
.end method

.method public dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lody/virtual/client/hook/secondary/StubBinder;->mBase:Landroid/os/IBinder;

    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lody/virtual/client/hook/secondary/StubBinder;->mBase:Landroid/os/IBinder;

    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lody/virtual/client/hook/secondary/StubBinder;->mBase:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBinderAlive()Z
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lody/virtual/client/hook/secondary/StubBinder;->mBase:Landroid/os/IBinder;

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
    .line 109
    iget-object v0, p0, Lcom/lody/virtual/client/hook/secondary/StubBinder;->mBase:Landroid/os/IBinder;

    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 110
    return-void
.end method

.method public pingBinder()Z
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lody/virtual/client/hook/secondary/StubBinder;->mBase:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    return v0
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
    .locals 14

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v12, 0x1

    .line 52
    iget-object v0, p0, Lcom/lody/virtual/client/hook/secondary/StubBinder;->mInterface:Landroid/os/IInterface;

    if-nez v0, :cond_6

    .line 53
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    .line 54
    if-eqz v6, :cond_0

    array-length v0, v6

    if-gt v0, v12, :cond_1

    :cond_0
    move-object v0, v3

    .line 85
    :goto_0
    return-object v0

    .line 60
    :cond_1
    array-length v7, v6

    move v4, v5

    move-object v1, v3

    move-object v0, v3

    :goto_1
    if-ge v4, v7, :cond_3

    aget-object v2, v6, v4

    .line 61
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 60
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    .line 65
    :cond_2
    :try_start_0
    iget-object v8, p0, Lcom/lody/virtual/client/hook/secondary/StubBinder;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 66
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/os/IBinder;

    aput-object v11, v9, v10

    invoke-virtual {v8, v2, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 67
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_7

    .line 68
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 69
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    .line 70
    invoke-virtual {v2}, Ljava/lang/Class;->isInterface()Z

    move-result v9

    if-eqz v9, :cond_7

    const-class v9, Landroid/os/IInterface;

    invoke-virtual {v9, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_7

    .line 72
    const/4 v0, 0x0

    const/4 v9, 0x1

    :try_start_1
    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/lody/virtual/client/hook/secondary/StubBinder;->mBase:Landroid/os/IBinder;

    aput-object v11, v9, v10

    invoke-virtual {v8, v0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    :goto_3
    move-object v13, v0

    move-object v0, v1

    move-object v1, v13

    .line 77
    goto :goto_2

    .line 79
    :cond_3
    if-eqz v0, :cond_4

    if-nez v1, :cond_5

    :cond_4
    move-object v0, v3

    .line 80
    goto :goto_0

    .line 82
    :cond_5
    invoke-virtual {p0, v0, v1}, Lcom/lody/virtual/client/hook/secondary/StubBinder;->createHandler(Ljava/lang/Class;Landroid/os/IInterface;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v1

    .line 83
    iget-object v2, p0, Lcom/lody/virtual/client/hook/secondary/StubBinder;->mClassLoader:Ljava/lang/ClassLoader;

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v0, v3, v5

    invoke-static {v2, v3, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    iput-object v0, p0, Lcom/lody/virtual/client/hook/secondary/StubBinder;->mInterface:Landroid/os/IInterface;

    .line 85
    :cond_6
    iget-object v0, p0, Lcom/lody/virtual/client/hook/secondary/StubBinder;->mInterface:Landroid/os/IInterface;

    goto :goto_0

    .line 75
    :catch_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v0, v2

    goto :goto_2

    :cond_7
    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto :goto_3
.end method

.method public transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/lody/virtual/client/hook/secondary/StubBinder;->mBase:Landroid/os/IBinder;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0
.end method

.method public unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lody/virtual/client/hook/secondary/StubBinder;->mBase:Landroid/os/IBinder;

    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result v0

    return v0
.end method

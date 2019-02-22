.class public Lcom/lody/virtual/client/hook/secondary/ServiceConnectionDelegate;
.super Landroid/app/IServiceConnection$Stub;
.source "ServiceConnectionDelegate.java"


# static fields
.field private static final DELEGATE_MAP:Lcom/lody/virtual/helper/utils/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lody/virtual/helper/utils/collection/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/lody/virtual/client/hook/secondary/ServiceConnectionDelegate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConn:Landroid/app/IServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/lody/virtual/helper/utils/collection/ArrayMap;

    invoke-direct {v0}, Lcom/lody/virtual/helper/utils/collection/ArrayMap;-><init>()V

    sput-object v0, Lcom/lody/virtual/client/hook/secondary/ServiceConnectionDelegate;->DELEGATE_MAP:Lcom/lody/virtual/helper/utils/collection/ArrayMap;

    return-void
.end method

.method private constructor <init>(Landroid/app/IServiceConnection;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/IServiceConnection$Stub;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/lody/virtual/client/hook/secondary/ServiceConnectionDelegate;->mConn:Landroid/app/IServiceConnection;

    .line 41
    return-void
.end method

.method public static getDelegate(Landroid/app/IServiceConnection;)Lcom/lody/virtual/client/hook/secondary/ServiceConnectionDelegate;
    .locals 3

    .prologue
    .line 21
    instance-of v0, p0, Lcom/lody/virtual/client/hook/secondary/ServiceConnectionDelegate;

    if-eqz v0, :cond_0

    .line 22
    check-cast p0, Lcom/lody/virtual/client/hook/secondary/ServiceConnectionDelegate;

    .line 30
    :goto_0
    return-object p0

    .line 24
    :cond_0
    invoke-interface {p0}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 25
    sget-object v0, Lcom/lody/virtual/client/hook/secondary/ServiceConnectionDelegate;->DELEGATE_MAP:Lcom/lody/virtual/helper/utils/collection/ArrayMap;

    invoke-virtual {v0, v1}, Lcom/lody/virtual/helper/utils/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/secondary/ServiceConnectionDelegate;

    .line 26
    if-nez v0, :cond_1

    .line 27
    new-instance v0, Lcom/lody/virtual/client/hook/secondary/ServiceConnectionDelegate;

    invoke-direct {v0, p0}, Lcom/lody/virtual/client/hook/secondary/ServiceConnectionDelegate;-><init>(Landroid/app/IServiceConnection;)V

    .line 28
    sget-object v2, Lcom/lody/virtual/client/hook/secondary/ServiceConnectionDelegate;->DELEGATE_MAP:Lcom/lody/virtual/helper/utils/collection/ArrayMap;

    invoke-virtual {v2, v1, v0}, Lcom/lody/virtual/helper/utils/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object p0, v0

    .line 30
    goto :goto_0
.end method

.method public static removeDelegate(Landroid/app/IServiceConnection;)Lcom/lody/virtual/client/hook/secondary/ServiceConnectionDelegate;
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lcom/lody/virtual/client/hook/secondary/ServiceConnectionDelegate;->DELEGATE_MAP:Lcom/lody/virtual/helper/utils/collection/ArrayMap;

    invoke-interface {p0}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lody/virtual/helper/utils/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/secondary/ServiceConnectionDelegate;

    return-object v0
.end method


# virtual methods
.method public connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p2}, Lcom/lody/virtual/service/IBinderDelegateService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lody/virtual/service/IBinderDelegateService;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    invoke-interface {v0}, Lcom/lody/virtual/service/IBinderDelegateService;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 48
    invoke-interface {v0}, Lcom/lody/virtual/service/IBinderDelegateService;->getService()Landroid/os/IBinder;

    move-result-object v1

    .line 49
    invoke-static {}, Lcom/lody/virtual/client/VClientImpl;->getClient()Lcom/lody/virtual/client/VClientImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/VClientImpl;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v2, v1}, Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory;->getProxyService(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_1

    .line 56
    :goto_0
    iget-object v1, p0, Lcom/lody/virtual/client/hook/secondary/ServiceConnectionDelegate;->mConn:Landroid/app/IServiceConnection;

    invoke-interface {v1, v2, v0}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 57
    return-void

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Boom"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

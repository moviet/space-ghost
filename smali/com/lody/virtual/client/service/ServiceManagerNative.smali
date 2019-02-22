.class public Lcom/lody/virtual/client/service/ServiceManagerNative;
.super Ljava/lang/Object;
.source "ServiceManagerNative.java"


# static fields
.field public static final ACCOUNT:Ljava/lang/String; = "account"

.field public static final ACTIVITY:Ljava/lang/String; = "activity"

.field public static final APP:Ljava/lang/String; = "app"

.field public static final INTENT_FILTER:Ljava/lang/String; = "intent_filter"

.field public static final INTERCEPTOR_SERVICE:Ljava/lang/String; = "interceptor_service"

.field public static final JOB:Ljava/lang/String; = "job"

.field public static final PACKAGE:Ljava/lang/String; = "package"

.field public static SERVICE_CP_AUTH:Ljava/lang/String; = null

.field public static final SERVICE_DEF_AUTH:Ljava/lang/String; = "virtual.service.BinderProvider"

.field private static final TAG:Ljava/lang/String;

.field public static final USER:Ljava/lang/String; = "user"

.field private static sFetcher:Lcom/lody/virtual/service/interfaces/IServiceFetcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/lody/virtual/client/service/ServiceManagerNative;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/client/service/ServiceManagerNative;->TAG:Ljava/lang/String;

    .line 30
    const-string v0, "virtual.service.BinderProvider"

    sput-object v0, Lcom/lody/virtual/client/service/ServiceManagerNative;->SERVICE_CP_AUTH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/lody/virtual/client/service/ServiceManagerNative;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static addService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 80
    invoke-static {}, Lcom/lody/virtual/client/service/ServiceManagerNative;->getServiceFetcher()Lcom/lody/virtual/service/interfaces/IServiceFetcher;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_0

    .line 83
    :try_start_0
    invoke-interface {v0, p0, p1}, Lcom/lody/virtual/service/interfaces/IServiceFetcher;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 4

    .prologue
    .line 64
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->isServiceProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {p0}, Lcom/lody/virtual/server/ServiceCache;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    .line 67
    :cond_0
    invoke-static {}, Lcom/lody/virtual/client/service/ServiceManagerNative;->getServiceFetcher()Lcom/lody/virtual/service/interfaces/IServiceFetcher;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_1

    .line 70
    :try_start_0
    invoke-interface {v0, p0}, Lcom/lody/virtual/service/interfaces/IServiceFetcher;->getService(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 75
    :cond_1
    sget-object v0, Lcom/lody/virtual/client/service/ServiceManagerNative;->TAG:Ljava/lang/String;

    const-string v1, "GetService(%s) return null."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getServiceFetcher()Lcom/lody/virtual/service/interfaces/IServiceFetcher;
    .locals 4

    .prologue
    .line 35
    const-class v1, Lcom/lody/virtual/client/service/ServiceManagerNative;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lody/virtual/client/service/ServiceManagerNative;->sFetcher:Lcom/lody/virtual/service/interfaces/IServiceFetcher;

    if-nez v0, :cond_0

    .line 36
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 37
    new-instance v2, Lcom/lody/virtual/client/service/ProviderCall$Builder;

    sget-object v3, Lcom/lody/virtual/client/service/ServiceManagerNative;->SERVICE_CP_AUTH:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lcom/lody/virtual/client/service/ProviderCall$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "@"

    invoke-virtual {v2, v0}, Lcom/lody/virtual/client/service/ProviderCall$Builder;->methodName(Ljava/lang/String;)Lcom/lody/virtual/client/service/ProviderCall$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/service/ProviderCall$Builder;->call()Landroid/os/Bundle;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    const-string v2, "_VA_|_binder_"

    invoke-static {v0, v2}, Lcom/lody/virtual/helper/compat/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 40
    invoke-static {v0}, Lcom/lody/virtual/client/service/ServiceManagerNative;->linkBinderDied(Landroid/os/IBinder;)V

    .line 41
    invoke-static {v0}, Lcom/lody/virtual/service/interfaces/IServiceFetcher$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lody/virtual/service/interfaces/IServiceFetcher;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/client/service/ServiceManagerNative;->sFetcher:Lcom/lody/virtual/service/interfaces/IServiceFetcher;

    .line 44
    :cond_0
    sget-object v0, Lcom/lody/virtual/client/service/ServiceManagerNative;->sFetcher:Lcom/lody/virtual/service/interfaces/IServiceFetcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static linkBinderDied(Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lcom/lody/virtual/client/service/ServiceManagerNative$1;

    invoke-direct {v0, p0}, Lcom/lody/virtual/client/service/ServiceManagerNative$1;-><init>(Landroid/os/IBinder;)V

    .line 57
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p0, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static removeService(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 92
    invoke-static {}, Lcom/lody/virtual/client/service/ServiceManagerNative;->getServiceFetcher()Lcom/lody/virtual/service/interfaces/IServiceFetcher;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_0

    .line 95
    :try_start_0
    invoke-interface {v0, p0}, Lcom/lody/virtual/service/interfaces/IServiceFetcher;->removeService(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

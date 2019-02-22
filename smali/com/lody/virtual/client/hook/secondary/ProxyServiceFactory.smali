.class public Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory;
.super Ljava/lang/Object;
.source "ProxyServiceFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory$ServiceFetcher;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sHookSecondaryServiceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory$ServiceFetcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const-class v0, Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory;->TAG:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory;->sHookSecondaryServiceMap:Ljava/util/Map;

    .line 25
    sget-object v0, Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory;->sHookSecondaryServiceMap:Ljava/util/Map;

    const-string v1, "com.google.android.auth.IAuthManagerService"

    new-instance v2, Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory$1;

    invoke-direct {v2}, Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory$1;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory;->sHookSecondaryServiceMap:Ljava/util/Map;

    const-string v1, "com.android.vending.billing.IInAppBillingService"

    new-instance v2, Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory$2;

    invoke-direct {v2}, Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory$2;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory;->sHookSecondaryServiceMap:Ljava/util/Map;

    const-string v1, "com.google.android.gms.common.internal.IGmsServiceBroker"

    new-instance v2, Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory$3;

    invoke-direct {v2}, Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory$3;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProxyService(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 102
    if-eqz p0, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move-object v0, v1

    .line 117
    :cond_1
    :goto_0
    return-object v0

    .line 106
    :cond_2
    :try_start_0
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 107
    sget-object v2, Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory;->sHookSecondaryServiceMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory$ServiceFetcher;

    .line 108
    if-eqz v0, :cond_3

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-interface {v0, p0, v2, p2}, Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory$ServiceFetcher;->getService(Landroid/content/Context;Ljava/lang/ClassLoader;Landroid/os/IBinder;)Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 110
    if-nez v0, :cond_1

    :cond_3
    :goto_1
    move-object v0, v1

    .line 117
    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

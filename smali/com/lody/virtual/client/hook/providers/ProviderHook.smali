.class public Lcom/lody/virtual/client/hook/providers/ProviderHook;
.super Ljava/lang/Object;
.source "ProviderHook.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/client/hook/providers/ProviderHook$HookFetcher;
    }
.end annotation


# static fields
.field private static final PROVIDER_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lody/virtual/client/hook/providers/ProviderHook$HookFetcher;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final mBase:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lody/virtual/client/hook/providers/ProviderHook;->PROVIDER_MAP:Ljava/util/Map;

    .line 30
    sget-object v0, Lcom/lody/virtual/client/hook/providers/ProviderHook;->PROVIDER_MAP:Ljava/util/Map;

    const-string v1, "settings"

    new-instance v2, Lcom/lody/virtual/client/hook/providers/ProviderHook$1;

    invoke-direct {v2}, Lcom/lody/virtual/client/hook/providers/ProviderHook$1;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/lody/virtual/client/hook/providers/ProviderHook;->PROVIDER_MAP:Ljava/util/Map;

    const-string v1, "downloads"

    new-instance v2, Lcom/lody/virtual/client/hook/providers/ProviderHook$2;

    invoke-direct {v2}, Lcom/lody/virtual/client/hook/providers/ProviderHook$2;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/lody/virtual/client/hook/providers/ProviderHook;->mBase:Ljava/lang/Object;

    .line 48
    return-void
.end method

.method private static createProxy(Landroid/os/IInterface;Lcom/lody/virtual/client/hook/providers/ProviderHook;)Landroid/os/IInterface;
    .locals 4

    .prologue
    .line 105
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 106
    :cond_0
    const/4 v0, 0x0

    .line 108
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Lmirror/android/content/IContentProvider;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-static {v0, v1, p1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    goto :goto_0
.end method

.method public static createProxy(ZLjava/lang/String;Landroid/os/IInterface;)Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 114
    instance-of v0, p2, Ljava/lang/reflect/Proxy;

    if-eqz v0, :cond_1

    invoke-static {p2}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    instance-of v0, v0, Lcom/lody/virtual/client/hook/providers/ProviderHook;

    if-eqz v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-object p2

    .line 117
    :cond_1
    invoke-static {p1}, Lcom/lody/virtual/client/hook/providers/ProviderHook;->fetchHook(Ljava/lang/String;)Lcom/lody/virtual/client/hook/providers/ProviderHook$HookFetcher;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_0

    .line 119
    invoke-interface {v0, p0, p2}, Lcom/lody/virtual/client/hook/providers/ProviderHook$HookFetcher;->fetch(ZLandroid/os/IInterface;)Lcom/lody/virtual/client/hook/providers/ProviderHook;

    move-result-object v0

    .line 120
    invoke-static {p2, v0}, Lcom/lody/virtual/client/hook/providers/ProviderHook;->createProxy(Landroid/os/IInterface;Lcom/lody/virtual/client/hook/providers/ProviderHook;)Landroid/os/IInterface;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_0

    move-object p2, v0

    .line 122
    goto :goto_0
.end method

.method private static fetchHook(Ljava/lang/String;)Lcom/lody/virtual/client/hook/providers/ProviderHook$HookFetcher;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/lody/virtual/client/hook/providers/ProviderHook;->PROVIDER_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/providers/ProviderHook$HookFetcher;

    .line 52
    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/lody/virtual/client/hook/providers/ProviderHook$3;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/providers/ProviderHook$3;-><init>()V

    .line 63
    :cond_0
    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lody/virtual/client/hook/providers/ProviderHook;->mBase:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method public insert(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Landroid/net/Uri;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lody/virtual/client/hook/providers/ProviderHook;->mBase:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 79
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/lody/virtual/client/hook/providers/ProviderHook;->processArgs(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 85
    const-string v1, "call"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {p0, p2, p3}, Lcom/lody/virtual/client/hook/providers/ProviderHook;->call(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 90
    :goto_1
    return-object v0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 87
    :cond_0
    :try_start_2
    const-string v1, "insert"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {p0, p2, p3}, Lcom/lody/virtual/client/hook/providers/ProviderHook;->insert(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/lody/virtual/client/hook/providers/ProviderHook;->mBase:Ljava/lang/Object;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_1

    .line 91
    :catch_1
    move-exception v0

    .line 92
    const-string v1, "ProviderHook"

    const-string v2, "call: %s (%s) with error"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    instance-of v1, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_2

    .line 94
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    .line 96
    :cond_2
    throw v0
.end method

.method protected varargs processArgs(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

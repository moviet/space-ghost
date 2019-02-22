.class public Lcom/lody/virtual/client/hook/providers/SettingsProviderHook;
.super Lcom/lody/virtual/client/hook/providers/ExternalProviderHook;
.source "SettingsProviderHook.java"


# static fields
.field public static final METHOD_GET:I

.field public static final METHOD_PUT:I

.field private static final PRE_SET_VALUES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const-class v0, Lcom/lody/virtual/client/hook/providers/SettingsProviderHook;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/client/hook/providers/SettingsProviderHook;->TAG:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lody/virtual/client/hook/providers/SettingsProviderHook;->PRE_SET_VALUES:Ljava/util/Map;

    .line 25
    sget-object v0, Lcom/lody/virtual/client/hook/providers/SettingsProviderHook;->PRE_SET_VALUES:Ljava/util/Map;

    const-string v1, "user_setup_complete"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/providers/ExternalProviderHook;-><init>(Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public static getMethodType(Ljava/lang/String;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 34
    const-string v1, "GET_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    :cond_0
    :goto_0
    return v0

    .line 37
    :cond_1
    const-string v1, "PUT_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static isSecureMethod(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 44
    const-string v0, "secure"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public call(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 50
    array-length v0, p2

    add-int/lit8 v0, v0, -0x3

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/String;

    .line 51
    array-length v1, p2

    add-int/lit8 v1, v1, -0x2

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/String;

    .line 52
    invoke-static {v0}, Lcom/lody/virtual/client/hook/providers/SettingsProviderHook;->getMethodType(Ljava/lang/String;)I

    move-result v3

    .line 53
    if-nez v3, :cond_0

    .line 54
    sget-object v4, Lcom/lody/virtual/client/hook/providers/SettingsProviderHook;->PRE_SET_VALUES:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 55
    if-eqz v1, :cond_0

    .line 56
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 57
    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :goto_0
    return-object v0

    .line 61
    :cond_0
    if-nez v3, :cond_1

    .line 62
    invoke-static {v0}, Lcom/lody/virtual/client/hook/providers/SettingsProviderHook;->isSecureMethod(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v2

    .line 63
    goto :goto_0

    .line 67
    :cond_1
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/lody/virtual/client/hook/providers/ExternalProviderHook;->call(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/SecurityException;

    if-eqz v1, :cond_2

    move-object v0, v2

    .line 70
    goto :goto_0

    .line 72
    :cond_2
    throw v0
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
    .line 78
    invoke-super {p0, p1, p2}, Lcom/lody/virtual/client/hook/providers/ExternalProviderHook;->insert(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected varargs processArgs(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 83
    invoke-super {p0, p1, p2}, Lcom/lody/virtual/client/hook/providers/ExternalProviderHook;->processArgs(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 84
    return-void
.end method

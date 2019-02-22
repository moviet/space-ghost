.class public Lcom/lody/virtual/client/env/SystemPropertiesCompat;
.super Ljava/lang/Object;
.source "SystemPropertiesCompat.java"


# static fields
.field private static sClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    :try_start_0
    invoke-static {p0, p1}, Lcom/lody/virtual/client/env/SystemPropertiesCompat;->getInner(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 33
    :goto_0
    return-object p1

    .line 31
    :catch_0
    move-exception v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getInner(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {}, Lcom/lody/virtual/client/env/SystemPropertiesCompat;->getSystemPropertiesClass()Ljava/lang/Class;

    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/Class;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/lody/virtual/helper/utils/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/helper/utils/Reflect;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static getSystemPropertiesClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 15
    sget-object v0, Lcom/lody/virtual/client/env/SystemPropertiesCompat;->sClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 16
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/client/env/SystemPropertiesCompat;->sClass:Ljava/lang/Class;

    .line 18
    :cond_0
    sget-object v0, Lcom/lody/virtual/client/env/SystemPropertiesCompat;->sClass:Ljava/lang/Class;

    return-object v0
.end method

.class final Lcom/samsung/android/sdk/pass/support/v1/FingerprintManagerProxyFactory$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pass/support/v1/FingerprintManagerProxyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/support/v1/FingerprintManagerProxyFactory$a;->b:Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/sdk/pass/support/v1/FingerprintManagerProxyFactory$a;->a:Ljava/lang/Object;

    const-class v0, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    return-void

    :cond_0
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4}, Lcom/samsung/android/sdk/pass/support/v1/FingerprintManagerProxyFactory$a;->a([Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/sdk/pass/support/v1/FingerprintManagerProxyFactory$a;->b:Ljava/util/Map;

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static a([Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z
    .locals 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v7, p0

    move v3, v2

    :goto_0
    if-lt v3, v7, :cond_1

    move v1, v2

    :cond_0
    return v1

    :cond_1
    aget-object v0, p0, v3

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    if-eqz v6, :cond_0

    if-eqz v8, :cond_0

    array-length v0, v6

    array-length v4, v8

    if-ne v0, v4, :cond_2

    array-length v9, v6

    move v4, v2

    move v0, v2

    :goto_1
    if-lt v4, v9, :cond_3

    if-eqz v0, :cond_0

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_3
    aget-object v10, v8, v4

    aget-object v11, v6, v4

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    move v0, v1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/support/v1/FingerprintManagerProxyFactory$a;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/support/v1/FingerprintManagerProxyFactory$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

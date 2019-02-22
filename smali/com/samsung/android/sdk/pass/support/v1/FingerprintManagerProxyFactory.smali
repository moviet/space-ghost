.class public Lcom/samsung/android/sdk/pass/support/v1/FingerprintManagerProxyFactory;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pass/support/v1/FingerprintManagerProxyFactory$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;
    .locals 8

    const/4 v0, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    :try_start_0
    const-string v1, "com.samsung.android.fingerprint.FingerprintManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getInstance"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "FingerprintManagerProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot create FingerprintManagerProxy : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pass/support/v1/FingerprintManagerProxyFactory$a;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pass/support/v1/FingerprintManagerProxyFactory$a;-><init>(Ljava/lang/Object;)V

    const-class v1, Lcom/samsung/android/sdk/pass/support/v1/FingerprintManagerProxyFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Class;

    const-class v3, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    aput-object v3, v2, v6

    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    goto :goto_1
.end method

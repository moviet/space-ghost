.class Lokhttp3/internal/AndroidPlatform;
.super Lokhttp3/internal/Platform;
.source "AndroidPlatform.java"


# static fields
.field private static final MAX_LOG_LENGTH:I = 0xfa0


# instance fields
.field private final getAlpnSelectedProtocol:Lokhttp3/internal/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/internal/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final setAlpnProtocols:Lokhttp3/internal/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/internal/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final setHostname:Lokhttp3/internal/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/internal/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final setUseSessionTickets:Lokhttp3/internal/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/internal/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final sslParametersClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lokhttp3/internal/OptionalMethod;Lokhttp3/internal/OptionalMethod;Lokhttp3/internal/OptionalMethod;Lokhttp3/internal/OptionalMethod;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lokhttp3/internal/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;",
            "Lokhttp3/internal/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;",
            "Lokhttp3/internal/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;",
            "Lokhttp3/internal/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Lokhttp3/internal/Platform;-><init>()V

    .line 45
    iput-object p1, p0, Lokhttp3/internal/AndroidPlatform;->sslParametersClass:Ljava/lang/Class;

    .line 46
    iput-object p2, p0, Lokhttp3/internal/AndroidPlatform;->setUseSessionTickets:Lokhttp3/internal/OptionalMethod;

    .line 47
    iput-object p3, p0, Lokhttp3/internal/AndroidPlatform;->setHostname:Lokhttp3/internal/OptionalMethod;

    .line 48
    iput-object p4, p0, Lokhttp3/internal/AndroidPlatform;->getAlpnSelectedProtocol:Lokhttp3/internal/OptionalMethod;

    .line 49
    iput-object p5, p0, Lokhttp3/internal/AndroidPlatform;->setAlpnProtocols:Lokhttp3/internal/OptionalMethod;

    .line 50
    return-void
.end method

.method public static buildIfSupported()Lokhttp3/internal/Platform;
    .locals 11

    .prologue
    const/4 v6, 0x0

    .line 152
    :try_start_0
    const-string v0, "com.android.org.conscrypt.SSLParametersImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 159
    :goto_0
    :try_start_1
    new-instance v2, Lokhttp3/internal/OptionalMethod;

    const/4 v0, 0x0

    const-string v3, "setUseSessionTickets"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v4, v5

    invoke-direct {v2, v0, v3, v4}, Lokhttp3/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 161
    new-instance v3, Lokhttp3/internal/OptionalMethod;

    const/4 v0, 0x0

    const-string v4, "setHostname"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v5, v7

    invoke-direct {v3, v0, v4, v5}, Lokhttp3/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 168
    :try_start_2
    const-string v0, "android.net.Network"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 169
    new-instance v0, Lokhttp3/internal/OptionalMethod;

    const-class v4, [B

    const-string v5, "getAlpnSelectedProtocol"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-direct {v0, v4, v5, v7}, Lokhttp3/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 170
    :try_start_3
    new-instance v5, Lokhttp3/internal/OptionalMethod;

    const/4 v4, 0x0

    const-string v7, "setAlpnProtocols"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, [B

    aput-object v10, v8, v9

    invoke-direct {v5, v4, v7, v8}, Lokhttp3/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v4, v0

    .line 174
    :goto_1
    :try_start_4
    new-instance v0, Lokhttp3/internal/AndroidPlatform;

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/AndroidPlatform;-><init>(Ljava/lang/Class;Lokhttp3/internal/OptionalMethod;Lokhttp3/internal/OptionalMethod;Lokhttp3/internal/OptionalMethod;Lokhttp3/internal/OptionalMethod;)V

    .line 180
    :goto_2
    return-object v0

    .line 153
    :catch_0
    move-exception v0

    .line 155
    const-string v0, "org.apache.harmony.xnet.provider.jsse.SSLParametersImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v1

    goto :goto_0

    .line 171
    :catch_1
    move-exception v0

    move-object v0, v6

    :goto_3
    move-object v5, v6

    move-object v4, v0

    goto :goto_1

    .line 176
    :catch_2
    move-exception v0

    move-object v0, v6

    .line 180
    goto :goto_2

    .line 171
    :catch_3
    move-exception v4

    goto :goto_3
.end method


# virtual methods
.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 93
    if-eqz p2, :cond_0

    .line 94
    iget-object v0, p0, Lokhttp3/internal/AndroidPlatform;->setUseSessionTickets:Lokhttp3/internal/OptionalMethod;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, p1, v1}, Lokhttp3/internal/OptionalMethod;->invokeOptionalWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lokhttp3/internal/AndroidPlatform;->setHostname:Lokhttp3/internal/OptionalMethod;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v4

    invoke-virtual {v0, p1, v1}, Lokhttp3/internal/OptionalMethod;->invokeOptionalWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/AndroidPlatform;->setAlpnProtocols:Lokhttp3/internal/OptionalMethod;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lokhttp3/internal/AndroidPlatform;->setAlpnProtocols:Lokhttp3/internal/OptionalMethod;

    invoke-virtual {v0, p1}, Lokhttp3/internal/OptionalMethod;->isSupported(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p3}, Lokhttp3/internal/AndroidPlatform;->concatLengthPrefixed(Ljava/util/List;)[B

    move-result-object v1

    aput-object v1, v0, v4

    .line 101
    iget-object v1, p0, Lokhttp3/internal/AndroidPlatform;->setAlpnProtocols:Lokhttp3/internal/OptionalMethod;

    invoke-virtual {v1, p1, v0}, Lokhttp3/internal/OptionalMethod;->invokeWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_1
    return-void
.end method

.method public connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 66
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    invoke-static {v0}, Lokhttp3/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 58
    :cond_0
    throw v0

    .line 59
    :catch_1
    move-exception v0

    .line 62
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Exception in connect"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 64
    throw v1
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 106
    iget-object v0, p0, Lokhttp3/internal/AndroidPlatform;->getAlpnSelectedProtocol:Lokhttp3/internal/OptionalMethod;

    if-nez v0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-object v1

    .line 107
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/AndroidPlatform;->getAlpnSelectedProtocol:Lokhttp3/internal/OptionalMethod;

    invoke-virtual {v0, p1}, Lokhttp3/internal/OptionalMethod;->isSupported(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lokhttp3/internal/AndroidPlatform;->getAlpnSelectedProtocol:Lokhttp3/internal/OptionalMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Lokhttp3/internal/OptionalMethod;->invokeWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 110
    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v0, v1

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public isCleartextTrafficPermitted()Z
    .locals 4

    .prologue
    .line 131
    :try_start_0
    const-string v0, "android.security.NetworkSecurityPolicy"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 132
    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 133
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 134
    const-string v2, "isCleartextTrafficPermitted"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    .line 135
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 136
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 137
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 136
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v0

    .line 140
    :goto_0
    return v0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    invoke-super {p0}, Lokhttp3/internal/Platform;->isCleartextTrafficPermitted()Z

    move-result v0

    goto :goto_0

    .line 141
    :catch_1
    move-exception v0

    .line 143
    :goto_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 141
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public log(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v0, 0x5

    .line 114
    if-ne p1, v0, :cond_1

    move v4, v0

    .line 115
    :goto_0
    if-eqz p3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 118
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_1
    if-ge v2, v1, :cond_3

    .line 119
    invoke-virtual {p2, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 120
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 122
    :goto_2
    add-int/lit16 v3, v2, 0xfa0

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 123
    const-string v5, "OkHttp"

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 125
    if-lt v3, v0, :cond_4

    .line 118
    add-int/lit8 v2, v3, 0x1

    goto :goto_1

    .line 114
    :cond_1
    const/4 v0, 0x3

    move v4, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 120
    goto :goto_2

    .line 127
    :cond_3
    return-void

    :cond_4
    move v2, v3

    goto :goto_2
.end method

.method public trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lokhttp3/internal/AndroidPlatform;->sslParametersClass:Ljava/lang/Class;

    const-string v1, "sslParameters"

    invoke-static {p1, v0, v1}, Lokhttp3/internal/AndroidPlatform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    if-nez v0, :cond_1

    .line 74
    :try_start_0
    const-string v0, "com.google.android.gms.org.conscrypt.SSLParametersImpl"

    const/4 v1, 0x0

    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 74
    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 77
    const-string v1, "sslParameters"

    invoke-static {p1, v0, v1}, Lokhttp3/internal/AndroidPlatform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 83
    :goto_0
    const-class v0, Ljavax/net/ssl/X509TrustManager;

    const-string v2, "x509TrustManager"

    invoke-static {v1, v0, v2}, Lokhttp3/internal/AndroidPlatform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    .line 85
    if-eqz v0, :cond_0

    .line 87
    :goto_1
    return-object v0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    invoke-super {p0, p1}, Lokhttp3/internal/Platform;->trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    goto :goto_1

    .line 87
    :cond_0
    const-class v0, Ljavax/net/ssl/X509TrustManager;

    const-string v2, "trustManager"

    invoke-static {v1, v0, v2}, Lokhttp3/internal/AndroidPlatform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

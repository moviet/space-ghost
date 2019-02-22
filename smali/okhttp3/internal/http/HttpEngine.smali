.class public final Lokhttp3/internal/http/HttpEngine;
.super Ljava/lang/Object;
.source "HttpEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;
    }
.end annotation


# static fields
.field private static final EMPTY_BODY:Lokhttp3/ResponseBody;

.field public static final MAX_FOLLOW_UPS:I = 0x14


# instance fields
.field public final bufferRequestBody:Z

.field private bufferedRequestBody:Lokio/BufferedSink;

.field private cacheResponse:Lokhttp3/Response;

.field private cacheStrategy:Lokhttp3/internal/http/CacheStrategy;

.field private final callerWritesRequestBody:Z

.field final client:Lokhttp3/OkHttpClient;

.field private final forWebSocket:Z

.field private httpStream:Lokhttp3/internal/http/HttpStream;

.field private networkRequest:Lokhttp3/Request;

.field private final priorResponse:Lokhttp3/Response;

.field private requestBodyOut:Lokio/Sink;

.field sentRequestMillis:J

.field private storeRequest:Lokhttp3/internal/http/CacheRequest;

.field public final streamAllocation:Lokhttp3/internal/http/StreamAllocation;

.field private transparentGzip:Z

.field private final userRequest:Lokhttp3/Request;

.field private userResponse:Lokhttp3/Response;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lokhttp3/internal/http/HttpEngine$1;

    invoke-direct {v0}, Lokhttp3/internal/http/HttpEngine$1;-><init>()V

    sput-object v0, Lokhttp3/internal/http/HttpEngine;->EMPTY_BODY:Lokhttp3/ResponseBody;

    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;ZZZLokhttp3/internal/http/StreamAllocation;Lokhttp3/internal/http/RetryableSink;Lokhttp3/Response;)V
    .locals 2

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lokhttp3/internal/http/HttpEngine;->sentRequestMillis:J

    .line 173
    iput-object p1, p0, Lokhttp3/internal/http/HttpEngine;->client:Lokhttp3/OkHttpClient;

    .line 174
    iput-object p2, p0, Lokhttp3/internal/http/HttpEngine;->userRequest:Lokhttp3/Request;

    .line 175
    iput-boolean p3, p0, Lokhttp3/internal/http/HttpEngine;->bufferRequestBody:Z

    .line 176
    iput-boolean p4, p0, Lokhttp3/internal/http/HttpEngine;->callerWritesRequestBody:Z

    .line 177
    iput-boolean p5, p0, Lokhttp3/internal/http/HttpEngine;->forWebSocket:Z

    .line 178
    if-eqz p6, :cond_0

    .line 180
    :goto_0
    iput-object p6, p0, Lokhttp3/internal/http/HttpEngine;->streamAllocation:Lokhttp3/internal/http/StreamAllocation;

    .line 181
    iput-object p7, p0, Lokhttp3/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;

    .line 182
    iput-object p8, p0, Lokhttp3/internal/http/HttpEngine;->priorResponse:Lokhttp3/Response;

    .line 183
    return-void

    .line 178
    :cond_0
    new-instance p6, Lokhttp3/internal/http/StreamAllocation;

    .line 180
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/ConnectionPool;

    move-result-object v0

    invoke-static {p1, p2}, Lokhttp3/internal/http/HttpEngine;->createAddress(Lokhttp3/OkHttpClient;Lokhttp3/Request;)Lokhttp3/Address;

    move-result-object v1

    invoke-direct {p6, v0, v1}, Lokhttp3/internal/http/StreamAllocation;-><init>(Lokhttp3/ConnectionPool;Lokhttp3/Address;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lokhttp3/internal/http/HttpEngine;)Lokhttp3/internal/http/HttpStream;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->httpStream:Lokhttp3/internal/http/HttpStream;

    return-object v0
.end method

.method static synthetic access$102(Lokhttp3/internal/http/HttpEngine;Lokhttp3/Request;)Lokhttp3/Request;
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lokhttp3/internal/http/HttpEngine;->networkRequest:Lokhttp3/Request;

    return-object p1
.end method

.method static synthetic access$200(Lokhttp3/internal/http/HttpEngine;)Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0}, Lokhttp3/internal/http/HttpEngine;->readNetworkResponse()Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method private cacheWritingResponse(Lokhttp3/internal/http/CacheRequest;Lokhttp3/Response;)Lokhttp3/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 804
    if-nez p1, :cond_1

    .line 853
    :cond_0
    :goto_0
    return-object p2

    .line 805
    :cond_1
    invoke-interface {p1}, Lokhttp3/internal/http/CacheRequest;->body()Lokio/Sink;

    move-result-object v0

    .line 806
    if-eqz v0, :cond_0

    .line 808
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v1

    .line 809
    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    .line 811
    new-instance v2, Lokhttp3/internal/http/HttpEngine$2;

    invoke-direct {v2, p0, v1, p1, v0}, Lokhttp3/internal/http/HttpEngine$2;-><init>(Lokhttp3/internal/http/HttpEngine;Lokio/BufferedSource;Lokhttp3/internal/http/CacheRequest;Lokio/BufferedSink;)V

    .line 853
    invoke-virtual {p2}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    new-instance v1, Lokhttp3/internal/http/RealResponseBody;

    .line 854
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v3

    invoke-static {v2}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lokhttp3/internal/http/RealResponseBody;-><init>(Lokhttp3/Headers;Lokio/BufferedSource;)V

    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 855
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p2

    goto :goto_0
.end method

.method private static combine(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 886
    new-instance v2, Lokhttp3/Headers$Builder;

    invoke-direct {v2}, Lokhttp3/Headers$Builder;-><init>()V

    .line 888
    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    .line 889
    invoke-virtual {p0, v1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    .line 890
    invoke-virtual {p0, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    .line 891
    const-string v6, "Warning"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 888
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 894
    :cond_1
    invoke-static {v4}, Lokhttp3/internal/http/OkHeaders;->isEndToEnd(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1, v4}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 895
    :cond_2
    invoke-virtual {v2, v4, v5}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    goto :goto_1

    .line 899
    :cond_3
    invoke-virtual {p1}, Lokhttp3/Headers;->size()I

    move-result v1

    :goto_2
    if-ge v0, v1, :cond_6

    .line 900
    invoke-virtual {p1, v0}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    .line 901
    const-string v4, "Content-Length"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 899
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 904
    :cond_5
    invoke-static {v3}, Lokhttp3/internal/http/OkHeaders;->isEndToEnd(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 905
    invoke-virtual {p1, v0}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    goto :goto_3

    .line 909
    :cond_6
    invoke-virtual {v2}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    return-object v0
.end method

.method private connect()Lokhttp3/internal/http/HttpStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lokhttp3/internal/http/RouteException;,
            Lokhttp3/internal/http/RequestException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->networkRequest:Lokhttp3/Request;

    invoke-virtual {v0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v5, 0x1

    .line 296
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->streamAllocation:Lokhttp3/internal/http/StreamAllocation;

    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->connectTimeoutMillis()I

    move-result v1

    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->client:Lokhttp3/OkHttpClient;

    .line 297
    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->readTimeoutMillis()I

    move-result v2

    iget-object v3, p0, Lokhttp3/internal/http/HttpEngine;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v3}, Lokhttp3/OkHttpClient;->writeTimeoutMillis()I

    move-result v3

    iget-object v4, p0, Lokhttp3/internal/http/HttpEngine;->client:Lokhttp3/OkHttpClient;

    .line 298
    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v4

    .line 296
    invoke-virtual/range {v0 .. v5}, Lokhttp3/internal/http/StreamAllocation;->newStream(IIIZZ)Lokhttp3/internal/http/HttpStream;

    move-result-object v0

    return-object v0

    .line 295
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private cookieHeader(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Cookie;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 580
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 581
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 582
    if-lez v1, :cond_0

    .line 583
    const-string v0, "; "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Cookie;

    .line 586
    invoke-virtual {v0}, Lokhttp3/Cookie;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lokhttp3/Cookie;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 588
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createAddress(Lokhttp3/OkHttpClient;Lokhttp3/Request;)Lokhttp3/Address;
    .locals 13

    .prologue
    const/4 v7, 0x0

    .line 1024
    .line 1027
    invoke-virtual {p1}, Lokhttp3/Request;->isHttps()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1028
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    .line 1029
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v6

    .line 1030
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->certificatePinner()Lokhttp3/CertificatePinner;

    move-result-object v7

    .line 1033
    :goto_0
    new-instance v0, Lokhttp3/Address;

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->port()I

    move-result v2

    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->dns()Lokhttp3/Dns;

    move-result-object v3

    .line 1034
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->socketFactory()Ljavax/net/SocketFactory;

    move-result-object v4

    .line 1035
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->proxyAuthenticator()Lokhttp3/Authenticator;

    move-result-object v8

    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v9

    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->protocols()Ljava/util/List;

    move-result-object v10

    .line 1036
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->connectionSpecs()Ljava/util/List;

    move-result-object v11

    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lokhttp3/Address;-><init>(Ljava/lang/String;ILokhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/CertificatePinner;Lokhttp3/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    .line 1033
    return-object v0

    :cond_0
    move-object v6, v7

    move-object v5, v7

    goto :goto_0
.end method

.method public static hasBody(Lokhttp3/Response;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 522
    invoke-virtual {p0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HEAD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 541
    :cond_0
    :goto_0
    return v0

    .line 526
    :cond_1
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v2

    .line 527
    const/16 v3, 0x64

    if-lt v2, v3, :cond_2

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_3

    :cond_2
    const/16 v3, 0xcc

    if-eq v2, v3, :cond_3

    const/16 v3, 0x130

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 530
    goto :goto_0

    .line 536
    :cond_3
    invoke-static {p0}, Lokhttp3/internal/http/OkHeaders;->contentLength(Lokhttp3/Response;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    const-string v2, "chunked"

    const-string v3, "Transfer-Encoding"

    .line 537
    invoke-virtual {p0, v3}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    .line 538
    goto :goto_0
.end method

.method private isRecoverable(Ljava/io/IOException;Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 391
    instance-of v2, p1, Ljava/net/ProtocolException;

    if-eqz v2, :cond_1

    .line 418
    :cond_0
    :goto_0
    return v1

    .line 397
    :cond_1
    instance-of v2, p1, Ljava/io/InterruptedIOException;

    if-eqz v2, :cond_3

    .line 398
    instance-of v2, p1, Ljava/net/SocketTimeoutException;

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 403
    :cond_3
    instance-of v2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v2, :cond_4

    .line 406
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/security/cert/CertificateException;

    if-nez v2, :cond_0

    .line 410
    :cond_4
    instance-of v2, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-nez v2, :cond_0

    move v1, v0

    .line 418
    goto :goto_0
.end method

.method private maybeCache()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 422
    sget-object v0, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, v1}, Lokhttp3/internal/Internal;->internalCache(Lokhttp3/OkHttpClient;)Lokhttp3/internal/InternalCache;

    move-result-object v0

    .line 423
    if-nez v0, :cond_1

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->networkRequest:Lokhttp3/Request;

    invoke-static {v1, v2}, Lokhttp3/internal/http/CacheStrategy;->isCacheable(Lokhttp3/Response;Lokhttp3/Request;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 427
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->networkRequest:Lokhttp3/Request;

    invoke-virtual {v1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 429
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->networkRequest:Lokhttp3/Request;

    invoke-interface {v0, v1}, Lokhttp3/internal/InternalCache;->remove(Lokhttp3/Request;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 430
    :catch_0
    move-exception v0

    goto :goto_0

    .line 438
    :cond_2
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    invoke-interface {v0, v1}, Lokhttp3/internal/InternalCache;->put(Lokhttp3/Response;)Lokhttp3/internal/http/CacheRequest;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/http/HttpEngine;->storeRequest:Lokhttp3/internal/http/CacheRequest;

    goto :goto_0
.end method

.method private networkRequest(Lokhttp3/Request;)Lokhttp3/Request;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 551
    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 553
    const-string v1, "Host"

    invoke-virtual {p1, v1}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 554
    const-string v1, "Host"

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lokhttp3/internal/Util;->hostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 557
    :cond_0
    const-string v1, "Connection"

    invoke-virtual {p1, v1}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 558
    const-string v1, "Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 561
    :cond_1
    const-string v1, "Accept-Encoding"

    invoke-virtual {p1, v1}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 562
    const/4 v1, 0x1

    iput-boolean v1, p0, Lokhttp3/internal/http/HttpEngine;->transparentGzip:Z

    .line 563
    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 566
    :cond_2
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->cookieJar()Lokhttp3/CookieJar;

    move-result-object v1

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-interface {v1, v2}, Lokhttp3/CookieJar;->loadForRequest(Lokhttp3/HttpUrl;)Ljava/util/List;

    move-result-object v1

    .line 567
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 568
    const-string v2, "Cookie"

    invoke-direct {p0, v1}, Lokhttp3/internal/http/HttpEngine;->cookieHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 571
    :cond_3
    const-string v1, "User-Agent"

    invoke-virtual {p1, v1}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 572
    const-string v1, "User-Agent"

    invoke-static {}, Lokhttp3/internal/Version;->userAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 575
    :cond_4
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    return-object v0
.end method

.method private readNetworkResponse()Lokhttp3/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 773
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->httpStream:Lokhttp3/internal/http/HttpStream;

    invoke-interface {v0}, Lokhttp3/internal/http/HttpStream;->finishRequest()V

    .line 775
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->httpStream:Lokhttp3/internal/http/HttpStream;

    invoke-interface {v0}, Lokhttp3/internal/http/HttpStream;->readResponseHeaders()Lokhttp3/Response$Builder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->networkRequest:Lokhttp3/Request;

    .line 776
    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->streamAllocation:Lokhttp3/internal/http/StreamAllocation;

    .line 777
    invoke-virtual {v1}, Lokhttp3/internal/http/StreamAllocation;->connection()Lokhttp3/internal/io/RealConnection;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/io/RealConnection;->handshake()Lokhttp3/Handshake;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->handshake(Lokhttp3/Handshake;)Lokhttp3/Response$Builder;

    move-result-object v0

    iget-wide v2, p0, Lokhttp3/internal/http/HttpEngine;->sentRequestMillis:J

    .line 778
    invoke-virtual {v0, v2, v3}, Lokhttp3/Response$Builder;->sentRequestAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 779
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lokhttp3/Response$Builder;->receivedResponseAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 780
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    .line 782
    iget-boolean v1, p0, Lokhttp3/internal/http/HttpEngine;->forWebSocket:Z

    if-nez v1, :cond_0

    .line 783
    invoke-virtual {v0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->httpStream:Lokhttp3/internal/http/HttpStream;

    .line 784
    invoke-interface {v2, v0}, Lokhttp3/internal/http/HttpStream;->openResponseBody(Lokhttp3/Response;)Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v1, v0}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 785
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    .line 788
    :cond_0
    const-string v1, "close"

    invoke-virtual {v0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v2

    const-string v3, "Connection"

    invoke-virtual {v2, v3}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "close"

    const-string v2, "Connection"

    .line 789
    invoke-virtual {v0, v2}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 790
    :cond_1
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->streamAllocation:Lokhttp3/internal/http/StreamAllocation;

    invoke-virtual {v1}, Lokhttp3/internal/http/StreamAllocation;->noNewStreams()V

    .line 793
    :cond_2
    return-object v0
.end method

.method private static stripBody(Lokhttp3/Response;)Lokhttp3/Response;
    .locals 2

    .prologue
    .line 302
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {p0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p0

    .line 302
    :cond_0
    return-object p0
.end method

.method private unzip(Lokhttp3/Response;)Lokhttp3/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 498
    iget-boolean v0, p0, Lokhttp3/internal/http/HttpEngine;->transparentGzip:Z

    if-eqz v0, :cond_0

    const-string v0, "gzip"

    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    const-string v2, "Content-Encoding"

    invoke-virtual {v1, v2}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 511
    :cond_0
    :goto_0
    return-object p1

    .line 502
    :cond_1
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 506
    new-instance v0, Lokio/GzipSource;

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    .line 507
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v1

    const-string v2, "Content-Encoding"

    .line 508
    invoke-virtual {v1, v2}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v1

    const-string v2, "Content-Length"

    .line 509
    invoke-virtual {v1, v2}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v1

    .line 510
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v1

    .line 511
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v2

    .line 512
    invoke-virtual {v2, v1}, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    move-result-object v2

    new-instance v3, Lokhttp3/internal/http/RealResponseBody;

    .line 513
    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lokhttp3/internal/http/RealResponseBody;-><init>(Lokhttp3/Headers;Lokio/BufferedSource;)V

    invoke-virtual {v2, v3}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 514
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    goto :goto_0
.end method

.method private static validate(Lokhttp3/Response;Lokhttp3/Response;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 863
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v2, 0x130

    if-ne v1, v2, :cond_1

    .line 879
    :cond_0
    :goto_0
    return v0

    .line 870
    :cond_1
    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    const-string v2, "Last-Modified"

    invoke-virtual {v1, v2}, Lokhttp3/Headers;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 871
    if-eqz v1, :cond_2

    .line 872
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v2

    const-string v3, "Last-Modified"

    invoke-virtual {v2, v3}, Lokhttp3/Headers;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 873
    if-eqz v2, :cond_2

    .line 874
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 879
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeRequestHeadersEagerly()Z
    .locals 1

    .prologue
    .line 289
    iget-boolean v0, p0, Lokhttp3/internal/http/HttpEngine;->callerWritesRequestBody:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->networkRequest:Lokhttp3/Request;

    .line 290
    invoke-virtual {p0, v0}, Lokhttp3/internal/http/HttpEngine;->permitsRequestBody(Lokhttp3/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 289
    :goto_0
    return v0

    .line 290
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->streamAllocation:Lokhttp3/internal/http/StreamAllocation;

    invoke-virtual {v0}, Lokhttp3/internal/http/StreamAllocation;->cancel()V

    .line 460
    return-void
.end method

.method public close()Lokhttp3/internal/http/StreamAllocation;
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->bufferedRequestBody:Lokio/BufferedSink;

    if-eqz v0, :cond_1

    .line 469
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->bufferedRequestBody:Lokio/BufferedSink;

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 474
    :cond_0
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    if-eqz v0, :cond_2

    .line 475
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 481
    :goto_1
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->streamAllocation:Lokhttp3/internal/http/StreamAllocation;

    return-object v0

    .line 470
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 478
    :cond_2
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->streamAllocation:Lokhttp3/internal/http/StreamAllocation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lokhttp3/internal/http/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    goto :goto_1
.end method

.method public followUpRequest()Lokhttp3/Request;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 927
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 928
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->streamAllocation:Lokhttp3/internal/http/StreamAllocation;

    invoke-virtual {v0}, Lokhttp3/internal/http/StreamAllocation;->connection()Lokhttp3/internal/io/RealConnection;

    move-result-object v0

    .line 929
    if-eqz v0, :cond_2

    .line 930
    invoke-interface {v0}, Lokhttp3/Connection;->route()Lokhttp3/Route;

    move-result-object v0

    .line 932
    :goto_0
    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    invoke-virtual {v2}, Lokhttp3/Response;->code()I

    move-result v2

    .line 934
    iget-object v3, p0, Lokhttp3/internal/http/HttpEngine;->userRequest:Lokhttp3/Request;

    invoke-virtual {v3}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v3

    .line 935
    sparse-switch v2, :sswitch_data_0

    .line 1008
    :cond_1
    :goto_1
    return-object v1

    :cond_2
    move-object v0, v1

    .line 930
    goto :goto_0

    .line 937
    :sswitch_0
    if-eqz v0, :cond_3

    .line 938
    invoke-virtual {v0}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v1

    .line 940
    :goto_2
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_4

    .line 941
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 938
    :cond_3
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->client:Lokhttp3/OkHttpClient;

    .line 939
    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v1

    goto :goto_2

    .line 943
    :cond_4
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->proxyAuthenticator()Lokhttp3/Authenticator;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    invoke-interface {v1, v0, v2}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object v1

    goto :goto_1

    .line 946
    :sswitch_1
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->authenticator()Lokhttp3/Authenticator;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    invoke-interface {v1, v0, v2}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object v1

    goto :goto_1

    .line 952
    :sswitch_2
    const-string v0, "GET"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "HEAD"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 961
    :cond_5
    :sswitch_3
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->followRedirects()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 963
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    const-string v2, "Location"

    invoke-virtual {v0, v2}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 964
    if-eqz v0, :cond_1

    .line 965
    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->userRequest:Lokhttp3/Request;

    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lokhttp3/HttpUrl;->resolve(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    .line 968
    if-eqz v0, :cond_1

    .line 971
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lokhttp3/internal/http/HttpEngine;->userRequest:Lokhttp3/Request;

    invoke-virtual {v4}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 972
    if-nez v2, :cond_6

    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->followSslRedirects()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 975
    :cond_6
    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->userRequest:Lokhttp3/Request;

    invoke-virtual {v2}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v2

    .line 976
    invoke-static {v3}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 977
    invoke-static {v3}, Lokhttp3/internal/http/HttpMethod;->redirectsToGet(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 978
    const-string v3, "GET"

    invoke-virtual {v2, v3, v1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 982
    :goto_3
    const-string v1, "Transfer-Encoding"

    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 983
    const-string v1, "Content-Length"

    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 984
    const-string v1, "Content-Type"

    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 990
    :cond_7
    invoke-virtual {p0, v0}, Lokhttp3/internal/http/HttpEngine;->sameConnection(Lokhttp3/HttpUrl;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 991
    const-string v1, "Authorization"

    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 994
    :cond_8
    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    goto/16 :goto_1

    .line 980
    :cond_9
    invoke-virtual {v2, v3, v1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_3

    .line 1000
    :sswitch_4
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;

    instance-of v0, v0, Lokhttp3/internal/http/RetryableSink;

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    .line 1001
    :goto_4
    iget-boolean v2, p0, Lokhttp3/internal/http/HttpEngine;->callerWritesRequestBody:Z

    if-eqz v2, :cond_b

    if-eqz v0, :cond_1

    .line 1005
    :cond_b
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->userRequest:Lokhttp3/Request;

    goto/16 :goto_1

    .line 1000
    :cond_c
    const/4 v0, 0x0

    goto :goto_4

    .line 935
    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_3
        0x12d -> :sswitch_3
        0x12e -> :sswitch_3
        0x12f -> :sswitch_3
        0x133 -> :sswitch_2
        0x134 -> :sswitch_2
        0x191 -> :sswitch_1
        0x197 -> :sswitch_0
        0x198 -> :sswitch_4
    .end sparse-switch
.end method

.method public getBufferedRequestBody()Lokio/BufferedSink;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->bufferedRequestBody:Lokio/BufferedSink;

    .line 328
    if-eqz v0, :cond_0

    .line 330
    :goto_0
    return-object v0

    .line 329
    :cond_0
    invoke-virtual {p0}, Lokhttp3/internal/http/HttpEngine;->getRequestBody()Lokio/Sink;

    move-result-object v0

    .line 330
    if-eqz v0, :cond_1

    .line 331
    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/http/HttpEngine;->bufferedRequestBody:Lokio/BufferedSink;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConnection()Lokhttp3/Connection;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->streamAllocation:Lokhttp3/internal/http/StreamAllocation;

    invoke-virtual {v0}, Lokhttp3/internal/http/StreamAllocation;->connection()Lokhttp3/internal/io/RealConnection;

    move-result-object v0

    return-object v0
.end method

.method public getRequest()Lokhttp3/Request;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->userRequest:Lokhttp3/Request;

    return-object v0
.end method

.method public getRequestBody()Lokio/Sink;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->cacheStrategy:Lokhttp3/internal/http/CacheStrategy;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 323
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;

    return-object v0
.end method

.method public getResponse()Lokhttp3/Response;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 347
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    return-object v0
.end method

.method public hasResponse()Z
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method permitsRequestBody(Lokhttp3/Request;)Z
    .locals 1

    .prologue
    .line 317
    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public readResponse()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    .line 596
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    if-eqz v0, :cond_1

    .line 686
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->networkRequest:Lokhttp3/Request;

    if-nez v0, :cond_2

    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->cacheResponse:Lokhttp3/Response;

    if-nez v0, :cond_2

    .line 600
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call sendRequest() first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 602
    :cond_2
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->networkRequest:Lokhttp3/Request;

    if-eqz v0, :cond_0

    .line 608
    iget-boolean v0, p0, Lokhttp3/internal/http/HttpEngine;->forWebSocket:Z

    if-eqz v0, :cond_3

    .line 609
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->httpStream:Lokhttp3/internal/http/HttpStream;

    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->networkRequest:Lokhttp3/Request;

    invoke-interface {v0, v1}, Lokhttp3/internal/http/HttpStream;->writeRequestHeaders(Lokhttp3/Request;)V

    .line 610
    invoke-direct {p0}, Lokhttp3/internal/http/HttpEngine;->readNetworkResponse()Lokhttp3/Response;

    move-result-object v0

    .line 648
    :goto_1
    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {p0, v1}, Lokhttp3/internal/http/HttpEngine;->receiveHeaders(Lokhttp3/Headers;)V

    .line 651
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->cacheResponse:Lokhttp3/Response;

    if-eqz v1, :cond_b

    .line 652
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->cacheResponse:Lokhttp3/Response;

    invoke-static {v1, v0}, Lokhttp3/internal/http/HttpEngine;->validate(Lokhttp3/Response;Lokhttp3/Response;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 653
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->cacheResponse:Lokhttp3/Response;

    invoke-virtual {v1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->userRequest:Lokhttp3/Request;

    .line 654
    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->priorResponse:Lokhttp3/Response;

    .line 655
    invoke-static {v2}, Lokhttp3/internal/http/HttpEngine;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->priorResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->cacheResponse:Lokhttp3/Response;

    .line 656
    invoke-virtual {v2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v2

    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v3

    invoke-static {v2, v3}, Lokhttp3/internal/http/HttpEngine;->combine(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->cacheResponse:Lokhttp3/Response;

    .line 657
    invoke-static {v2}, Lokhttp3/internal/http/HttpEngine;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->cacheResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v1

    .line 658
    invoke-static {v0}, Lokhttp3/internal/http/HttpEngine;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->networkResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v1

    .line 659
    invoke-virtual {v1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    .line 660
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    .line 661
    invoke-virtual {p0}, Lokhttp3/internal/http/HttpEngine;->releaseStreamAllocation()V

    .line 665
    sget-object v0, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, v1}, Lokhttp3/internal/Internal;->internalCache(Lokhttp3/OkHttpClient;)Lokhttp3/internal/InternalCache;

    move-result-object v0

    .line 666
    invoke-interface {v0}, Lokhttp3/internal/InternalCache;->trackConditionalCacheHit()V

    .line 667
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->cacheResponse:Lokhttp3/Response;

    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    invoke-interface {v0, v1, v2}, Lokhttp3/internal/InternalCache;->update(Lokhttp3/Response;Lokhttp3/Response;)V

    .line 668
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    invoke-direct {p0, v0}, Lokhttp3/internal/http/HttpEngine;->unzip(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    goto/16 :goto_0

    .line 611
    :cond_3
    iget-boolean v0, p0, Lokhttp3/internal/http/HttpEngine;->callerWritesRequestBody:Z

    if-nez v0, :cond_4

    .line 612
    new-instance v0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;

    const/4 v1, 0x0

    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->networkRequest:Lokhttp3/Request;

    iget-object v3, p0, Lokhttp3/internal/http/HttpEngine;->streamAllocation:Lokhttp3/internal/http/StreamAllocation;

    .line 613
    invoke-virtual {v3}, Lokhttp3/internal/http/StreamAllocation;->connection()Lokhttp3/internal/io/RealConnection;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;-><init>(Lokhttp3/internal/http/HttpEngine;ILokhttp3/Request;Lokhttp3/Connection;)V

    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->networkRequest:Lokhttp3/Request;

    invoke-virtual {v0, v1}, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    goto/16 :goto_1

    .line 616
    :cond_4
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->bufferedRequestBody:Lokio/BufferedSink;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->bufferedRequestBody:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->buffer()Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 617
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->bufferedRequestBody:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->emit()Lokio/BufferedSink;

    .line 621
    :cond_5
    iget-wide v0, p0, Lokhttp3/internal/http/HttpEngine;->sentRequestMillis:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_7

    .line 622
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->networkRequest:Lokhttp3/Request;

    invoke-static {v0}, Lokhttp3/internal/http/OkHeaders;->contentLength(Lokhttp3/Request;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_6

    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;

    instance-of v0, v0, Lokhttp3/internal/http/RetryableSink;

    if-eqz v0, :cond_6

    .line 624
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;

    check-cast v0, Lokhttp3/internal/http/RetryableSink;

    invoke-virtual {v0}, Lokhttp3/internal/http/RetryableSink;->contentLength()J

    move-result-wide v0

    .line 625
    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->networkRequest:Lokhttp3/Request;

    invoke-virtual {v2}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v2

    const-string v3, "Content-Length"

    .line 626
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 627
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/http/HttpEngine;->networkRequest:Lokhttp3/Request;

    .line 629
    :cond_6
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->httpStream:Lokhttp3/internal/http/HttpStream;

    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->networkRequest:Lokhttp3/Request;

    invoke-interface {v0, v1}, Lokhttp3/internal/http/HttpStream;->writeRequestHeaders(Lokhttp3/Request;)V

    .line 633
    :cond_7
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;

    if-eqz v0, :cond_8

    .line 634
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->bufferedRequestBody:Lokio/BufferedSink;

    if-eqz v0, :cond_9

    .line 636
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->bufferedRequestBody:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->close()V

    .line 640
    :goto_2
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;

    instance-of v0, v0, Lokhttp3/internal/http/RetryableSink;

    if-eqz v0, :cond_8

    .line 641
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->httpStream:Lokhttp3/internal/http/HttpStream;

    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;

    check-cast v0, Lokhttp3/internal/http/RetryableSink;

    invoke-interface {v1, v0}, Lokhttp3/internal/http/HttpStream;->writeRequestBody(Lokhttp3/internal/http/RetryableSink;)V

    .line 645
    :cond_8
    invoke-direct {p0}, Lokhttp3/internal/http/HttpEngine;->readNetworkResponse()Lokhttp3/Response;

    move-result-object v0

    goto/16 :goto_1

    .line 638
    :cond_9
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;

    invoke-interface {v0}, Lokio/Sink;->close()V

    goto :goto_2

    .line 671
    :cond_a
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->cacheResponse:Lokhttp3/Response;

    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 675
    :cond_b
    invoke-virtual {v0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->userRequest:Lokhttp3/Request;

    .line 676
    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->priorResponse:Lokhttp3/Response;

    .line 677
    invoke-static {v2}, Lokhttp3/internal/http/HttpEngine;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->priorResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->cacheResponse:Lokhttp3/Response;

    .line 678
    invoke-static {v2}, Lokhttp3/internal/http/HttpEngine;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->cacheResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v1

    .line 679
    invoke-static {v0}, Lokhttp3/internal/http/HttpEngine;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v1, v0}, Lokhttp3/Response$Builder;->networkResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 680
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    .line 682
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    invoke-static {v0}, Lokhttp3/internal/http/HttpEngine;->hasBody(Lokhttp3/Response;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    invoke-direct {p0}, Lokhttp3/internal/http/HttpEngine;->maybeCache()V

    .line 684
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->storeRequest:Lokhttp3/internal/http/CacheRequest;

    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    invoke-direct {p0, v0, v1}, Lokhttp3/internal/http/HttpEngine;->cacheWritingResponse(Lokhttp3/internal/http/CacheRequest;Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v0

    invoke-direct {p0, v0}, Lokhttp3/internal/http/HttpEngine;->unzip(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    goto/16 :goto_0
.end method

.method public receiveHeaders(Lokhttp3/Headers;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 913
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->cookieJar()Lokhttp3/CookieJar;

    move-result-object v0

    sget-object v1, Lokhttp3/CookieJar;->NO_COOKIES:Lokhttp3/CookieJar;

    if-ne v0, v1, :cond_1

    .line 919
    :cond_0
    :goto_0
    return-void

    .line 915
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->userRequest:Lokhttp3/Request;

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-static {v0, p1}, Lokhttp3/Cookie;->parseAll(Lokhttp3/HttpUrl;Lokhttp3/Headers;)Ljava/util/List;

    move-result-object v0

    .line 916
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 918
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->cookieJar()Lokhttp3/CookieJar;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->userRequest:Lokhttp3/Request;

    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lokhttp3/CookieJar;->saveFromResponse(Lokhttp3/HttpUrl;Ljava/util/List;)V

    goto :goto_0
.end method

.method public recover(Ljava/io/IOException;Z)Lokhttp3/internal/http/HttpEngine;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;

    invoke-virtual {p0, p1, p2, v0}, Lokhttp3/internal/http/HttpEngine;->recover(Ljava/io/IOException;ZLokio/Sink;)Lokhttp3/internal/http/HttpEngine;

    move-result-object v0

    return-object v0
.end method

.method public recover(Ljava/io/IOException;ZLokio/Sink;)Lokhttp3/internal/http/HttpEngine;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 360
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->streamAllocation:Lokhttp3/internal/http/StreamAllocation;

    invoke-virtual {v1, p1}, Lokhttp3/internal/http/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 362
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v1

    if-nez v1, :cond_1

    .line 381
    :cond_0
    :goto_0
    return-object v0

    .line 366
    :cond_1
    if-eqz p3, :cond_2

    instance-of v1, p3, Lokhttp3/internal/http/RetryableSink;

    if-eqz v1, :cond_0

    .line 370
    :cond_2
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/http/HttpEngine;->isRecoverable(Ljava/io/IOException;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 374
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->streamAllocation:Lokhttp3/internal/http/StreamAllocation;

    invoke-virtual {v1}, Lokhttp3/internal/http/StreamAllocation;->hasMoreRoutes()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    invoke-virtual {p0}, Lokhttp3/internal/http/HttpEngine;->close()Lokhttp3/internal/http/StreamAllocation;

    move-result-object v6

    .line 381
    new-instance v0, Lokhttp3/internal/http/HttpEngine;

    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->client:Lokhttp3/OkHttpClient;

    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->userRequest:Lokhttp3/Request;

    iget-boolean v3, p0, Lokhttp3/internal/http/HttpEngine;->bufferRequestBody:Z

    iget-boolean v4, p0, Lokhttp3/internal/http/HttpEngine;->callerWritesRequestBody:Z

    iget-boolean v5, p0, Lokhttp3/internal/http/HttpEngine;->forWebSocket:Z

    move-object v7, p3

    check-cast v7, Lokhttp3/internal/http/RetryableSink;

    iget-object v8, p0, Lokhttp3/internal/http/HttpEngine;->priorResponse:Lokhttp3/Response;

    invoke-direct/range {v0 .. v8}, Lokhttp3/internal/http/HttpEngine;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;ZZZLokhttp3/internal/http/StreamAllocation;Lokhttp3/internal/http/RetryableSink;Lokhttp3/Response;)V

    goto :goto_0
.end method

.method public releaseStreamAllocation()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 446
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->streamAllocation:Lokhttp3/internal/http/StreamAllocation;

    invoke-virtual {v0}, Lokhttp3/internal/http/StreamAllocation;->release()V

    .line 447
    return-void
.end method

.method public sameConnection(Lokhttp3/HttpUrl;)Z
    .locals 3

    .prologue
    .line 1017
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->userRequest:Lokhttp3/Request;

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    .line 1018
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1019
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->port()I

    move-result v1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->port()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1020
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1018
    :goto_0
    return v0

    .line 1020
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendRequest()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lokhttp3/internal/http/RequestException;,
            Lokhttp3/internal/http/RouteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->cacheStrategy:Lokhttp3/internal/http/CacheStrategy;

    if-eqz v0, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->httpStream:Lokhttp3/internal/http/HttpStream;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 199
    :cond_2
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->userRequest:Lokhttp3/Request;

    invoke-direct {p0, v0}, Lokhttp3/internal/http/HttpEngine;->networkRequest(Lokhttp3/Request;)Lokhttp3/Request;

    move-result-object v1

    .line 201
    sget-object v0, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, v2}, Lokhttp3/internal/Internal;->internalCache(Lokhttp3/OkHttpClient;)Lokhttp3/internal/InternalCache;

    move-result-object v2

    .line 202
    if-eqz v2, :cond_5

    .line 203
    invoke-interface {v2, v1}, Lokhttp3/internal/InternalCache;->get(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    .line 206
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 207
    new-instance v3, Lokhttp3/internal/http/CacheStrategy$Factory;

    invoke-direct {v3, v4, v5, v1, v0}, Lokhttp3/internal/http/CacheStrategy$Factory;-><init>(JLokhttp3/Request;Lokhttp3/Response;)V

    invoke-virtual {v3}, Lokhttp3/internal/http/CacheStrategy$Factory;->get()Lokhttp3/internal/http/CacheStrategy;

    move-result-object v3

    iput-object v3, p0, Lokhttp3/internal/http/HttpEngine;->cacheStrategy:Lokhttp3/internal/http/CacheStrategy;

    .line 208
    iget-object v3, p0, Lokhttp3/internal/http/HttpEngine;->cacheStrategy:Lokhttp3/internal/http/CacheStrategy;

    iget-object v3, v3, Lokhttp3/internal/http/CacheStrategy;->networkRequest:Lokhttp3/Request;

    iput-object v3, p0, Lokhttp3/internal/http/HttpEngine;->networkRequest:Lokhttp3/Request;

    .line 209
    iget-object v3, p0, Lokhttp3/internal/http/HttpEngine;->cacheStrategy:Lokhttp3/internal/http/CacheStrategy;

    iget-object v3, v3, Lokhttp3/internal/http/CacheStrategy;->cacheResponse:Lokhttp3/Response;

    iput-object v3, p0, Lokhttp3/internal/http/HttpEngine;->cacheResponse:Lokhttp3/Response;

    .line 211
    if-eqz v2, :cond_3

    .line 212
    iget-object v3, p0, Lokhttp3/internal/http/HttpEngine;->cacheStrategy:Lokhttp3/internal/http/CacheStrategy;

    invoke-interface {v2, v3}, Lokhttp3/internal/InternalCache;->trackResponse(Lokhttp3/internal/http/CacheStrategy;)V

    .line 215
    :cond_3
    if-eqz v0, :cond_4

    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->cacheResponse:Lokhttp3/Response;

    if-nez v2, :cond_4

    .line 216
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-static {v2}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 220
    :cond_4
    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->networkRequest:Lokhttp3/Request;

    if-nez v2, :cond_6

    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->cacheResponse:Lokhttp3/Response;

    if-nez v2, :cond_6

    .line 221
    new-instance v0, Lokhttp3/Response$Builder;

    invoke-direct {v0}, Lokhttp3/Response$Builder;-><init>()V

    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->userRequest:Lokhttp3/Request;

    .line 222
    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->priorResponse:Lokhttp3/Response;

    .line 223
    invoke-static {v1}, Lokhttp3/internal/http/HttpEngine;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->priorResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v0

    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 224
    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    move-result-object v0

    const/16 v1, 0x1f8

    .line 225
    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    move-result-object v0

    const-string v1, "Unsatisfiable Request (only-if-cached)"

    .line 226
    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v0

    sget-object v1, Lokhttp3/internal/http/HttpEngine;->EMPTY_BODY:Lokhttp3/ResponseBody;

    .line 227
    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v0

    iget-wide v2, p0, Lokhttp3/internal/http/HttpEngine;->sentRequestMillis:J

    .line 228
    invoke-virtual {v0, v2, v3}, Lokhttp3/Response$Builder;->sentRequestAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lokhttp3/Response$Builder;->receivedResponseAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    goto/16 :goto_0

    .line 203
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 235
    :cond_6
    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->networkRequest:Lokhttp3/Request;

    if-nez v2, :cond_7

    .line 236
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->cacheResponse:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->userRequest:Lokhttp3/Request;

    .line 237
    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->priorResponse:Lokhttp3/Response;

    .line 238
    invoke-static {v1}, Lokhttp3/internal/http/HttpEngine;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->priorResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->cacheResponse:Lokhttp3/Response;

    .line 239
    invoke-static {v1}, Lokhttp3/internal/http/HttpEngine;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->cacheResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    .line 241
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    invoke-direct {p0, v0}, Lokhttp3/internal/http/HttpEngine;->unzip(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    goto/16 :goto_0

    .line 248
    :cond_7
    :try_start_0
    invoke-direct {p0}, Lokhttp3/internal/http/HttpEngine;->connect()Lokhttp3/internal/http/HttpStream;

    move-result-object v2

    iput-object v2, p0, Lokhttp3/internal/http/HttpEngine;->httpStream:Lokhttp3/internal/http/HttpStream;

    .line 249
    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->httpStream:Lokhttp3/internal/http/HttpStream;

    invoke-interface {v2, p0}, Lokhttp3/internal/http/HttpStream;->setHttpEngine(Lokhttp3/internal/http/HttpEngine;)V

    .line 251
    invoke-direct {p0}, Lokhttp3/internal/http/HttpEngine;->writeRequestHeadersEagerly()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    invoke-static {v1}, Lokhttp3/internal/http/OkHeaders;->contentLength(Lokhttp3/Request;)J

    move-result-wide v2

    .line 253
    iget-boolean v1, p0, Lokhttp3/internal/http/HttpEngine;->bufferRequestBody:Z

    if-eqz v1, :cond_b

    .line 254
    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v2, v4

    if-lez v1, :cond_9

    .line 255
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for requests larger than 2 GiB."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_8

    .line 277
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_8
    throw v1

    .line 259
    :cond_9
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_a

    .line 261
    :try_start_1
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->httpStream:Lokhttp3/internal/http/HttpStream;

    iget-object v4, p0, Lokhttp3/internal/http/HttpEngine;->networkRequest:Lokhttp3/Request;

    invoke-interface {v1, v4}, Lokhttp3/internal/http/HttpStream;->writeRequestHeaders(Lokhttp3/Request;)V

    .line 262
    new-instance v1, Lokhttp3/internal/http/RetryableSink;

    long-to-int v2, v2

    invoke-direct {v1, v2}, Lokhttp3/internal/http/RetryableSink;-><init>(I)V

    iput-object v1, p0, Lokhttp3/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;

    goto/16 :goto_0

    .line 266
    :cond_a
    new-instance v1, Lokhttp3/internal/http/RetryableSink;

    invoke-direct {v1}, Lokhttp3/internal/http/RetryableSink;-><init>()V

    iput-object v1, p0, Lokhttp3/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;

    goto/16 :goto_0

    .line 269
    :cond_b
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->httpStream:Lokhttp3/internal/http/HttpStream;

    iget-object v4, p0, Lokhttp3/internal/http/HttpEngine;->networkRequest:Lokhttp3/Request;

    invoke-interface {v1, v4}, Lokhttp3/internal/http/HttpStream;->writeRequestHeaders(Lokhttp3/Request;)V

    .line 270
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->httpStream:Lokhttp3/internal/http/HttpStream;

    iget-object v4, p0, Lokhttp3/internal/http/HttpEngine;->networkRequest:Lokhttp3/Request;

    invoke-interface {v1, v4, v2, v3}, Lokhttp3/internal/http/HttpStream;->createRequestBody(Lokhttp3/Request;J)Lokio/Sink;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public writingRequestHeaders()V
    .locals 4

    .prologue
    .line 312
    iget-wide v0, p0, Lokhttp3/internal/http/HttpEngine;->sentRequestMillis:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 313
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/internal/http/HttpEngine;->sentRequestMillis:J

    .line 314
    return-void
.end method

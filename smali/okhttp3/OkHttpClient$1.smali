.class final Lokhttp3/OkHttpClient$1;
.super Lokhttp3/internal/Internal;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lokhttp3/internal/Internal;-><init>()V

    return-void
.end method


# virtual methods
.method public addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p1, p2}, Lokhttp3/Headers$Builder;->addLenient(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 81
    return-void
.end method

.method public addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    invoke-virtual {p1, p2, p3}, Lokhttp3/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 85
    return-void
.end method

.method public apply(Lokhttp3/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V
    .locals 0

    .prologue
    .line 124
    invoke-virtual {p1, p2, p3}, Lokhttp3/ConnectionSpec;->apply(Ljavax/net/ssl/SSLSocket;Z)V

    .line 125
    return-void
.end method

.method public callEngineGetStreamAllocation(Lokhttp3/Call;)Lokhttp3/internal/http/StreamAllocation;
    .locals 1

    .prologue
    .line 119
    check-cast p1, Lokhttp3/RealCall;

    iget-object v0, p1, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    iget-object v0, v0, Lokhttp3/internal/http/HttpEngine;->streamAllocation:Lokhttp3/internal/http/StreamAllocation;

    return-object v0
.end method

.method public callEnqueue(Lokhttp3/Call;Lokhttp3/Callback;Z)V
    .locals 0

    .prologue
    .line 115
    check-cast p1, Lokhttp3/RealCall;

    invoke-virtual {p1, p2, p3}, Lokhttp3/RealCall;->enqueue(Lokhttp3/Callback;Z)V

    .line 116
    return-void
.end method

.method public connectionBecameIdle(Lokhttp3/ConnectionPool;Lokhttp3/internal/io/RealConnection;)Z
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p1, p2}, Lokhttp3/ConnectionPool;->connectionBecameIdle(Lokhttp3/internal/io/RealConnection;)Z

    move-result v0

    return v0
.end method

.method public get(Lokhttp3/ConnectionPool;Lokhttp3/Address;Lokhttp3/internal/http/StreamAllocation;)Lokhttp3/internal/io/RealConnection;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p1, p2, p3}, Lokhttp3/ConnectionPool;->get(Lokhttp3/Address;Lokhttp3/internal/http/StreamAllocation;)Lokhttp3/internal/io/RealConnection;

    move-result-object v0

    return-object v0
.end method

.method public getHttpUrlChecked(Ljava/lang/String;)Lokhttp3/HttpUrl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-static {p1}, Lokhttp3/HttpUrl;->getChecked(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    return-object v0
.end method

.method public internalCache(Lokhttp3/OkHttpClient;)Lokhttp3/internal/InternalCache;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->internalCache()Lokhttp3/internal/InternalCache;

    move-result-object v0

    return-object v0
.end method

.method public put(Lokhttp3/ConnectionPool;Lokhttp3/internal/io/RealConnection;)V
    .locals 0

    .prologue
    .line 106
    invoke-virtual {p1, p2}, Lokhttp3/ConnectionPool;->put(Lokhttp3/internal/io/RealConnection;)V

    .line 107
    return-void
.end method

.method public routeDatabase(Lokhttp3/ConnectionPool;)Lokhttp3/internal/RouteDatabase;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p1, Lokhttp3/ConnectionPool;->routeDatabase:Lokhttp3/internal/RouteDatabase;

    return-object v0
.end method

.method public setCache(Lokhttp3/OkHttpClient$Builder;Lokhttp3/internal/InternalCache;)V
    .locals 0

    .prologue
    .line 88
    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient$Builder;->setInternalCache(Lokhttp3/internal/InternalCache;)V

    .line 89
    return-void
.end method

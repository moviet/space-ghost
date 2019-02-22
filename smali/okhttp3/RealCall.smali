.class final Lokhttp3/RealCall;
.super Ljava/lang/Object;
.source "RealCall.java"

# interfaces
.implements Lokhttp3/Call;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/RealCall$ApplicationInterceptorChain;,
        Lokhttp3/RealCall$AsyncCall;
    }
.end annotation


# instance fields
.field volatile canceled:Z

.field private final client:Lokhttp3/OkHttpClient;

.field engine:Lokhttp3/internal/http/HttpEngine;

.field private executed:Z

.field originalRequest:Lokhttp3/Request;


# direct methods
.method protected constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    .line 43
    iput-object p2, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    .line 44
    return-void
.end method

.method static synthetic access$100(Lokhttp3/RealCall;Z)Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lokhttp3/RealCall;->getResponseWithInterceptorChain(Z)Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lokhttp3/RealCall;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lokhttp3/RealCall;->toLoggableString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lokhttp3/RealCall;)Lokhttp3/OkHttpClient;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method private getResponseWithInterceptorChain(Z)Lokhttp3/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    new-instance v0, Lokhttp3/RealCall$ApplicationInterceptorChain;

    const/4 v1, 0x0

    iget-object v2, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    invoke-direct {v0, p0, v1, v2, p1}, Lokhttp3/RealCall$ApplicationInterceptorChain;-><init>(Lokhttp3/RealCall;ILokhttp3/Request;Z)V

    .line 163
    iget-object v1, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    invoke-interface {v0, v1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method private toLoggableString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
    iget-boolean v0, p0, Lokhttp3/RealCall;->canceled:Z

    if-eqz v0, :cond_0

    const-string v0, "canceled call"

    .line 154
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lokhttp3/RealCall;->redactedUrl()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 153
    :cond_0
    const-string v0, "call"

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/RealCall;->canceled:Z

    .line 83
    iget-object v0, p0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v0}, Lokhttp3/internal/http/HttpEngine;->cancel()V

    .line 84
    :cond_0
    return-void
.end method

.method public enqueue(Lokhttp3/Callback;)V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lokhttp3/RealCall;->enqueue(Lokhttp3/Callback;Z)V

    .line 71
    return-void
.end method

.method enqueue(Lokhttp3/Callback;Z)V
    .locals 3

    .prologue
    .line 74
    monitor-enter p0

    .line 75
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/RealCall;->executed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 76
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lokhttp3/RealCall;->executed:Z

    .line 77
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    new-instance v1, Lokhttp3/RealCall$AsyncCall;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lokhttp3/RealCall$AsyncCall;-><init>(Lokhttp3/RealCall;Lokhttp3/Callback;ZLokhttp3/RealCall$1;)V

    invoke-virtual {v0, v1}, Lokhttp3/Dispatcher;->enqueue(Lokhttp3/RealCall$AsyncCall;)V

    .line 79
    return-void
.end method

.method public execute()Lokhttp3/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    monitor-enter p0

    .line 52
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/RealCall;->executed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 53
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lokhttp3/RealCall;->executed:Z

    .line 54
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :try_start_2
    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lokhttp3/Dispatcher;->executed(Lokhttp3/RealCall;)V

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lokhttp3/RealCall;->getResponseWithInterceptorChain(Z)Lokhttp3/Response;

    move-result-object v0

    .line 58
    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 61
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lokhttp3/Dispatcher;->finished(Lokhttp3/Call;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lokhttp3/Dispatcher;->finished(Lokhttp3/Call;)V

    .line 59
    return-object v0
.end method

.method getResponse(Lokhttp3/Request;Z)Lokhttp3/Response;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_b

    .line 212
    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v1

    .line 214
    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v2

    .line 215
    if-eqz v2, :cond_0

    .line 216
    const-string v3, "Content-Type"

    invoke-virtual {v2}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 219
    :cond_0
    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v2

    .line 220
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 221
    const-string v0, "Content-Length"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 222
    const-string v0, "Transfer-Encoding"

    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 228
    :goto_0
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 232
    :goto_1
    new-instance v0, Lokhttp3/internal/http/HttpEngine;

    iget-object v1, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v5, p2

    invoke-direct/range {v0 .. v8}, Lokhttp3/internal/http/HttpEngine;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;ZZZLokhttp3/internal/http/StreamAllocation;Lokhttp3/internal/http/RetryableSink;Lokhttp3/Response;)V

    iput-object v0, p0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    .line 234
    const/4 v0, 0x0

    .line 236
    :goto_2
    iget-boolean v1, p0, Lokhttp3/RealCall;->canceled:Z

    if-eqz v1, :cond_2

    .line 237
    iget-object v0, p0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v0}, Lokhttp3/internal/http/HttpEngine;->releaseStreamAllocation()V

    .line 238
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_1
    const-string v0, "Transfer-Encoding"

    const-string v2, "chunked"

    invoke-virtual {v1, v0, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 225
    const-string v0, "Content-Length"

    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    .line 241
    :cond_2
    const/4 v2, 0x1

    .line 243
    :try_start_0
    iget-object v1, p0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v1}, Lokhttp3/internal/http/HttpEngine;->sendRequest()V

    .line 244
    iget-object v1, p0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v1}, Lokhttp3/internal/http/HttpEngine;->readResponse()V
    :try_end_0
    .catch Lokhttp3/internal/http/RequestException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lokhttp3/internal/http/RouteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    iget-object v1, p0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v1}, Lokhttp3/internal/http/HttpEngine;->getResponse()Lokhttp3/Response;

    move-result-object v8

    .line 279
    iget-object v1, p0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v1}, Lokhttp3/internal/http/HttpEngine;->followUpRequest()Lokhttp3/Request;

    move-result-object v2

    .line 281
    if-nez v2, :cond_7

    .line 282
    if-nez p2, :cond_3

    .line 283
    iget-object v0, p0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v0}, Lokhttp3/internal/http/HttpEngine;->releaseStreamAllocation()V

    .line 285
    :cond_3
    return-object v8

    .line 246
    :catch_0
    move-exception v0

    .line 248
    :try_start_1
    invoke-virtual {v0}, Lokhttp3/internal/http/RequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    :catchall_0
    move-exception v0

    move v1, v2

    :goto_3
    if-eqz v1, :cond_4

    .line 273
    iget-object v1, p0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v1}, Lokhttp3/internal/http/HttpEngine;->close()Lokhttp3/internal/http/StreamAllocation;

    move-result-object v1

    .line 274
    invoke-virtual {v1}, Lokhttp3/internal/http/StreamAllocation;->release()V

    .line 275
    :cond_4
    throw v0

    .line 249
    :catch_1
    move-exception v1

    .line 251
    :try_start_2
    iget-object v3, p0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v1}, Lokhttp3/internal/http/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lokhttp3/internal/http/HttpEngine;->recover(Ljava/io/IOException;ZLokio/Sink;)Lokhttp3/internal/http/HttpEngine;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 252
    if-eqz v3, :cond_5

    .line 253
    const/4 v1, 0x0

    .line 254
    :try_start_3
    iput-object v3, p0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 272
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 258
    :cond_5
    :try_start_4
    invoke-virtual {v1}, Lokhttp3/internal/http/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 259
    :catch_2
    move-exception v1

    .line 261
    iget-object v3, p0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v4, v5}, Lokhttp3/internal/http/HttpEngine;->recover(Ljava/io/IOException;ZLokio/Sink;)Lokhttp3/internal/http/HttpEngine;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v3

    .line 262
    if-eqz v3, :cond_6

    .line 263
    const/4 v1, 0x0

    .line 264
    :try_start_5
    iput-object v3, p0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 269
    :cond_6
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 288
    :cond_7
    iget-object v1, p0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v1}, Lokhttp3/internal/http/HttpEngine;->close()Lokhttp3/internal/http/StreamAllocation;

    move-result-object v6

    .line 290
    add-int/lit8 v9, v0, 0x1

    const/16 v0, 0x14

    if-le v9, v0, :cond_8

    .line 291
    invoke-virtual {v6}, Lokhttp3/internal/http/StreamAllocation;->release()V

    .line 292
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many follow-up requests: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_8
    iget-object v0, p0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/internal/http/HttpEngine;->sameConnection(Lokhttp3/HttpUrl;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 296
    invoke-virtual {v6}, Lokhttp3/internal/http/StreamAllocation;->release()V

    .line 297
    const/4 v6, 0x0

    .line 304
    :cond_9
    new-instance v0, Lokhttp3/internal/http/HttpEngine;

    iget-object v1, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move v5, p2

    invoke-direct/range {v0 .. v8}, Lokhttp3/internal/http/HttpEngine;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;ZZZLokhttp3/internal/http/StreamAllocation;Lokhttp3/internal/http/RetryableSink;Lokhttp3/Response;)V

    iput-object v0, p0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    move v0, v9

    .line 306
    goto/16 :goto_2

    .line 298
    :cond_a
    invoke-virtual {v6}, Lokhttp3/internal/http/StreamAllocation;->stream()Lokhttp3/internal/http/HttpStream;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 299
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing the body of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " didn\'t close its backing stream. Bad interceptor?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move-object v2, p1

    goto/16 :goto_1
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lokhttp3/RealCall;->canceled:Z

    return v0
.end method

.method public declared-synchronized isExecuted()Z
    .locals 1

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/RealCall;->executed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method redactedUrl()Lokhttp3/HttpUrl;
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    const-string v1, "/..."

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl;->resolve(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    return-object v0
.end method

.method public request()Lokhttp3/Request;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    return-object v0
.end method

.method tag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    invoke-virtual {v0}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

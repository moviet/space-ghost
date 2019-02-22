.class Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;
.super Ljava/lang/Object;
.source "HttpEngine.java"

# interfaces
.implements Lokhttp3/Interceptor$Chain;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http/HttpEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkInterceptorChain"
.end annotation


# instance fields
.field private calls:I

.field private final connection:Lokhttp3/Connection;

.field private final index:I

.field private final request:Lokhttp3/Request;

.field final synthetic this$0:Lokhttp3/internal/http/HttpEngine;


# direct methods
.method constructor <init>(Lokhttp3/internal/http/HttpEngine;ILokhttp3/Request;Lokhttp3/Connection;)V
    .locals 0

    .prologue
    .line 694
    iput-object p1, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lokhttp3/internal/http/HttpEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 695
    iput p2, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    .line 696
    iput-object p3, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->request:Lokhttp3/Request;

    .line 697
    iput-object p4, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->connection:Lokhttp3/Connection;

    .line 698
    return-void
.end method


# virtual methods
.method public connection()Lokhttp3/Connection;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->connection:Lokhttp3/Connection;

    return-object v0
.end method

.method public proceed(Lokhttp3/Request;)Lokhttp3/Response;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 709
    iget v0, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->calls:I

    .line 711
    iget v0, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    if-lez v0, :cond_2

    .line 712
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lokhttp3/internal/http/HttpEngine;

    iget-object v0, v0, Lokhttp3/internal/http/HttpEngine;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Interceptor;

    .line 713
    invoke-virtual {p0}, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->connection()Lokhttp3/Connection;

    move-result-object v1

    invoke-interface {v1}, Lokhttp3/Connection;->route()Lokhttp3/Route;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v1

    .line 716
    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 717
    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->port()I

    move-result v2

    invoke-virtual {v1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->port()I

    move-result v1

    if-eq v2, v1, :cond_1

    .line 718
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " must retain the same host and port"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 723
    :cond_1
    iget v1, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->calls:I

    if-le v1, v4, :cond_2

    .line 724
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " must call proceed() exactly once"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 729
    :cond_2
    iget v0, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lokhttp3/internal/http/HttpEngine;

    iget-object v1, v1, Lokhttp3/internal/http/HttpEngine;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 731
    new-instance v2, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;

    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lokhttp3/internal/http/HttpEngine;

    iget v1, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->connection:Lokhttp3/Connection;

    invoke-direct {v2, v0, v1, p1, v3}, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;-><init>(Lokhttp3/internal/http/HttpEngine;ILokhttp3/Request;Lokhttp3/Connection;)V

    .line 732
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lokhttp3/internal/http/HttpEngine;

    iget-object v0, v0, Lokhttp3/internal/http/HttpEngine;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Interceptor;

    .line 733
    invoke-interface {v0, v2}, Lokhttp3/Interceptor;->intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object v1

    .line 736
    iget v2, v2, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->calls:I

    if-eq v2, v4, :cond_3

    .line 737
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " must call proceed() exactly once"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 740
    :cond_3
    if-nez v1, :cond_4

    .line 741
    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " returned null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    move-object v0, v1

    .line 768
    :cond_5
    return-object v0

    .line 748
    :cond_6
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lokhttp3/internal/http/HttpEngine;

    # getter for: Lokhttp3/internal/http/HttpEngine;->httpStream:Lokhttp3/internal/http/HttpStream;
    invoke-static {v0}, Lokhttp3/internal/http/HttpEngine;->access$000(Lokhttp3/internal/http/HttpEngine;)Lokhttp3/internal/http/HttpStream;

    move-result-object v0

    invoke-interface {v0, p1}, Lokhttp3/internal/http/HttpStream;->writeRequestHeaders(Lokhttp3/Request;)V

    .line 751
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lokhttp3/internal/http/HttpEngine;

    # setter for: Lokhttp3/internal/http/HttpEngine;->networkRequest:Lokhttp3/Request;
    invoke-static {v0, p1}, Lokhttp3/internal/http/HttpEngine;->access$102(Lokhttp3/internal/http/HttpEngine;Lokhttp3/Request;)Lokhttp3/Request;

    .line 753
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v0, p1}, Lokhttp3/internal/http/HttpEngine;->permitsRequestBody(Lokhttp3/Request;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 754
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lokhttp3/internal/http/HttpEngine;

    # getter for: Lokhttp3/internal/http/HttpEngine;->httpStream:Lokhttp3/internal/http/HttpStream;
    invoke-static {v0}, Lokhttp3/internal/http/HttpEngine;->access$000(Lokhttp3/internal/http/HttpEngine;)Lokhttp3/internal/http/HttpStream;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Lokhttp3/internal/http/HttpStream;->createRequestBody(Lokhttp3/Request;J)Lokio/Sink;

    move-result-object v0

    .line 755
    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    .line 756
    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 757
    invoke-interface {v0}, Lokio/BufferedSink;->close()V

    .line 760
    :cond_7
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lokhttp3/internal/http/HttpEngine;

    # invokes: Lokhttp3/internal/http/HttpEngine;->readNetworkResponse()Lokhttp3/Response;
    invoke-static {v0}, Lokhttp3/internal/http/HttpEngine;->access$200(Lokhttp3/internal/http/HttpEngine;)Lokhttp3/Response;

    move-result-object v0

    .line 762
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v1

    .line 763
    const/16 v2, 0xcc

    if-eq v1, v2, :cond_8

    const/16 v2, 0xcd

    if-ne v1, v2, :cond_5

    :cond_8
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    .line 764
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " had non-zero Content-Length: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 765
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public request()Lokhttp3/Request;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->request:Lokhttp3/Request;

    return-object v0
.end method

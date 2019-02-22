.class Lokhttp3/Cache$CacheResponseBody;
.super Lokhttp3/ResponseBody;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheResponseBody"
.end annotation


# instance fields
.field private final bodySource:Lokio/BufferedSource;

.field private final contentLength:Ljava/lang/String;

.field private final contentType:Ljava/lang/String;

.field private final snapshot:Lokhttp3/internal/DiskLruCache$Snapshot;


# direct methods
.method public constructor <init>(Lokhttp3/internal/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 736
    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    .line 737
    iput-object p1, p0, Lokhttp3/Cache$CacheResponseBody;->snapshot:Lokhttp3/internal/DiskLruCache$Snapshot;

    .line 738
    iput-object p2, p0, Lokhttp3/Cache$CacheResponseBody;->contentType:Ljava/lang/String;

    .line 739
    iput-object p3, p0, Lokhttp3/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    .line 741
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lokhttp3/internal/DiskLruCache$Snapshot;->getSource(I)Lokio/Source;

    move-result-object v0

    .line 742
    new-instance v1, Lokhttp3/Cache$CacheResponseBody$1;

    invoke-direct {v1, p0, v0, p1}, Lokhttp3/Cache$CacheResponseBody$1;-><init>(Lokhttp3/Cache$CacheResponseBody;Lokio/Source;Lokhttp3/internal/DiskLruCache$Snapshot;)V

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$CacheResponseBody;->bodySource:Lokio/BufferedSource;

    .line 748
    return-void
.end method

.method static synthetic access$500(Lokhttp3/Cache$CacheResponseBody;)Lokhttp3/internal/DiskLruCache$Snapshot;
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lokhttp3/Cache$CacheResponseBody;->snapshot:Lokhttp3/internal/DiskLruCache$Snapshot;

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .locals 3

    .prologue
    const-wide/16 v0, -0x1

    .line 756
    :try_start_0
    iget-object v2, p0, Lokhttp3/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lokhttp3/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 758
    :cond_0
    :goto_0
    return-wide v0

    .line 757
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lokhttp3/Cache$CacheResponseBody;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/Cache$CacheResponseBody;->contentType:Ljava/lang/String;

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public source()Lokio/BufferedSource;
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lokhttp3/Cache$CacheResponseBody;->bodySource:Lokio/BufferedSource;

    return-object v0
.end method

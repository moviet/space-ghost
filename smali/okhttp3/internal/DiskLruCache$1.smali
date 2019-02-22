.class Lokhttp3/internal/DiskLruCache$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/internal/DiskLruCache;


# direct methods
.method constructor <init>(Lokhttp3/internal/DiskLruCache;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lokhttp3/internal/DiskLruCache$1;->this$0:Lokhttp3/internal/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 170
    iget-object v2, p0, Lokhttp3/internal/DiskLruCache$1;->this$0:Lokhttp3/internal/DiskLruCache;

    monitor-enter v2

    .line 171
    :try_start_0
    iget-object v3, p0, Lokhttp3/internal/DiskLruCache$1;->this$0:Lokhttp3/internal/DiskLruCache;

    # getter for: Lokhttp3/internal/DiskLruCache;->initialized:Z
    invoke-static {v3}, Lokhttp3/internal/DiskLruCache;->access$000(Lokhttp3/internal/DiskLruCache;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    iget-object v1, p0, Lokhttp3/internal/DiskLruCache$1;->this$0:Lokhttp3/internal/DiskLruCache;

    # getter for: Lokhttp3/internal/DiskLruCache;->closed:Z
    invoke-static {v1}, Lokhttp3/internal/DiskLruCache;->access$100(Lokhttp3/internal/DiskLruCache;)Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 172
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 171
    goto :goto_0

    .line 176
    :cond_1
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$1;->this$0:Lokhttp3/internal/DiskLruCache;

    # invokes: Lokhttp3/internal/DiskLruCache;->trimToSize()V
    invoke-static {v0}, Lokhttp3/internal/DiskLruCache;->access$200(Lokhttp3/internal/DiskLruCache;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    :goto_2
    :try_start_2
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$1;->this$0:Lokhttp3/internal/DiskLruCache;

    # invokes: Lokhttp3/internal/DiskLruCache;->journalRebuildRequired()Z
    invoke-static {v0}, Lokhttp3/internal/DiskLruCache;->access$400(Lokhttp3/internal/DiskLruCache;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$1;->this$0:Lokhttp3/internal/DiskLruCache;

    # invokes: Lokhttp3/internal/DiskLruCache;->rebuildJournal()V
    invoke-static {v0}, Lokhttp3/internal/DiskLruCache;->access$500(Lokhttp3/internal/DiskLruCache;)V

    .line 184
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$1;->this$0:Lokhttp3/internal/DiskLruCache;

    const/4 v1, 0x0

    # setter for: Lokhttp3/internal/DiskLruCache;->redundantOpCount:I
    invoke-static {v0, v1}, Lokhttp3/internal/DiskLruCache;->access$602(Lokhttp3/internal/DiskLruCache;I)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    :cond_2
    :goto_3
    :try_start_3
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    :try_start_4
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$1;->this$0:Lokhttp3/internal/DiskLruCache;

    const/4 v1, 0x1

    # setter for: Lokhttp3/internal/DiskLruCache;->mostRecentTrimFailed:Z
    invoke-static {v0, v1}, Lokhttp3/internal/DiskLruCache;->access$302(Lokhttp3/internal/DiskLruCache;Z)Z

    goto :goto_2

    .line 186
    :catch_1
    move-exception v0

    .line 187
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$1;->this$0:Lokhttp3/internal/DiskLruCache;

    const/4 v1, 0x1

    # setter for: Lokhttp3/internal/DiskLruCache;->mostRecentRebuildFailed:Z
    invoke-static {v0, v1}, Lokhttp3/internal/DiskLruCache;->access$702(Lokhttp3/internal/DiskLruCache;Z)Z

    .line 188
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$1;->this$0:Lokhttp3/internal/DiskLruCache;

    # getter for: Lokhttp3/internal/DiskLruCache;->NULL_SINK:Lokio/Sink;
    invoke-static {}, Lokhttp3/internal/DiskLruCache;->access$900()Lokio/Sink;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v1

    # setter for: Lokhttp3/internal/DiskLruCache;->journalWriter:Lokio/BufferedSink;
    invoke-static {v0, v1}, Lokhttp3/internal/DiskLruCache;->access$802(Lokhttp3/internal/DiskLruCache;Lokio/BufferedSink;)Lokio/BufferedSink;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3
.end method

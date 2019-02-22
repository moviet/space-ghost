.class public final Lokhttp3/internal/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation


# instance fields
.field private done:Z

.field private final entry:Lokhttp3/internal/DiskLruCache$Entry;

.field final synthetic this$0:Lokhttp3/internal/DiskLruCache;

.field private final written:[Z


# direct methods
.method private constructor <init>(Lokhttp3/internal/DiskLruCache;Lokhttp3/internal/DiskLruCache$Entry;)V
    .locals 1

    .prologue
    .line 845
    iput-object p1, p0, Lokhttp3/internal/DiskLruCache$Editor;->this$0:Lokhttp3/internal/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 846
    iput-object p2, p0, Lokhttp3/internal/DiskLruCache$Editor;->entry:Lokhttp3/internal/DiskLruCache$Entry;

    .line 847
    # getter for: Lokhttp3/internal/DiskLruCache$Entry;->readable:Z
    invoke-static {p2}, Lokhttp3/internal/DiskLruCache$Entry;->access$1200(Lokhttp3/internal/DiskLruCache$Entry;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lokhttp3/internal/DiskLruCache$Editor;->written:[Z

    .line 848
    return-void

    .line 847
    :cond_0
    # getter for: Lokhttp3/internal/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lokhttp3/internal/DiskLruCache;->access$2600(Lokhttp3/internal/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lokhttp3/internal/DiskLruCache;Lokhttp3/internal/DiskLruCache$Entry;Lokhttp3/internal/DiskLruCache$1;)V
    .locals 0

    .prologue
    .line 840
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/DiskLruCache$Editor;-><init>(Lokhttp3/internal/DiskLruCache;Lokhttp3/internal/DiskLruCache$Entry;)V

    return-void
.end method

.method static synthetic access$2100(Lokhttp3/internal/DiskLruCache$Editor;)Lokhttp3/internal/DiskLruCache$Entry;
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$Editor;->entry:Lokhttp3/internal/DiskLruCache$Entry;

    return-object v0
.end method

.method static synthetic access$2200(Lokhttp3/internal/DiskLruCache$Editor;)[Z
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$Editor;->written:[Z

    return-object v0
.end method


# virtual methods
.method public abort()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 943
    iget-object v1, p0, Lokhttp3/internal/DiskLruCache$Editor;->this$0:Lokhttp3/internal/DiskLruCache;

    monitor-enter v1

    .line 944
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/DiskLruCache$Editor;->done:Z

    if-eqz v0, :cond_0

    .line 945
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 951
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 947
    :cond_0
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$Editor;->entry:Lokhttp3/internal/DiskLruCache$Entry;

    # getter for: Lokhttp3/internal/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/DiskLruCache$Editor;
    invoke-static {v0}, Lokhttp3/internal/DiskLruCache$Entry;->access$1300(Lokhttp3/internal/DiskLruCache$Entry;)Lokhttp3/internal/DiskLruCache$Editor;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 948
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$Editor;->this$0:Lokhttp3/internal/DiskLruCache;

    const/4 v2, 0x0

    # invokes: Lokhttp3/internal/DiskLruCache;->completeEdit(Lokhttp3/internal/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v2}, Lokhttp3/internal/DiskLruCache;->access$2800(Lokhttp3/internal/DiskLruCache;Lokhttp3/internal/DiskLruCache$Editor;Z)V

    .line 950
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/DiskLruCache$Editor;->done:Z

    .line 951
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 952
    return-void
.end method

.method public abortUnlessCommitted()V
    .locals 3

    .prologue
    .line 955
    iget-object v1, p0, Lokhttp3/internal/DiskLruCache$Editor;->this$0:Lokhttp3/internal/DiskLruCache;

    monitor-enter v1

    .line 956
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/DiskLruCache$Editor;->done:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$Editor;->entry:Lokhttp3/internal/DiskLruCache$Entry;

    # getter for: Lokhttp3/internal/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/DiskLruCache$Editor;
    invoke-static {v0}, Lokhttp3/internal/DiskLruCache$Entry;->access$1300(Lokhttp3/internal/DiskLruCache$Entry;)Lokhttp3/internal/DiskLruCache$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 958
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$Editor;->this$0:Lokhttp3/internal/DiskLruCache;

    const/4 v2, 0x0

    # invokes: Lokhttp3/internal/DiskLruCache;->completeEdit(Lokhttp3/internal/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v2}, Lokhttp3/internal/DiskLruCache;->access$2800(Lokhttp3/internal/DiskLruCache;Lokhttp3/internal/DiskLruCache$Editor;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 962
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 963
    return-void

    .line 962
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 959
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public commit()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 927
    iget-object v1, p0, Lokhttp3/internal/DiskLruCache$Editor;->this$0:Lokhttp3/internal/DiskLruCache;

    monitor-enter v1

    .line 928
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/DiskLruCache$Editor;->done:Z

    if-eqz v0, :cond_0

    .line 929
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 935
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 931
    :cond_0
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$Editor;->entry:Lokhttp3/internal/DiskLruCache$Entry;

    # getter for: Lokhttp3/internal/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/DiskLruCache$Editor;
    invoke-static {v0}, Lokhttp3/internal/DiskLruCache$Entry;->access$1300(Lokhttp3/internal/DiskLruCache$Entry;)Lokhttp3/internal/DiskLruCache$Editor;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 932
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$Editor;->this$0:Lokhttp3/internal/DiskLruCache;

    const/4 v2, 0x1

    # invokes: Lokhttp3/internal/DiskLruCache;->completeEdit(Lokhttp3/internal/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v2}, Lokhttp3/internal/DiskLruCache;->access$2800(Lokhttp3/internal/DiskLruCache;Lokhttp3/internal/DiskLruCache$Editor;Z)V

    .line 934
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/DiskLruCache$Editor;->done:Z

    .line 935
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 936
    return-void
.end method

.method detach()V
    .locals 3

    .prologue
    .line 857
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$Editor;->entry:Lokhttp3/internal/DiskLruCache$Entry;

    # getter for: Lokhttp3/internal/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/DiskLruCache$Editor;
    invoke-static {v0}, Lokhttp3/internal/DiskLruCache$Entry;->access$1300(Lokhttp3/internal/DiskLruCache$Entry;)Lokhttp3/internal/DiskLruCache$Editor;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 858
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lokhttp3/internal/DiskLruCache$Editor;->this$0:Lokhttp3/internal/DiskLruCache;

    # getter for: Lokhttp3/internal/DiskLruCache;->valueCount:I
    invoke-static {v1}, Lokhttp3/internal/DiskLruCache;->access$2600(Lokhttp3/internal/DiskLruCache;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 860
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/DiskLruCache$Editor;->this$0:Lokhttp3/internal/DiskLruCache;

    # getter for: Lokhttp3/internal/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;
    invoke-static {v1}, Lokhttp3/internal/DiskLruCache;->access$2700(Lokhttp3/internal/DiskLruCache;)Lokhttp3/internal/io/FileSystem;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/DiskLruCache$Editor;->entry:Lokhttp3/internal/DiskLruCache$Entry;

    # getter for: Lokhttp3/internal/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;
    invoke-static {v2}, Lokhttp3/internal/DiskLruCache$Entry;->access$1800(Lokhttp3/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lokhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 858
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 865
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$Editor;->entry:Lokhttp3/internal/DiskLruCache$Entry;

    const/4 v1, 0x0

    # setter for: Lokhttp3/internal/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/DiskLruCache$Editor;
    invoke-static {v0, v1}, Lokhttp3/internal/DiskLruCache$Entry;->access$1302(Lokhttp3/internal/DiskLruCache$Entry;Lokhttp3/internal/DiskLruCache$Editor;)Lokhttp3/internal/DiskLruCache$Editor;

    .line 867
    :cond_1
    return-void

    .line 861
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public newSink(I)Lokio/Sink;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 895
    iget-object v1, p0, Lokhttp3/internal/DiskLruCache$Editor;->this$0:Lokhttp3/internal/DiskLruCache;

    monitor-enter v1

    .line 896
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/DiskLruCache$Editor;->done:Z

    if-eqz v0, :cond_0

    .line 897
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 919
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 899
    :cond_0
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$Editor;->entry:Lokhttp3/internal/DiskLruCache$Entry;

    # getter for: Lokhttp3/internal/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/DiskLruCache$Editor;
    invoke-static {v0}, Lokhttp3/internal/DiskLruCache$Entry;->access$1300(Lokhttp3/internal/DiskLruCache$Entry;)Lokhttp3/internal/DiskLruCache$Editor;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 900
    # getter for: Lokhttp3/internal/DiskLruCache;->NULL_SINK:Lokio/Sink;
    invoke-static {}, Lokhttp3/internal/DiskLruCache;->access$900()Lokio/Sink;

    move-result-object v0

    monitor-exit v1

    .line 912
    :goto_0
    return-object v0

    .line 902
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$Editor;->entry:Lokhttp3/internal/DiskLruCache$Entry;

    # getter for: Lokhttp3/internal/DiskLruCache$Entry;->readable:Z
    invoke-static {v0}, Lokhttp3/internal/DiskLruCache$Entry;->access$1200(Lokhttp3/internal/DiskLruCache$Entry;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 903
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$Editor;->written:[Z

    const/4 v2, 0x1

    aput-boolean v2, v0, p1

    .line 905
    :cond_2
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$Editor;->entry:Lokhttp3/internal/DiskLruCache$Entry;

    # getter for: Lokhttp3/internal/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;
    invoke-static {v0}, Lokhttp3/internal/DiskLruCache$Entry;->access$1800(Lokhttp3/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v0

    aget-object v0, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 908
    :try_start_2
    iget-object v2, p0, Lokhttp3/internal/DiskLruCache$Editor;->this$0:Lokhttp3/internal/DiskLruCache;

    # getter for: Lokhttp3/internal/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;
    invoke-static {v2}, Lokhttp3/internal/DiskLruCache;->access$2700(Lokhttp3/internal/DiskLruCache;)Lokhttp3/internal/io/FileSystem;

    move-result-object v2

    invoke-interface {v2, v0}, Lokhttp3/internal/io/FileSystem;->sink(Ljava/io/File;)Lokio/Sink;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 912
    :try_start_3
    new-instance v0, Lokhttp3/internal/DiskLruCache$Editor$1;

    invoke-direct {v0, p0, v2}, Lokhttp3/internal/DiskLruCache$Editor$1;-><init>(Lokhttp3/internal/DiskLruCache$Editor;Lokio/Sink;)V

    monitor-exit v1

    goto :goto_0

    .line 909
    :catch_0
    move-exception v0

    .line 910
    # getter for: Lokhttp3/internal/DiskLruCache;->NULL_SINK:Lokio/Sink;
    invoke-static {}, Lokhttp3/internal/DiskLruCache;->access$900()Lokio/Sink;

    move-result-object v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public newSource(I)Lokio/Source;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 874
    iget-object v1, p0, Lokhttp3/internal/DiskLruCache$Editor;->this$0:Lokhttp3/internal/DiskLruCache;

    monitor-enter v1

    .line 875
    :try_start_0
    iget-boolean v2, p0, Lokhttp3/internal/DiskLruCache$Editor;->done:Z

    if-eqz v2, :cond_0

    .line 876
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 886
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 878
    :cond_0
    :try_start_1
    iget-object v2, p0, Lokhttp3/internal/DiskLruCache$Editor;->entry:Lokhttp3/internal/DiskLruCache$Entry;

    # getter for: Lokhttp3/internal/DiskLruCache$Entry;->readable:Z
    invoke-static {v2}, Lokhttp3/internal/DiskLruCache$Entry;->access$1200(Lokhttp3/internal/DiskLruCache$Entry;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lokhttp3/internal/DiskLruCache$Editor;->entry:Lokhttp3/internal/DiskLruCache$Entry;

    # getter for: Lokhttp3/internal/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/DiskLruCache$Editor;
    invoke-static {v2}, Lokhttp3/internal/DiskLruCache$Entry;->access$1300(Lokhttp3/internal/DiskLruCache$Entry;)Lokhttp3/internal/DiskLruCache$Editor;

    move-result-object v2

    if-eq v2, p0, :cond_2

    .line 879
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 884
    :goto_0
    return-object v0

    .line 882
    :cond_2
    :try_start_2
    iget-object v2, p0, Lokhttp3/internal/DiskLruCache$Editor;->this$0:Lokhttp3/internal/DiskLruCache;

    # getter for: Lokhttp3/internal/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;
    invoke-static {v2}, Lokhttp3/internal/DiskLruCache;->access$2700(Lokhttp3/internal/DiskLruCache;)Lokhttp3/internal/io/FileSystem;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/internal/DiskLruCache$Editor;->entry:Lokhttp3/internal/DiskLruCache$Entry;

    # getter for: Lokhttp3/internal/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;
    invoke-static {v3}, Lokhttp3/internal/DiskLruCache$Entry;->access$1700(Lokhttp3/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-interface {v2, v3}, Lokhttp3/internal/io/FileSystem;->source(Ljava/io/File;)Lokio/Source;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 883
    :catch_0
    move-exception v2

    .line 884
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

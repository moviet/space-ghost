.class final Lokhttp3/internal/DiskLruCache$Entry;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Entry"
.end annotation


# instance fields
.field private final cleanFiles:[Ljava/io/File;

.field private currentEditor:Lokhttp3/internal/DiskLruCache$Editor;

.field private final dirtyFiles:[Ljava/io/File;

.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private readable:Z

.field private sequenceNumber:J

.field final synthetic this$0:Lokhttp3/internal/DiskLruCache;


# direct methods
.method private constructor <init>(Lokhttp3/internal/DiskLruCache;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 983
    iput-object p1, p0, Lokhttp3/internal/DiskLruCache$Entry;->this$0:Lokhttp3/internal/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 984
    iput-object p2, p0, Lokhttp3/internal/DiskLruCache$Entry;->key:Ljava/lang/String;

    .line 986
    # getter for: Lokhttp3/internal/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lokhttp3/internal/DiskLruCache;->access$2600(Lokhttp3/internal/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lokhttp3/internal/DiskLruCache$Entry;->lengths:[J

    .line 987
    # getter for: Lokhttp3/internal/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lokhttp3/internal/DiskLruCache;->access$2600(Lokhttp3/internal/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lokhttp3/internal/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    .line 988
    # getter for: Lokhttp3/internal/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lokhttp3/internal/DiskLruCache;->access$2600(Lokhttp3/internal/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lokhttp3/internal/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    .line 991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 992
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 993
    const/4 v0, 0x0

    :goto_0
    # getter for: Lokhttp3/internal/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lokhttp3/internal/DiskLruCache;->access$2600(Lokhttp3/internal/DiskLruCache;)I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 994
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 995
    iget-object v3, p0, Lokhttp3/internal/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    new-instance v4, Ljava/io/File;

    # getter for: Lokhttp3/internal/DiskLruCache;->directory:Ljava/io/File;
    invoke-static {p1}, Lokhttp3/internal/DiskLruCache;->access$2900(Lokhttp3/internal/DiskLruCache;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v3, v0

    .line 996
    const-string v3, ".tmp"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    iget-object v3, p0, Lokhttp3/internal/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    new-instance v4, Ljava/io/File;

    # getter for: Lokhttp3/internal/DiskLruCache;->directory:Ljava/io/File;
    invoke-static {p1}, Lokhttp3/internal/DiskLruCache;->access$2900(Lokhttp3/internal/DiskLruCache;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v3, v0

    .line 998
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 993
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1000
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/internal/DiskLruCache;Ljava/lang/String;Lokhttp3/internal/DiskLruCache$1;)V
    .locals 0

    .prologue
    .line 966
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/DiskLruCache$Entry;-><init>(Lokhttp3/internal/DiskLruCache;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lokhttp3/internal/DiskLruCache$Entry;)Z
    .locals 1

    .prologue
    .line 966
    iget-boolean v0, p0, Lokhttp3/internal/DiskLruCache$Entry;->readable:Z

    return v0
.end method

.method static synthetic access$1202(Lokhttp3/internal/DiskLruCache$Entry;Z)Z
    .locals 0

    .prologue
    .line 966
    iput-boolean p1, p0, Lokhttp3/internal/DiskLruCache$Entry;->readable:Z

    return p1
.end method

.method static synthetic access$1300(Lokhttp3/internal/DiskLruCache$Entry;)Lokhttp3/internal/DiskLruCache$Editor;
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/DiskLruCache$Editor;

    return-object v0
.end method

.method static synthetic access$1302(Lokhttp3/internal/DiskLruCache$Entry;Lokhttp3/internal/DiskLruCache$Editor;)Lokhttp3/internal/DiskLruCache$Editor;
    .locals 0

    .prologue
    .line 966
    iput-object p1, p0, Lokhttp3/internal/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/DiskLruCache$Editor;

    return-object p1
.end method

.method static synthetic access$1400(Lokhttp3/internal/DiskLruCache$Entry;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 966
    invoke-direct {p0, p1}, Lokhttp3/internal/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lokhttp3/internal/DiskLruCache$Entry;)[J
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$Entry;->lengths:[J

    return-object v0
.end method

.method static synthetic access$1700(Lokhttp3/internal/DiskLruCache$Entry;)[Ljava/io/File;
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1800(Lokhttp3/internal/DiskLruCache$Entry;)[Ljava/io/File;
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1900(Lokhttp3/internal/DiskLruCache$Entry;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$Entry;->key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lokhttp3/internal/DiskLruCache$Entry;)J
    .locals 2

    .prologue
    .line 966
    iget-wide v0, p0, Lokhttp3/internal/DiskLruCache$Entry;->sequenceNumber:J

    return-wide v0
.end method

.method static synthetic access$2002(Lokhttp3/internal/DiskLruCache$Entry;J)J
    .locals 1

    .prologue
    .line 966
    iput-wide p1, p0, Lokhttp3/internal/DiskLruCache$Entry;->sequenceNumber:J

    return-wide p1
.end method

.method private invalidLengths([Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1025
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setLengths([Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1004
    array-length v0, p1

    iget-object v1, p0, Lokhttp3/internal/DiskLruCache$Entry;->this$0:Lokhttp3/internal/DiskLruCache;

    # getter for: Lokhttp3/internal/DiskLruCache;->valueCount:I
    invoke-static {v1}, Lokhttp3/internal/DiskLruCache;->access$2600(Lokhttp3/internal/DiskLruCache;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1005
    invoke-direct {p0, p1}, Lokhttp3/internal/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1009
    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1010
    iget-object v1, p0, Lokhttp3/internal/DiskLruCache$Entry;->lengths:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1009
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1012
    :catch_0
    move-exception v0

    .line 1013
    invoke-direct {p0, p1}, Lokhttp3/internal/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1015
    :cond_1
    return-void
.end method


# virtual methods
.method snapshot()Lokhttp3/internal/DiskLruCache$Snapshot;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v0, 0x0

    .line 1034
    iget-object v1, p0, Lokhttp3/internal/DiskLruCache$Entry;->this$0:Lokhttp3/internal/DiskLruCache;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1036
    :cond_0
    iget-object v1, p0, Lokhttp3/internal/DiskLruCache$Entry;->this$0:Lokhttp3/internal/DiskLruCache;

    # getter for: Lokhttp3/internal/DiskLruCache;->valueCount:I
    invoke-static {v1}, Lokhttp3/internal/DiskLruCache;->access$2600(Lokhttp3/internal/DiskLruCache;)I

    move-result v1

    new-array v6, v1, [Lokio/Source;

    .line 1037
    iget-object v1, p0, Lokhttp3/internal/DiskLruCache$Entry;->lengths:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [J

    move v1, v0

    .line 1039
    :goto_0
    :try_start_0
    iget-object v2, p0, Lokhttp3/internal/DiskLruCache$Entry;->this$0:Lokhttp3/internal/DiskLruCache;

    # getter for: Lokhttp3/internal/DiskLruCache;->valueCount:I
    invoke-static {v2}, Lokhttp3/internal/DiskLruCache;->access$2600(Lokhttp3/internal/DiskLruCache;)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1040
    iget-object v2, p0, Lokhttp3/internal/DiskLruCache$Entry;->this$0:Lokhttp3/internal/DiskLruCache;

    # getter for: Lokhttp3/internal/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;
    invoke-static {v2}, Lokhttp3/internal/DiskLruCache;->access$2700(Lokhttp3/internal/DiskLruCache;)Lokhttp3/internal/io/FileSystem;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/internal/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Lokhttp3/internal/io/FileSystem;->source(Ljava/io/File;)Lokio/Source;

    move-result-object v2

    aput-object v2, v6, v1

    .line 1039
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1042
    :cond_1
    new-instance v1, Lokhttp3/internal/DiskLruCache$Snapshot;

    iget-object v2, p0, Lokhttp3/internal/DiskLruCache$Entry;->this$0:Lokhttp3/internal/DiskLruCache;

    iget-object v3, p0, Lokhttp3/internal/DiskLruCache$Entry;->key:Ljava/lang/String;

    iget-wide v4, p0, Lokhttp3/internal/DiskLruCache$Entry;->sequenceNumber:J

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lokhttp3/internal/DiskLruCache$Snapshot;-><init>(Lokhttp3/internal/DiskLruCache;Ljava/lang/String;J[Lokio/Source;[JLokhttp3/internal/DiskLruCache$1;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1058
    :goto_1
    return-object v1

    .line 1045
    :goto_2
    iget-object v1, p0, Lokhttp3/internal/DiskLruCache$Entry;->this$0:Lokhttp3/internal/DiskLruCache;

    # getter for: Lokhttp3/internal/DiskLruCache;->valueCount:I
    invoke-static {v1}, Lokhttp3/internal/DiskLruCache;->access$2600(Lokhttp3/internal/DiskLruCache;)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1046
    aget-object v1, v6, v0

    if-eqz v1, :cond_2

    .line 1047
    aget-object v1, v6, v0

    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 1045
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1055
    :cond_2
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$Entry;->this$0:Lokhttp3/internal/DiskLruCache;

    # invokes: Lokhttp3/internal/DiskLruCache;->removeEntry(Lokhttp3/internal/DiskLruCache$Entry;)Z
    invoke-static {v0, p0}, Lokhttp3/internal/DiskLruCache;->access$3100(Lokhttp3/internal/DiskLruCache;Lokhttp3/internal/DiskLruCache$Entry;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    move-object v1, v9

    .line 1058
    goto :goto_1

    .line 1056
    :catch_0
    move-exception v0

    goto :goto_3

    .line 1043
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method writeLengths(Lokio/BufferedSink;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1019
    iget-object v1, p0, Lokhttp3/internal/DiskLruCache$Entry;->lengths:[J

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-wide v4, v1, v0

    .line 1020
    const/16 v3, 0x20

    invoke-interface {p1, v3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v3

    invoke-interface {v3, v4, v5}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    .line 1019
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1022
    :cond_0
    return-void
.end method

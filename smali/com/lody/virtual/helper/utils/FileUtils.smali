.class public Lcom/lody/virtual/helper/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/helper/utils/FileUtils$FileLock;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 118
    if-eqz p0, :cond_0

    .line 120
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 91
    .line 94
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 96
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 97
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 99
    const/16 v4, 0x400

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 101
    :goto_0
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 102
    invoke-virtual {v0, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v5

    .line 103
    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 112
    invoke-static {v3}, Lcom/lody/virtual/helper/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 113
    invoke-static {v1}, Lcom/lody/virtual/helper/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 115
    :goto_1
    return-void

    .line 105
    :cond_0
    :try_start_3
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 106
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 107
    invoke-virtual {v2, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 110
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 112
    invoke-static {v2}, Lcom/lody/virtual/helper/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 113
    invoke-static {v1}, Lcom/lody/virtual/helper/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    .line 112
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_3
    invoke-static {v3}, Lcom/lody/virtual/helper/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 113
    invoke-static {v1}, Lcom/lody/virtual/helper/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    .line 112
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_3

    .line 109
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2
.end method

.method public static deleteDir(Ljava/io/File;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 46
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 47
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/lody/virtual/helper/utils/FileUtils;->deleteDir(Ljava/io/File;)Z

    move-result v4

    .line 48
    if-nez v4, :cond_0

    .line 53
    :goto_1
    return v0

    .line 46
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_1
.end method

.method public static peekInt([BILjava/nio/ByteOrder;)I
    .locals 3

    .prologue
    .line 130
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v0, :cond_0

    .line 131
    add-int/lit8 v0, p1, 0x1

    .line 132
    add-int/lit8 v1, v0, 0x1

    .line 133
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v0, v2

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 141
    :goto_0
    return v0

    .line 136
    :cond_0
    add-int/lit8 v0, p1, 0x1

    .line 137
    add-int/lit8 v1, v0, 0x1

    .line 138
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x64

    const/4 v3, 0x0

    .line 34
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 35
    new-array v1, v4, [B

    .line 37
    :goto_0
    invoke-virtual {p0, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_0

    .line 38
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static writeToFile(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x400

    const/4 v4, 0x0

    .line 57
    .line 58
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 60
    new-array v1, v5, [B

    .line 61
    :goto_0
    invoke-virtual {p0, v1, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 62
    invoke-virtual {v0, v1, v4, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 65
    return-void
.end method

.method public static writeToFile([BLjava/io/File;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 68
    .line 72
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 73
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 74
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 75
    const-wide/16 v2, 0x0

    :try_start_3
    array-length v4, p0

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 77
    if-eqz v6, :cond_0

    .line 78
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 80
    :cond_0
    if-eqz v1, :cond_1

    .line 81
    invoke-interface {v1}, Ljava/nio/channels/ReadableByteChannel;->close()V

    .line 83
    :cond_1
    if-eqz v0, :cond_2

    .line 84
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 87
    :cond_2
    return-void

    .line 77
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_3

    .line 78
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 80
    :cond_3
    if-eqz v2, :cond_4

    .line 81
    invoke-interface {v2}, Ljava/nio/channels/ReadableByteChannel;->close()V

    .line 83
    :cond_4
    if-eqz v1, :cond_5

    .line 84
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    :cond_5
    throw v0

    .line 77
    :catchall_1
    move-exception v0

    move-object v3, v2

    move-object v7, v1

    move-object v1, v2

    move-object v2, v7

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v3, v6

    move-object v7, v1

    move-object v1, v2

    move-object v2, v7

    goto :goto_0

    :catchall_3
    move-exception v2

    move-object v3, v6

    move-object v7, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_0
.end method

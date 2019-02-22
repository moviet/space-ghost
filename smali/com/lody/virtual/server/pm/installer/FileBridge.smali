.class public Lcom/lody/virtual/server/pm/installer/FileBridge;
.super Ljava/lang/Thread;
.source "FileBridge.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final CMD_CLOSE:I = 0x3

.field private static final CMD_FSYNC:I = 0x2

.field private static final CMD_WRITE:I = 0x1

.field private static final MSG_LENGTH:I = 0x8

.field private static final TAG:Ljava/lang/String; = "FileBridge"


# instance fields
.field private final mClient:Ljava/io/FileDescriptor;

.field private volatile mClosed:Z

.field private final mServer:Ljava/io/FileDescriptor;

.field private mTarget:Ljava/io/FileDescriptor;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 44
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/installer/FileBridge;->mServer:Ljava/io/FileDescriptor;

    .line 45
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/installer/FileBridge;->mClient:Ljava/io/FileDescriptor;

    .line 52
    :try_start_0
    sget v0, Landroid/system/OsConstants;->AF_UNIX:I

    sget v1, Landroid/system/OsConstants;->SOCK_STREAM:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lody/virtual/server/pm/installer/FileBridge;->mServer:Ljava/io/FileDescriptor;

    iget-object v4, p0, Lcom/lody/virtual/server/pm/installer/FileBridge;->mClient:Ljava/io/FileDescriptor;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/system/Os;->socketpair(IIILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to create bridge"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static closeQuietly(Ljava/io/FileDescriptor;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 122
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    :try_start_0
    invoke-static {p0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    invoke-virtual {v0}, Landroid/system/ErrnoException;->printStackTrace()V

    goto :goto_0
.end method

.method public static read(Ljava/io/FileDescriptor;[BII)I
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 137
    array-length v1, p1

    invoke-static {v1, p2, p3}, Lcom/lody/virtual/helper/utils/ArrayUtils;->checkOffsetAndCount(III)V

    .line 138
    if-nez p3, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v0

    .line 142
    :cond_1
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 143
    if-nez v0, :cond_0

    .line 144
    const/4 v0, -0x1

    goto :goto_0

    .line 147
    :catch_0
    move-exception v1

    .line 148
    iget v2, v1, Landroid/system/ErrnoException;->errno:I

    sget v3, Landroid/system/OsConstants;->EAGAIN:I

    if-eq v2, v3, :cond_0

    .line 152
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static write(Ljava/io/FileDescriptor;[BII)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/lody/virtual/helper/utils/ArrayUtils;->checkOffsetAndCount(III)V

    .line 163
    if-nez p3, :cond_1

    .line 175
    :cond_0
    return-void

    .line 167
    :cond_1
    :goto_0
    if-lez p3, :cond_0

    .line 168
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 169
    sub-int/2addr p3, v0

    .line 170
    add-int/2addr p2, v0

    .line 171
    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public forceClose()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/FileBridge;->mTarget:Ljava/io/FileDescriptor;

    invoke-static {v0}, Lcom/lody/virtual/server/pm/installer/FileBridge;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 64
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/FileBridge;->mServer:Ljava/io/FileDescriptor;

    invoke-static {v0}, Lcom/lody/virtual/server/pm/installer/FileBridge;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 65
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/FileBridge;->mClient:Ljava/io/FileDescriptor;

    invoke-static {v0}, Lcom/lody/virtual/server/pm/installer/FileBridge;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lody/virtual/server/pm/installer/FileBridge;->mClosed:Z

    .line 67
    return-void
.end method

.method public getClientSocket()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/FileBridge;->mClient:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/lody/virtual/server/pm/installer/FileBridge;->mClosed:Z

    return v0
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x8

    .line 79
    const/16 v0, 0x2000

    new-array v1, v0, [B

    .line 81
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/FileBridge;->mServer:Ljava/io/FileDescriptor;

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lcom/lody/virtual/server/pm/installer/FileBridge;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    if-ne v0, v5, :cond_4

    .line 82
    const/4 v0, 0x0

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v1, v0, v2}, Lcom/lody/virtual/helper/utils/FileUtils;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v0

    .line 83
    if-ne v0, v6, :cond_2

    .line 85
    const/4 v0, 0x4

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v1, v0, v2}, Lcom/lody/virtual/helper/utils/FileUtils;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v0

    .line 86
    :goto_1
    if-lez v0, :cond_0

    .line 87
    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/FileBridge;->mServer:Ljava/io/FileDescriptor;

    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v2, v1, v3, v4}, Lcom/lody/virtual/server/pm/installer/FileBridge;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v2

    .line 88
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 89
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected EOF; still expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    :goto_2
    :try_start_1
    const-string v1, "FileBridge"

    const-string v2, "Failed during bridge"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    invoke-virtual {p0}, Lcom/lody/virtual/server/pm/installer/FileBridge;->forceClose()V

    .line 116
    :goto_3
    return-void

    .line 92
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/lody/virtual/server/pm/installer/FileBridge;->mTarget:Ljava/io/FileDescriptor;

    const/4 v4, 0x0

    invoke-static {v3, v1, v4, v2}, Lcom/lody/virtual/server/pm/installer/FileBridge;->write(Ljava/io/FileDescriptor;[BII)V

    .line 93
    sub-int/2addr v0, v2

    .line 94
    goto :goto_1

    .line 96
    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 98
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/FileBridge;->mTarget:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/system/Os;->fsync(Ljava/io/FileDescriptor;)V

    .line 99
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/FileBridge;->mServer:Ljava/io/FileDescriptor;

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lcom/lody/virtual/server/pm/installer/FileBridge;->write(Ljava/io/FileDescriptor;[BII)V

    goto :goto_0

    .line 111
    :catch_1
    move-exception v0

    goto :goto_2

    .line 101
    :cond_3
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 103
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/FileBridge;->mTarget:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/system/Os;->fsync(Ljava/io/FileDescriptor;)V

    .line 104
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/FileBridge;->mTarget:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lody/virtual/server/pm/installer/FileBridge;->mClosed:Z

    .line 106
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/FileBridge;->mServer:Ljava/io/FileDescriptor;

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lcom/lody/virtual/server/pm/installer/FileBridge;->write(Ljava/io/FileDescriptor;[BII)V
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    :cond_4
    invoke-virtual {p0}, Lcom/lody/virtual/server/pm/installer/FileBridge;->forceClose()V

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/lody/virtual/server/pm/installer/FileBridge;->forceClose()V

    throw v0
.end method

.method public setTargetFile(Ljava/io/FileDescriptor;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/lody/virtual/server/pm/installer/FileBridge;->mTarget:Ljava/io/FileDescriptor;

    .line 71
    return-void
.end method

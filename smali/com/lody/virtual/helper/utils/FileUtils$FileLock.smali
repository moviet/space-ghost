.class public Lcom/lody/virtual/helper/utils/FileUtils$FileLock;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/helper/utils/FileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileLock"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/helper/utils/FileUtils$FileLock$FileLockCount;
    }
.end annotation


# static fields
.field private static singleton:Lcom/lody/virtual/helper/utils/FileUtils$FileLock;


# instance fields
.field private mRefCountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lody/virtual/helper/utils/FileUtils$FileLock$FileLockCount;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/helper/utils/FileUtils$FileLock;->mRefCountMap:Ljava/util/Map;

    return-void
.end method

.method private RefCntDec(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 175
    const/4 v0, 0x0

    .line 176
    iget-object v1, p0, Lcom/lody/virtual/helper/utils/FileUtils$FileLock;->mRefCountMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/FileUtils$FileLock;->mRefCountMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/helper/utils/FileUtils$FileLock$FileLockCount;

    .line 178
    iget v1, v0, Lcom/lody/virtual/helper/utils/FileUtils$FileLock$FileLockCount;->mRefCount:I

    add-int/lit8 v1, v1, -0x1

    .line 179
    iput v1, v0, Lcom/lody/virtual/helper/utils/FileUtils$FileLock$FileLockCount;->mRefCount:I

    .line 181
    if-gtz v1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/FileUtils$FileLock;->mRefCountMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move v0, v1

    .line 185
    :cond_1
    return v0
.end method

.method private RefCntInc(Ljava/lang/String;Ljava/nio/channels/FileLock;Ljava/io/RandomAccessFile;Ljava/nio/channels/FileChannel;)I
    .locals 7

    .prologue
    .line 161
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/FileUtils$FileLock;->mRefCountMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/FileUtils$FileLock;->mRefCountMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/helper/utils/FileUtils$FileLock$FileLockCount;

    .line 163
    iget v3, v0, Lcom/lody/virtual/helper/utils/FileUtils$FileLock$FileLockCount;->mRefCount:I

    .line 164
    add-int/lit8 v1, v3, 0x1

    iput v1, v0, Lcom/lody/virtual/helper/utils/FileUtils$FileLock$FileLockCount;->mRefCount:I

    .line 171
    :goto_0
    return v3

    .line 167
    :cond_0
    const/4 v3, 0x1

    .line 168
    iget-object v6, p0, Lcom/lody/virtual/helper/utils/FileUtils$FileLock;->mRefCountMap:Ljava/util/Map;

    new-instance v0, Lcom/lody/virtual/helper/utils/FileUtils$FileLock$FileLockCount;

    move-object v1, p0

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lody/virtual/helper/utils/FileUtils$FileLock$FileLockCount;-><init>(Lcom/lody/virtual/helper/utils/FileUtils$FileLock;Ljava/nio/channels/FileLock;ILjava/io/RandomAccessFile;Ljava/nio/channels/FileChannel;)V

    invoke-interface {v6, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getInstance()Lcom/lody/virtual/helper/utils/FileUtils$FileLock;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/lody/virtual/helper/utils/FileUtils$FileLock;->singleton:Lcom/lody/virtual/helper/utils/FileUtils$FileLock;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/lody/virtual/helper/utils/FileUtils$FileLock;

    invoke-direct {v0}, Lcom/lody/virtual/helper/utils/FileUtils$FileLock;-><init>()V

    sput-object v0, Lcom/lody/virtual/helper/utils/FileUtils$FileLock;->singleton:Lcom/lody/virtual/helper/utils/FileUtils$FileLock;

    .line 155
    :cond_0
    sget-object v0, Lcom/lody/virtual/helper/utils/FileUtils$FileLock;->singleton:Lcom/lody/virtual/helper/utils/FileUtils$FileLock;

    return-object v0
.end method


# virtual methods
.method public LockExclusive(Ljava/io/File;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 190
    if-nez p1, :cond_1

    .line 207
    :cond_0
    :goto_0
    return v0

    .line 194
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/lock"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 196
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 198
    :cond_2
    new-instance v2, Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "rw"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 200
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v4

    .line 201
    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 204
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v4, v2, v3}, Lcom/lody/virtual/helper/utils/FileUtils$FileLock;->RefCntInc(Ljava/lang/String;Ljava/nio/channels/FileLock;Ljava/io/RandomAccessFile;Ljava/nio/channels/FileChannel;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    const/4 v0, 0x1

    goto :goto_0

    .line 206
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public unLock(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 216
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/lock"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/FileUtils$FileLock;->mRefCountMap:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/FileUtils$FileLock;->mRefCountMap:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/helper/utils/FileUtils$FileLock$FileLockCount;

    .line 222
    if-eqz v0, :cond_0

    .line 223
    iget-object v2, v0, Lcom/lody/virtual/helper/utils/FileUtils$FileLock$FileLockCount;->mFileLock:Ljava/nio/channels/FileLock;

    .line 224
    iget-object v3, v0, Lcom/lody/virtual/helper/utils/FileUtils$FileLock$FileLockCount;->fOs:Ljava/io/RandomAccessFile;

    .line 225
    iget-object v0, v0, Lcom/lody/virtual/helper/utils/FileUtils$FileLock$FileLockCount;->fChannel:Ljava/nio/channels/FileChannel;

    .line 227
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lody/virtual/helper/utils/FileUtils$FileLock;->RefCntDec(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 228
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 229
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V

    .line 231
    :cond_2
    if-eqz v3, :cond_3

    .line 232
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 234
    :cond_3
    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

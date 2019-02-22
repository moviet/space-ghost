.class public Lcom/lody/virtual/server/job/JobStore;
.super Ljava/lang/Object;
.source "JobStore.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/server/job/JobStore$ReadJobMapFromDiskRunnable;,
        Lcom/lody/virtual/server/job/JobStore$WriteJobsMapToDiskRunnable;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final JOBS_FILE_VERSION:I = 0x0

.field private static final MAX_OPS_BEFORE_WRITE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "JobStore"

.field private static final XML_TAG_EXTRAS:Ljava/lang/String; = "extras"

.field private static final XML_TAG_ONEOFF:Ljava/lang/String; = "one-off"

.field private static final XML_TAG_PARAMS_CONSTRAINTS:Ljava/lang/String; = "constraints"

.field private static final XML_TAG_PERIODIC:Ljava/lang/String; = "periodic"

.field private static sSingleton:Lcom/lody/virtual/server/job/JobStore;

.field private static final sSingletonLock:Ljava/lang/Object;


# instance fields
.field final mContext:Landroid/content/Context;

.field private mDirtyOperations:I

.field private final mIoHandler:Landroid/os/Handler;

.field final mJobSet:Lcom/lody/virtual/helper/utils/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lody/virtual/helper/utils/collection/ArraySet",
            "<",
            "Lcom/lody/virtual/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mJobsFile:Lcom/lody/virtual/helper/utils/AtomicFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/lody/virtual/server/job/JobStore;->sSingletonLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 4

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {}, Lcom/lody/virtual/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/server/job/JobStore;->mIoHandler:Landroid/os/Handler;

    .line 90
    iput-object p1, p0, Lcom/lody/virtual/server/job/JobStore;->mContext:Landroid/content/Context;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/lody/virtual/server/job/JobStore;->mDirtyOperations:I

    .line 93
    new-instance v0, Ljava/io/File;

    const-string v1, "system"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 94
    new-instance v1, Ljava/io/File;

    const-string v2, "job"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 96
    new-instance v0, Lcom/lody/virtual/helper/utils/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "jobs.xml"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/lody/virtual/helper/utils/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/lody/virtual/server/job/JobStore;->mJobsFile:Lcom/lody/virtual/helper/utils/AtomicFile;

    .line 98
    new-instance v0, Lcom/lody/virtual/helper/utils/collection/ArraySet;

    invoke-direct {v0}, Lcom/lody/virtual/helper/utils/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/job/JobStore;->mJobSet:Lcom/lody/virtual/helper/utils/collection/ArraySet;

    .line 100
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobStore;->mJobSet:Lcom/lody/virtual/helper/utils/collection/ArraySet;

    invoke-virtual {p0, v0}, Lcom/lody/virtual/server/job/JobStore;->readJobMapFromDisk(Lcom/lody/virtual/helper/utils/collection/ArraySet;)V

    .line 101
    return-void
.end method

.method static synthetic access$100(Lcom/lody/virtual/server/job/JobStore;)Lcom/lody/virtual/helper/utils/AtomicFile;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobStore;->mJobsFile:Lcom/lody/virtual/helper/utils/AtomicFile;

    return-object v0
.end method

.method static synthetic access$202(Lcom/lody/virtual/server/job/JobStore;I)I
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/lody/virtual/server/job/JobStore;->mDirtyOperations:I

    return p1
.end method

.method static initAndGet(Lcom/lody/virtual/server/job/JobSchedulerService;)Lcom/lody/virtual/server/job/JobStore;
    .locals 4

    .prologue
    .line 67
    sget-object v1, Lcom/lody/virtual/server/job/JobStore;->sSingletonLock:Ljava/lang/Object;

    monitor-enter v1

    .line 68
    :try_start_0
    sget-object v0, Lcom/lody/virtual/server/job/JobStore;->sSingleton:Lcom/lody/virtual/server/job/JobStore;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/lody/virtual/server/job/JobStore;

    invoke-virtual {p0}, Lcom/lody/virtual/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 70
    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/lody/virtual/server/job/JobStore;-><init>(Landroid/content/Context;Ljava/io/File;)V

    sput-object v0, Lcom/lody/virtual/server/job/JobStore;->sSingleton:Lcom/lody/virtual/server/job/JobStore;

    .line 72
    :cond_0
    sget-object v0, Lcom/lody/virtual/server/job/JobStore;->sSingleton:Lcom/lody/virtual/server/job/JobStore;

    monitor-exit v1

    return-object v0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static initAndGetForTesting(Landroid/content/Context;Ljava/io/File;)Lcom/lody/virtual/server/job/JobStore;
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/lody/virtual/server/job/JobStore;

    invoke-direct {v0, p0, p1}, Lcom/lody/virtual/server/job/JobStore;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 82
    invoke-virtual {v0}, Lcom/lody/virtual/server/job/JobStore;->clear()V

    .line 83
    return-object v0
.end method

.method private maybeWriteStatusToDiskAsync()V
    .locals 3

    .prologue
    .line 237
    iget v0, p0, Lcom/lody/virtual/server/job/JobStore;->mDirtyOperations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lody/virtual/server/job/JobStore;->mDirtyOperations:I

    .line 238
    iget v0, p0, Lcom/lody/virtual/server/job/JobStore;->mDirtyOperations:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobStore;->mIoHandler:Landroid/os/Handler;

    new-instance v1, Lcom/lody/virtual/server/job/JobStore$WriteJobsMapToDiskRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lody/virtual/server/job/JobStore$WriteJobsMapToDiskRunnable;-><init>(Lcom/lody/virtual/server/job/JobStore;Lcom/lody/virtual/server/job/JobStore$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 242
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/lody/virtual/server/job/controllers/JobStatus;)Z
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobStore;->mJobSet:Lcom/lody/virtual/helper/utils/collection/ArraySet;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 111
    iget-object v1, p0, Lcom/lody/virtual/server/job/JobStore;->mJobSet:Lcom/lody/virtual/helper/utils/collection/ArraySet;

    invoke-virtual {v1, p1}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-virtual {p1}, Lcom/lody/virtual/server/job/controllers/JobStatus;->isPersisted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/lody/virtual/server/job/JobStore;->maybeWriteStatusToDiskAsync()V

    .line 118
    :cond_0
    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobStore;->mJobSet:Lcom/lody/virtual/helper/utils/collection/ArraySet;

    invoke-virtual {v0}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->clear()V

    .line 163
    invoke-direct {p0}, Lcom/lody/virtual/server/job/JobStore;->maybeWriteStatusToDiskAsync()V

    .line 164
    return-void
.end method

.method containsJob(Lcom/lody/virtual/server/job/controllers/JobStatus;)Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobStore;->mJobSet:Lcom/lody/virtual/helper/utils/collection/ArraySet;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsJobIdForUid(II)Z
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobStore;->mJobSet:Lcom/lody/virtual/helper/utils/collection/ArraySet;

    invoke-virtual {v0}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 126
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobStore;->mJobSet:Lcom/lody/virtual/helper/utils/collection/ArraySet;

    invoke-virtual {v0, v1}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/job/controllers/JobStatus;

    .line 127
    invoke-virtual {v0}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getUid()I

    move-result v2

    if-ne v2, p2, :cond_0

    invoke-virtual {v0}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getJobId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 128
    const/4 v0, 0x1

    .line 131
    :goto_1
    return v0

    .line 125
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 131
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getJobByUidAndJobId(II)Lcom/lody/virtual/server/job/controllers/JobStatus;
    .locals 3

    .prologue
    .line 204
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobStore;->mJobSet:Lcom/lody/virtual/helper/utils/collection/ArraySet;

    invoke-virtual {v0}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 205
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/job/controllers/JobStatus;

    .line 207
    invoke-virtual {v0}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getUid()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v0}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getJobId()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 211
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getJobs()Lcom/lody/virtual/helper/utils/collection/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lody/virtual/helper/utils/collection/ArraySet",
            "<",
            "Lcom/lody/virtual/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobStore;->mJobSet:Lcom/lody/virtual/helper/utils/collection/ArraySet;

    return-object v0
.end method

.method public getJobsByUid(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/lody/virtual/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 188
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobStore;->mJobSet:Lcom/lody/virtual/helper/utils/collection/ArraySet;

    invoke-virtual {v0}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 189
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/job/controllers/JobStatus;

    .line 191
    invoke-virtual {v0}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 192
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 195
    :cond_1
    return-object v1
.end method

.method public getJobsByUser(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/lody/virtual/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 172
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobStore;->mJobSet:Lcom/lody/virtual/helper/utils/collection/ArraySet;

    invoke-virtual {v0}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 173
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/job/controllers/JobStatus;

    .line 175
    invoke-virtual {v0}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    invoke-static {v3}, Lcom/lody/virtual/os/VUserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 176
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 179
    :cond_1
    return-object v1
.end method

.method public readJobMapFromDisk(Lcom/lody/virtual/helper/utils/collection/ArraySet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lody/virtual/helper/utils/collection/ArraySet",
            "<",
            "Lcom/lody/virtual/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 246
    new-instance v0, Lcom/lody/virtual/server/job/JobStore$ReadJobMapFromDiskRunnable;

    invoke-direct {v0, p0, p1}, Lcom/lody/virtual/server/job/JobStore$ReadJobMapFromDiskRunnable;-><init>(Lcom/lody/virtual/server/job/JobStore;Lcom/lody/virtual/helper/utils/collection/ArraySet;)V

    invoke-virtual {v0}, Lcom/lody/virtual/server/job/JobStore$ReadJobMapFromDiskRunnable;->run()V

    .line 247
    return-void
.end method

.method public remove(Lcom/lody/virtual/server/job/controllers/JobStatus;)Z
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobStore;->mJobSet:Lcom/lody/virtual/helper/utils/collection/ArraySet;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 148
    if-nez v0, :cond_1

    .line 152
    const/4 v0, 0x0

    .line 157
    :cond_0
    :goto_0
    return v0

    .line 154
    :cond_1
    invoke-virtual {p1}, Lcom/lody/virtual/server/job/controllers/JobStatus;->isPersisted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/lody/virtual/server/job/JobStore;->maybeWriteStatusToDiskAsync()V

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobStore;->mJobSet:Lcom/lody/virtual/helper/utils/collection/ArraySet;

    invoke-virtual {v0}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->size()I

    move-result v0

    return v0
.end method

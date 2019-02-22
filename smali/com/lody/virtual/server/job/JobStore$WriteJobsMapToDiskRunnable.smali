.class Lcom/lody/virtual/server/job/JobStore$WriteJobsMapToDiskRunnable;
.super Ljava/lang/Object;
.source "JobStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/job/JobStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WriteJobsMapToDiskRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/server/job/JobStore;


# direct methods
.method private constructor <init>(Lcom/lody/virtual/server/job/JobStore;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/lody/virtual/server/job/JobStore$WriteJobsMapToDiskRunnable;->this$0:Lcom/lody/virtual/server/job/JobStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lody/virtual/server/job/JobStore;Lcom/lody/virtual/server/job/JobStore$1;)V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/job/JobStore$WriteJobsMapToDiskRunnable;-><init>(Lcom/lody/virtual/server/job/JobStore;)V

    return-void
.end method

.method private addIdentifierAttributesToJobTag(Lorg/xmlpull/v1/XmlSerializer;Lcom/lody/virtual/server/job/controllers/JobStatus;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 305
    const-string v0, "jobid"

    invoke-virtual {p2}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getJobId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 306
    const-string v0, "package"

    invoke-virtual {p2}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 307
    const-string v0, "class"

    invoke-virtual {p2}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 308
    const-string v0, "uid"

    invoke-virtual {p2}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 309
    return-void
.end method

.method private writeBundleToXml(Landroid/os/PersistableBundle;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 313
    const-string v0, "extras"

    invoke-interface {p2, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 314
    invoke-static {p1}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object v0

    const-string v1, "saveToXml"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/lody/virtual/helper/utils/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    .line 315
    const-string v0, "extras"

    invoke-interface {p2, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 316
    return-void
.end method

.method private writeConstraintsToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/lody/virtual/server/job/controllers/JobStatus;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 322
    const-string v0, "constraints"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 323
    invoke-virtual {p2}, Lcom/lody/virtual/server/job/controllers/JobStatus;->hasUnmeteredConstraint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    const-string v0, "unmetered"

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 326
    :cond_0
    invoke-virtual {p2}, Lcom/lody/virtual/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    const-string v0, "connectivity"

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 329
    :cond_1
    invoke-virtual {p2}, Lcom/lody/virtual/server/job/controllers/JobStatus;->hasIdleConstraint()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 330
    const-string v0, "idle"

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 332
    :cond_2
    invoke-virtual {p2}, Lcom/lody/virtual/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 333
    const-string v0, "charging"

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 335
    :cond_3
    const-string v0, "constraints"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 336
    return-void
.end method

.method private writeExecutionCriteriaToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/lody/virtual/server/job/controllers/JobStatus;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 340
    invoke-virtual {p2}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 341
    invoke-virtual {p2}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 342
    const-string v1, "periodic"

    invoke-interface {p1, v8, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 343
    const-string v1, "period"

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v8, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 348
    :goto_0
    invoke-virtual {p2}, Lcom/lody/virtual/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 351
    invoke-virtual {p2}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 352
    const-string v1, "deadline"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v8, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 354
    :cond_0
    invoke-virtual {p2}, Lcom/lody/virtual/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 355
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 356
    invoke-virtual {p2}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 357
    const-string v1, "delay"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v8, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 363
    :cond_1
    invoke-virtual {p2}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 364
    invoke-virtual {p2}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 365
    :cond_2
    const-string v1, "backoff-policy"

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v8, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 366
    const-string v1, "initial-backoff"

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v8, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 368
    :cond_3
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 369
    const-string v0, "periodic"

    invoke-interface {p1, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 373
    :goto_1
    return-void

    .line 345
    :cond_4
    const-string v1, "one-off"

    invoke-interface {p1, v8, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 371
    :cond_5
    const-string v0, "one-off"

    invoke-interface {p1, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1
.end method

.method private writeJobsMapImpl(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lody/virtual/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 272
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 273
    new-instance v3, Lcom/lody/virtual/helper/utils/FastXmlSerializer;

    invoke-direct {v3}, Lcom/lody/virtual/helper/utils/FastXmlSerializer;-><init>()V

    .line 274
    const-string v1, "utf-8"

    invoke-interface {v3, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 275
    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 276
    const-string v1, "http://almanac.flabcore.com"

    const/4 v4, 0x1

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 278
    const/4 v1, 0x0

    const-string v4, "job-info"

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 279
    const/4 v1, 0x0

    const-string v4, "version"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move v1, v0

    .line 280
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 281
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/job/controllers/JobStatus;

    .line 282
    const/4 v4, 0x0

    const-string v5, "job"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 283
    invoke-direct {p0, v3, v0}, Lcom/lody/virtual/server/job/JobStore$WriteJobsMapToDiskRunnable;->addIdentifierAttributesToJobTag(Lorg/xmlpull/v1/XmlSerializer;Lcom/lody/virtual/server/job/controllers/JobStatus;)V

    .line 284
    invoke-direct {p0, v3, v0}, Lcom/lody/virtual/server/job/JobStore$WriteJobsMapToDiskRunnable;->writeConstraintsToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/lody/virtual/server/job/controllers/JobStatus;)V

    .line 285
    invoke-direct {p0, v3, v0}, Lcom/lody/virtual/server/job/JobStore$WriteJobsMapToDiskRunnable;->writeExecutionCriteriaToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/lody/virtual/server/job/controllers/JobStatus;)V

    .line 286
    invoke-virtual {v0}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/lody/virtual/server/job/JobStore$WriteJobsMapToDiskRunnable;->writeBundleToXml(Landroid/os/PersistableBundle;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 287
    const/4 v0, 0x0

    const-string v4, "job"

    invoke-interface {v3, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 280
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 289
    :cond_0
    const/4 v0, 0x0

    const-string v1, "job-info"

    invoke-interface {v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 290
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 293
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobStore$WriteJobsMapToDiskRunnable;->this$0:Lcom/lody/virtual/server/job/JobStore;

    # getter for: Lcom/lody/virtual/server/job/JobStore;->mJobsFile:Lcom/lody/virtual/helper/utils/AtomicFile;
    invoke-static {v0}, Lcom/lody/virtual/server/job/JobStore;->access$100(Lcom/lody/virtual/server/job/JobStore;)Lcom/lody/virtual/helper/utils/AtomicFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/helper/utils/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    .line 294
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 295
    iget-object v1, p0, Lcom/lody/virtual/server/job/JobStore$WriteJobsMapToDiskRunnable;->this$0:Lcom/lody/virtual/server/job/JobStore;

    # getter for: Lcom/lody/virtual/server/job/JobStore;->mJobsFile:Lcom/lody/virtual/helper/utils/AtomicFile;
    invoke-static {v1}, Lcom/lody/virtual/server/job/JobStore;->access$100(Lcom/lody/virtual/server/job/JobStore;)Lcom/lody/virtual/helper/utils/AtomicFile;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lody/virtual/helper/utils/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 296
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobStore$WriteJobsMapToDiskRunnable;->this$0:Lcom/lody/virtual/server/job/JobStore;

    const/4 v1, 0x0

    # setter for: Lcom/lody/virtual/server/job/JobStore;->mDirtyOperations:I
    invoke-static {v0, v1}, Lcom/lody/virtual/server/job/JobStore;->access$202(Lcom/lody/virtual/server/job/JobStore;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :goto_1
    return-void

    .line 297
    :catch_0
    move-exception v0

    .line 298
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 256
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 257
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 258
    iget-object v10, p0, Lcom/lody/virtual/server/job/JobStore$WriteJobsMapToDiskRunnable;->this$0:Lcom/lody/virtual/server/job/JobStore;

    monitor-enter v10

    .line 260
    const/4 v0, 0x0

    move v8, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobStore$WriteJobsMapToDiskRunnable;->this$0:Lcom/lody/virtual/server/job/JobStore;

    iget-object v0, v0, Lcom/lody/virtual/server/job/JobStore;->mJobSet:Lcom/lody/virtual/helper/utils/collection/ArraySet;

    invoke-virtual {v0}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/lody/virtual/server/job/JobStore$WriteJobsMapToDiskRunnable;->this$0:Lcom/lody/virtual/server/job/JobStore;

    iget-object v0, v0, Lcom/lody/virtual/server/job/JobStore;->mJobSet:Lcom/lody/virtual/helper/utils/collection/ArraySet;

    invoke-virtual {v0, v8}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/job/controllers/JobStatus;

    .line 262
    new-instance v1, Lcom/lody/virtual/server/job/controllers/JobStatus;

    invoke-virtual {v0}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v0}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    .line 263
    invoke-virtual {v0}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/lody/virtual/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lcom/lody/virtual/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;IJJ)V

    .line 264
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 266
    :cond_0
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    invoke-direct {p0, v9}, Lcom/lody/virtual/server/job/JobStore$WriteJobsMapToDiskRunnable;->writeJobsMapImpl(Ljava/util/List;)V

    .line 268
    return-void

    .line 266
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

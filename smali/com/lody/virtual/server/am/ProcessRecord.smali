.class public final Lcom/lody/virtual/server/am/ProcessRecord;
.super Landroid/os/Binder;
.source "ProcessRecord.java"


# instance fields
.field public appThread:Landroid/os/IInterface;

.field public client:Lcom/lody/virtual/client/IVClient;

.field doneExecuting:Z

.field public final info:Landroid/content/pm/ApplicationInfo;

.field public final lock:Landroid/os/ConditionVariable;

.field public pid:I

.field final pkgList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final processName:Ljava/lang/String;

.field public userId:I

.field public vpid:I

.field public vuid:I


# direct methods
.method public constructor <init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/am/ProcessRecord;->lock:Landroid/os/ConditionVariable;

    .line 19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/am/ProcessRecord;->pkgList:Ljava/util/Set;

    .line 31
    iput-object p1, p0, Lcom/lody/virtual/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 32
    iput p3, p0, Lcom/lody/virtual/server/am/ProcessRecord;->vuid:I

    .line 33
    iput p4, p0, Lcom/lody/virtual/server/am/ProcessRecord;->vpid:I

    .line 34
    invoke-static {p3}, Lcom/lody/virtual/os/VUserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/server/am/ProcessRecord;->userId:I

    .line 35
    iput-object p2, p0, Lcom/lody/virtual/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 40
    if-ne p0, p1, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v0

    .line 42
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 43
    goto :goto_0

    .line 44
    :cond_3
    check-cast p1, Lcom/lody/virtual/server/am/ProcessRecord;

    .line 45
    iget-object v2, p0, Lcom/lody/virtual/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/lody/virtual/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v1, p1, Lcom/lody/virtual/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lcom/lody/virtual/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

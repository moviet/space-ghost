.class Lcom/lody/virtual/server/am/TaskRecord;
.super Ljava/lang/Object;
.source "TaskRecord.java"


# instance fields
.field public final activities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lody/virtual/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field public affinity:Ljava/lang/String;

.field public taskId:I

.field public taskRoot:Landroid/content/Intent;

.field public userId:I


# direct methods
.method constructor <init>(IILjava/lang/String;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    .line 24
    iput p1, p0, Lcom/lody/virtual/server/am/TaskRecord;->taskId:I

    .line 25
    iput p2, p0, Lcom/lody/virtual/server/am/TaskRecord;->userId:I

    .line 26
    iput-object p3, p0, Lcom/lody/virtual/server/am/TaskRecord;->affinity:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/lody/virtual/server/am/TaskRecord;->taskRoot:Landroid/content/Intent;

    .line 28
    return-void
.end method


# virtual methods
.method getAppTaskInfo()Lcom/lody/virtual/helper/proto/AppTaskInfo;
    .locals 5

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 32
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/lody/virtual/server/am/ActivityRecord;->component:Landroid/content/ComponentName;

    .line 33
    :goto_0
    new-instance v1, Lcom/lody/virtual/helper/proto/AppTaskInfo;

    iget v2, p0, Lcom/lody/virtual/server/am/TaskRecord;->taskId:I

    iget-object v3, p0, Lcom/lody/virtual/server/am/TaskRecord;->taskRoot:Landroid/content/Intent;

    iget-object v4, p0, Lcom/lody/virtual/server/am/TaskRecord;->taskRoot:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/lody/virtual/helper/proto/AppTaskInfo;-><init>(ILandroid/content/Intent;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    return-object v1

    .line 32
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFinishing()Z
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x1

    .line 38
    iget-object v1, p0, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/am/ActivityRecord;

    .line 39
    iget-boolean v0, v0, Lcom/lody/virtual/server/am/ActivityRecord;->marked:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    move v1, v0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

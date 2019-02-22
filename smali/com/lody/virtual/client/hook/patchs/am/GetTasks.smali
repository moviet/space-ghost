.class Lcom/lody/virtual/client/hook/patchs/am/GetTasks;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "GetTasks.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/Hook;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 29
    .line 30
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 31
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 32
    invoke-static {}, Lcom/lody/virtual/client/local/VActivityManager;->get()Lcom/lody/virtual/client/local/VActivityManager;

    move-result-object v3

    iget v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v3, v4}, Lcom/lody/virtual/client/local/VActivityManager;->getTaskInfo(I)Lcom/lody/virtual/helper/proto/AppTaskInfo;

    move-result-object v3

    .line 33
    if-eqz v3, :cond_0

    .line 34
    iget-object v4, v3, Lcom/lody/virtual/helper/proto/AppTaskInfo;->topActivity:Landroid/content/ComponentName;

    iput-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 35
    iget-object v3, v3, Lcom/lody/virtual/helper/proto/AppTaskInfo;->baseActivity:Landroid/content/ComponentName;

    iput-object v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    goto :goto_0

    .line 38
    :cond_1
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "getTasks"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/am/GetTasks;->isAppProcess()Z

    move-result v0

    return v0
.end method

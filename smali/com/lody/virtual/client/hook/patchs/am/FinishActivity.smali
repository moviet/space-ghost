.class public Lcom/lody/virtual/client/hook/patchs/am/FinishActivity;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "FinishActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/Hook;-><init>()V

    return-void
.end method


# virtual methods
.method public afterCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 26
    aget-object v0, p3, v0

    check-cast v0, Landroid/os/IBinder;

    .line 27
    invoke-static {}, Lcom/lody/virtual/client/local/VActivityManager;->get()Lcom/lody/virtual/client/local/VActivityManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lody/virtual/client/local/VActivityManager;->getActivityRecord(Landroid/os/IBinder;)Lcom/lody/virtual/client/local/ActivityClientRecord;

    move-result-object v1

    .line 28
    invoke-static {}, Lcom/lody/virtual/client/local/VActivityManager;->get()Lcom/lody/virtual/client/local/VActivityManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lody/virtual/client/local/VActivityManager;->onActivityDestroy(Landroid/os/IBinder;)Z

    move-result v0

    .line 29
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/lody/virtual/client/local/ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/lody/virtual/client/local/ActivityClientRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    :try_start_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 32
    iget-object v2, v1, Lcom/lody/virtual/client/local/ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 33
    iget-object v3, v1, Lcom/lody/virtual/client/local/ActivityClientRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 34
    const v3, 0x10100ae

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 36
    iget v0, v0, Landroid/util/TypedValue;->data:I

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 41
    iget-object v1, v1, Lcom/lody/virtual/client/local/ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 42
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/lody/virtual/client/hook/base/Hook;->afterCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 36
    :array_0
    .array-data 4
        0x10100ba
        0x10100bb
    .end array-data
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string v0, "finishActivity"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/am/FinishActivity;->isAppProcess()Z

    move-result v0

    return v0
.end method

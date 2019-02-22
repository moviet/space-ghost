.class Lcom/lody/virtual/client/hook/patchs/am/StartActivity;
.super Lcom/lody/virtual/client/hook/patchs/am/BaseStartActivity;
.source "StartActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StartActivity"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/patchs/am/BaseStartActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x2

    const/4 v7, 0x0

    .line 39
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/patchs/am/BaseStartActivity;->call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-class v0, Landroid/content/Intent;

    invoke-static {p3, v0}, Lcom/lody/virtual/helper/utils/ArrayUtils;->indexOfFirst([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result v8

    .line 41
    const-class v0, Landroid/os/IBinder;

    invoke-static {p3, v0, v1}, Lcom/lody/virtual/helper/utils/ArrayUtils;->indexOfObject([Ljava/lang/Object;Ljava/lang/Class;I)I

    move-result v6

    .line 43
    add-int/lit8 v0, v8, 0x1

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/String;

    .line 44
    aget-object v1, p3, v8

    check-cast v1, Landroid/content/Intent;

    .line 45
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    if-ltz v6, :cond_0

    aget-object v2, p3, v6

    check-cast v2, Landroid/os/IBinder;

    move-object v3, v2

    .line 47
    :goto_0
    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v9

    .line 48
    invoke-static {v1}, Lcom/lody/virtual/helper/utils/ComponentUtils;->isStubComponent(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 106
    :goto_1
    return-object v0

    :cond_0
    move-object v3, v5

    .line 46
    goto :goto_0

    .line 54
    :cond_1
    const-class v2, Landroid/os/Bundle;

    invoke-static {p3, v2}, Lcom/lody/virtual/helper/utils/ArrayUtils;->getFirst([Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 55
    if-eqz v3, :cond_7

    .line 56
    add-int/lit8 v2, v6, 0x1

    aget-object v2, p3, v2

    check-cast v2, Ljava/lang/String;

    .line 57
    add-int/lit8 v5, v6, 0x2

    aget-object v5, p3, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v5, v2

    .line 59
    :goto_2
    const-string v2, "StartActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "call intent:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " options:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " resolvedType:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v0, v7}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    invoke-static {v1}, Lcom/lody/virtual/client/choose/ChooserActivity;->check(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/am/StartActivity;->getHostContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/lody/virtual/client/choose/ChooserActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 63
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {v1, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    const-string v0, "android.intent.extra.virtual.data"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 65
    const-string v0, "android.intent.extra.virtual.who"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v0, "android.intent.extra.virtual.request_code"

    invoke-virtual {v1, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 70
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_3

    .line 71
    add-int/lit8 v0, v8, -0x1

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/am/StartActivity;->getHostPkg()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v0

    .line 74
    :cond_3
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0, v1, v9}, Lcom/lody/virtual/client/core/VirtualCore;->resolveActivityInfo(Landroid/content/Intent;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 75
    if-nez v2, :cond_4

    .line 76
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1

    .line 79
    :cond_4
    invoke-static {}, Lcom/lody/virtual/client/local/VActivityManager;->get()Lcom/lody/virtual/client/local/VActivityManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v7

    invoke-virtual/range {v0 .. v7}, Lcom/lody/virtual/client/local/VActivityManager;->startActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Landroid/os/Bundle;Ljava/lang/String;II)I

    move-result v0

    .line 80
    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    if-lez v6, :cond_5

    .line 81
    invoke-static {}, Lcom/lody/virtual/client/local/VActivityManager;->get()Lcom/lody/virtual/client/local/VActivityManager;

    move-result-object v1

    invoke-virtual {v1, v3, v5, v6}, Lcom/lody/virtual/client/local/VActivityManager;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 83
    :cond_5
    if-eqz v3, :cond_6

    .line 84
    invoke-static {}, Lcom/lody/virtual/client/local/VActivityManager;->get()Lcom/lody/virtual/client/local/VActivityManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/lody/virtual/client/local/VActivityManager;->getActivityRecord(Landroid/os/IBinder;)Lcom/lody/virtual/client/local/ActivityClientRecord;

    move-result-object v1

    .line 85
    if-eqz v1, :cond_6

    iget-object v3, v1, Lcom/lody/virtual/client/local/ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v3, :cond_6

    .line 87
    :try_start_0
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 88
    iget-object v4, v1, Lcom/lody/virtual/client/local/ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 89
    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v2

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 90
    const v2, 0x10100ae

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v3, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 92
    iget v2, v3, Landroid/util/TypedValue;->data:I

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v4, v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 98
    iget-object v1, v1, Lcom/lody/virtual/client/local/ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 99
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_6
    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_1

    .line 101
    :catch_0
    move-exception v1

    goto :goto_3

    :cond_7
    move v6, v7

    goto/16 :goto_2

    .line 92
    :array_0
    .array-data 4
        0x10100b8
        0x10100b9
    .end array-data
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "startActivity"

    return-object v0
.end method

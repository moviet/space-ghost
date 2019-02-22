.class Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch$4;
.super Lcom/lody/virtual/client/hook/base/StaticHook;
.source "ActivityManagerPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch;->onBindHooks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch;


# direct methods
.method constructor <init>(Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch$4;->this$0:Lcom/lody/virtual/client/hook/patchs/am/ActivityManagerPatch;

    invoke-direct {p0, p2}, Lcom/lody/virtual/client/hook/base/StaticHook;-><init>(Ljava/lang/String;)V

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
    .line 114
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 115
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 116
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 118
    invoke-static {}, Lcom/lody/virtual/client/local/VActivityManager;->get()Lcom/lody/virtual/client/local/VActivityManager;

    move-result-object v2

    iget v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    invoke-virtual {v2, v3}, Lcom/lody/virtual/client/local/VActivityManager;->getTaskInfo(I)Lcom/lody/virtual/helper/proto/AppTaskInfo;

    move-result-object v2

    .line 119
    if-nez v2, :cond_0

    .line 120
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 123
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_1

    .line 124
    iget-object v3, v2, Lcom/lody/virtual/helper/proto/AppTaskInfo;->baseActivity:Landroid/content/ComponentName;

    iput-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 125
    iget-object v3, v2, Lcom/lody/virtual/helper/proto/AppTaskInfo;->topActivity:Landroid/content/ComponentName;

    iput-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 127
    :cond_1
    iget-object v3, v2, Lcom/lody/virtual/helper/proto/AppTaskInfo;->baseActivity:Landroid/content/ComponentName;

    iput-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    .line 128
    iget-object v2, v2, Lcom/lody/virtual/helper/proto/AppTaskInfo;->baseIntent:Landroid/content/Intent;

    iput-object v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    goto :goto_0

    .line 130
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/base/StaticHook;->call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

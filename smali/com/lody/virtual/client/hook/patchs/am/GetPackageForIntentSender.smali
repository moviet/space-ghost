.class public Lcom/lody/virtual/client/hook/patchs/am/GetPackageForIntentSender;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "GetPackageForIntentSender.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/Hook;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 30
    aget-object v0, p3, v3

    check-cast v0, Landroid/os/IInterface;

    .line 31
    if-eqz v0, :cond_1

    .line 32
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 33
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 34
    invoke-static {v0}, Lcom/lody/virtual/helper/proto/PendingIntentData;->readPendingIntent(Landroid/os/IBinder;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 35
    sget-object v1, Lmirror/android/app/PendingIntentJBMR2;->getIntent:Lmirror/RefMethod;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 36
    if-eqz v0, :cond_1

    .line 37
    const-string v1, "_VA_|_creator_"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_1

    .line 49
    :goto_0
    return-object v0

    .line 43
    :cond_0
    invoke-static {}, Lcom/lody/virtual/client/local/VActivityManager;->get()Lcom/lody/virtual/client/local/VActivityManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lody/virtual/client/local/VActivityManager;->getPendingIntent(Landroid/os/IBinder;)Lcom/lody/virtual/helper/proto/PendingIntentData;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    iget-object v0, v0, Lcom/lody/virtual/helper/proto/PendingIntentData;->creator:Ljava/lang/String;

    goto :goto_0

    .line 49
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/base/Hook;->call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string v0, "getPackageForIntentSender"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/am/GetPackageForIntentSender;->isAppProcess()Z

    move-result v0

    return v0
.end method

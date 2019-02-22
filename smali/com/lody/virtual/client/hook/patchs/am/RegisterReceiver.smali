.class Lcom/lody/virtual/client/hook/patchs/am/RegisterReceiver;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "RegisterReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/client/hook/patchs/am/RegisterReceiver$ProxyIIntentReceiver;
    }
.end annotation


# static fields
.field private static final IDX_IIntentReceiver:I

.field private static final IDX_IntentFilter:I

.field private static final IDX_RequiredPermission:I

.field private static final TAG:Ljava/lang/String; = "RegisterReceiver"


# instance fields
.field private mProxyIIntentReceiver:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/content/IIntentReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    const/16 v3, 0xf

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput v0, Lcom/lody/virtual/client/hook/patchs/am/RegisterReceiver;->IDX_IIntentReceiver:I

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_1

    const/4 v0, 0x4

    :goto_1
    sput v0, Lcom/lody/virtual/client/hook/patchs/am/RegisterReceiver;->IDX_RequiredPermission:I

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_2

    :goto_2
    sput v2, Lcom/lody/virtual/client/hook/patchs/am/RegisterReceiver;->IDX_IntentFilter:I

    return-void

    .line 32
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 36
    goto :goto_1

    :cond_2
    move v2, v1

    .line 39
    goto :goto_2
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/Hook;-><init>()V

    .line 43
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/client/hook/patchs/am/RegisterReceiver;->mProxyIIntentReceiver:Ljava/util/WeakHashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/lody/virtual/client/hook/patchs/am/RegisterReceiver;)Ljava/util/WeakHashMap;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lody/virtual/client/hook/patchs/am/RegisterReceiver;->mProxyIIntentReceiver:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method private modifyIntentFilter(Landroid/content/IntentFilter;)V
    .locals 3

    .prologue
    .line 86
    if-eqz p1, :cond_2

    .line 87
    sget-object v0, Lmirror/android/content/IntentFilter;->mActions:Lmirror/RefObject;

    invoke-virtual {v0, p1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 88
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 89
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    invoke-static {v0}, Lcom/lody/virtual/client/env/SpecialComponentList;->isActionInBlackList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 95
    :cond_1
    invoke-static {v0}, Lcom/lody/virtual/client/env/SpecialComponentList;->modifyAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v1, v0}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 101
    :cond_2
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
    const/4 v4, 0x0

    .line 52
    invoke-static {p3}, Lcom/lody/virtual/client/hook/utils/HookUtils;->replaceFirstAppPkg([Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    sget v0, Lcom/lody/virtual/client/hook/patchs/am/RegisterReceiver;->IDX_RequiredPermission:I

    const/4 v1, 0x0

    aput-object v1, p3, v0

    .line 54
    sget v0, Lcom/lody/virtual/client/hook/patchs/am/RegisterReceiver;->IDX_IntentFilter:I

    aget-object v0, p3, v0

    check-cast v0, Landroid/content/IntentFilter;

    .line 55
    const-string v1, "RegisterReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call filter:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-direct {p0, v0}, Lcom/lody/virtual/client/hook/patchs/am/RegisterReceiver;->modifyIntentFilter(Landroid/content/IntentFilter;)V

    .line 57
    array-length v0, p3

    sget v1, Lcom/lody/virtual/client/hook/patchs/am/RegisterReceiver;->IDX_IIntentReceiver:I

    if-le v0, v1, :cond_1

    const-class v0, Landroid/content/IIntentReceiver;

    sget v1, Lcom/lody/virtual/client/hook/patchs/am/RegisterReceiver;->IDX_IIntentReceiver:I

    aget-object v1, p3, v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    sget v0, Lcom/lody/virtual/client/hook/patchs/am/RegisterReceiver;->IDX_IIntentReceiver:I

    aget-object v0, p3, v0

    check-cast v0, Landroid/os/IInterface;

    .line 59
    const-class v1, Lcom/lody/virtual/client/hook/patchs/am/RegisterReceiver$ProxyIIntentReceiver;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 60
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 61
    if-eqz v2, :cond_1

    .line 62
    new-instance v1, Lcom/lody/virtual/client/hook/patchs/am/RegisterReceiver$1;

    invoke-direct {v1, p0, v2}, Lcom/lody/virtual/client/hook/patchs/am/RegisterReceiver$1;-><init>(Lcom/lody/virtual/client/hook/patchs/am/RegisterReceiver;Landroid/os/IBinder;)V

    invoke-interface {v2, v1, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 69
    iget-object v1, p0, Lcom/lody/virtual/client/hook/patchs/am/RegisterReceiver;->mProxyIIntentReceiver:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IIntentReceiver;

    .line 70
    if-nez v1, :cond_0

    .line 71
    new-instance v1, Lcom/lody/virtual/client/hook/patchs/am/RegisterReceiver$ProxyIIntentReceiver;

    invoke-direct {v1, v0}, Lcom/lody/virtual/client/hook/patchs/am/RegisterReceiver$ProxyIIntentReceiver;-><init>(Landroid/os/IInterface;)V

    .line 72
    iget-object v3, p0, Lcom/lody/virtual/client/hook/patchs/am/RegisterReceiver;->mProxyIIntentReceiver:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_0
    sget-object v2, Lmirror/android/app/LoadedApk$ReceiverDispatcher$InnerReceiver;->mDispatcher:Lmirror/RefObject;

    invoke-virtual {v2, v0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 75
    if-eqz v0, :cond_1

    .line 76
    sget-object v2, Lmirror/android/app/LoadedApk$ReceiverDispatcher;->mIIntentReceiver:Lmirror/RefObject;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    sget v0, Lcom/lody/virtual/client/hook/patchs/am/RegisterReceiver;->IDX_IIntentReceiver:I

    aput-object v1, p3, v0

    .line 82
    :cond_1
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "registerReceiver"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/am/RegisterReceiver;->isAppProcess()Z

    move-result v0

    return v0
.end method

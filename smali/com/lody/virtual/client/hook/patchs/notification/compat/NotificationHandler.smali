.class public Lcom/lody/virtual/client/hook/patchs/notification/compat/NotificationHandler;
.super Ljava/lang/Object;
.source "NotificationHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/client/hook/patchs/notification/compat/NotificationHandler$Result;
    }
.end annotation


# static fields
.field public static DEPEND_SYSTEM:Z = false

.field public static final RES_DEAL_OK:I = 0x2

.field public static final RES_NOT_DEAL:I = 0x0

.field public static final RES_NOT_SHOW:I = 0x3

.field public static final RES_REPLACE:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/lody/virtual/client/hook/patchs/notification/compat/NotificationHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/lody/virtual/client/hook/patchs/notification/compat/NotificationHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/client/hook/patchs/notification/compat/NotificationHandler;->TAG:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lody/virtual/client/hook/patchs/notification/compat/NotificationHandler;->DEPEND_SYSTEM:Z

    .line 32
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/notification/compat/NotificationHandler;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/patchs/notification/compat/NotificationHandler;-><init>()V

    sput-object v0, Lcom/lody/virtual/client/hook/patchs/notification/compat/NotificationHandler;->sInstance:Lcom/lody/virtual/client/hook/patchs/notification/compat/NotificationHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method private getAppContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x3

    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 102
    :goto_0
    return-object v0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 102
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/lody/virtual/client/hook/patchs/notification/compat/NotificationHandler;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/lody/virtual/client/hook/patchs/notification/compat/NotificationHandler;->sInstance:Lcom/lody/virtual/client/hook/patchs/notification/compat/NotificationHandler;

    return-object v0
.end method

.method private replaceNotification(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)Landroid/app/Notification;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 63
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 64
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 66
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/client/hook/patchs/notification/compat/NotificationHandler;->getAppContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v1

    .line 67
    if-nez v1, :cond_1

    .line 68
    const/4 v0, 0x0

    .line 91
    :goto_0
    return-object v0

    .line 70
    :cond_1
    new-instance v2, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsCompat;

    invoke-direct {v2, v1, p3}, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsCompat;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    .line 71
    invoke-static {v1, p3}, Lcom/lody/virtual/client/hook/patchs/notification/compat/NotificationUtils;->clone(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification;

    move-result-object v0

    .line 73
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_2

    .line 74
    invoke-virtual {v2}, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsCompat;->getHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v3

    .line 75
    invoke-static {v1, v3, p3}, Lcom/lody/virtual/client/hook/patchs/notification/compat/NotificationUtils;->fixIconImage(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/app/Notification;)V

    .line 76
    invoke-static {}, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;->getInstance()Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;

    move-result-object v4

    invoke-virtual {v4, p1, v1, v3, v6}, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;->createViews(Landroid/content/Context;Landroid/content/Context;Landroid/widget/RemoteViews;Z)Landroid/widget/RemoteViews;

    move-result-object v3

    iput-object v3, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 80
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_3

    .line 81
    invoke-virtual {v2}, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsCompat;->getBigRemoteViews()Landroid/widget/RemoteViews;

    move-result-object v3

    .line 82
    invoke-static {v1, v3, p3}, Lcom/lody/virtual/client/hook/patchs/notification/compat/NotificationUtils;->fixIconImage(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/app/Notification;)V

    .line 83
    invoke-static {}, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;->getInstance()Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v1, v3, v5}, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;->createViews(Landroid/content/Context;Landroid/content/Context;Landroid/widget/RemoteViews;Z)Landroid/widget/RemoteViews;

    move-result-object v3

    iput-object v3, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 86
    :cond_3
    invoke-virtual {v2}, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsCompat;->getRemoteViews()Landroid/widget/RemoteViews;

    move-result-object v2

    .line 87
    invoke-static {v1, v2, p3}, Lcom/lody/virtual/client/hook/patchs/notification/compat/NotificationUtils;->fixIconImage(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/app/Notification;)V

    .line 88
    invoke-static {}, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;->getInstance()Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;

    move-result-object v3

    invoke-virtual {v3, p1, v1, v2, v6}, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;->createViews(Landroid/content/Context;Landroid/content/Context;Landroid/widget/RemoteViews;Z)Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 90
    invoke-static {p1, v0}, Lcom/lody/virtual/client/hook/patchs/notification/compat/NotificationUtils;->fixNotificationIcon(Landroid/content/Context;Landroid/app/Notification;)V

    goto :goto_0
.end method


# virtual methods
.method public dealNotification(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/String;)Lcom/lody/virtual/client/hook/patchs/notification/compat/NotificationHandler$Result;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/notification/compat/NotificationHandler$Result;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/lody/virtual/client/hook/patchs/notification/compat/NotificationHandler$Result;-><init>(Lcom/lody/virtual/client/hook/patchs/notification/compat/NotificationHandler;ILandroid/app/Notification;)V

    .line 43
    sget-boolean v1, Lcom/lody/virtual/client/hook/patchs/notification/compat/NotificationHandler;->DEPEND_SYSTEM:Z

    if-eqz v1, :cond_0

    .line 44
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/lody/virtual/client/core/VirtualCore;->isOutsideInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    invoke-static {p1, p2}, Lcom/lody/virtual/client/hook/patchs/notification/compat/NotificationUtils;->fixNotificationIcon(Landroid/content/Context;Landroid/app/Notification;)V

    .line 46
    const/4 v1, 0x2

    iput v1, v0, Lcom/lody/virtual/client/hook/patchs/notification/compat/NotificationHandler$Result;->code:I

    .line 57
    :goto_0
    return-object v0

    .line 50
    :cond_0
    invoke-direct {p0, p1, p3, p2}, Lcom/lody/virtual/client/hook/patchs/notification/compat/NotificationHandler;->replaceNotification(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)Landroid/app/Notification;

    move-result-object v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    const/4 v2, 0x1

    iput v2, v0, Lcom/lody/virtual/client/hook/patchs/notification/compat/NotificationHandler$Result;->code:I

    .line 53
    iput-object v1, v0, Lcom/lody/virtual/client/hook/patchs/notification/compat/NotificationHandler$Result;->notification:Landroid/app/Notification;

    goto :goto_0

    .line 55
    :cond_1
    const/4 v1, 0x3

    iput v1, v0, Lcom/lody/virtual/client/hook/patchs/notification/compat/NotificationHandler$Result;->code:I

    goto :goto_0
.end method

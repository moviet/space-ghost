.class Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsCompat;
.super Ljava/lang/Object;
.source "RemoteViewsCompat.java"


# instance fields
.field private context:Landroid/content/Context;

.field private mBigRemoteViews:Landroid/widget/RemoteViews;

.field private mHeadsUpContentView:Landroid/widget/RemoteViews;

.field private mNotification:Landroid/app/Notification;

.field private mRemoteViews:Landroid/widget/RemoteViews;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsCompat;->context:Landroid/content/Context;

    .line 20
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsCompat;->checkNotNull(Landroid/app/Notification;Z)Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsCompat;->mNotification:Landroid/app/Notification;

    .line 21
    return-void
.end method

.method private checkNotNull(Landroid/app/Notification;Z)Landroid/app/Notification;
    .locals 2

    .prologue
    .line 28
    iget-object v0, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iput-object v0, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsCompat;->mRemoteViews:Landroid/widget/RemoteViews;

    .line 31
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 32
    iget-object v0, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_1

    .line 33
    iget-object v0, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    iput-object v0, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsCompat;->mBigRemoteViews:Landroid/widget/RemoteViews;

    .line 36
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    .line 37
    iget-object v0, p1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    iput-object v0, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsCompat;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    .line 38
    iget-object v0, p1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v0, :cond_4

    .line 39
    iget-object v0, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsCompat;->mRemoteViews:Landroid/widget/RemoteViews;

    if-nez v0, :cond_2

    iget-object v0, p1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_2

    .line 40
    iget-object v0, p1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iput-object v0, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsCompat;->mRemoteViews:Landroid/widget/RemoteViews;

    .line 42
    :cond_2
    iget-object v0, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsCompat;->mBigRemoteViews:Landroid/widget/RemoteViews;

    if-nez v0, :cond_3

    iget-object v0, p1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_3

    .line 43
    iget-object v0, p1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    iput-object v0, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsCompat;->mBigRemoteViews:Landroid/widget/RemoteViews;

    .line 45
    :cond_3
    iget-object v0, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsCompat;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_4

    .line 46
    iget-object v0, p1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    iput-object v0, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsCompat;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    .line 50
    :cond_4
    if-eqz p2, :cond_5

    iget-object v0, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsCompat;->mRemoteViews:Landroid/widget/RemoteViews;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsCompat;->mBigRemoteViews:Landroid/widget/RemoteViews;

    if-nez v0, :cond_5

    .line 51
    iget-object v0, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsCompat;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/lody/virtual/client/hook/patchs/notification/compat/NotificationUtils;->clone(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification;

    move-result-object v0

    .line 52
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsCompat;->checkNotNull(Landroid/app/Notification;Z)Landroid/app/Notification;

    move-result-object p1

    .line 54
    :cond_5
    return-object p1
.end method


# virtual methods
.method public getBigRemoteViews()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsCompat;->mBigRemoteViews:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public getHeadsUpContentView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsCompat;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsCompat;->mNotification:Landroid/app/Notification;

    return-object v0
.end method

.method public getRemoteViews()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsCompat;->mRemoteViews:Landroid/widget/RemoteViews;

    return-object v0
.end method

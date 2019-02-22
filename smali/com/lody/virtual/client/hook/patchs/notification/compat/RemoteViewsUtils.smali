.class Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;
.super Ljava/lang/Object;
.source "RemoteViewsUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sRemoteViewsUtils:Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;


# instance fields
.field private final mWidthCompat:Lcom/lody/virtual/client/hook/patchs/notification/compat/WidthCompat;

.field private notification_max_height:I

.field private notification_mid_height:I

.field private notification_min_height:I

.field private notification_padding:I

.field private notification_panel_width:I

.field private notification_side_padding:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/notification/compat/WidthCompat;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/patchs/notification/compat/WidthCompat;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;->mWidthCompat:Lcom/lody/virtual/client/hook/patchs/notification/compat/WidthCompat;

    .line 33
    return-void
.end method

.method private fixTextView(Landroid/view/ViewGroup;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 134
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v1, v2

    .line 135
    :goto_0
    if-ge v1, v3, :cond_2

    .line 136
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 137
    instance-of v4, v0, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 138
    check-cast v0, Landroid/widget/TextView;

    .line 139
    invoke-direct {p0, v0}, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;->isSingleLine(Landroid/widget/TextView;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 140
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 141
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 135
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 143
    :cond_1
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 144
    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;->fixTextView(Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 147
    :cond_2
    return-void
.end method

.method private getDimem(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;I)I
    .locals 3

    .prologue
    .line 227
    if-eqz p2, :cond_0

    .line 228
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dimen"

    const-string v2, "com.android.systemui"

    invoke-virtual {v0, p3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 229
    if-eqz v0, :cond_0

    .line 231
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 238
    :goto_0
    return v0

    .line 232
    :catch_0
    move-exception v0

    .line 238
    :cond_0
    if-nez p4, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method

.method public static getInstance()Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;->sRemoteViewsUtils:Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;

    if-nez v0, :cond_1

    .line 37
    const-class v1, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;

    monitor-enter v1

    .line 38
    :try_start_0
    sget-object v0, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;->sRemoteViewsUtils:Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;-><init>()V

    sput-object v0, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;->sRemoteViewsUtils:Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;

    .line 41
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_1
    sget-object v0, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;->sRemoteViewsUtils:Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 194
    iget v0, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;->notification_panel_width:I

    if-nez v0, :cond_1

    .line 195
    const/4 v0, 0x0

    .line 197
    :try_start_0
    const-string v1, "com.android.systemui"

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 200
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-gt v1, v2, :cond_2

    .line 201
    const/4 v1, 0x0

    iput v1, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;->notification_side_padding:I

    .line 206
    :goto_1
    const-string v1, "notification_panel_width"

    sget v2, Lcom/lody/virtual/R$dimen;->notification_panel_width:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;->getDimem(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;->notification_panel_width:I

    .line 208
    iget v1, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;->notification_panel_width:I

    if-gtz v1, :cond_0

    .line 209
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;->notification_panel_width:I

    .line 211
    :cond_0
    const-string v1, "notification_min_height"

    sget v2, Lcom/lody/virtual/R$dimen;->notification_min_height:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;->getDimem(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;->notification_min_height:I

    .line 217
    const-string v1, "notification_max_height"

    sget v2, Lcom/lody/virtual/R$dimen;->notification_max_height:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;->getDimem(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;->notification_max_height:I

    .line 219
    const-string v1, "notification_mid_height"

    sget v2, Lcom/lody/virtual/R$dimen;->notification_mid_height:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;->getDimem(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;->notification_mid_height:I

    .line 221
    const-string v1, "notification_padding"

    sget v2, Lcom/lody/virtual/R$dimen;->notification_padding:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;->getDimem(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;->notification_padding:I

    .line 224
    :cond_1
    return-void

    .line 203
    :cond_2
    const-string v1, "notification_side_padding"

    sget v2, Lcom/lody/virtual/R$dimen;->notification_side_padding:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;->getDimem(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;->notification_side_padding:I

    goto :goto_1

    .line 198
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private isSingleLine(Landroid/widget/TextView;)Z
    .locals 2

    .prologue
    .line 152
    :try_start_0
    invoke-static {p1}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object v0

    const-string v1, "mSingleLine"

    invoke-virtual {v0, v1}, Lcom/lody/virtual/helper/utils/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 156
    :goto_0
    return v0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    invoke-virtual {p1}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createBitmap(Landroid/content/Context;Landroid/widget/RemoteViews;ZZ)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 47
    .line 49
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;->createView(Landroid/content/Context;Landroid/widget/RemoteViews;ZZ)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 58
    :goto_0
    if-nez v1, :cond_0

    .line 64
    :goto_1
    return-object v0

    .line 50
    :catch_0
    move-exception v1

    .line 53
    :try_start_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 54
    :catch_1
    move-exception v1

    move-object v1, v0

    goto :goto_0

    .line 61
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 62
    invoke-virtual {v1}, Landroid/view/View;->buildDrawingCache()V

    .line 63
    const/high16 v0, 0x100000

    invoke-virtual {v1, v0}, Landroid/view/View;->setDrawingCacheQuality(I)V

    .line 64
    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method public createView(Landroid/content/Context;Landroid/widget/RemoteViews;ZZ)Landroid/view/View;
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 68
    if-nez p2, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 130
    :goto_0
    return-object v0

    .line 70
    :cond_0
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 71
    invoke-direct {p0, v2}, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;->init(Landroid/content/Context;)V

    .line 73
    if-eqz p3, :cond_3

    iget v0, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;->notification_max_height:I

    move v1, v0

    .line 74
    :goto_1
    iget-object v0, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;->mWidthCompat:Lcom/lody/virtual/client/hook/patchs/notification/compat/WidthCompat;

    iget v3, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;->notification_panel_width:I

    iget v4, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;->notification_side_padding:I

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/lody/virtual/client/hook/patchs/notification/compat/WidthCompat;->getNotificationWidth(Landroid/content/Context;III)I

    move-result v4

    .line 76
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 77
    invoke-virtual {p2, p1, v3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 80
    if-eqz p4, :cond_4

    .line 81
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 99
    :goto_2
    const/16 v5, 0x10

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 101
    invoke-virtual {v3, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 114
    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;->fixTextView(Landroid/view/ViewGroup;)V

    .line 118
    :cond_1
    if-eqz p4, :cond_2

    .line 123
    :cond_2
    invoke-virtual {v3, v6, v6, v4, v1}, Landroid/view/View;->layout(IIII)V

    .line 124
    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v3, v0, v2}, Landroid/view/View;->measure(II)V

    .line 125
    invoke-virtual {v3, v6, v6, v4, v1}, Landroid/view/View;->layout(IIII)V

    .line 126
    sget-object v0, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notification:systemId="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ",max=%d/%d, szie=%d/%d"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v6

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v4

    const/4 v1, 0x2

    .line 127
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v1

    const/4 v1, 0x3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v1

    .line 126
    invoke-static {v0, v2, v5}, Lcom/lody/virtual/helper/utils/VLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v3

    .line 130
    goto/16 :goto_0

    .line 73
    :cond_3
    iget v0, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;->notification_min_height:I

    move v1, v0

    goto/16 :goto_1

    .line 84
    :cond_4
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v2, v7, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_2
.end method

.method public createViews(Landroid/content/Context;Landroid/content/Context;Landroid/widget/RemoteViews;Z)Landroid/widget/RemoteViews;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 160
    if-nez p3, :cond_0

    .line 161
    const/4 v0, 0x0

    .line 190
    :goto_0
    return-object v0

    .line 163
    :cond_0
    invoke-static {p3}, Lcom/lody/virtual/client/hook/patchs/notification/compat/NotificationUtils;->isSystemLayout(Landroid/widget/RemoteViews;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 164
    :goto_1
    new-instance v4, Lcom/lody/virtual/client/hook/patchs/notification/compat/PendIntentCompat;

    invoke-direct {v4, p3}, Lcom/lody/virtual/client/hook/patchs/notification/compat/PendIntentCompat;-><init>(Landroid/widget/RemoteViews;)V

    .line 167
    invoke-virtual {v4}, Lcom/lody/virtual/client/hook/patchs/notification/compat/PendIntentCompat;->findPendIntents()I

    move-result v2

    if-gtz v2, :cond_4

    .line 169
    sget v2, Lcom/lody/virtual/R$layout;->custom_notification_lite:I

    .line 174
    :goto_2
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 176
    invoke-static {}, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;->getInstance()Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;

    move-result-object v5

    invoke-virtual {v5, p2, p3, p4, v0}, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;->createBitmap(Landroid/content/Context;Landroid/widget/RemoteViews;ZZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 177
    if-nez v5, :cond_1

    .line 178
    sget-object v6, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bmp is null,contentView="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6, v7, v1}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    :cond_1
    sget v1, Lcom/lody/virtual/R$id;->im_main:I

    invoke-virtual {v3, v1, v5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 184
    sget v1, Lcom/lody/virtual/R$layout;->custom_notification:I

    if-ne v2, v1, :cond_2

    .line 187
    invoke-static {}, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;->getInstance()Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;

    move-result-object v1

    invoke-virtual {v1, p1, v3, p4, v0}, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;->createView(Landroid/content/Context;Landroid/widget/RemoteViews;ZZ)Landroid/view/View;

    move-result-object v1

    .line 188
    invoke-static {}, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;->getInstance()Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p4, v0}, Lcom/lody/virtual/client/hook/patchs/notification/compat/RemoteViewsUtils;->createView(Landroid/content/Context;Landroid/widget/RemoteViews;ZZ)Landroid/view/View;

    move-result-object v0

    .line 186
    invoke-virtual {v4, v3, v1, v0}, Lcom/lody/virtual/client/hook/patchs/notification/compat/PendIntentCompat;->setPendIntent(Landroid/widget/RemoteViews;Landroid/view/View;Landroid/view/View;)V

    :cond_2
    move-object v0, v3

    .line 190
    goto :goto_0

    :cond_3
    move v0, v1

    .line 163
    goto :goto_1

    .line 171
    :cond_4
    sget v2, Lcom/lody/virtual/R$layout;->custom_notification:I

    goto :goto_2
.end method

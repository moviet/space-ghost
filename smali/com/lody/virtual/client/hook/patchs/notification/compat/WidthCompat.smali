.class Lcom/lody/virtual/client/hook/patchs/notification/compat/WidthCompat;
.super Ljava/lang/Object;
.source "WidthCompat.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/lody/virtual/client/hook/patchs/notification/compat/WidthCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/client/hook/patchs/notification/compat/WidthCompat;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/WidthCompat;->mWidth:I

    return-void
.end method

.method private createViewGroup(Landroid/content/Context;I)Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 135
    :try_start_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-object v0

    .line 136
    :catch_0
    move-exception v0

    .line 140
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private getDefaultWidth(II)I
    .locals 2

    .prologue
    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 48
    mul-int/lit8 v0, p2, 0x2

    sub-int/2addr p1, v0

    .line 49
    :cond_0
    return p1
.end method

.method private getEMUINotificationWidth(Landroid/content/Context;II)I
    .locals 5

    .prologue
    .line 103
    :try_start_0
    const-string v0, "com.android.systemui"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 105
    const-string v1, "time_axis"

    const-string v2, "layout"

    invoke-direct {p0, v0, v1, v2}, Lcom/lody/virtual/client/hook/patchs/notification/compat/WidthCompat;->getSystemId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 106
    if-eqz v1, :cond_0

    .line 107
    invoke-direct {p0, v0, v1}, Lcom/lody/virtual/client/hook/patchs/notification/compat/WidthCompat;->createViewGroup(Landroid/content/Context;I)Landroid/view/ViewGroup;

    move-result-object v1

    .line 108
    invoke-direct {p0, v1, p2, p3}, Lcom/lody/virtual/client/hook/patchs/notification/compat/WidthCompat;->layout(Landroid/view/View;II)V

    .line 109
    const-string v2, "content_view_group"

    const-string v3, "id"

    invoke-direct {p0, v0, v2, v3}, Lcom/lody/virtual/client/hook/patchs/notification/compat/WidthCompat;->getSystemId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 110
    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int p2, v1, v0

    .line 126
    :cond_0
    :goto_0
    return p2

    .line 114
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 115
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    .line 116
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 117
    const-class v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 119
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    sub-int p2, v0, v1

    goto :goto_0

    .line 115
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 124
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getMIUINotificationWidth(Landroid/content/Context;II)I
    .locals 6

    .prologue
    .line 58
    :try_start_0
    const-string v0, "com.android.systemui"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 60
    const-string v0, "status_bar_notification_row"

    const-string v1, "layout"

    invoke-direct {p0, v2, v0, v1}, Lcom/lody/virtual/client/hook/patchs/notification/compat/WidthCompat;->getSystemId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 62
    if-eqz v0, :cond_0

    .line 63
    invoke-direct {p0, v2, v0}, Lcom/lody/virtual/client/hook/patchs/notification/compat/WidthCompat;->createViewGroup(Landroid/content/Context;I)Landroid/view/ViewGroup;

    move-result-object v3

    .line 65
    const-string v0, "adaptive"

    const-string v1, "id"

    invoke-direct {p0, v2, v0, v1}, Lcom/lody/virtual/client/hook/patchs/notification/compat/WidthCompat;->getSystemId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 66
    if-nez v1, :cond_1

    .line 67
    const-string v0, "content"

    const-string v1, "id"

    invoke-direct {p0, v2, v0, v1}, Lcom/lody/virtual/client/hook/patchs/notification/compat/WidthCompat;->getSystemId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 75
    :goto_0
    invoke-direct {p0, v3, p2, p3}, Lcom/lody/virtual/client/hook/patchs/notification/compat/WidthCompat;->layout(Landroid/view/View;II)V

    .line 76
    if-eqz v0, :cond_3

    .line 77
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int p2, v1, v0

    .line 95
    :cond_0
    :goto_1
    return p2

    .line 70
    :cond_1
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_2

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 72
    check-cast v0, Landroid/view/ViewGroup;

    new-instance v4, Landroid/view/View;

    invoke-direct {v4, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    move v0, v1

    goto :goto_0

    .line 82
    :cond_3
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 83
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_0

    .line 84
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 85
    const-class v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "LatestItemView"

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "SizeAdaptiveLayout"

    .line 86
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 87
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    sub-int p2, v0, v1

    goto :goto_1

    .line 83
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 92
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private getSystemId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, p2, p3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private layout(Landroid/view/View;II)V
    .locals 3

    .prologue
    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    .line 144
    invoke-virtual {p1, v2, v2, p2, p3}, Landroid/view/View;->layout(IIII)V

    .line 145
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 146
    invoke-static {p3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 145
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 147
    invoke-virtual {p1, v2, v2, p2, p3}, Landroid/view/View;->layout(IIII)V

    .line 148
    return-void
.end method


# virtual methods
.method public getNotificationWidth(Landroid/content/Context;III)I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 23
    iget v0, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/WidthCompat;->mWidth:I

    if-lez v0, :cond_0

    .line 24
    iget v0, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/WidthCompat;->mWidth:I

    .line 43
    :goto_0
    return v0

    .line 27
    :cond_0
    invoke-direct {p0, p2, p4}, Lcom/lody/virtual/client/hook/patchs/notification/compat/WidthCompat;->getDefaultWidth(II)I

    move-result v0

    .line 28
    invoke-static {}, Lcom/lody/virtual/helper/utils/OSUtils;->getInstance()Lcom/lody/virtual/helper/utils/OSUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lody/virtual/helper/utils/OSUtils;->isEmui()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/patchs/notification/compat/WidthCompat;->getEMUINotificationWidth(Landroid/content/Context;II)I

    move-result v0

    .line 42
    :cond_1
    :goto_1
    iput v0, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/WidthCompat;->mWidth:I

    goto :goto_0

    .line 31
    :cond_2
    invoke-static {}, Lcom/lody/virtual/helper/utils/OSUtils;->getInstance()Lcom/lody/virtual/helper/utils/OSUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lody/virtual/helper/utils/OSUtils;->isMiui()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 33
    const/high16 v0, 0x41200000    # 10.0f

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 33
    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 35
    mul-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    invoke-direct {p0, p1, v0, p3}, Lcom/lody/virtual/client/hook/patchs/notification/compat/WidthCompat;->getMIUINotificationWidth(Landroid/content/Context;II)I

    move-result v0

    goto :goto_1

    .line 37
    :cond_3
    const/high16 v0, 0x41c80000    # 25.0f

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 37
    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 39
    mul-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    invoke-direct {p0, p1, v0, p3}, Lcom/lody/virtual/client/hook/patchs/notification/compat/WidthCompat;->getMIUINotificationWidth(Landroid/content/Context;II)I

    move-result v0

    goto :goto_1
.end method

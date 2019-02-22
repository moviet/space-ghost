.class Lcom/lody/virtual/client/hook/patchs/notification/compat/PendIntentCompat;
.super Ljava/lang/Object;
.source "PendIntentCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/client/hook/patchs/notification/compat/PendIntentCompat$RectInfo;
    }
.end annotation


# instance fields
.field private clickIntents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteViews:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/PendIntentCompat;->mRemoteViews:Landroid/widget/RemoteViews;

    .line 31
    return-void
.end method

.method private findIntent(Landroid/graphics/Rect;Ljava/util/List;)Landroid/app/PendingIntent;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/List",
            "<",
            "Lcom/lody/virtual/client/hook/patchs/notification/compat/PendIntentCompat$RectInfo;",
            ">;)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .prologue
    .line 95
    const/4 v3, 0x0

    .line 96
    const/4 v1, 0x0

    .line 97
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/patchs/notification/compat/PendIntentCompat$RectInfo;

    .line 98
    iget-object v2, v0, Lcom/lody/virtual/client/hook/patchs/notification/compat/PendIntentCompat$RectInfo;->rect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v2}, Lcom/lody/virtual/client/hook/patchs/notification/compat/PendIntentCompat;->getOverlapArea(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v2

    .line 99
    if-le v2, v3, :cond_2

    .line 100
    if-nez v2, :cond_0

    .line 101
    const-string v1, "PendingIntentCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "find two:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/lody/virtual/client/hook/patchs/notification/compat/PendIntentCompat$RectInfo;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    iget-object v0, v0, Lcom/lody/virtual/client/hook/patchs/notification/compat/PendIntentCompat$RectInfo;->mPendingIntent:Landroid/app/PendingIntent;

    move v1, v2

    :goto_1
    move v3, v1

    move-object v1, v0

    .line 106
    goto :goto_0

    .line 107
    :cond_1
    return-object v1

    :cond_2
    move-object v0, v1

    move v1, v3

    goto :goto_1
.end method

.method private getClickIntents(Landroid/widget/RemoteViews;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RemoteViews;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 128
    if-nez p1, :cond_0

    move-object v0, v1

    .line 157
    :goto_0
    return-object v0

    .line 130
    :cond_0
    const/4 v2, 0x0

    .line 132
    :try_start_0
    invoke-static {p1}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object v0

    const-string v3, "mActions"

    invoke-virtual {v0, v3}, Lcom/lody/virtual/helper/utils/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 136
    :goto_1
    if-nez v0, :cond_1

    move-object v0, v1

    .line 137
    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v2

    goto :goto_1

    .line 139
    :cond_1
    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_3

    .line 140
    check-cast v0, Ljava/util/Collection;

    .line 141
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 142
    if-eqz v3, :cond_2

    .line 145
    :try_start_1
    invoke-static {v3}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object v0

    const-string v4, "getActionName"

    invoke-virtual {v0, v4}, Lcom/lody/virtual/helper/utils/Reflect;->call(Ljava/lang/String;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/helper/utils/Reflect;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 149
    :goto_3
    const-string v4, "SetOnClickPendingIntent"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    invoke-static {v3}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object v0

    const-string v4, "viewId"

    invoke-virtual {v0, v4}, Lcom/lody/virtual/helper/utils/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 151
    invoke-static {v3}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object v0

    const-string v3, "pendingIntent"

    invoke-virtual {v0, v3}, Lcom/lody/virtual/helper/utils/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 152
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 146
    :catch_1
    move-exception v0

    .line 147
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    move-object v0, v1

    .line 157
    goto :goto_0
.end method

.method private getOverlapArea(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 3

    .prologue
    .line 112
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 113
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 114
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 115
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 116
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 117
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-ge v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v2, :cond_0

    .line 118
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v0

    mul-int/2addr v0, v1

    .line 120
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setIntentByViewGroup(Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RemoteViews;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List",
            "<",
            "Lcom/lody/virtual/client/hook/patchs/notification/compat/PendIntentCompat$RectInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 73
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 74
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 75
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 77
    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0, p3}, Lcom/lody/virtual/client/hook/patchs/notification/compat/PendIntentCompat;->setIntentByViewGroup(Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 73
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 78
    :cond_1
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 80
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 81
    invoke-virtual {v0, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 83
    iget v4, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 84
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 85
    invoke-direct {p0, v3, p3}, Lcom/lody/virtual/client/hook/patchs/notification/compat/PendIntentCompat;->findIntent(Landroid/graphics/Rect;Ljava/util/List;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 86
    if-eqz v3, :cond_0

    .line 87
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_1

    .line 91
    :cond_2
    return-void
.end method


# virtual methods
.method public findPendIntents()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/PendIntentCompat;->clickIntents:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/PendIntentCompat;->mRemoteViews:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/hook/patchs/notification/compat/PendIntentCompat;->getClickIntents(Landroid/widget/RemoteViews;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/PendIntentCompat;->clickIntents:Ljava/util/Map;

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/PendIntentCompat;->clickIntents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public setPendIntent(Landroid/widget/RemoteViews;Landroid/view/View;Landroid/view/View;)V
    .locals 5

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/notification/compat/PendIntentCompat;->findPendIntents()I

    move-result v0

    if-lez v0, :cond_2

    .line 52
    iget-object v0, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/PendIntentCompat;->clickIntents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 53
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 55
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 57
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 58
    if-eqz v1, :cond_0

    .line 59
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 60
    invoke-virtual {v1, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 61
    new-instance v1, Lcom/lody/virtual/client/hook/patchs/notification/compat/PendIntentCompat$RectInfo;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    invoke-direct {v1, p0, v4, v0}, Lcom/lody/virtual/client/hook/patchs/notification/compat/PendIntentCompat$RectInfo;-><init>(Lcom/lody/virtual/client/hook/patchs/notification/compat/PendIntentCompat;Landroid/graphics/Rect;Landroid/app/PendingIntent;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 65
    :cond_1
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 66
    check-cast p2, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, p2, v3}, Lcom/lody/virtual/client/hook/patchs/notification/compat/PendIntentCompat;->setIntentByViewGroup(Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 69
    :cond_2
    return-void
.end method

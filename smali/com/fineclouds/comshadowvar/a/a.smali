.class public Lcom/fineclouds/spaceghostq1/a/a;
.super Ljava/lang/Object;
.source "CollectPresenterImpl.java"

# interfaces
.implements Lfineclouds/com/mylibrary/a/a/b;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/a/a;->a:Landroid/content/Context;

    .line 35
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 98
    const-string v0, "CollectPresenterImpl"

    const-string v1, "collecetBaseData: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v0, Lfineclouds/com/mylibrary/a/a/a;

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/a/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lfineclouds/com/mylibrary/a/a/a;-><init>(Landroid/content/Context;Lfineclouds/com/mylibrary/a/a/b;)V

    .line 100
    invoke-virtual {v0}, Lfineclouds/com/mylibrary/a/a/a;->a()V

    .line 102
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 108
    const-string v0, "CollectPresenterImpl"

    const-string v1, "collectAppInstalledList: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v0, Lfineclouds/com/mylibrary/a/a/a;

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/a/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lfineclouds/com/mylibrary/a/a/a;-><init>(Landroid/content/Context;Lfineclouds/com/mylibrary/a/a/b;)V

    .line 110
    invoke-virtual {v0}, Lfineclouds/com/mylibrary/a/a/a;->b()V

    .line 111
    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 39
    const-string v0, "CollectPresenterImpl"

    const-string v2, "uploadCollectData: "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/common/a/b/a;->a(Landroid/content/Context;)Z

    move-result v2

    .line 46
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/common/a/b/a;->b(Landroid/content/Context;)J

    move-result-wide v4

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 48
    const-wide/32 v8, 0xf731400

    .line 49
    sub-long v4, v6, v4

    sub-long/2addr v4, v8

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 50
    :goto_0
    const-string v3, "C"

    .line 51
    const-string v4, "CollectPresenterImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uploadCollectData: isFirstActivate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string v4, "CollectPresenterImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uploadCollectData: isOutSpaceDate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/fineclouds/spaceghostq1/a/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/fineclouds/spaceghostq1/common/a/e;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 54
    const-string v0, "B"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    invoke-direct {p0}, Lcom/fineclouds/spaceghostq1/a/a;->d()V

    .line 57
    invoke-direct {p0}, Lcom/fineclouds/spaceghostq1/a/a;->c()V

    .line 58
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/a/a;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/fineclouds/spaceghostq1/common/a/b/a;->a(Landroid/content/Context;Z)V

    .line 69
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 49
    goto :goto_0

    .line 59
    :cond_2
    const-string v0, "C"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-direct {p0}, Lcom/fineclouds/spaceghostq1/a/a;->c()V

    .line 62
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/a/a;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/fineclouds/spaceghostq1/common/a/b/a;->a(Landroid/content/Context;Z)V

    goto :goto_1

    .line 64
    :cond_3
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/common/a/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/fineclouds/spaceghostq1/a/a;->d()V

    .line 66
    invoke-direct {p0}, Lcom/fineclouds/spaceghostq1/a/a;->c()V

    goto :goto_1
.end method

.method public a(J)V
    .locals 4

    .prologue
    .line 123
    const-string v0, "CollectPresenterImpl"

    const-string v1, "insertDeviceInfoResult: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v0, Lfineclouds/com/mylibrary/a/f/b;

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/a/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lfineclouds/com/mylibrary/a/f/b;-><init>(Landroid/content/Context;)V

    .line 125
    invoke-virtual {v0}, Lfineclouds/com/mylibrary/a/f/b;->a()V

    .line 126
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/a/a;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/fineclouds/spaceghostq1/common/a/b/a;->a(Landroid/content/Context;J)V

    .line 127
    return-void
.end method

.method public b()V
    .locals 6

    .prologue
    .line 73
    const-string v0, "CollectPresenterImpl"

    const-string v1, "uploadUserActionInfo: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/common/a/b/a;->c(Landroid/content/Context;)J

    move-result-wide v0

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 76
    const-wide/32 v4, 0x2932e00

    .line 77
    sub-long v0, v2, v0

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 78
    :goto_0
    const-string v1, "CollectPresenterImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uploadUserActionInfo: isOutSpaceTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Lfineclouds/com/mylibrary/a/f/b;

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/a/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lfineclouds/com/mylibrary/a/f/b;-><init>(Landroid/content/Context;)V

    .line 87
    invoke-virtual {v0}, Lfineclouds/com/mylibrary/a/f/b;->c()V

    .line 88
    invoke-virtual {v0}, Lfineclouds/com/mylibrary/a/f/b;->b()V

    .line 89
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/a/a;->a:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lcom/fineclouds/spaceghostq1/common/a/b/a;->b(Landroid/content/Context;J)V

    .line 92
    :cond_0
    return-void

    .line 77
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

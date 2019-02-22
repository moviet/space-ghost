.class public Lcom/fineclouds/spaceghostq1/choose/b/a;
.super Ljava/lang/Object;
.source "DualChoosePresenterImpl.java"

# interfaces
.implements Lcom/fineclouds/spaceghostq1/c$a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/fineclouds/spaceghostq1/c$b;

.field private c:Lcom/fineclouds/spaceghostq1/virtualapp/models/a;

.field private d:Lcom/fineclouds/spaceghostq1/dual/c/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fineclouds/spaceghostq1/c$b;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/choose/b/a;->a:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/fineclouds/spaceghostq1/choose/b/a;->b:Lcom/fineclouds/spaceghostq1/c$b;

    .line 42
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/b/a;->b:Lcom/fineclouds/spaceghostq1/c$b;

    invoke-interface {v0, p0}, Lcom/fineclouds/spaceghostq1/c$b;->a(Ljava/lang/Object;)V

    .line 43
    invoke-static {p1}, Lcom/fineclouds/spaceghostq1/dual/c/a;->a(Landroid/content/Context;)Lcom/fineclouds/spaceghostq1/dual/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/b/a;->d:Lcom/fineclouds/spaceghostq1/dual/c/a;

    .line 45
    new-instance v0, Lcom/fineclouds/spaceghostq1/virtualapp/models/a;

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/choose/b/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fineclouds/spaceghostq1/virtualapp/models/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/b/a;->c:Lcom/fineclouds/spaceghostq1/virtualapp/models/a;

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/fineclouds/spaceghostq1/choose/b/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/b/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method private b()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/b/a;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/fineclouds/spaceghostq1/choose/b/a;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 106
    iget-object v2, p0, Lcom/fineclouds/spaceghostq1/choose/b/a;->a:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/fineclouds/spaceghostq1/choose/b/a;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 107
    const-string v3, "DualChoosePresenterImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAppModels: recommonds="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string v3, "DualChoosePresenterImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAppModels: others="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 110
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 111
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 112
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    .line 113
    iget-object v3, p0, Lcom/fineclouds/spaceghostq1/choose/b/a;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->d(Ljava/lang/String;)V

    .line 116
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 117
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 119
    :cond_1
    const-string v0, "DualChoosePresenterImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppModels: appModels="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-object v1
.end method

.method static synthetic b(Lcom/fineclouds/spaceghostq1/choose/b/a;)Ljava/util/List;
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/fineclouds/spaceghostq1/choose/b/a;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/fineclouds/spaceghostq1/choose/b/a;)Lcom/fineclouds/spaceghostq1/c$b;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/b/a;->b:Lcom/fineclouds/spaceghostq1/c$b;

    return-object v0
.end method

.method private c()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    new-instance v1, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    const-string v2, "com.whatsapp"

    invoke-direct {v1, v2}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;-><init>(Ljava/lang/String;)V

    .line 175
    const-string v2, "Dual SIM card, dual WhatsApp"

    invoke-virtual {v1, v2}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->c(Ljava/lang/String;)V

    .line 176
    new-instance v2, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    const-string v3, "com.facebook.katana"

    invoke-direct {v2, v3}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;-><init>(Ljava/lang/String;)V

    .line 177
    const-string v3, "Different account\uff0cdifferent friend"

    invoke-virtual {v2, v3}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->c(Ljava/lang/String;)V

    .line 178
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    return-object v0
.end method

.method private c(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    new-instance v0, Lcom/fineclouds/spaceghostq1/virtualapp/models/a;

    invoke-direct {v0, p1}, Lcom/fineclouds/spaceghostq1/virtualapp/models/a;-><init>(Landroid/content/Context;)V

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/fineclouds/spaceghostq1/virtualapp/models/a;->a(Landroid/content/Context;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 168
    const-string v1, "DualChoosePresenterImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInstalledApp: appModes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/fineclouds/spaceghostq1/choose/b/a;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 127
    invoke-direct {p0}, Lcom/fineclouds/spaceghostq1/choose/b/a;->c()Ljava/util/List;

    move-result-object v0

    .line 129
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 130
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    .line 131
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    .line 132
    iget-object v6, v0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->b:Ljava/lang/String;

    iget-object v7, v1, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 133
    invoke-virtual {v0}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->c(Ljava/lang/String;)V

    .line 134
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 139
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->d(Ljava/lang/String;)V

    .line 142
    :cond_3
    const-string v0, "DualChoosePresenterImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRecommondApps: recommonds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-object v3
.end method

.method public a()V
    .locals 4

    .prologue
    .line 77
    const-string v0, ""

    invoke-static {v0}, La/d;->b(Ljava/lang/Object;)La/d;

    move-result-object v0

    const-wide/16 v2, 0x258

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 78
    invoke-virtual {v0, v2, v3, v1}, La/d;->a(JLjava/util/concurrent/TimeUnit;)La/d;

    move-result-object v0

    .line 79
    invoke-static {}, La/g/a;->a()La/g;

    move-result-object v1

    invoke-virtual {v0, v1}, La/d;->b(La/g;)La/d;

    move-result-object v0

    .line 80
    invoke-static {}, La/a/b/a;->a()La/g;

    move-result-object v1

    invoke-virtual {v0, v1}, La/d;->a(La/g;)La/d;

    move-result-object v0

    new-instance v1, Lcom/fineclouds/spaceghostq1/choose/b/a$2;

    invoke-direct {v1, p0}, Lcom/fineclouds/spaceghostq1/choose/b/a$2;-><init>(Lcom/fineclouds/spaceghostq1/choose/b/a;)V

    .line 81
    invoke-virtual {v0, v1}, La/d;->b(La/j;)La/k;

    .line 100
    return-void
.end method

.method public a(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V
    .locals 3

    .prologue
    .line 50
    const-string v0, "DualChoosePresenterImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectApp: model:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-static {p1}, La/d;->b(Ljava/lang/Object;)La/d;

    move-result-object v0

    const/4 v1, 0x1

    .line 52
    invoke-virtual {v0, v1}, La/d;->a(I)La/d;

    move-result-object v0

    new-instance v1, Lcom/fineclouds/spaceghostq1/choose/b/a$1;

    invoke-direct {v1, p0, p1}, Lcom/fineclouds/spaceghostq1/choose/b/a$1;-><init>(Lcom/fineclouds/spaceghostq1/choose/b/a;Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V

    .line 53
    invoke-virtual {v0, v1}, La/d;->b(La/j;)La/k;

    .line 73
    return-void
.end method

.method public b(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/fineclouds/spaceghostq1/choose/b/a;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 149
    invoke-direct {p0}, Lcom/fineclouds/spaceghostq1/choose/b/a;->c()Ljava/util/List;

    move-result-object v0

    .line 151
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    .line 152
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 153
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    .line 155
    iget-object v5, v0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->b:Ljava/lang/String;

    iget-object v6, v1, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v1, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->b:Ljava/lang/String;

    const-string v6, "com.fineclouds."

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v1, v1, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->b:Ljava/lang/String;

    const-string v5, "com.twitter.android"

    .line 156
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 161
    :cond_3
    return-object v2
.end method

.class public Lcom/fineclouds/spaceghostq1/dual/c/b;
.super Ljava/lang/Object;
.source "DualSpacePresenterImpl.java"

# interfaces
.implements Lcom/fineclouds/spaceghostq1/c$d;


# instance fields
.field private a:Lcom/fineclouds/spaceghostq1/c$c;

.field private b:Lcom/fineclouds/spaceghostq1/virtualapp/models/a;

.field private c:Landroid/content/Context;

.field private d:Lcom/fineclouds/spaceghostq1/dual/c/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fineclouds/spaceghostq1/c$c;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p2, p0, Lcom/fineclouds/spaceghostq1/dual/c/b;->a:Lcom/fineclouds/spaceghostq1/c$c;

    .line 53
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/dual/c/b;->c:Landroid/content/Context;

    .line 54
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/c/b;->a:Lcom/fineclouds/spaceghostq1/c$c;

    invoke-interface {v0, p0}, Lcom/fineclouds/spaceghostq1/c$c;->a(Ljava/lang/Object;)V

    .line 55
    invoke-static {p1}, Lcom/fineclouds/spaceghostq1/dual/c/a;->a(Landroid/content/Context;)Lcom/fineclouds/spaceghostq1/dual/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/c/b;->d:Lcom/fineclouds/spaceghostq1/dual/c/a;

    .line 56
    new-instance v0, Lcom/fineclouds/spaceghostq1/virtualapp/models/a;

    invoke-direct {v0, p1}, Lcom/fineclouds/spaceghostq1/virtualapp/models/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/c/b;->b:Lcom/fineclouds/spaceghostq1/virtualapp/models/a;

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/fineclouds/spaceghostq1/dual/c/b;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/c/b;->c:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/content/Context;)Ljava/util/List;
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
    .line 308
    invoke-direct {p0, p1}, Lcom/fineclouds/spaceghostq1/dual/c/b;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 309
    invoke-direct {p0}, Lcom/fineclouds/spaceghostq1/dual/c/b;->c()Ljava/util/List;

    move-result-object v0

    .line 311
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 312
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    .line 313
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

    .line 314
    iget-object v1, v1, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->b:Ljava/lang/String;

    .line 315
    iget-object v6, v0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->b:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 316
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 320
    :cond_2
    const-string v0, "DualSpacePresenterImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRecommondApps: virtualApps="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    return-object v3
.end method

.method static synthetic a(Lcom/fineclouds/spaceghostq1/dual/c/b;Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/fineclouds/spaceghostq1/dual/c/b;->c(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V

    return-void
.end method

.method static synthetic b(Lcom/fineclouds/spaceghostq1/dual/c/b;)Lcom/fineclouds/spaceghostq1/c$c;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/c/b;->a:Lcom/fineclouds/spaceghostq1/c$c;

    return-object v0
.end method

.method private b(Landroid/content/Context;)Ljava/util/List;
    .locals 3
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
    .line 348
    new-instance v0, Lcom/fineclouds/spaceghostq1/virtualapp/models/a;

    invoke-direct {v0, p1}, Lcom/fineclouds/spaceghostq1/virtualapp/models/a;-><init>(Landroid/content/Context;)V

    .line 349
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/fineclouds/spaceghostq1/virtualapp/models/a;->a(Landroid/content/Context;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 269
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/c/b;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/common/a/b/a;->d(Landroid/content/Context;)Z

    move-result v0

    .line 270
    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/dual/c/b;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/fineclouds/spaceghostq1/common/a/b/a;->e(Landroid/content/Context;)Z

    move-result v1

    .line 271
    const-string v2, "DualSpacePresenterImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadHomeDatas: isFirstEnter="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",isAddedDualApp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/c/b;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/fineclouds/spaceghostq1/dual/c/b;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 274
    const-string v1, "DualSpacePresenterImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadHomeDatas: virtualApps="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/dual/c/b;->a:Lcom/fineclouds/spaceghostq1/c$c;

    invoke-interface {v1, v0}, Lcom/fineclouds/spaceghostq1/c$c;->a(Ljava/util/List;)V

    .line 305
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/c/b;->a:Lcom/fineclouds/spaceghostq1/c$c;

    invoke-interface {v0, v5}, Lcom/fineclouds/spaceghostq1/c$c;->a(Ljava/util/List;)V

    goto :goto_0

    .line 281
    :cond_1
    if-eqz v1, :cond_2

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/c/b;->d:Lcom/fineclouds/spaceghostq1/dual/c/a;

    invoke-virtual {v0}, Lcom/fineclouds/spaceghostq1/dual/c/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, La/d;->b(Ljava/lang/Object;)La/d;

    move-result-object v0

    .line 284
    invoke-static {}, La/g/a;->a()La/g;

    move-result-object v1

    invoke-virtual {v0, v1}, La/d;->b(La/g;)La/d;

    move-result-object v0

    .line 285
    invoke-static {}, La/a/b/a;->a()La/g;

    move-result-object v1

    invoke-virtual {v0, v1}, La/d;->a(La/g;)La/d;

    move-result-object v0

    new-instance v1, Lcom/fineclouds/spaceghostq1/dual/c/b$6;

    invoke-direct {v1, p0}, Lcom/fineclouds/spaceghostq1/dual/c/b$6;-><init>(Lcom/fineclouds/spaceghostq1/dual/c/b;)V

    .line 286
    invoke-virtual {v0, v1}, La/d;->b(La/c/b;)La/k;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 296
    :cond_2
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/c/b;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/fineclouds/spaceghostq1/dual/c/b;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 297
    const-string v1, "DualSpacePresenterImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadHomeDatas: virtualApps="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 299
    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/dual/c/b;->a:Lcom/fineclouds/spaceghostq1/c$c;

    invoke-interface {v1, v0}, Lcom/fineclouds/spaceghostq1/c$c;->a(Ljava/util/List;)V

    goto :goto_0

    .line 301
    :cond_3
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/c/b;->a:Lcom/fineclouds/spaceghostq1/c$c;

    invoke-interface {v0, v5}, Lcom/fineclouds/spaceghostq1/c$c;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/fineclouds/spaceghostq1/dual/c/b;)Lcom/fineclouds/spaceghostq1/dual/c/a;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/c/b;->d:Lcom/fineclouds/spaceghostq1/dual/c/a;

    return-object v0
.end method

.method private c()Ljava/util/List;
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
    const/4 v5, 0x1

    .line 325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 326
    new-instance v1, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    const-string v2, "com.whatsapp"

    invoke-direct {v1, v2}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;-><init>(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v1, v5}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->b(I)V

    .line 328
    const-string v2, "WhatsApp"

    invoke-virtual {v1, v2}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->a(Ljava/lang/String;)V

    .line 329
    iget-object v2, p0, Lcom/fineclouds/spaceghostq1/dual/c/b;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020069

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->a(Landroid/graphics/drawable/Drawable;)V

    .line 331
    new-instance v2, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    const-string v3, "com.facebook.katana"

    invoke-direct {v2, v3}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;-><init>(Ljava/lang/String;)V

    .line 332
    const-string v3, "Facebook"

    invoke-virtual {v2, v3}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->a(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v2, v5}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->b(I)V

    .line 334
    iget-object v3, p0, Lcom/fineclouds/spaceghostq1/dual/c/b;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02006a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->a(Landroid/graphics/drawable/Drawable;)V

    .line 336
    new-instance v3, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    const-string v4, "com.facebook.orca"

    invoke-direct {v3, v4}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;-><init>(Ljava/lang/String;)V

    .line 337
    const-string v4, "Messenger"

    invoke-virtual {v3, v4}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->a(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v3, v5}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->b(I)V

    .line 339
    iget-object v4, p0, Lcom/fineclouds/spaceghostq1/dual/c/b;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020068

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->a(Landroid/graphics/drawable/Drawable;)V

    .line 341
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    return-object v0
.end method

.method private c(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V
    .locals 3

    .prologue
    .line 113
    new-instance v0, Landroid/support/v7/app/c$a;

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/dual/c/b;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dual the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->b(Ljava/lang/CharSequence;)Landroid/support/v7/app/c$a;

    .line 115
    const v1, 0x104000a

    new-instance v2, Lcom/fineclouds/spaceghostq1/dual/c/b$2;

    invoke-direct {v2, p0, p1}, Lcom/fineclouds/spaceghostq1/dual/c/b$2;-><init>(Lcom/fineclouds/spaceghostq1/dual/c/b;Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    .line 123
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    .line 124
    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->c()Landroid/support/v7/app/c;

    .line 125
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/fineclouds/spaceghostq1/dual/c/b;->b()V

    .line 255
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V
    .locals 5

    .prologue
    .line 129
    const-string v0, "DualSpacePresenterImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addShortCut: appModel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/c/b;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "dualspace_addShortCut"

    const-string v2, "addShortCut"

    iget-object v3, p2, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lfineclouds/com/mylibrary/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->b:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/fineclouds/spaceghostq1/common/a/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    iget-object v1, p2, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->b:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/fineclouds/spaceghostq1/common/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 135
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/fineclouds/spaceghostq1/common/a/f;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    sget-object v3, Lcom/fineclouds/spaceghostq1/common/a/f;->b:Ljava/lang/String;

    iget-object v4, p2, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    invoke-static {p1, v0, v1, v2}, Lcom/fineclouds/spaceghostq1/common/a/f;->a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    const-string v1, "DualSpacePresenterImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addNotesShortcut Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V
    .locals 3

    .prologue
    .line 236
    invoke-virtual {p2}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->f()I

    move-result v0

    .line 237
    check-cast p1, Lcom/fineclouds/spaceghostq1/home/a$a;

    .line 240
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 241
    invoke-virtual {p2}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 242
    invoke-virtual {p2}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->a()Ljava/lang/String;

    move-result-object v0

    .line 247
    :goto_0
    iget-object v2, p1, Lcom/fineclouds/spaceghostq1/home/a$a;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v0, p1, Lcom/fineclouds/spaceghostq1/home/a$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 250
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/c/b;->c:Landroid/content/Context;

    iget-object v1, p2, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/fineclouds/spaceghostq1/common/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 245
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/c/b;->c:Landroid/content/Context;

    iget-object v2, p2, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/fineclouds/spaceghostq1/common/a/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V
    .locals 3

    .prologue
    .line 71
    const-string v0, "DualSpacePresenterImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchApp: model="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-static {p1}, La/d;->b(Ljava/lang/Object;)La/d;

    move-result-object v0

    const/4 v1, 0x1

    .line 73
    invoke-virtual {v0, v1}, La/d;->a(I)La/d;

    move-result-object v0

    new-instance v1, Lcom/fineclouds/spaceghostq1/dual/c/b$1;

    invoke-direct {v1, p0, p1}, Lcom/fineclouds/spaceghostq1/dual/c/b$1;-><init>(Lcom/fineclouds/spaceghostq1/dual/c/b;Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V

    .line 74
    invoke-virtual {v0, v1}, La/d;->b(La/j;)La/k;

    .line 105
    return-void
.end method

.method public a(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;I)V
    .locals 3

    .prologue
    .line 61
    const-string v0, "DualSpacePresenterImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteDualApp: model="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/c/b;->c:Landroid/content/Context;

    const-string v1, "DualSapce_onDeleteEvent"

    invoke-static {v0, p1, v1}, Lcom/fineclouds/spaceghostq1/common/a/a;->a(Landroid/content/Context;Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/c/b;->d:Lcom/fineclouds/spaceghostq1/dual/c/a;

    iget-object v1, p1, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fineclouds/spaceghostq1/dual/c/a;->a(Ljava/lang/String;)Lcom/a/a/c/b/a/c;

    .line 64
    invoke-static {}, Lcom/fineclouds/spaceghostq1/common/a/b;->a()Lcom/fineclouds/spaceghostq1/common/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fineclouds/spaceghostq1/common/a/b;->a(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V

    .line 65
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    iget-object v1, p1, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/core/VirtualCore;->uninstallApp(Ljava/lang/String;)Z

    .line 66
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/c/b;->a:Lcom/fineclouds/spaceghostq1/c$c;

    invoke-interface {v0, p2}, Lcom/fineclouds/spaceghostq1/c$c;->a(I)V

    .line 67
    return-void
.end method

.method public a(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;Landroid/support/v4/app/n;I)V
    .locals 2

    .prologue
    .line 166
    invoke-static {p1, p3}, Lcom/fineclouds/spaceghostq1/dual/widget/SelectMenuDialog;->a(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;I)Lcom/fineclouds/spaceghostq1/dual/widget/SelectMenuDialog;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/dual/c/b;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/fineclouds/spaceghostq1/dual/widget/SelectMenuDialog;->a(Landroid/content/Context;Lcom/fineclouds/spaceghostq1/dual/c/b;)V

    .line 168
    const-string v1, "dialog"

    invoke-virtual {v0, p2, v1}, Lcom/fineclouds/spaceghostq1/dual/widget/SelectMenuDialog;->a(Landroid/support/v4/app/n;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 213
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 214
    const-string v0, "DualSpacePresenterImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveDualApps: appModels="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-static {p1}, La/d;->a(Ljava/lang/Iterable;)La/d;

    move-result-object v0

    .line 216
    invoke-static {}, La/g/a;->a()La/g;

    move-result-object v1

    invoke-virtual {v0, v1}, La/d;->a(La/g;)La/d;

    move-result-object v0

    new-instance v1, Lcom/fineclouds/spaceghostq1/dual/c/b$5;

    invoke-direct {v1, p0}, Lcom/fineclouds/spaceghostq1/dual/c/b$5;-><init>(Lcom/fineclouds/spaceghostq1/dual/c/b;)V

    .line 217
    invoke-virtual {v0, v1}, La/d;->a(La/c/e;)La/d;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, La/d;->b()La/k;

    .line 228
    return-void
.end method

.method public b(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V
    .locals 4

    .prologue
    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/c/b;->c:Landroid/content/Context;

    const-string v1, "DualSapce_addDualApp"

    invoke-static {v0, p1, v1}, Lcom/fineclouds/spaceghostq1/common/a/a;->a(Landroid/content/Context;Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/c/b;->a:Lcom/fineclouds/spaceghostq1/c$c;

    invoke-interface {v0}, Lcom/fineclouds/spaceghostq1/c$c;->b_()V

    .line 177
    const-string v0, "addDualApp"

    invoke-static {v0}, La/d;->b(Ljava/lang/Object;)La/d;

    move-result-object v0

    const-wide/16 v2, 0x12c

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 178
    invoke-virtual {v0, v2, v3, v1}, La/d;->a(JLjava/util/concurrent/TimeUnit;)La/d;

    move-result-object v0

    .line 179
    invoke-static {}, La/g/a;->a()La/g;

    move-result-object v1

    invoke-virtual {v0, v1}, La/d;->b(La/g;)La/d;

    move-result-object v0

    .line 180
    invoke-static {}, La/a/b/a;->a()La/g;

    move-result-object v1

    invoke-virtual {v0, v1}, La/d;->a(La/g;)La/d;

    move-result-object v0

    new-instance v1, Lcom/fineclouds/spaceghostq1/dual/c/b$4;

    invoke-direct {v1, p0, p1}, Lcom/fineclouds/spaceghostq1/dual/c/b$4;-><init>(Lcom/fineclouds/spaceghostq1/dual/c/b;Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V

    .line 181
    invoke-virtual {v0, v1}, La/d;->a(La/c/b;)La/d;

    move-result-object v0

    new-instance v1, Lcom/fineclouds/spaceghostq1/dual/c/b$3;

    invoke-direct {v1, p0, p1}, Lcom/fineclouds/spaceghostq1/dual/c/b$3;-><init>(Lcom/fineclouds/spaceghostq1/dual/c/b;Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V

    .line 199
    invoke-virtual {v0, v1}, La/d;->b(La/c/b;)La/k;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

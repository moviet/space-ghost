.class public Lcom/fineclouds/spaceghostq1/update/a;
.super Ljava/lang/Object;
.source "CheckVersionUpdate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fineclouds/spaceghostq1/update/a$a;
    }
.end annotation


# static fields
.field private static d:Lcom/fineclouds/spaceghostq1/update/a;

.field private static i:Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:I

.field private e:Lcom/fineclouds/spaceghostq1/update/a$a;

.field private f:I

.field private g:I

.field private h:Lfineclouds/com/mylibrary/a/c/f;

.field private j:Landroid/os/Handler;

.field private k:Lfineclouds/com/mylibrary/a/e/b$b;

.field private l:Lfineclouds/com/mylibrary/a/e/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/fineclouds/spaceghostq1/update/a;->i:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/update/a;->b:Ljava/lang/String;

    .line 70
    new-instance v0, Lcom/fineclouds/spaceghostq1/update/a$1;

    invoke-direct {v0, p0}, Lcom/fineclouds/spaceghostq1/update/a$1;-><init>(Lcom/fineclouds/spaceghostq1/update/a;)V

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/update/a;->j:Landroid/os/Handler;

    .line 93
    new-instance v0, Lcom/fineclouds/spaceghostq1/update/a$2;

    invoke-direct {v0, p0}, Lcom/fineclouds/spaceghostq1/update/a$2;-><init>(Lcom/fineclouds/spaceghostq1/update/a;)V

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/update/a;->k:Lfineclouds/com/mylibrary/a/e/b$b;

    .line 104
    new-instance v0, Lcom/fineclouds/spaceghostq1/update/a$3;

    invoke-direct {v0, p0}, Lcom/fineclouds/spaceghostq1/update/a$3;-><init>(Lcom/fineclouds/spaceghostq1/update/a;)V

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/update/a;->l:Lfineclouds/com/mylibrary/a/e/b$b;

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/update/a;->a:Landroid/content/Context;

    .line 125
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 127
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v1, p0, Lcom/fineclouds/spaceghostq1/update/a;->b:Ljava/lang/String;

    .line 128
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Lcom/fineclouds/spaceghostq1/update/a;->c:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    const-string v0, "CheckVersionUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CheckUpdate, mCurVersionName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fineclouds/spaceghostq1/update/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/fineclouds/spaceghostq1/update/a;I)I
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/fineclouds/spaceghostq1/update/a;->f:I

    return p1
.end method

.method static synthetic a(Lcom/fineclouds/spaceghostq1/update/a;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/update/a;->j:Landroid/os/Handler;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/fineclouds/spaceghostq1/update/a;
    .locals 2

    .prologue
    .line 116
    const-class v1, Lcom/fineclouds/spaceghostq1/update/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/fineclouds/spaceghostq1/update/a;->d:Lcom/fineclouds/spaceghostq1/update/a;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/fineclouds/spaceghostq1/update/a;

    invoke-direct {v0, p0}, Lcom/fineclouds/spaceghostq1/update/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/fineclouds/spaceghostq1/update/a;->d:Lcom/fineclouds/spaceghostq1/update/a;

    .line 119
    :cond_0
    sget-object v0, Lcom/fineclouds/spaceghostq1/update/a;->d:Lcom/fineclouds/spaceghostq1/update/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 216
    iget v0, p0, Lcom/fineclouds/spaceghostq1/update/a;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 218
    const-wide/32 v0, -0x3b9ac9ff

    invoke-static {v0, v1}, Lcom/fineclouds/spaceghostq1/update/c;->a(J)V

    .line 223
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/fineclouds/spaceghostq1/update/a;->f:I

    .line 224
    return-void

    .line 219
    :cond_1
    iget v0, p0, Lcom/fineclouds/spaceghostq1/update/a;->f:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 338
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 353
    :goto_0
    return-void

    .line 341
    :cond_0
    new-instance v0, Landroid/support/v7/app/c$a;

    invoke-direct {v0, p1}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    .line 342
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->a(Z)Landroid/support/v7/app/c$a;

    move-result-object v0

    .line 344
    invoke-virtual {v0, p2}, Landroid/support/v7/app/c$a;->b(Ljava/lang/CharSequence;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/fineclouds/spaceghostq1/update/a$6;

    invoke-direct {v2, p0}, Lcom/fineclouds/spaceghostq1/update/a$6;-><init>(Lcom/fineclouds/spaceghostq1/update/a;)V

    .line 345
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->b()Landroid/support/v7/app/c;

    move-result-object v0

    .line 352
    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/fineclouds/spaceghostq1/update/a;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/fineclouds/spaceghostq1/update/a;->b(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic a(Lcom/fineclouds/spaceghostq1/update/a;Lfineclouds/com/mylibrary/a/c/f;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/fineclouds/spaceghostq1/update/a;->b(Lfineclouds/com/mylibrary/a/c/f;)V

    return-void
.end method

.method static synthetic a(Lcom/fineclouds/spaceghostq1/update/a;Lfineclouds/com/mylibrary/a/c/f;Z)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/fineclouds/spaceghostq1/update/a;->a(Lfineclouds/com/mylibrary/a/c/f;Z)V

    return-void
.end method

.method private a(Lfineclouds/com/mylibrary/a/c/f;Z)V
    .locals 3

    .prologue
    .line 268
    const-string v0, "CheckVersionUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doNormalUpdate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lfineclouds/com/mylibrary/a/c/f;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lfineclouds/com/mylibrary/a/c/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lfineclouds/com/mylibrary/a/c/f;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/update/a;->j:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 271
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/update/a;->j:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 272
    invoke-virtual {p0, p1}, Lcom/fineclouds/spaceghostq1/update/a;->a(Lfineclouds/com/mylibrary/a/c/f;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 273
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/update/a;->e:Lcom/fineclouds/spaceghostq1/update/a$a;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/update/a;->e:Lcom/fineclouds/spaceghostq1/update/a$a;

    invoke-interface {v0}, Lcom/fineclouds/spaceghostq1/update/a$a;->a()V

    .line 276
    :cond_0
    const-string v0, "CheckVersionUpdate"

    const-string v1, "doNormalUpdate, not found new version! "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :goto_0
    return-void

    .line 278
    :cond_1
    iget v0, p0, Lcom/fineclouds/spaceghostq1/update/a;->f:I

    if-eqz v0, :cond_2

    .line 279
    const-string v0, "CheckVersionUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doNormalUpdate, state error! mUpdateState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fineclouds/spaceghostq1/update/a;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/update/a;->e:Lcom/fineclouds/spaceghostq1/update/a$a;

    if-eqz v0, :cond_3

    .line 284
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/update/a;->e:Lcom/fineclouds/spaceghostq1/update/a$a;

    invoke-interface {v0, p1}, Lcom/fineclouds/spaceghostq1/update/a$a;->a(Lfineclouds/com/mylibrary/a/c/f;)V

    .line 285
    const-string v0, "CheckVersionUpdate"

    const-string v1, "mUpdateListener.onApkUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 287
    :cond_3
    const-string v0, "CheckVersionUpdate"

    const-string v1, "doNormalUpdate, mUpdateListener null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic b(Lcom/fineclouds/spaceghostq1/update/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/update/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/fineclouds/spaceghostq1/update/a;Lfineclouds/com/mylibrary/a/c/f;)Lfineclouds/com/mylibrary/a/c/f;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/update/a;->h:Lfineclouds/com/mylibrary/a/c/f;

    return-object p1
.end method

.method private b()V
    .locals 2

    .prologue
    .line 441
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 442
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "DualSpace.apk"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 443
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 444
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 447
    :cond_0
    return-void
.end method

.method private b(Landroid/net/Uri;)V
    .locals 5

    .prologue
    const/16 v3, 0x3e9

    const/4 v4, 0x0

    .line 450
    const-string v0, "CheckVersionUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "installApk, mDownloadType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fineclouds/spaceghostq1/update/a;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget v0, p0, Lcom/fineclouds/spaceghostq1/update/a;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 452
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 453
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 454
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    const-string v1, "application/vnd.android.package-archive"

    .line 456
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 457
    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/update/a;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 480
    :cond_0
    :goto_0
    iput v4, p0, Lcom/fineclouds/spaceghostq1/update/a;->g:I

    .line 481
    iput v4, p0, Lcom/fineclouds/spaceghostq1/update/a;->f:I

    .line 482
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/update/a;->h:Lfineclouds/com/mylibrary/a/c/f;

    .line 483
    return-void

    .line 458
    :cond_1
    iget v0, p0, Lcom/fineclouds/spaceghostq1/update/a;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 459
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/update/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/update/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 460
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/update/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/update/a;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 461
    const-string v0, "CheckVersionUpdate"

    const-string v1, "installApk background"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 464
    :cond_2
    invoke-direct {p0}, Lcom/fineclouds/spaceghostq1/update/a;->b()V

    .line 465
    const-string v0, "CheckVersionUpdate"

    const-string v1, "installApk error! forbidden "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 468
    :cond_3
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/update/a;->h:Lfineclouds/com/mylibrary/a/c/f;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/update/a;->j:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 470
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 471
    iput v3, v0, Landroid/os/Message;->what:I

    .line 472
    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/update/a;->h:Lfineclouds/com/mylibrary/a/c/f;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 473
    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/update/a;->j:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 475
    invoke-direct {p0}, Lcom/fineclouds/spaceghostq1/update/a;->b()V

    goto :goto_0
.end method

.method private b(Lfineclouds/com/mylibrary/a/c/f;)V
    .locals 3

    .prologue
    .line 227
    const-string v0, "CheckVersionUpdate"

    const-string v1, "doAutoUpdate start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/update/a;->j:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 229
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/update/a;->j:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 232
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/fineclouds/spaceghostq1/update/a;->a(Lfineclouds/com/mylibrary/a/c/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/update/a;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lfineclouds/com/mylibrary/a/c/f;->a(Landroid/content/Context;Lfineclouds/com/mylibrary/a/c/f;)V

    .line 236
    :cond_0
    if-nez p1, :cond_1

    .line 237
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/update/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lfineclouds/com/mylibrary/a/c/f;->a(Landroid/content/Context;)Lfineclouds/com/mylibrary/a/c/f;

    move-result-object p1

    .line 239
    :cond_1
    if-nez p1, :cond_2

    .line 240
    const-string v0, "CheckVersionUpdate"

    const-string v1, "autoCheck2 null info"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :goto_0
    return-void

    .line 245
    :cond_2
    invoke-virtual {p0, p1}, Lcom/fineclouds/spaceghostq1/update/a;->a(Lfineclouds/com/mylibrary/a/c/f;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 246
    const-string v0, "CheckVersionUpdate"

    const-string v1, "doAutoUpdate, not found new version"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 248
    :cond_3
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/update/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/update/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 250
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/fineclouds/spaceghostq1/update/a;->a(Lfineclouds/com/mylibrary/a/c/f;Z)V

    goto :goto_0

    .line 252
    :cond_4
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/update/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/update/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 253
    const-string v0, "CheckVersionUpdate"

    const-string v1, "autoCheck error! not Wifi"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 255
    :cond_5
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/update/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/update/a;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 256
    const-string v0, "CheckVersionUpdate"

    const-string v1, "doAutoUpdate, not allowed install"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 258
    :cond_6
    iget v0, p0, Lcom/fineclouds/spaceghostq1/update/a;->f:I

    if-eqz v0, :cond_7

    .line 259
    const-string v0, "CheckVersionUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doAutoUpdate, state error! mUpdateState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fineclouds/spaceghostq1/update/a;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 263
    :cond_7
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/fineclouds/spaceghostq1/update/a;->a(Lfineclouds/com/mylibrary/a/c/f;I)V

    .line 264
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/update/a;->h:Lfineclouds/com/mylibrary/a/c/f;

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 376
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 377
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 378
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 382
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 399
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 400
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 401
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 402
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 403
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 408
    :goto_0
    return v0

    .line 407
    :cond_0
    const-string v0, "CheckVersionUpdate"

    const-string v1, ".....app show"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 408
    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x1

    return v0
.end method

.method private static f(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 356
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 358
    if-nez v0, :cond_0

    move v0, v1

    .line 372
    :goto_0
    return v0

    .line 361
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 363
    if-eqz v2, :cond_2

    array-length v0, v2

    if-lez v0, :cond_2

    .line 364
    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 365
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_1

    .line 366
    const/4 v0, 0x1

    goto :goto_0

    .line 364
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 372
    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lfineclouds/com/mylibrary/a/c/f;)V
    .locals 5

    .prologue
    .line 301
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 334
    :goto_0
    return-void

    .line 305
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "V"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lfineclouds/com/mylibrary/a/c/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 306
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060048

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 308
    new-instance v1, Landroid/support/v7/app/c$a;

    invoke-direct {v1, p1}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    .line 309
    invoke-virtual {v1, v0}, Landroid/support/v7/app/c$a;->a(Ljava/lang/CharSequence;)Landroid/support/v7/app/c$a;

    .line 310
    invoke-virtual {p2}, Lfineclouds/com/mylibrary/a/c/f;->e()Ljava/lang/String;

    move-result-object v0

    .line 311
    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 312
    invoke-virtual {v1, v0}, Landroid/support/v7/app/c$a;->b(Ljava/lang/CharSequence;)Landroid/support/v7/app/c$a;

    .line 314
    :cond_1
    const v0, 0x7f060047

    new-instance v2, Lcom/fineclouds/spaceghostq1/update/a$4;

    invoke-direct {v2, p0, p2}, Lcom/fineclouds/spaceghostq1/update/a$4;-><init>(Lcom/fineclouds/spaceghostq1/update/a;Lfineclouds/com/mylibrary/a/c/f;)V

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/app/c$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    .line 322
    const v0, 0x7f060046

    new-instance v2, Lcom/fineclouds/spaceghostq1/update/a$5;

    invoke-direct {v2, p0, p2}, Lcom/fineclouds/spaceghostq1/update/a$5;-><init>(Lcom/fineclouds/spaceghostq1/update/a;Lfineclouds/com/mylibrary/a/c/f;)V

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/app/c$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    .line 332
    invoke-virtual {v1}, Landroid/support/v7/app/c$a;->c()Landroid/support/v7/app/c;

    .line 333
    const/4 v0, 0x3

    iput v0, p0, Lcom/fineclouds/spaceghostq1/update/a;->f:I

    goto :goto_0
.end method

.method public a(Landroid/net/Uri;)V
    .locals 2

    .prologue
    const/16 v1, 0x3ea

    .line 141
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/update/a;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/update/a;->j:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 145
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 146
    iput v1, v0, Landroid/os/Message;->what:I

    .line 147
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 148
    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/update/a;->j:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public a(Lcom/fineclouds/spaceghostq1/update/a$a;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/update/a;->e:Lcom/fineclouds/spaceghostq1/update/a$a;

    .line 138
    return-void
.end method

.method public a(Lfineclouds/com/mylibrary/a/c/f;I)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 416
    invoke-virtual {p1}, Lfineclouds/com/mylibrary/a/c/f;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 417
    const-string v0, "CheckVersionUpdate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadApk, uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/update/a;->a:Landroid/content/Context;

    const-string v2, "download"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 419
    new-instance v2, Landroid/app/DownloadManager$Request;

    invoke-direct {v2, v1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 421
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    .line 422
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    const-string v3, "DualSpace.apk"

    invoke-virtual {v2, v1, v3}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 424
    if-ne p2, v5, :cond_0

    .line 425
    invoke-virtual {v2, v5}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    .line 426
    invoke-virtual {v2, v5}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 431
    :goto_0
    invoke-direct {p0}, Lcom/fineclouds/spaceghostq1/update/a;->b()V

    .line 432
    invoke-virtual {v0, v2}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v0

    .line 433
    const-string v2, "CheckVersionUpdate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloadApk, downloadId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-static {v0, v1}, Lcom/fineclouds/spaceghostq1/update/c;->a(J)V

    .line 436
    iput v5, p0, Lcom/fineclouds/spaceghostq1/update/a;->f:I

    .line 437
    iput p2, p0, Lcom/fineclouds/spaceghostq1/update/a;->g:I

    .line 438
    return-void

    .line 428
    :cond_0
    const/4 v1, 0x3

    invoke-virtual {v2, v1}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    goto :goto_0
.end method

.method public a(Lfineclouds/com/mylibrary/a/c/f;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 196
    const-string v0, "CheckVersionUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoCheck2 start, reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/update/a;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 201
    :cond_0
    sget-object v1, Lcom/fineclouds/spaceghostq1/update/a;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/update/a;->j:Landroid/os/Handler;

    const/16 v2, 0x3eb

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 203
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 204
    const/16 v2, 0x3eb

    iput v2, v0, Landroid/os/Message;->what:I

    .line 205
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 206
    iget-object v2, p0, Lcom/fineclouds/spaceghostq1/update/a;->j:Landroid/os/Handler;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 209
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/fineclouds/spaceghostq1/update/a;->a(Lfineclouds/com/mylibrary/a/c/f;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/update/a;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lfineclouds/com/mylibrary/a/c/f;->a(Landroid/content/Context;Lfineclouds/com/mylibrary/a/c/f;)V

    .line 212
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lfineclouds/com/mylibrary/a/c/f;)Z
    .locals 3

    .prologue
    .line 386
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/update/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lfineclouds/com/mylibrary/a/c/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    const-string v0, "CheckVersionUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasNewVersion, mCurVersionCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fineclouds/spaceghostq1/update/a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lfineclouds/com/mylibrary/a/c/f;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget v0, p0, Lcom/fineclouds/spaceghostq1/update/a;->c:I

    invoke-virtual {p1}, Lfineclouds/com/mylibrary/a/c/f;->b()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 389
    const/4 v0, 0x1

    .line 395
    :goto_0
    return v0

    .line 392
    :cond_0
    const-string v0, "CheckVersionUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasNewVersion error! packge name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lfineclouds/com/mylibrary/a/c/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", my:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fineclouds/spaceghostq1/update/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const-string v0, "CheckVersionUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasNewVersion error! packge name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lfineclouds/com/mylibrary/a/c/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " packge version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lfineclouds/com/mylibrary/a/c/f;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lfineclouds/com/mylibrary/a/c/f;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 152
    const-string v1, "CheckVersionUpdate"

    const-string v2, "check start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/update/a;->a:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 171
    :goto_0
    return v0

    .line 157
    :cond_0
    sget-object v1, Lcom/fineclouds/spaceghostq1/update/a;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 158
    :try_start_0
    invoke-static {p1}, Lcom/fineclouds/spaceghostq1/update/a;->f(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 159
    const v2, 0x7f060043

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/fineclouds/spaceghostq1/update/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 160
    monitor-exit v1

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 163
    :cond_1
    :try_start_1
    new-instance v0, Lfineclouds/com/mylibrary/a/e/b;

    iget-object v2, p0, Lcom/fineclouds/spaceghostq1/update/a;->l:Lfineclouds/com/mylibrary/a/e/b$b;

    invoke-direct {v0, p1, v2}, Lfineclouds/com/mylibrary/a/e/b;-><init>(Landroid/content/Context;Lfineclouds/com/mylibrary/a/e/b$b;)V

    .line 164
    invoke-virtual {v0}, Lfineclouds/com/mylibrary/a/e/b;->a()V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/update/a;->h:Lfineclouds/com/mylibrary/a/c/f;

    .line 167
    iget v0, p0, Lcom/fineclouds/spaceghostq1/update/a;->f:I

    if-eqz v0, :cond_2

    .line 168
    invoke-direct {p0}, Lcom/fineclouds/spaceghostq1/update/a;->a()V

    .line 171
    :cond_2
    const/4 v0, 0x1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

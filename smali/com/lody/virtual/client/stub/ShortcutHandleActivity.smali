.class public Lcom/lody/virtual/client/stub/ShortcutHandleActivity;
.super Landroid/app/Activity;
.source "ShortcutHandleActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getTargetIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/lody/virtual/client/stub/ShortcutHandleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    :try_start_0
    const-string v0, "_VA_|_intent_"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 45
    const-string v2, "_VA_|_uri_"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 46
    if-eqz v1, :cond_1

    .line 48
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 59
    :cond_0
    :goto_0
    return-object v0

    .line 52
    :cond_1
    if-nez v0, :cond_0

    .line 59
    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    goto :goto_1

    .line 56
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/lody/virtual/client/stub/ShortcutHandleActivity;->finish()V

    .line 23
    invoke-virtual {p0}, Lcom/lody/virtual/client/stub/ShortcutHandleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    const-string v1, "_VA_|_user_id_"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 26
    invoke-direct {p0}, Lcom/lody/virtual/client/stub/ShortcutHandleActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-lt v2, v3, :cond_0

    .line 29
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 32
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/lody/virtual/client/local/VActivityManager;->get()Lcom/lody/virtual/client/local/VActivityManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/lody/virtual/client/local/VActivityManager;->startActivity(Landroid/content/Intent;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :cond_1
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.class public Lcom/lody/virtual/server/accounts/AppAccountParser;
.super Ljava/lang/Object;
.source "AppAccountParser.java"

# interfaces
.implements Lcom/lody/virtual/server/accounts/IAccountParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getParser(Landroid/content/Context;Landroid/content/pm/ServiceInfo;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 2

    .prologue
    .line 18
    iget-object v0, p2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 19
    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 23
    :try_start_0
    iget-object v1, p2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1, v1}, Lcom/lody/virtual/server/accounts/AppAccountParser;->getResources(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 29
    :goto_0
    return-object v0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 29
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResources(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 34
    invoke-static {}, Lcom/lody/virtual/server/pm/VAppManagerService;->get()Lcom/lody/virtual/server/pm/VAppManagerService;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lody/virtual/server/pm/VAppManagerService;->findAppInfo(Ljava/lang/String;)Lcom/lody/virtual/helper/proto/AppSetting;

    move-result-object v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    sget-object v0, Lmirror/android/content/res/AssetManager;->ctor:Lmirror/RefConstructor;

    invoke-virtual {v0}, Lmirror/RefConstructor;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    .line 37
    sget-object v2, Lmirror/android/content/res/AssetManager;->addAssetPath:Lmirror/RefMethod;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v1, v1, Lcom/lody/virtual/helper/proto/AppSetting;->apkPath:Ljava/lang/String;

    aput-object v1, v3, v4

    invoke-virtual {v2, v0, v3}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 39
    new-instance v1, Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v0, v3, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    move-object v0, v1

    .line 41
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

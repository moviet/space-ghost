.class public Lcom/lody/virtual/helper/utils/OSUtils;
.super Ljava/lang/Object;
.source "OSUtils.java"


# static fields
.field private static final KEY_EMUI_VERSION_CODE:Ljava/lang/String; = "ro.build.version.emui"

.field private static final KEY_MIUI_INTERNAL_STORAGE:Ljava/lang/String; = "ro.miui.internal.storage"

.field private static final KEY_MIUI_VERSION_CODE:Ljava/lang/String; = "ro.miui.ui.version.code"

.field private static final KEY_MIUI_VERSION_NAME:Ljava/lang/String; = "ro.miui.ui.version.name"

.field private static sOSUtils:Lcom/lody/virtual/helper/utils/OSUtils;


# instance fields
.field private emui:Z

.field private flyme:Z

.field private miui:Z

.field private miuiVersion:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    :try_start_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 31
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v5

    const-string v6, "build.prop"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 35
    :goto_0
    if-eqz v3, :cond_2

    .line 36
    const-string v0, "ro.build.version.emui"

    invoke-virtual {v3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/lody/virtual/helper/utils/OSUtils;->emui:Z

    .line 37
    const-string v0, "ro.miui.ui.version.code"

    invoke-virtual {v3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/helper/utils/OSUtils;->miuiVersion:Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/OSUtils;->miuiVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ro.miui.ui.version.name"

    invoke-virtual {v3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ro.miui.internal.storage"

    .line 39
    invoke-virtual {v3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    iput-boolean v2, p0, Lcom/lody/virtual/helper/utils/OSUtils;->miui:Z

    .line 41
    :cond_2
    invoke-direct {p0}, Lcom/lody/virtual/helper/utils/OSUtils;->hasFlyme()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lody/virtual/helper/utils/OSUtils;->flyme:Z

    .line 42
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_0

    :cond_3
    move v0, v2

    .line 36
    goto :goto_1
.end method

.method public static getInstance()Lcom/lody/virtual/helper/utils/OSUtils;
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lcom/lody/virtual/helper/utils/OSUtils;->sOSUtils:Lcom/lody/virtual/helper/utils/OSUtils;

    if-nez v0, :cond_1

    .line 46
    const-class v1, Lcom/lody/virtual/helper/utils/OSUtils;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v0, Lcom/lody/virtual/helper/utils/OSUtils;->sOSUtils:Lcom/lody/virtual/helper/utils/OSUtils;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/lody/virtual/helper/utils/OSUtils;

    invoke-direct {v0}, Lcom/lody/virtual/helper/utils/OSUtils;-><init>()V

    sput-object v0, Lcom/lody/virtual/helper/utils/OSUtils;->sOSUtils:Lcom/lody/virtual/helper/utils/OSUtils;

    .line 50
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_1
    sget-object v0, Lcom/lody/virtual/helper/utils/OSUtils;->sOSUtils:Lcom/lody/virtual/helper/utils/OSUtils;

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private hasFlyme()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 73
    :try_start_0
    const-class v1, Landroid/os/Build;

    const-string v2, "hasSmartBar"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 74
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 76
    :cond_0
    :goto_0
    return v0

    .line 75
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public getMiuiVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/OSUtils;->miuiVersion:Ljava/lang/String;

    return-object v0
.end method

.method public isEmui()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/lody/virtual/helper/utils/OSUtils;->emui:Z

    return v0
.end method

.method public isFlyme()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/lody/virtual/helper/utils/OSUtils;->flyme:Z

    return v0
.end method

.method public isMiui()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/lody/virtual/helper/utils/OSUtils;->miui:Z

    return v0
.end method

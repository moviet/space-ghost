.class public Lcom/lody/virtual/client/fixer/ComponentFixer;
.super Ljava/lang/Object;
.source "ComponentFixer.java"


# static fields
.field private static final sSharedLibCache:Lcom/lody/virtual/helper/utils/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lody/virtual/helper/utils/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/lody/virtual/helper/utils/collection/ArrayMap;

    invoke-direct {v0}, Lcom/lody/virtual/helper/utils/collection/ArrayMap;-><init>()V

    sput-object v0, Lcom/lody/virtual/client/fixer/ComponentFixer;->sSharedLibCache:Lcom/lody/virtual/helper/utils/collection/ArrayMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fixApplicationInfo(Lcom/lody/virtual/helper/proto/AppSetting;Landroid/content/pm/ApplicationInfo;I)V
    .locals 6

    .prologue
    const/16 v4, 0x15

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 27
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/helper/proto/AppSetting;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/lody/virtual/client/fixer/ComponentFixer;->fixComponentClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lcom/lody/virtual/helper/proto/AppSetting;->apkPath:Ljava/lang/String;

    iput-object v0, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lcom/lody/virtual/helper/proto/AppSetting;->apkPath:Ljava/lang/String;

    iput-object v0, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_1

    .line 34
    new-array v0, v3, [Ljava/lang/String;

    iget-object v1, p0, Lcom/lody/virtual/helper/proto/AppSetting;->apkPath:Ljava/lang/String;

    aput-object v1, v0, v2

    iput-object v0, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 35
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    iput-object v0, p1, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    .line 37
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_2

    .line 38
    sget-object v0, Lmirror/android/content/pm/ApplicationInfoL;->scanSourceDir:Lmirror/RefObject;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    sget-object v0, Lmirror/android/content/pm/ApplicationInfoL;->scanPublicSourceDir:Lmirror/RefObject;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    :cond_2
    iput-boolean v3, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 42
    iget-object v0, p0, Lcom/lody/virtual/helper/proto/AppSetting;->libPath:Ljava/lang/String;

    iput-object v0, p1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lcom/lody/virtual/helper/proto/AppSetting;->packageName:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/lody/virtual/os/VEnvironment;->getDataUserPackageDirectory(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 44
    iget v0, p0, Lcom/lody/virtual/helper/proto/AppSetting;->appId:I

    iput v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 45
    iget-boolean v0, p0, Lcom/lody/virtual/helper/proto/AppSetting;->dependSystem:Z

    if-eqz v0, :cond_4

    .line 46
    sget-object v0, Lcom/lody/virtual/client/fixer/ComponentFixer;->sSharedLibCache:Lcom/lody/virtual/helper/utils/collection/ArrayMap;

    iget-object v1, p0, Lcom/lody/virtual/helper/proto/AppSetting;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lody/virtual/helper/utils/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 47
    if-nez v0, :cond_3

    .line 48
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lody/virtual/client/core/VirtualCore;->getUnHookPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 50
    :try_start_0
    iget-object v2, p0, Lcom/lody/virtual/helper/proto/AppSetting;->packageName:Ljava/lang/String;

    const/16 v3, 0x400

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 51
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    if-nez v1, :cond_5

    const/4 v0, 0x0

    :try_start_1
    new-array v0, v0, [Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 53
    :goto_0
    :try_start_2
    sget-object v1, Lcom/lody/virtual/client/fixer/ComponentFixer;->sSharedLibCache:Lcom/lody/virtual/helper/utils/collection/ArrayMap;

    iget-object v2, p0, Lcom/lody/virtual/helper/proto/AppSetting;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/lody/virtual/helper/utils/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 58
    :cond_3
    :goto_1
    iput-object v0, p1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 60
    :cond_4
    return-void

    .line 54
    :catch_0
    move-exception v1

    .line 55
    :goto_2
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 54
    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method private static fixComponentClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    if-eqz p1, :cond_1

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 69
    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public static fixComponentInfo(Lcom/lody/virtual/helper/proto/AppSetting;Landroid/content/pm/ComponentInfo;I)V
    .locals 2

    .prologue
    .line 73
    if-eqz p1, :cond_1

    .line 74
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iput-object v0, p1, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    .line 77
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0, v0, p2}, Lcom/lody/virtual/client/fixer/ComponentFixer;->fixApplicationInfo(Lcom/lody/virtual/helper/proto/AppSetting;Landroid/content/pm/ApplicationInfo;I)V

    .line 78
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/lody/virtual/client/fixer/ComponentFixer;->fixComponentClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    .line 79
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 80
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iput-object v0, p1, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    .line 83
    :cond_1
    return-void
.end method

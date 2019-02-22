.class public Lcom/lody/virtual/os/VEnvironment;
.super Ljava/lang/Object;
.source "VEnvironment.java"


# static fields
.field private static final DATA_DIRECTORY:Ljava/io/File;

.field private static final ROOT:Ljava/io/File;

.field private static final TAG:Ljava/lang/String;

.field private static final USER_DIRECTORY:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const-class v0, Lcom/lody/virtual/os/VEnvironment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/os/VEnvironment;->TAG:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    new-instance v1, Ljava/io/File;

    const-string v2, "virtual"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/lody/virtual/os/VEnvironment;->ensureCreated(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/os/VEnvironment;->ROOT:Ljava/io/File;

    .line 27
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/lody/virtual/os/VEnvironment;->ROOT:Ljava/io/File;

    const-string v2, "data"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lody/virtual/os/VEnvironment;->ensureCreated(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/os/VEnvironment;->DATA_DIRECTORY:Ljava/io/File;

    .line 29
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/lody/virtual/os/VEnvironment;->DATA_DIRECTORY:Ljava/io/File;

    const-string v2, "user"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lody/virtual/os/VEnvironment;->ensureCreated(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/os/VEnvironment;->USER_DIRECTORY:Ljava/io/File;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ensureCreated(Ljava/io/File;)Ljava/io/File;
    .locals 5

    .prologue
    .line 38
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    sget-object v0, Lcom/lody/virtual/os/VEnvironment;->TAG:Ljava/lang/String;

    const-string v1, "Unable to create the directory: %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    :cond_0
    return-object p0
.end method

.method public static getAccountFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 58
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "account-list.ini"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getDataAppDirectory()Ljava/io/File;
    .locals 3

    .prologue
    .line 50
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "app"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lody/virtual/os/VEnvironment;->ensureCreated(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getDataAppPackageDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->getDataAppDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lody/virtual/os/VEnvironment;->ensureCreated(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getDataDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/lody/virtual/os/VEnvironment;->DATA_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getDataUserPackageDirectory(ILjava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/lody/virtual/os/VEnvironment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lody/virtual/os/VEnvironment;->ensureCreated(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemSecureDirectory()Ljava/io/File;
    .locals 3

    .prologue
    .line 75
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->getDataAppDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lody/virtual/os/VEnvironment;->ensureCreated(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getUidListFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 54
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "uid-list.ini"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getUserSystemDirectory(I)Ljava/io/File;
    .locals 3

    .prologue
    .line 67
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/lody/virtual/os/VEnvironment;->USER_DIRECTORY:Ljava/io/File;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

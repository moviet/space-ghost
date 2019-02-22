.class public Lcom/lody/virtual/server/am/UidSystem;
.super Ljava/lang/Object;
.source "UidSystem.java"


# instance fields
.field private mFreeUid:I

.field private final mSharedUserIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/am/UidSystem;->mSharedUserIdMap:Ljava/util/HashMap;

    .line 24
    const/16 v0, 0x2710

    iput v0, p0, Lcom/lody/virtual/server/am/UidSystem;->mFreeUid:I

    return-void
.end method


# virtual methods
.method public getOrCreateUid(Landroid/content/pm/PackageParser$Package;)I
    .locals 4

    .prologue
    .line 56
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    .line 57
    if-nez v0, :cond_1

    .line 58
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v1, v0

    .line 60
    :goto_0
    iget-object v0, p0, Lcom/lody/virtual/server/am/UidSystem;->mSharedUserIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 61
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 67
    :goto_1
    return v0

    .line 64
    :cond_0
    iget v0, p0, Lcom/lody/virtual/server/am/UidSystem;->mFreeUid:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lody/virtual/server/am/UidSystem;->mFreeUid:I

    .line 65
    iget-object v2, p0, Lcom/lody/virtual/server/am/UidSystem;->mSharedUserIdMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-virtual {p0}, Lcom/lody/virtual/server/am/UidSystem;->save()V

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public initUidList()V
    .locals 3

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lody/virtual/server/am/UidSystem;->mSharedUserIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 29
    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->getUidListFile()Ljava/io/File;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    :goto_0
    return-void

    .line 34
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 35
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/server/am/UidSystem;->mFreeUid:I

    .line 37
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 38
    iget-object v2, p0, Lcom/lody/virtual/server/am/UidSystem;->mSharedUserIdMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 39
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public save()V
    .locals 3

    .prologue
    .line 47
    :try_start_0
    new-instance v0, Ljava/io/ObjectOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->getUidListFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 48
    iget v1, p0, Lcom/lody/virtual/server/am/UidSystem;->mFreeUid:I

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 49
    iget-object v1, p0, Lcom/lody/virtual/server/am/UidSystem;->mSharedUserIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

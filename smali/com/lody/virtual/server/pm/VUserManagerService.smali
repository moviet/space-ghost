.class public Lcom/lody/virtual/server/pm/VUserManagerService;
.super Lcom/lody/virtual/service/IUserManager$Stub;
.source "VUserManagerService.java"


# static fields
.field private static final ATTR_CREATION_TIME:Ljava/lang/String; = "created"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_ICON_PATH:Ljava/lang/String; = "icon"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_LAST_LOGGED_IN_TIME:Ljava/lang/String; = "lastLoggedIn"

.field private static final ATTR_NEXT_SERIAL_NO:Ljava/lang/String; = "nextSerialNumber"

.field private static final ATTR_PARTIAL:Ljava/lang/String; = "partial"

.field private static final ATTR_SERIAL_NO:Ljava/lang/String; = "serialNumber"

.field private static final ATTR_USER_VERSION:Ljava/lang/String; = "version"

.field private static final DBG:Z = false

.field private static final EPOCH_PLUS_30_YEARS:J = 0xdc46c32800L

.field private static final LOG_TAG:Ljava/lang/String; = "VUserManagerService"

.field private static final MIN_USER_ID:I = 0x1

.field private static final TAG_NAME:Ljava/lang/String; = "name"

.field private static final TAG_USER:Ljava/lang/String; = "user"

.field private static final TAG_USERS:Ljava/lang/String; = "users"

.field private static final USER_INFO_DIR:Ljava/lang/String;

.field private static final USER_LIST_FILENAME:Ljava/lang/String; = "userlist.xml"

.field private static final USER_PHOTO_FILENAME:Ljava/lang/String; = "photo.png"

.field private static final USER_VERSION:I = 0x1

.field private static sInstance:Lcom/lody/virtual/server/pm/VUserManagerService;


# instance fields
.field private final mBaseUserPath:Ljava/io/File;

.field private final mContext:Landroid/content/Context;

.field private mGuestEnabled:Z

.field private final mInstallLock:Ljava/lang/Object;

.field private mNextSerialNumber:I

.field private mNextUserId:I

.field private final mPackagesLock:Ljava/lang/Object;

.field private final mPm:Lcom/lody/virtual/server/pm/VPackageManagerService;

.field private mRemovingUserIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUserIds:[I

.field private final mUserListFile:Ljava/io/File;

.field private mUserVersion:I

.field private mUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/lody/virtual/os/VUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsersDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "users"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/server/pm/VUserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/lody/virtual/server/pm/VPackageManagerService;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 114
    .line 115
    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    .line 116
    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "user"

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 114
    invoke-direct/range {v0 .. v6}, Lcom/lody/virtual/server/pm/VUserManagerService;-><init>(Landroid/content/Context;Lcom/lody/virtual/server/pm/VPackageManagerService;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;)V

    .line 117
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/lody/virtual/server/pm/VPackageManagerService;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-direct {p0}, Lcom/lody/virtual/service/IUserManager$Stub;-><init>()V

    .line 88
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    .line 89
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mRemovingUserIds:Ljava/util/HashSet;

    .line 96
    const/4 v0, 0x1

    iput v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mNextUserId:I

    .line 97
    iput v1, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUserVersion:I

    .line 125
    iput-object p1, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mContext:Landroid/content/Context;

    .line 126
    iput-object p2, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mPm:Lcom/lody/virtual/server/pm/VPackageManagerService;

    .line 127
    iput-object p3, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mInstallLock:Ljava/lang/Object;

    .line 128
    iput-object p4, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mPackagesLock:Ljava/lang/Object;

    .line 129
    iget-object v3, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v3

    .line 130
    :try_start_0
    iget-object v4, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 131
    :try_start_1
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/lody/virtual/server/pm/VUserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    invoke-direct {v0, p5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsersDir:Ljava/io/File;

    .line 132
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 134
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsersDir:Ljava/io/File;

    const-string v5, "0"

    invoke-direct {v0, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 136
    iput-object p6, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mBaseUserPath:Ljava/io/File;

    .line 141
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsersDir:Ljava/io/File;

    const-string v5, "userlist.xml"

    invoke-direct {v0, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUserListFile:Ljava/io/File;

    .line 142
    invoke-direct {p0}, Lcom/lody/virtual/server/pm/VUserManagerService;->readUserListLocked()V

    .line 144
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    .line 145
    :goto_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/os/VUserInfo;

    .line 147
    iget-boolean v6, v0, Lcom/lody/virtual/os/VUserInfo;->partial:Z

    if-eqz v6, :cond_0

    if-eqz v2, :cond_0

    .line 148
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 151
    :cond_1
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 152
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/os/VUserInfo;

    .line 153
    const-string v2, "VUserManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing partially created user #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/lody/virtual/os/VUserInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v6, v7}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    iget v0, v0, Lcom/lody/virtual/os/VUserInfo;->id:I

    invoke-direct {p0, v0}, Lcom/lody/virtual/server/pm/VUserManagerService;->removeUserStateLocked(I)V

    .line 151
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 157
    :cond_2
    sput-object p0, Lcom/lody/virtual/server/pm/VUserManagerService;->sInstance:Lcom/lody/virtual/server/pm/VUserManagerService;

    .line 158
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 160
    return-void

    .line 158
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 159
    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method static synthetic access$000(Lcom/lody/virtual/server/pm/VUserManagerService;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mInstallLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lody/virtual/server/pm/VUserManagerService;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mPackagesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lody/virtual/server/pm/VUserManagerService;I)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/pm/VUserManagerService;->removeUserStateLocked(I)V

    return-void
.end method

.method private static checkManageUsersPermission(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 335
    invoke-static {}, Lcom/lody/virtual/os/VBinder;->getCallingUid()I

    move-result v0

    .line 336
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lody/virtual/client/core/VirtualCore;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 337
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You need MANAGE_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_0
    return-void
.end method

.method private fallbackToSingleUserLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 483
    new-instance v0, Lcom/lody/virtual/os/VUserInfo;

    iget-object v1, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mContext:Landroid/content/Context;

    .line 484
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lody/virtual/R$string;->owner_name:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x13

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/lody/virtual/os/VUserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 486
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 487
    const/4 v1, 0x1

    iput v1, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mNextSerialNumber:I

    .line 488
    invoke-direct {p0}, Lcom/lody/virtual/server/pm/VUserManagerService;->updateUserIdsLocked()V

    .line 490
    invoke-direct {p0}, Lcom/lody/virtual/server/pm/VUserManagerService;->writeUserListLocked()V

    .line 491
    invoke-direct {p0, v0}, Lcom/lody/virtual/server/pm/VUserManagerService;->writeUserLocked(Lcom/lody/virtual/os/VUserInfo;)V

    .line 492
    return-void
.end method

.method public static get()Lcom/lody/virtual/server/pm/VUserManagerService;
    .locals 2

    .prologue
    .line 102
    const-class v1, Lcom/lody/virtual/server/pm/VUserManagerService;

    monitor-enter v1

    .line 103
    :try_start_0
    sget-object v0, Lcom/lody/virtual/server/pm/VUserManagerService;->sInstance:Lcom/lody/virtual/server/pm/VUserManagerService;

    monitor-exit v1

    return-object v0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getNextAvailableIdLocked()I
    .locals 4

    .prologue
    .line 876
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 877
    :try_start_0
    iget v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mNextUserId:I

    .line 878
    :goto_0
    const v2, 0x7fffffff

    if-ge v0, v2, :cond_0

    .line 879
    iget-object v2, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mRemovingUserIds:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 884
    :cond_0
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mNextUserId:I

    .line 885
    monitor-exit v1

    return v0

    .line 882
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 886
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getUserInfoLocked(I)Lcom/lody/virtual/os/VUserInfo;
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/os/VUserInfo;

    .line 194
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/lody/virtual/os/VUserInfo;->partial:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mRemovingUserIds:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    const-string v0, "VUserManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserInfo: unknown user #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    const/4 v0, 0x0

    .line 198
    :cond_0
    return-object v0
.end method

.method private isUserLimitReachedLocked()Z
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 323
    invoke-static {}, Lcom/lody/virtual/os/VUserManager;->getMaxSupportedUsers()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 659
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 660
    if-nez v0, :cond_0

    .line 664
    :goto_0
    return p3

    .line 662
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    goto :goto_0

    .line 663
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 1

    .prologue
    .line 669
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 670
    if-nez v0, :cond_0

    .line 674
    :goto_0
    return-wide p3

    .line 672
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p3

    goto :goto_0

    .line 673
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private readUser(I)Lcom/lody/virtual/os/VUserInfo;
    .locals 17

    .prologue
    .line 585
    const/4 v11, 0x0

    .line 587
    const/4 v10, 0x0

    .line 588
    const/4 v5, 0x0

    .line 589
    const-wide/16 v8, 0x0

    .line 590
    const-wide/16 v6, 0x0

    .line 591
    const/4 v4, 0x0

    .line 593
    const/4 v2, 0x0

    .line 595
    :try_start_0
    new-instance v3, Lcom/lody/virtual/helper/utils/AtomicFile;

    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 596
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".xml"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v12}, Lcom/lody/virtual/helper/utils/AtomicFile;-><init>(Ljava/io/File;)V

    .line 597
    invoke-virtual {v3}, Lcom/lody/virtual/helper/utils/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 598
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v13

    .line 599
    const/4 v2, 0x0

    invoke-interface {v13, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 601
    :cond_0
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v12, 0x2

    if-eq v2, v12, :cond_1

    const/4 v12, 0x1

    if-ne v2, v12, :cond_0

    .line 606
    :cond_1
    const/4 v12, 0x2

    if-eq v2, v12, :cond_3

    .line 607
    const-string v2, "VUserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to read user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 608
    const/4 v2, 0x0

    .line 648
    if-eqz v3, :cond_2

    .line 650
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 655
    :cond_2
    :goto_0
    return-object v2

    .line 611
    :cond_3
    :try_start_3
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v12, "user"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 612
    const-string v2, "id"

    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2, v5}, Lcom/lody/virtual/server/pm/VUserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    .line 613
    move/from16 v0, p1

    if-eq v2, v0, :cond_4

    .line 614
    const-string v2, "VUserManagerService"

    const-string v4, "User id does not match the file name"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 615
    const/4 v2, 0x0

    .line 648
    if-eqz v3, :cond_2

    .line 650
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 651
    :catch_0
    move-exception v3

    goto :goto_0

    .line 617
    :cond_4
    :try_start_5
    const-string v2, "serialNumber"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v13, v2, v1}, Lcom/lody/virtual/server/pm/VUserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v11

    .line 618
    const-string v2, "flags"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2, v5}, Lcom/lody/virtual/server/pm/VUserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v12

    .line 619
    const/4 v2, 0x0

    const-string v5, "icon"

    invoke-interface {v13, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 620
    const-string v2, "created"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2, v6, v7}, Lcom/lody/virtual/server/pm/VUserManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    .line 621
    const-string v2, "lastLoggedIn"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2, v6, v7}, Lcom/lody/virtual/server/pm/VUserManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    .line 622
    const/4 v2, 0x0

    const-string v14, "partial"

    invoke-interface {v13, v2, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 623
    const-string v14, "true"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 624
    const/4 v2, 0x1

    .line 627
    :cond_5
    :goto_1
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v14, 0x2

    if-eq v4, v14, :cond_6

    const/4 v14, 0x1

    if-ne v4, v14, :cond_5

    .line 630
    :cond_6
    const/4 v14, 0x2

    if-ne v4, v14, :cond_9

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v14, "name"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 631
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 632
    const/4 v14, 0x4

    if-ne v4, v14, :cond_9

    .line 633
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    move-object v10, v4

    move v4, v2

    .line 638
    :goto_2
    new-instance v2, Lcom/lody/virtual/os/VUserInfo;

    move/from16 v0, p1

    invoke-direct {v2, v0, v10, v5, v12}, Lcom/lody/virtual/os/VUserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 639
    iput v11, v2, Lcom/lody/virtual/os/VUserInfo;->serialNumber:I

    .line 640
    iput-wide v8, v2, Lcom/lody/virtual/os/VUserInfo;->creationTime:J

    .line 641
    iput-wide v6, v2, Lcom/lody/virtual/os/VUserInfo;->lastLoggedInTime:J

    .line 642
    iput-boolean v4, v2, Lcom/lody/virtual/os/VUserInfo;->partial:Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 648
    if-eqz v3, :cond_2

    .line 650
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 651
    :catch_1
    move-exception v3

    goto/16 :goto_0

    .line 645
    :catch_2
    move-exception v3

    .line 648
    :goto_3
    if-eqz v2, :cond_7

    .line 650
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 655
    :cond_7
    :goto_4
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 646
    :catch_3
    move-exception v3

    move-object v3, v2

    .line 648
    :goto_5
    if-eqz v3, :cond_7

    .line 650
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_4

    .line 651
    :catch_4
    move-exception v2

    goto :goto_4

    .line 648
    :catchall_0
    move-exception v3

    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    :goto_6
    if-eqz v3, :cond_8

    .line 650
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 652
    :cond_8
    :goto_7
    throw v2

    .line 651
    :catch_5
    move-exception v3

    goto/16 :goto_0

    :catch_6
    move-exception v2

    goto :goto_4

    :catch_7
    move-exception v3

    goto :goto_7

    .line 648
    :catchall_1
    move-exception v2

    goto :goto_6

    .line 646
    :catch_8
    move-exception v2

    goto :goto_5

    .line 645
    :catch_9
    move-exception v2

    move-object v2, v3

    goto :goto_3

    :cond_9
    move v4, v2

    goto :goto_2

    :cond_a
    move v2, v4

    goto :goto_1

    :cond_b
    move v12, v11

    move/from16 v11, p1

    goto :goto_2
.end method

.method private readUserList()V
    .locals 2

    .prologue
    .line 382
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 383
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/server/pm/VUserManagerService;->readUserListLocked()V

    .line 384
    monitor-exit v1

    .line 385
    return-void

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private readUserListLocked()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 388
    iput-boolean v1, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mGuestEnabled:Z

    .line 389
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUserListFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 390
    invoke-direct {p0}, Lcom/lody/virtual/server/pm/VUserManagerService;->fallbackToSingleUserLocked()V

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    new-instance v1, Lcom/lody/virtual/helper/utils/AtomicFile;

    iget-object v2, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {v1, v2}, Lcom/lody/virtual/helper/utils/AtomicFile;-><init>(Ljava/io/File;)V

    .line 396
    :try_start_0
    invoke-virtual {v1}, Lcom/lody/virtual/helper/utils/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 397
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 398
    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 400
    :cond_2
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v6, :cond_3

    if-ne v2, v5, :cond_2

    .line 405
    :cond_3
    if-eq v2, v6, :cond_4

    .line 406
    const-string v1, "VUserManagerService"

    const-string v2, "Unable to read user list"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    invoke-direct {p0}, Lcom/lody/virtual/server/pm/VUserManagerService;->fallbackToSingleUserLocked()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 446
    if-eqz v0, :cond_0

    .line 448
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 449
    :catch_0
    move-exception v0

    .line 450
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 411
    :cond_4
    const/4 v2, -0x1

    :try_start_3
    iput v2, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mNextSerialNumber:I

    .line 412
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "users"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 413
    const/4 v2, 0x0

    const-string v3, "nextSerialNumber"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 414
    if-eqz v2, :cond_5

    .line 415
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mNextSerialNumber:I

    .line 417
    :cond_5
    const/4 v2, 0x0

    const-string v3, "version"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 418
    if-eqz v2, :cond_6

    .line 419
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUserVersion:I

    .line 423
    :cond_6
    :goto_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v5, :cond_9

    .line 424
    if-ne v2, v6, :cond_6

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "user"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 425
    const/4 v2, 0x0

    const-string v3, "id"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 426
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/lody/virtual/server/pm/VUserManagerService;->readUser(I)Lcom/lody/virtual/os/VUserInfo;

    move-result-object v2

    .line 428
    if-eqz v2, :cond_6

    .line 429
    iget-object v3, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    iget v4, v2, Lcom/lody/virtual/os/VUserInfo;->id:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 430
    invoke-virtual {v2}, Lcom/lody/virtual/os/VUserInfo;->isGuest()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 431
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mGuestEnabled:Z

    .line 433
    :cond_7
    iget v3, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mNextSerialNumber:I

    if-ltz v3, :cond_8

    iget v3, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mNextSerialNumber:I

    iget v4, v2, Lcom/lody/virtual/os/VUserInfo;->id:I

    if-gt v3, v4, :cond_6

    .line 434
    :cond_8
    iget v2, v2, Lcom/lody/virtual/os/VUserInfo;->id:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mNextSerialNumber:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 441
    :catch_1
    move-exception v1

    .line 442
    :try_start_4
    invoke-direct {p0}, Lcom/lody/virtual/server/pm/VUserManagerService;->fallbackToSingleUserLocked()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 446
    if-eqz v0, :cond_0

    .line 448
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 449
    :catch_2
    move-exception v0

    .line 450
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 439
    :cond_9
    :try_start_6
    invoke-direct {p0}, Lcom/lody/virtual/server/pm/VUserManagerService;->updateUserIdsLocked()V

    .line 440
    invoke-direct {p0}, Lcom/lody/virtual/server/pm/VUserManagerService;->upgradeIfNecessary()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 446
    if-eqz v0, :cond_0

    .line 448
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 449
    :catch_3
    move-exception v0

    .line 450
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 443
    :catch_4
    move-exception v1

    .line 444
    :try_start_8
    invoke-direct {p0}, Lcom/lody/virtual/server/pm/VUserManagerService;->fallbackToSingleUserLocked()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 446
    if-eqz v0, :cond_0

    .line 448
    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_0

    .line 449
    :catch_5
    move-exception v0

    .line 450
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 446
    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_2
    if-eqz v1, :cond_a

    .line 448
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 451
    :cond_a
    :goto_3
    throw v0

    .line 449
    :catch_6
    move-exception v1

    .line 450
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 446
    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2
.end method

.method private removeDirectoryRecursive(Ljava/io/File;)V
    .locals 5

    .prologue
    .line 801
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 803
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 804
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 805
    invoke-direct {p0, v4}, Lcom/lody/virtual/server/pm/VUserManagerService;->removeDirectoryRecursive(Ljava/io/File;)V

    .line 803
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 808
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 809
    return-void
.end method

.method private removeUserStateLocked(I)V
    .locals 5

    .prologue
    .line 786
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mPm:Lcom/lody/virtual/server/pm/VPackageManagerService;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/server/pm/VPackageManagerService;->cleanUpUserLILPw(I)V

    .line 789
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 790
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mRemovingUserIds:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 792
    new-instance v0, Lcom/lody/virtual/helper/utils/AtomicFile;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/lody/virtual/helper/utils/AtomicFile;-><init>(Ljava/io/File;)V

    .line 793
    invoke-virtual {v0}, Lcom/lody/virtual/helper/utils/AtomicFile;->delete()V

    .line 795
    invoke-direct {p0}, Lcom/lody/virtual/server/pm/VUserManagerService;->writeUserListLocked()V

    .line 796
    invoke-direct {p0}, Lcom/lody/virtual/server/pm/VUserManagerService;->updateUserIdsLocked()V

    .line 797
    invoke-static {p1}, Lcom/lody/virtual/os/VEnvironment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lody/virtual/server/pm/VUserManagerService;->removeDirectoryRecursive(Ljava/io/File;)V

    .line 798
    return-void
.end method

.method private sendUserInfoChangedBroadcast(I)V
    .locals 3

    .prologue
    .line 244
    new-instance v0, Landroid/content/Intent;

    const-string v1, "virtual.android.intent.action.USER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    const-string v1, "android.intent.extra.UID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 246
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 247
    invoke-static {}, Lcom/lody/virtual/server/am/VActivityManagerService;->get()Lcom/lody/virtual/server/am/VActivityManagerService;

    move-result-object v1

    new-instance v2, Lcom/lody/virtual/os/VUserHandle;

    invoke-direct {v2, p1}, Lcom/lody/virtual/os/VUserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Lcom/lody/virtual/server/am/VActivityManagerService;->sendBroadcastAsUser(Landroid/content/Intent;Lcom/lody/virtual/os/VUserHandle;)V

    .line 248
    return-void
.end method

.method private updateUserIdsLocked()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 834
    move v1, v2

    move v3, v2

    .line 835
    :goto_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 836
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/os/VUserInfo;

    iget-boolean v0, v0, Lcom/lody/virtual/os/VUserInfo;->partial:Z

    if-nez v0, :cond_0

    .line 837
    add-int/lit8 v3, v3, 0x1

    .line 835
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 840
    :cond_1
    new-array v3, v3, [I

    move v1, v2

    .line 842
    :goto_1
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 843
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/os/VUserInfo;

    iget-boolean v0, v0, Lcom/lody/virtual/os/VUserInfo;->partial:Z

    if-nez v0, :cond_3

    .line 844
    add-int/lit8 v0, v1, 0x1

    iget-object v4, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    aput v4, v3, v1

    .line 842
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_1

    .line 847
    :cond_2
    iput-object v3, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUserIds:[I

    .line 848
    return-void

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method private upgradeIfNecessary()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 461
    iget v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUserVersion:I

    .line 462
    if-ge v0, v1, :cond_1

    .line 464
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/os/VUserInfo;

    .line 465
    const-string v2, "Primary"

    iget-object v3, v0, Lcom/lody/virtual/os/VUserInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 466
    const-string v2, "Admin"

    iput-object v2, v0, Lcom/lody/virtual/os/VUserInfo;->name:Ljava/lang/String;

    .line 467
    invoke-direct {p0, v0}, Lcom/lody/virtual/server/pm/VUserManagerService;->writeUserLocked(Lcom/lody/virtual/os/VUserInfo;)V

    :cond_0
    move v0, v1

    .line 472
    :cond_1
    if-ge v0, v1, :cond_2

    .line 473
    const-string v0, "VUserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUserVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " didn\'t upgrade as expected to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 479
    :goto_0
    return-void

    .line 476
    :cond_2
    iput v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUserVersion:I

    .line 477
    invoke-direct {p0}, Lcom/lody/virtual/server/pm/VUserManagerService;->writeUserListLocked()V

    goto :goto_0
.end method

.method private writeBitmapLocked(Lcom/lody/virtual/os/VUserInfo;Landroid/graphics/Bitmap;)V
    .locals 5

    .prologue
    .line 343
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsersDir:Ljava/io/File;

    iget v2, p1, Lcom/lody/virtual/os/VUserInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 344
    new-instance v1, Ljava/io/File;

    const-string v2, "photo.png"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 345
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 346
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 353
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p2, v0, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/lody/virtual/os/VUserInfo;->iconPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 364
    :goto_0
    return-void

    .line 361
    :catch_0
    move-exception v0

    .line 362
    const-string v1, "VUserManagerService"

    const-string v2, "Error setting photo for user "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 358
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private writeUserListLocked()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 551
    .line 552
    new-instance v4, Lcom/lody/virtual/helper/utils/AtomicFile;

    iget-object v1, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {v4, v1}, Lcom/lody/virtual/helper/utils/AtomicFile;-><init>(Ljava/io/File;)V

    .line 554
    :try_start_0
    invoke-virtual {v4}, Lcom/lody/virtual/helper/utils/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 555
    :try_start_1
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 558
    new-instance v5, Lcom/lody/virtual/helper/utils/FastXmlSerializer;

    invoke-direct {v5}, Lcom/lody/virtual/helper/utils/FastXmlSerializer;-><init>()V

    .line 559
    const-string v2, "utf-8"

    invoke-interface {v5, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 560
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v5, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 561
    const-string v0, "http://almanac.flabcore.com"

    const/4 v2, 0x1

    invoke-interface {v5, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 563
    const/4 v0, 0x0

    const-string v2, "users"

    invoke-interface {v5, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 564
    const/4 v0, 0x0

    const-string v2, "nextSerialNumber"

    iget v6, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mNextSerialNumber:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 565
    const/4 v0, 0x0

    const-string v2, "version"

    iget v6, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUserVersion:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move v2, v3

    .line 567
    :goto_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/os/VUserInfo;

    .line 569
    const/4 v6, 0x0

    const-string v7, "user"

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 570
    const/4 v6, 0x0

    const-string v7, "id"

    iget v0, v0, Lcom/lody/virtual/os/VUserInfo;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v6, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 571
    const/4 v0, 0x0

    const-string v6, "user"

    invoke-interface {v5, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 567
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 574
    :cond_0
    const/4 v0, 0x0

    const-string v2, "users"

    invoke-interface {v5, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 576
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 577
    invoke-virtual {v4, v1}, Lcom/lody/virtual/helper/utils/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 582
    :goto_1
    return-void

    .line 578
    :catch_0
    move-exception v1

    .line 579
    :goto_2
    invoke-virtual {v4, v0}, Lcom/lody/virtual/helper/utils/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 580
    const-string v0, "VUserManagerService"

    const-string v1, "Error writing user list"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 578
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method

.method private writeUserLocked(Lcom/lody/virtual/os/VUserInfo;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 502
    .line 503
    new-instance v2, Lcom/lody/virtual/helper/utils/AtomicFile;

    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p1, Lcom/lody/virtual/os/VUserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v0}, Lcom/lody/virtual/helper/utils/AtomicFile;-><init>(Ljava/io/File;)V

    .line 505
    :try_start_0
    invoke-virtual {v2}, Lcom/lody/virtual/helper/utils/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 506
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 509
    new-instance v3, Lcom/lody/virtual/helper/utils/FastXmlSerializer;

    invoke-direct {v3}, Lcom/lody/virtual/helper/utils/FastXmlSerializer;-><init>()V

    .line 510
    const-string v4, "utf-8"

    invoke-interface {v3, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 511
    const/4 v0, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 512
    const-string v0, "http://almanac.flabcore.com"

    const/4 v4, 0x1

    invoke-interface {v3, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 514
    const/4 v0, 0x0

    const-string v4, "user"

    invoke-interface {v3, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 515
    const/4 v0, 0x0

    const-string v4, "id"

    iget v5, p1, Lcom/lody/virtual/os/VUserInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 516
    const/4 v0, 0x0

    const-string v4, "serialNumber"

    iget v5, p1, Lcom/lody/virtual/os/VUserInfo;->serialNumber:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 517
    const/4 v0, 0x0

    const-string v4, "flags"

    iget v5, p1, Lcom/lody/virtual/os/VUserInfo;->flags:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 518
    const/4 v0, 0x0

    const-string v4, "created"

    iget-wide v6, p1, Lcom/lody/virtual/os/VUserInfo;->creationTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 519
    const/4 v0, 0x0

    const-string v4, "lastLoggedIn"

    iget-wide v6, p1, Lcom/lody/virtual/os/VUserInfo;->lastLoggedInTime:J

    .line 520
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 519
    invoke-interface {v3, v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 521
    iget-object v0, p1, Lcom/lody/virtual/os/VUserInfo;->iconPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 522
    const/4 v0, 0x0

    const-string v4, "icon"

    iget-object v5, p1, Lcom/lody/virtual/os/VUserInfo;->iconPath:Ljava/lang/String;

    invoke-interface {v3, v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 524
    :cond_0
    iget-boolean v0, p1, Lcom/lody/virtual/os/VUserInfo;->partial:Z

    if-eqz v0, :cond_1

    .line 525
    const/4 v0, 0x0

    const-string v4, "partial"

    const-string v5, "true"

    invoke-interface {v3, v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 528
    :cond_1
    const/4 v0, 0x0

    const-string v4, "name"

    invoke-interface {v3, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 529
    iget-object v0, p1, Lcom/lody/virtual/os/VUserInfo;->name:Ljava/lang/String;

    invoke-interface {v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 530
    const/4 v0, 0x0

    const-string v4, "name"

    invoke-interface {v3, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 532
    const/4 v0, 0x0

    const-string v4, "user"

    invoke-interface {v3, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 534
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 535
    invoke-virtual {v2, v1}, Lcom/lody/virtual/helper/utils/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    :goto_0
    return-void

    .line 536
    :catch_0
    move-exception v0

    .line 537
    const-string v3, "VUserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error writing user info "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/lody/virtual/os/VUserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 538
    invoke-virtual {v2, v1}, Lcom/lody/virtual/helper/utils/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_0
.end method


# virtual methods
.method public createUser(Ljava/lang/String;I)Lcom/lody/virtual/os/VUserInfo;
    .locals 12

    .prologue
    const/4 v0, 0x0

    .line 680
    const-string v1, "Only the system can create users"

    invoke-static {v1}, Lcom/lody/virtual/server/pm/VUserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 682
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 685
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 686
    :try_start_1
    iget-object v6, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 687
    :try_start_2
    invoke-direct {p0}, Lcom/lody/virtual/server/pm/VUserManagerService;->isUserLimitReachedLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 710
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 712
    :goto_0
    return-object v0

    .line 688
    :cond_0
    :try_start_4
    invoke-direct {p0}, Lcom/lody/virtual/server/pm/VUserManagerService;->getNextAvailableIdLocked()I

    move-result v7

    .line 689
    new-instance v0, Lcom/lody/virtual/os/VUserInfo;

    const/4 v2, 0x0

    invoke-direct {v0, v7, p1, v2, p2}, Lcom/lody/virtual/os/VUserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 690
    new-instance v8, Ljava/io/File;

    iget-object v2, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mBaseUserPath:Ljava/io/File;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 691
    iget v2, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mNextSerialNumber:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mNextSerialNumber:I

    iput v2, v0, Lcom/lody/virtual/os/VUserInfo;->serialNumber:I

    .line 692
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 693
    const-wide v10, 0xdc46c32800L

    cmp-long v9, v2, v10

    if-lez v9, :cond_1

    :goto_1
    iput-wide v2, v0, Lcom/lody/virtual/os/VUserInfo;->creationTime:J

    .line 694
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/lody/virtual/os/VUserInfo;->partial:Z

    .line 695
    iget v2, v0, Lcom/lody/virtual/os/VUserInfo;->id:I

    invoke-static {v2}, Lcom/lody/virtual/os/VEnvironment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 696
    iget-object v2, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 697
    invoke-direct {p0}, Lcom/lody/virtual/server/pm/VUserManagerService;->writeUserListLocked()V

    .line 698
    invoke-direct {p0, v0}, Lcom/lody/virtual/server/pm/VUserManagerService;->writeUserLocked(Lcom/lody/virtual/os/VUserInfo;)V

    .line 699
    iget-object v2, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mPm:Lcom/lody/virtual/server/pm/VPackageManagerService;

    invoke-virtual {v2, v7, v8}, Lcom/lody/virtual/server/pm/VPackageManagerService;->createNewUserLILPw(ILjava/io/File;)V

    .line 700
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/lody/virtual/os/VUserInfo;->partial:Z

    .line 701
    invoke-direct {p0, v0}, Lcom/lody/virtual/server/pm/VUserManagerService;->writeUserLocked(Lcom/lody/virtual/os/VUserInfo;)V

    .line 702
    invoke-direct {p0}, Lcom/lody/virtual/server/pm/VUserManagerService;->updateUserIdsLocked()V

    .line 703
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 704
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 705
    :try_start_6
    new-instance v1, Landroid/content/Intent;

    const-string v2, "virtual.android.intent.action.USER_ADDED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 706
    const-string v2, "android.intent.extra.UID"

    iget v3, v0, Lcom/lody/virtual/os/VUserInfo;->id:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 707
    invoke-static {}, Lcom/lody/virtual/server/am/VActivityManagerService;->get()Lcom/lody/virtual/server/am/VActivityManagerService;

    move-result-object v2

    sget-object v3, Lcom/lody/virtual/os/VUserHandle;->ALL:Lcom/lody/virtual/os/VUserHandle;

    const/4 v6, 0x0

    invoke-virtual {v2, v1, v3, v6}, Lcom/lody/virtual/server/am/VActivityManagerService;->sendBroadcastAsUser(Landroid/content/Intent;Lcom/lody/virtual/os/VUserHandle;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 710
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 693
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_1

    .line 703
    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0

    .line 704
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 710
    :catchall_2
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 892
    return-void
.end method

.method public exists(I)Z
    .locals 2

    .prologue
    .line 202
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUserIds:[I

    invoke-static {v0, p1}, Lcom/lody/virtual/helper/utils/ArrayUtils;->contains([II)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method finishRemoveUser(I)V
    .locals 12

    .prologue
    .line 753
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 755
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v0, "virtual.android.intent.action.USER_REMOVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 756
    const-string v0, "android.intent.extra.UID"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 757
    invoke-static {}, Lcom/lody/virtual/server/am/VActivityManagerService;->get()Lcom/lody/virtual/server/am/VActivityManagerService;

    move-result-object v0

    sget-object v2, Lcom/lody/virtual/os/VUserHandle;->ALL:Lcom/lody/virtual/os/VUserHandle;

    const/4 v3, 0x0

    new-instance v4, Lcom/lody/virtual/server/pm/VUserManagerService$2;

    invoke-direct {v4, p0, p1}, Lcom/lody/virtual/server/pm/VUserManagerService$2;-><init>(Lcom/lody/virtual/server/pm/VUserManagerService;I)V

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/lody/virtual/server/am/VActivityManagerService;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Lcom/lody/virtual/os/VUserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 780
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 782
    return-void

    .line 780
    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getUserHandle(I)I
    .locals 6

    .prologue
    .line 821
    iget-object v2, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 822
    :try_start_0
    iget-object v3, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUserIds:[I

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget v0, v3, v1

    .line 823
    invoke-direct {p0, v0}, Lcom/lody/virtual/server/pm/VUserManagerService;->getUserInfoLocked(I)Lcom/lody/virtual/os/VUserInfo;

    move-result-object v5

    iget v5, v5, Lcom/lody/virtual/os/VUserInfo;->serialNumber:I

    if-ne v5, p1, :cond_0

    monitor-exit v2

    .line 826
    :goto_1
    return v0

    .line 822
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 826
    :cond_1
    const/4 v0, -0x1

    monitor-exit v2

    goto :goto_1

    .line 827
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUserIcon(I)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 253
    iget-object v2, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/os/VUserInfo;

    .line 255
    if-eqz v0, :cond_0

    iget-boolean v3, v0, Lcom/lody/virtual/os/VUserInfo;->partial:Z

    if-eqz v3, :cond_1

    .line 256
    :cond_0
    const-string v0, "VUserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUserIcon: unknown user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    monitor-exit v2

    move-object v0, v1

    .line 262
    :goto_0
    return-object v0

    .line 259
    :cond_1
    iget-object v3, v0, Lcom/lody/virtual/os/VUserInfo;->iconPath:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 260
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 262
    :cond_2
    iget-object v0, v0, Lcom/lody/virtual/os/VUserInfo;->iconPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    monitor-exit v2

    goto :goto_0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUserIds()[I
    .locals 2

    .prologue
    .line 372
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 373
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUserIds:[I

    monitor-exit v1

    return-object v0

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getUserIdsLPr()[I
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUserIds:[I

    return-object v0
.end method

.method public getUserInfo(I)Lcom/lody/virtual/os/VUserInfo;
    .locals 2

    .prologue
    .line 183
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 184
    :try_start_0
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/pm/VUserManagerService;->getUserInfoLocked(I)Lcom/lody/virtual/os/VUserInfo;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUserSerialNumber(I)I
    .locals 2

    .prologue
    .line 813
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 814
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/pm/VUserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    monitor-exit v1

    .line 815
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/pm/VUserManagerService;->getUserInfoLocked(I)Lcom/lody/virtual/os/VUserInfo;

    move-result-object v0

    iget v0, v0, Lcom/lody/virtual/os/VUserInfo;->serialNumber:I

    monitor-exit v1

    goto :goto_0

    .line 816
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUsers(Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/lody/virtual/os/VUserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    iget-object v2, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 166
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 167
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 168
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/os/VUserInfo;

    .line 169
    iget-boolean v4, v0, Lcom/lody/virtual/os/VUserInfo;->partial:Z

    if-eqz v4, :cond_1

    .line 167
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 172
    :cond_1
    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mRemovingUserIds:Ljava/util/HashSet;

    iget v5, v0, Lcom/lody/virtual/os/VUserInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 173
    :cond_2
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 176
    :cond_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v3
.end method

.method public isGuestEnabled()Z
    .locals 2

    .prologue
    .line 293
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 294
    :try_start_0
    iget-boolean v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mGuestEnabled:Z

    monitor-exit v1

    return v0

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public makeInitialized(I)V
    .locals 5

    .prologue
    .line 305
    const-string v0, "makeInitialized"

    invoke-static {v0}, Lcom/lody/virtual/server/pm/VUserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 306
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/os/VUserInfo;

    .line 308
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/lody/virtual/os/VUserInfo;->partial:Z

    if-eqz v2, :cond_1

    .line 309
    :cond_0
    const-string v2, "VUserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeInitialized: unknown user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    :cond_1
    iget v2, v0, Lcom/lody/virtual/os/VUserInfo;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_2

    .line 312
    iget v2, v0, Lcom/lody/virtual/os/VUserInfo;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Lcom/lody/virtual/os/VUserInfo;->flags:I

    .line 313
    invoke-direct {p0, v0}, Lcom/lody/virtual/server/pm/VUserManagerService;->writeUserLocked(Lcom/lody/virtual/os/VUserInfo;)V

    .line 315
    :cond_2
    monitor-exit v1

    .line 316
    return-void

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeUser(I)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 721
    const-string v0, "Only the system can remove users"

    invoke-static {v0}, Lcom/lody/virtual/server/pm/VUserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 723
    iget-object v3, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 724
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/os/VUserInfo;

    .line 725
    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    .line 726
    :cond_0
    monitor-exit v3

    move v0, v2

    .line 746
    :goto_0
    return v0

    .line 728
    :cond_1
    iget-object v4, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mRemovingUserIds:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 732
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/lody/virtual/os/VUserInfo;->partial:Z

    .line 733
    invoke-direct {p0, v0}, Lcom/lody/virtual/server/pm/VUserManagerService;->writeUserLocked(Lcom/lody/virtual/os/VUserInfo;)V

    .line 734
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 736
    invoke-static {}, Lcom/lody/virtual/server/am/VActivityManagerService;->get()Lcom/lody/virtual/server/am/VActivityManagerService;

    move-result-object v0

    new-instance v3, Lcom/lody/virtual/server/pm/VUserManagerService$1;

    invoke-direct {v3, p0}, Lcom/lody/virtual/server/pm/VUserManagerService$1;-><init>(Lcom/lody/virtual/server/pm/VUserManagerService;)V

    invoke-virtual {v0, p1, v3}, Lcom/lody/virtual/server/am/VActivityManagerService;->stopUser(ILandroid/app/IStopUserCallback$Stub;)I

    move-result v0

    .line 746
    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 734
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    move v0, v2

    .line 746
    goto :goto_0
.end method

.method public setGuestEnabled(Z)V
    .locals 4

    .prologue
    .line 268
    const-string v0, "enable guest users"

    invoke-static {v0}, Lcom/lody/virtual/server/pm/VUserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 269
    iget-object v2, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 270
    :try_start_0
    iget-boolean v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mGuestEnabled:Z

    if-eq v0, p1, :cond_3

    .line 271
    iput-boolean p1, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mGuestEnabled:Z

    .line 273
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 274
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/os/VUserInfo;

    .line 275
    iget-boolean v3, v0, Lcom/lody/virtual/os/VUserInfo;->partial:Z

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/lody/virtual/os/VUserInfo;->isGuest()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 276
    if-nez p1, :cond_0

    .line 277
    iget v0, v0, Lcom/lody/virtual/os/VUserInfo;->id:I

    invoke-virtual {p0, v0}, Lcom/lody/virtual/server/pm/VUserManagerService;->removeUser(I)Z

    .line 279
    :cond_0
    monitor-exit v2

    .line 288
    :goto_1
    return-void

    .line 273
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 283
    :cond_2
    if-eqz p1, :cond_3

    .line 284
    const-string v0, "Guest"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/lody/virtual/server/pm/VUserManagerService;->createUser(Ljava/lang/String;I)Lcom/lody/virtual/os/VUserInfo;

    .line 287
    :cond_3
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setUserIcon(ILandroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 230
    const-string v0, "update users"

    invoke-static {v0}, Lcom/lody/virtual/server/pm/VUserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/os/VUserInfo;

    .line 233
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/lody/virtual/os/VUserInfo;->partial:Z

    if-eqz v2, :cond_1

    .line 234
    :cond_0
    const-string v0, "VUserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUserIcon: unknown user #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    monitor-exit v1

    .line 241
    :goto_0
    return-void

    .line 237
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/lody/virtual/server/pm/VUserManagerService;->writeBitmapLocked(Lcom/lody/virtual/os/VUserInfo;Landroid/graphics/Bitmap;)V

    .line 238
    invoke-direct {p0, v0}, Lcom/lody/virtual/server/pm/VUserManagerService;->writeUserLocked(Lcom/lody/virtual/os/VUserInfo;)V

    .line 239
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/pm/VUserManagerService;->sendUserInfoChangedBroadcast(I)V

    goto :goto_0

    .line 239
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setUserName(ILjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 209
    const-string v0, "rename users"

    invoke-static {v0}, Lcom/lody/virtual/server/pm/VUserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 211
    iget-object v2, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/os/VUserInfo;

    .line 213
    if-eqz v0, :cond_0

    iget-boolean v3, v0, Lcom/lody/virtual/os/VUserInfo;->partial:Z

    if-eqz v3, :cond_2

    .line 214
    :cond_0
    const-string v0, "VUserManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUserName: unknown user #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    monitor-exit v2

    .line 226
    :cond_1
    :goto_0
    return-void

    .line 217
    :cond_2
    if-eqz p2, :cond_3

    iget-object v3, v0, Lcom/lody/virtual/os/VUserInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 218
    iput-object p2, v0, Lcom/lody/virtual/os/VUserInfo;->name:Ljava/lang/String;

    .line 219
    invoke-direct {p0, v0}, Lcom/lody/virtual/server/pm/VUserManagerService;->writeUserLocked(Lcom/lody/virtual/os/VUserInfo;)V

    .line 220
    const/4 v0, 0x1

    .line 222
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    if-eqz v0, :cond_1

    .line 224
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/pm/VUserManagerService;->sendUserInfoChangedBroadcast(I)V

    goto :goto_0

    .line 222
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public userForeground(I)V
    .locals 6

    .prologue
    .line 855
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 856
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/os/VUserInfo;

    .line 857
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 858
    if-eqz v0, :cond_0

    iget-boolean v4, v0, Lcom/lody/virtual/os/VUserInfo;->partial:Z

    if-eqz v4, :cond_1

    .line 859
    :cond_0
    const-string v0, "VUserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "userForeground: unknown user #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 860
    monitor-exit v1

    .line 867
    :goto_0
    return-void

    .line 862
    :cond_1
    const-wide v4, 0xdc46c32800L

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 863
    iput-wide v2, v0, Lcom/lody/virtual/os/VUserInfo;->lastLoggedInTime:J

    .line 864
    invoke-direct {p0, v0}, Lcom/lody/virtual/server/pm/VUserManagerService;->writeUserLocked(Lcom/lody/virtual/os/VUserInfo;)V

    .line 866
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public wipeUser(I)V
    .locals 1

    .prologue
    .line 300
    const-string v0, "wipe user"

    invoke-static {v0}, Lcom/lody/virtual/server/pm/VUserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 302
    return-void
.end method

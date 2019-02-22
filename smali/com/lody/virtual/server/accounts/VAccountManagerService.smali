.class public Lcom/lody/virtual/server/accounts/VAccountManagerService;
.super Lcom/lody/virtual/service/IAccountManager$Stub;
.source "VAccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/server/accounts/VAccountManagerService$GetAccountsByTypeAndFeatureSession;,
        Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;,
        Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorCache;,
        Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;,
        Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sThis:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/lody/virtual/server/accounts/VAccountManagerService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final accountsByUserId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/lody/virtual/server/accounts/VAccount;",
            ">;>;"
        }
    .end annotation
.end field

.field private final authTokenRecords:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final cache:Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorCache;

.field private lastAccountChangeTime:J

.field private mContext:Landroid/content/Context;

.field private final mSessions:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    .line 69
    const-class v0, Lcom/lody/virtual/server/accounts/VAccountManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/lody/virtual/service/IAccountManager$Stub;-><init>()V

    .line 67
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->mContext:Landroid/content/Context;

    .line 71
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    .line 73
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->authTokenRecords:Ljava/util/LinkedList;

    .line 75
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    .line 77
    new-instance v0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorCache;

    invoke-direct {v0, p0}, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorCache;-><init>(Lcom/lody/virtual/server/accounts/VAccountManagerService;)V

    iput-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->cache:Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorCache;

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->lastAccountChangeTime:J

    return-void
.end method

.method static synthetic access$000(Lcom/lody/virtual/server/accounts/VAccountManagerService;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lody/virtual/server/accounts/VAccountManagerService;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->serializeAllAccounts()V

    return-void
.end method

.method static synthetic access$200(Lcom/lody/virtual/server/accounts/VAccountManagerService;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->authTokenRecords:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lody/virtual/server/accounts/VAccountManagerService;ILandroid/accounts/Account;)Z
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->removeAccountInternal(ILandroid/accounts/Account;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/lody/virtual/server/accounts/VAccountManagerService;)Ljava/util/LinkedHashMap;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lody/virtual/server/accounts/VAccountManagerService;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private broadcastCheckInNow(I)V
    .locals 3

    .prologue
    .line 889
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->lastAccountChangeTime:J

    .line 890
    invoke-direct {p0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->serializeAllAccounts()V

    .line 891
    invoke-static {}, Lcom/lody/virtual/client/local/VActivityManager;->get()Lcom/lody/virtual/client/local/VActivityManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.server.checkin.CHECKIN_NOW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lcom/lody/virtual/client/local/VActivityManager;->sendBroadcast(Landroid/content/Intent;I)V

    .line 892
    return-void
.end method

.method private deserializeAllAccounts()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 927
    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->getAccountFile()Ljava/io/File;

    move-result-object v0

    .line 928
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->refreshAuthenticatorCache(Ljava/lang/String;)V

    .line 929
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 930
    iget-object v3, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 931
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 933
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 934
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v0, v6

    new-array v0, v0, [B

    .line 935
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .line 936
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 937
    array-length v3, v0

    if-eq v5, v3, :cond_1

    .line 938
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Expect length %d, but got %d."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    const/4 v0, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 964
    :catch_0
    move-exception v0

    .line 965
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 967
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 970
    :cond_0
    :goto_0
    return-void

    .line 940
    :cond_1
    const/4 v3, 0x0

    :try_start_2
    array-length v5, v0

    invoke-virtual {v4, v0, v3, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 941
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 942
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    .line 943
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 945
    :goto_1
    add-int/lit8 v3, v0, -0x1

    if-lez v0, :cond_4

    .line 946
    new-instance v5, Lcom/lody/virtual/server/accounts/VAccount;

    invoke-direct {v5, v4}, Lcom/lody/virtual/server/accounts/VAccount;-><init>(Landroid/os/Parcel;)V

    .line 947
    sget-object v0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reading account : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/lody/virtual/server/accounts/VAccount;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v6, v7}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 948
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->cache:Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorCache;

    iget-object v0, v0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorCache;->authenticators:Ljava/util/Map;

    iget-object v6, v5, Lcom/lody/virtual/server/accounts/VAccount;->type:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;

    .line 949
    if-eqz v0, :cond_3

    .line 950
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    iget v6, v5, Lcom/lody/virtual/server/accounts/VAccount;->userId:I

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 951
    if-nez v0, :cond_2

    .line 952
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 953
    iget-object v6, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    iget v7, v5, Lcom/lody/virtual/server/accounts/VAccount;->userId:I

    invoke-virtual {v6, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 955
    :cond_2
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    :goto_2
    move v1, v0

    move v0, v3

    .line 959
    goto :goto_1

    :cond_3
    move v0, v2

    .line 957
    goto :goto_2

    .line 960
    :cond_4
    invoke-virtual {v4}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->lastAccountChangeTime:J

    .line 961
    if-eqz v1, :cond_5

    .line 962
    invoke-direct {p0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->serializeAllAccounts()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 967
    :cond_5
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method private generateServicesMap(Ljava/util/List;Ljava/util/Map;Lcom/lody/virtual/server/accounts/IAccountParser;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;",
            ">;",
            "Lcom/lody/virtual/server/accounts/IAccountParser;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1002
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1003
    iget-object v2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->mContext:Landroid/content/Context;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const-string v4, "android.accounts.AccountAuthenticator"

    invoke-interface {p3, v2, v3, v4}, Lcom/lody/virtual/server/accounts/IAccountParser;->getParser(Landroid/content/Context;Landroid/content/pm/ServiceInfo;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 1005
    if-eqz v2, :cond_0

    .line 1007
    :try_start_0
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .line 1009
    :cond_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 1012
    :cond_2
    const-string v4, "account-authenticator"

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1013
    iget-object v2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->mContext:Landroid/content/Context;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1014
    invoke-interface {p3, v2, v4}, Lcom/lody/virtual/server/accounts/IAccountParser;->getResources(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v2

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 1013
    invoke-static {v2, v4, v3}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->parseAuthenticatorDescription(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v2

    .line 1016
    if-eqz v2, :cond_0

    .line 1017
    iget-object v3, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    new-instance v4, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {v4, p0, v2, v0}, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;-><init>(Lcom/lody/virtual/server/accounts/VAccountManagerService;Landroid/accounts/AuthenticatorDescription;Landroid/content/pm/ServiceInfo;)V

    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1020
    :catch_0
    move-exception v0

    .line 1021
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1025
    :cond_3
    return-void
.end method

.method public static get()Lcom/lody/virtual/server/accounts/VAccountManagerService;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/accounts/VAccountManagerService;

    return-object v0
.end method

.method private getAccount(ILandroid/accounts/Account;)Lcom/lody/virtual/server/accounts/VAccount;
    .locals 2

    .prologue
    .line 851
    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAccount(ILjava/lang/String;Ljava/lang/String;)Lcom/lody/virtual/server/accounts/VAccount;

    move-result-object v0

    return-object v0
.end method

.method private getAccountList(ILjava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    iget-object v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    monitor-enter v1

    .line 179
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 180
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 181
    if-eqz v0, :cond_2

    .line 182
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/accounts/VAccount;

    .line 183
    if-eqz p2, :cond_1

    iget-object v4, v0, Lcom/lody/virtual/server/accounts/VAccount;->type:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 184
    :cond_1
    new-instance v4, Landroid/accounts/Account;

    iget-object v5, v0, Lcom/lody/virtual/server/accounts/VAccount;->name:Ljava/lang/String;

    iget-object v0, v0, Lcom/lody/virtual/server/accounts/VAccount;->type:Ljava/lang/String;

    invoke-direct {v4, v5, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 188
    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method private getAuthenticatorInfo(Ljava/lang/String;)Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;
    .locals 2

    .prologue
    .line 844
    iget-object v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->cache:Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorCache;

    monitor-enter v1

    .line 845
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->cache:Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorCache;

    iget-object v0, v0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorCache;->authenticators:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;

    goto :goto_0

    .line 846
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getCustomAuthToken(ILandroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .prologue
    .line 816
    new-instance v0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;-><init>(Lcom/lody/virtual/server/accounts/VAccountManagerService;ILandroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    const/4 v2, 0x0

    .line 818
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 819
    iget-object v3, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->authTokenRecords:Ljava/util/LinkedList;

    monitor-enter v3

    .line 820
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->authTokenRecords:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 821
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 822
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;

    .line 823
    iget-wide v8, v1, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->expiryEpochMillis:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_0

    iget-wide v8, v1, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->expiryEpochMillis:J

    cmp-long v7, v8, v4

    if-gez v7, :cond_0

    .line 824
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    move-object v1, v2

    :goto_1
    move-object v2, v1

    .line 828
    goto :goto_0

    .line 825
    :cond_0
    invoke-virtual {v0, v1}, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 826
    iget-object v1, v0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->authToken:Ljava/lang/String;

    goto :goto_1

    .line 829
    :cond_1
    monitor-exit v3

    .line 830
    return-object v2

    .line 829
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move-object v1, v2

    goto :goto_1
.end method

.method private insertAccountIntoDatabase(ILandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 6

    .prologue
    .line 855
    if-nez p2, :cond_0

    .line 856
    const/4 v0, 0x0

    .line 878
    :goto_0
    return v0

    .line 858
    :cond_0
    iget-object v2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    monitor-enter v2

    .line 859
    :try_start_0
    new-instance v3, Lcom/lody/virtual/server/accounts/VAccount;

    invoke-direct {v3, p1, p2}, Lcom/lody/virtual/server/accounts/VAccount;-><init>(ILandroid/accounts/Account;)V

    .line 860
    iput-object p3, v3, Lcom/lody/virtual/server/accounts/VAccount;->password:Ljava/lang/String;

    .line 862
    if-eqz p4, :cond_2

    .line 863
    invoke-virtual {p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 864
    invoke-virtual {p4, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 865
    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 866
    iget-object v5, v3, Lcom/lody/virtual/server/accounts/VAccount;->userDatas:Ljava/util/Map;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 879
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 870
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 871
    if-nez v0, :cond_3

    .line 872
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 873
    iget-object v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 875
    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 876
    invoke-direct {p0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->serializeAllAccounts()V

    .line 877
    iget v0, v3, Lcom/lody/virtual/server/accounts/VAccount;->userId:I

    invoke-direct {p0, v0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 878
    const/4 v0, 0x1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 835
    :try_start_0
    invoke-interface {p1, p2}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    :goto_0
    return-void

    .line 836
    :catch_0
    move-exception v0

    .line 839
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private static parseAuthenticatorDescription(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/accounts/AuthenticatorDescription;
    .locals 9

    .prologue
    .line 95
    sget-object v0, Lmirror/com/android/internal/R_Hide$styleable;->AccountAuthenticator:Lmirror/RefStaticObject;

    invoke-virtual {v0}, Lmirror/RefStaticObject;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-virtual {p0, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 97
    :try_start_0
    sget-object v0, Lmirror/com/android/internal/R_Hide$styleable;->AccountAuthenticator_accountType:Lmirror/RefStaticInt;

    invoke-virtual {v0}, Lmirror/RefStaticInt;->get()I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 98
    sget-object v0, Lmirror/com/android/internal/R_Hide$styleable;->AccountAuthenticator_label:Lmirror/RefStaticInt;

    invoke-virtual {v0}, Lmirror/RefStaticInt;->get()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 99
    sget-object v0, Lmirror/com/android/internal/R_Hide$styleable;->AccountAuthenticator_icon:Lmirror/RefStaticInt;

    invoke-virtual {v0}, Lmirror/RefStaticInt;->get()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 100
    sget-object v0, Lmirror/com/android/internal/R_Hide$styleable;->AccountAuthenticator_smallIcon:Lmirror/RefStaticInt;

    invoke-virtual {v0}, Lmirror/RefStaticInt;->get()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 101
    sget-object v0, Lmirror/com/android/internal/R_Hide$styleable;->AccountAuthenticator_accountPreferences:Lmirror/RefStaticInt;

    invoke-virtual {v0}, Lmirror/RefStaticInt;->get()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 102
    sget-object v0, Lmirror/com/android/internal/R_Hide$styleable;->AccountAuthenticator_customTokens:Lmirror/RefStaticInt;

    invoke-virtual {v0}, Lmirror/RefStaticInt;->get()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 103
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x0

    .line 109
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    :goto_0
    return-object v0

    .line 106
    :cond_0
    :try_start_1
    new-instance v0, Landroid/accounts/AuthenticatorDescription;

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Landroid/accounts/AuthenticatorDescription;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private removeAccountInternal(ILandroid/accounts/Account;)Z
    .locals 4

    .prologue
    .line 709
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 710
    if-eqz v0, :cond_1

    .line 711
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 712
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 713
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/accounts/VAccount;

    .line 714
    iget v2, v0, Lcom/lody/virtual/server/accounts/VAccount;->userId:I

    if-ne p1, v2, :cond_0

    iget-object v2, v0, Lcom/lody/virtual/server/accounts/VAccount;->name:Ljava/lang/String;

    iget-object v3, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 715
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v0, v0, Lcom/lody/virtual/server/accounts/VAccount;->type:Ljava/lang/String;

    .line 716
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 718
    invoke-direct {p0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->serializeAllAccounts()V

    .line 719
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 720
    const/4 v0, 0x1

    .line 724
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private renameAccountInternal(ILandroid/accounts/Account;Ljava/lang/String;)Landroid/accounts/Account;
    .locals 6

    .prologue
    .line 780
    iget-object v2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    monitor-enter v2

    .line 781
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAccount(ILandroid/accounts/Account;)Lcom/lody/virtual/server/accounts/VAccount;

    move-result-object v0

    .line 782
    if-eqz v0, :cond_2

    .line 783
    iget-object v1, v0, Lcom/lody/virtual/server/accounts/VAccount;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/lody/virtual/server/accounts/VAccount;->previousName:Ljava/lang/String;

    .line 784
    iput-object p3, v0, Lcom/lody/virtual/server/accounts/VAccount;->name:Ljava/lang/String;

    .line 785
    invoke-direct {p0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->serializeAllAccounts()V

    .line 786
    new-instance v1, Landroid/accounts/Account;

    iget-object v3, v0, Lcom/lody/virtual/server/accounts/VAccount;->name:Ljava/lang/String;

    iget-object v0, v0, Lcom/lody/virtual/server/accounts/VAccount;->type:Ljava/lang/String;

    invoke-direct {v1, v3, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    iget-object v3, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->authTokenRecords:Ljava/util/LinkedList;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 788
    :try_start_1
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->authTokenRecords:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;

    .line 789
    iget v5, v0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->userId:I

    if-ne v5, p1, :cond_0

    iget-object v5, v0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->account:Landroid/accounts/Account;

    invoke-virtual {v5, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 790
    iput-object v1, v0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->account:Landroid/accounts/Account;

    goto :goto_0

    .line 793
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 797
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 793
    :cond_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 794
    :try_start_4
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 795
    monitor-exit v2

    move-object p2, v1

    .line 798
    :goto_1
    return-object p2

    .line 797
    :cond_2
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1
.end method

.method private sendAccountsChangedBroadcast(I)V
    .locals 2

    .prologue
    .line 883
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 884
    invoke-static {}, Lcom/lody/virtual/client/local/VActivityManager;->get()Lcom/lody/virtual/client/local/VActivityManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/lody/virtual/client/local/VActivityManager;->sendBroadcast(Landroid/content/Intent;I)V

    .line 885
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->broadcastCheckInNow(I)V

    .line 886
    return-void
.end method

.method private serializeAllAccounts()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 898
    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->getAccountFile()Ljava/io/File;

    move-result-object v2

    .line 899
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 901
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 902
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 903
    :goto_0
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 904
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 905
    if-eqz v0, :cond_0

    .line 906
    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 903
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 909
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 910
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/accounts/VAccount;

    .line 911
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/lody/virtual/server/accounts/VAccount;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 917
    :catch_0
    move-exception v0

    .line 918
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 920
    :goto_2
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 921
    return-void

    .line 913
    :cond_2
    :try_start_1
    iget-wide v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->lastAccountChangeTime:J

    invoke-virtual {v3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 914
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 915
    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 916
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private setPasswordInternal(ILandroid/accounts/Account;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 338
    iget-object v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    monitor-enter v1

    .line 339
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAccount(ILandroid/accounts/Account;)Lcom/lody/virtual/server/accounts/VAccount;

    move-result-object v0

    .line 340
    if-eqz v0, :cond_2

    .line 341
    iput-object p3, v0, Lcom/lody/virtual/server/accounts/VAccount;->password:Ljava/lang/String;

    .line 342
    iget-object v0, v0, Lcom/lody/virtual/server/accounts/VAccount;->authTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 343
    invoke-direct {p0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->serializeAllAccounts()V

    .line 344
    iget-object v2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->authTokenRecords:Ljava/util/LinkedList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 345
    :try_start_1
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->authTokenRecords:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 346
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;

    .line 348
    iget v4, v0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->userId:I

    if-ne v4, p1, :cond_0

    iget-object v0, v0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->account:Landroid/accounts/Account;

    invoke-virtual {v0, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 355
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 352
    :cond_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 353
    :try_start_4
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 355
    :cond_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 356
    return-void
.end method

.method public static systemReady()V
    .locals 2

    .prologue
    .line 87
    new-instance v0, Lcom/lody/virtual/server/accounts/VAccountManagerService;

    invoke-direct {v0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;-><init>()V

    .line 88
    invoke-direct {v0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->deserializeAllAccounts()V

    .line 89
    sget-object v1, Lcom/lody/virtual/server/accounts/VAccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 90
    return-void
.end method


# virtual methods
.method public accountAuthenticated(ILandroid/accounts/Account;)Z
    .locals 4

    .prologue
    .line 730
    if-nez p2, :cond_0

    .line 731
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 733
    :cond_0
    iget-object v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    monitor-enter v1

    .line 734
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAccount(ILandroid/accounts/Account;)Lcom/lody/virtual/server/accounts/VAccount;

    move-result-object v0

    .line 735
    if-eqz v0, :cond_1

    .line 736
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/lody/virtual/server/accounts/VAccount;->lastAuthenticatedTime:J

    .line 737
    invoke-direct {p0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->serializeAllAccounts()V

    .line 738
    const/4 v0, 0x1

    monitor-exit v1

    .line 740
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 741
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addAccount(ILandroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 15

    .prologue
    .line 589
    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "response is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 590
    :cond_0
    if-nez p3, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "accountType is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 591
    :cond_1
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAuthenticatorInfo(Ljava/lang/String;)Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;

    move-result-object v5

    .line 592
    if-nez v5, :cond_2

    .line 594
    const/4 v1, 0x7

    :try_start_0
    const-string v2, "account.type does not exist"

    move-object/from16 v0, p2

    invoke-interface {v0, v1, v2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    :goto_0
    return-void

    .line 595
    :catch_0
    move-exception v1

    .line 596
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 600
    :cond_2
    new-instance v1, Lcom/lody/virtual/server/accounts/VAccountManagerService$7;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v2, p0

    move-object/from16 v3, p2

    move/from16 v4, p1

    move/from16 v6, p6

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p7

    move-object/from16 v14, p3

    invoke-direct/range {v1 .. v14}, Lcom/lody/virtual/server/accounts/VAccountManagerService$7;-><init>(Lcom/lody/virtual/server/accounts/VAccountManagerService;Landroid/accounts/IAccountManagerResponse;ILcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;ZZLjava/lang/String;ZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 618
    invoke-virtual {v1}, Lcom/lody/virtual/server/accounts/VAccountManagerService$7;->bind()V

    goto :goto_0
.end method

.method public addAccountExplicitly(ILandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2

    .prologue
    .line 624
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 625
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->insertAccountIntoDatabase(ILandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public clearPassword(ILandroid/accounts/Account;)V
    .locals 2

    .prologue
    .line 704
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 705
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->setPasswordInternal(ILandroid/accounts/Account;Ljava/lang/String;)V

    .line 706
    return-void
.end method

.method public confirmCredentials(ILandroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;Z)V
    .locals 12

    .prologue
    .line 564
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 565
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :cond_1
    iget-object v0, p3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAuthenticatorInfo(Ljava/lang/String;)Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;

    move-result-object v4

    .line 567
    if-nez v4, :cond_2

    .line 569
    const/4 v0, 0x7

    :try_start_0
    const-string v1, "account.type does not exist"

    invoke-interface {p2, v0, v1}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    :goto_0
    return-void

    .line 570
    :catch_0
    move-exception v0

    .line 571
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 575
    :cond_2
    new-instance v0, Lcom/lody/virtual/server/accounts/VAccountManagerService$6;

    const/4 v6, 0x1

    iget-object v7, p3, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v1, p0

    move-object v2, p2

    move v3, p1

    move/from16 v5, p5

    move-object v10, p3

    move-object/from16 v11, p4

    invoke-direct/range {v0 .. v11}, Lcom/lody/virtual/server/accounts/VAccountManagerService$6;-><init>(Lcom/lody/virtual/server/accounts/VAccountManagerService;Landroid/accounts/IAccountManagerResponse;ILcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;ZZLjava/lang/String;ZZLandroid/accounts/Account;Landroid/os/Bundle;)V

    .line 582
    invoke-virtual {v0}, Lcom/lody/virtual/server/accounts/VAccountManagerService$6;->bind()V

    goto :goto_0
.end method

.method public editProperties(ILandroid/accounts/IAccountManagerResponse;Ljava/lang/String;Z)V
    .locals 9

    .prologue
    .line 499
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accountType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 501
    :cond_1
    invoke-direct {p0, p3}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAuthenticatorInfo(Ljava/lang/String;)Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;

    move-result-object v4

    .line 502
    if-nez v4, :cond_2

    .line 504
    const/4 v0, 0x7

    :try_start_0
    const-string v1, "account.type does not exist"

    invoke-interface {p2, v0, v1}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    :goto_0
    return-void

    .line 505
    :catch_0
    move-exception v0

    .line 506
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 510
    :cond_2
    new-instance v0, Lcom/lody/virtual/server/accounts/VAccountManagerService$4;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p2

    move v3, p1

    move v5, p4

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/lody/virtual/server/accounts/VAccountManagerService$4;-><init>(Lcom/lody/virtual/server/accounts/VAccountManagerService;Landroid/accounts/IAccountManagerResponse;ILcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-virtual {v0}, Lcom/lody/virtual/server/accounts/VAccountManagerService$4;->bind()V

    goto :goto_0
.end method

.method public getAccount(ILjava/lang/String;Ljava/lang/String;)Lcom/lody/virtual/server/accounts/VAccount;
    .locals 3

    .prologue
    .line 976
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 977
    if-eqz v0, :cond_1

    .line 978
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/accounts/VAccount;

    .line 979
    iget-object v2, v0, Lcom/lody/virtual/server/accounts/VAccount;->name:Ljava/lang/String;

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/lody/virtual/server/accounts/VAccount;->type:Ljava/lang/String;

    invoke-static {v2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 984
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;
    .locals 2

    .prologue
    .line 172
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAccountList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 173
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/accounts/Account;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    return-object v0
.end method

.method public getAccountsByFeatures(ILandroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 129
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accountType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_1
    invoke-direct {p0, p3}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAuthenticatorInfo(Ljava/lang/String;)Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;

    move-result-object v4

    .line 132
    if-nez v4, :cond_2

    .line 133
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 134
    const-string v1, "accounts"

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/accounts/Account;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 136
    :try_start_0
    invoke-interface {p2, v0}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 143
    :cond_2
    if-eqz p4, :cond_3

    array-length v0, p4

    if-nez v0, :cond_4

    .line 144
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 145
    const-string v1, "accounts"

    invoke-virtual {p0, p1, p3}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 147
    :try_start_1
    invoke-interface {p2, v0}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 148
    :catch_1
    move-exception v0

    .line 149
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 152
    :cond_4
    new-instance v0, Lcom/lody/virtual/server/accounts/VAccountManagerService$GetAccountsByTypeAndFeatureSession;

    move-object v1, p0

    move-object v2, p2

    move v3, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lody/virtual/server/accounts/VAccountManagerService$GetAccountsByTypeAndFeatureSession;-><init>(Lcom/lody/virtual/server/accounts/VAccountManagerService;Landroid/accounts/IAccountManagerResponse;ILcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/lody/virtual/server/accounts/VAccountManagerService$GetAccountsByTypeAndFeatureSession;->bind()V

    goto :goto_0
.end method

.method public final getAuthToken(ILandroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V
    .locals 20

    .prologue
    .line 204
    if-nez p2, :cond_0

    .line 205
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "response is null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 208
    :cond_0
    if-nez p3, :cond_1

    .line 209
    :try_start_0
    sget-object v5, Lcom/lody/virtual/server/accounts/VAccountManagerService;->TAG:Ljava/lang/String;

    const-string v6, "getAuthToken called with null account"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    const/4 v5, 0x7

    const-string v6, "account is null"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V

    .line 328
    :goto_0
    return-void

    .line 213
    :cond_1
    if-nez p4, :cond_2

    .line 214
    sget-object v5, Lcom/lody/virtual/server/accounts/VAccountManagerService;->TAG:Ljava/lang/String;

    const-string v6, "getAuthToken called with null authTokenType"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    const/4 v5, 0x7

    const-string v6, "authTokenType is null"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 218
    :catch_0
    move-exception v5

    .line 219
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 222
    :cond_2
    move-object/from16 v0, p3

    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAuthenticatorInfo(Ljava/lang/String;)Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;

    move-result-object v9

    .line 223
    if-nez v9, :cond_3

    .line 225
    const/4 v5, 0x7

    :try_start_1
    const-string v6, "account.type does not exist"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 226
    :catch_1
    move-exception v5

    .line 227
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 232
    :cond_3
    const-string v5, "androidPackageName"

    move-object/from16 v0, p7

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 233
    iget-object v5, v9, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;->desc:Landroid/accounts/AuthenticatorDescription;

    iget-boolean v0, v5, Landroid/accounts/AuthenticatorDescription;->customTokens:Z

    move/from16 v17, v0

    .line 235
    const-string v5, "callerUid"

    invoke-static {}, Lcom/lody/virtual/os/VBinder;->getCallingUid()I

    move-result v6

    move-object/from16 v0, p7

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 236
    const-string v5, "callerPid"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    move-object/from16 v0, p7

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 237
    if-eqz p5, :cond_4

    .line 238
    const-string v5, "notifyOnAuthFailure"

    const/4 v6, 0x1

    move-object/from16 v0, p7

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 240
    :cond_4
    if-nez v17, :cond_6

    .line 242
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    monitor-enter v6

    .line 243
    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAccount(ILandroid/accounts/Account;)Lcom/lody/virtual/server/accounts/VAccount;

    move-result-object v5

    .line 244
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 245
    if-eqz v5, :cond_5

    iget-object v5, v5, Lcom/lody/virtual/server/accounts/VAccount;->authTokens:Ljava/util/Map;

    move-object/from16 v0, p4

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 246
    :goto_1
    if-eqz v5, :cond_6

    .line 247
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 248
    const-string v7, "authtoken"

    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v5, "authAccount"

    move-object/from16 v0, p3

    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v5, "accountType"

    move-object/from16 v0, p3

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 244
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 245
    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    .line 255
    :cond_6
    if-eqz v17, :cond_7

    .line 256
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getCustomAuthToken(ILandroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 257
    if-eqz v5, :cond_7

    .line 258
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 259
    const-string v7, "authtoken"

    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v5, "authAccount"

    move-object/from16 v0, p3

    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v5, "accountType"

    move-object/from16 v0, p3

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 266
    :cond_7
    new-instance v5, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;

    const/4 v11, 0x0

    move-object/from16 v0, p3

    iget-object v12, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v8, p1

    move/from16 v10, p6

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p7

    move/from16 v16, p5

    move/from16 v18, p1

    invoke-direct/range {v5 .. v19}, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;-><init>(Lcom/lody/virtual/server/accounts/VAccountManagerService;Landroid/accounts/IAccountManagerResponse;ILcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;ZZLjava/lang/String;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/String;)V

    .line 327
    invoke-virtual {v5}, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->bind()V

    goto/16 :goto_0
.end method

.method public getAuthTokenLabel(ILandroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 531
    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accountType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :cond_0
    if-nez p4, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authTokenType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 533
    :cond_1
    invoke-direct {p0, p3}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAuthenticatorInfo(Ljava/lang/String;)Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;

    move-result-object v4

    .line 534
    if-nez v4, :cond_2

    .line 536
    const/4 v0, 0x7

    :try_start_0
    const-string v1, "account.type does not exist"

    invoke-interface {p2, v0, v1}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    :goto_0
    return-void

    .line 537
    :catch_0
    move-exception v0

    .line 538
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 542
    :cond_2
    new-instance v0, Lcom/lody/virtual/server/accounts/VAccountManagerService$5;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p2

    move v3, p1

    move v6, v5

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/lody/virtual/server/accounts/VAccountManagerService$5;-><init>(Lcom/lody/virtual/server/accounts/VAccountManagerService;Landroid/accounts/IAccountManagerResponse;ILcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-virtual {v0}, Lcom/lody/virtual/server/accounts/VAccountManagerService$5;->bind()V

    goto :goto_0
.end method

.method public getAuthenticatorTypes(I)[Landroid/accounts/AuthenticatorDescription;
    .locals 5

    .prologue
    .line 116
    iget-object v2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->cache:Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorCache;

    monitor-enter v2

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->cache:Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorCache;

    iget-object v0, v0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorCache;->authenticators:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v3, v0, [Landroid/accounts/AuthenticatorDescription;

    .line 118
    const/4 v0, 0x0

    .line 119
    iget-object v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->cache:Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorCache;

    iget-object v1, v1, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorCache;->authenticators:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;

    .line 120
    iget-object v0, v0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;->desc:Landroid/accounts/AuthenticatorDescription;

    aput-object v0, v3, v1

    .line 121
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 122
    goto :goto_0

    .line 123
    :cond_0
    monitor-exit v2

    return-object v3

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPassword(ILandroid/accounts/Account;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 473
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    :cond_0
    iget-object v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    monitor-enter v1

    .line 475
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAccount(ILandroid/accounts/Account;)Lcom/lody/virtual/server/accounts/VAccount;

    move-result-object v0

    .line 476
    if-eqz v0, :cond_1

    .line 477
    iget-object v0, v0, Lcom/lody/virtual/server/accounts/VAccount;->password:Ljava/lang/String;

    monitor-exit v1

    .line 479
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 480
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getPreviousName(ILandroid/accounts/Account;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 158
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    monitor-enter v1

    .line 160
    const/4 v0, 0x0

    .line 161
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAccount(ILandroid/accounts/Account;)Lcom/lody/virtual/server/accounts/VAccount;

    move-result-object v2

    .line 162
    if-eqz v2, :cond_1

    .line 163
    iget-object v0, v2, Lcom/lody/virtual/server/accounts/VAccount;->previousName:Ljava/lang/String;

    .line 165
    :cond_1
    monitor-exit v1

    return-object v0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUserData(ILandroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 485
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 486
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 487
    :cond_1
    iget-object v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    monitor-enter v1

    .line 488
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAccount(ILandroid/accounts/Account;)Lcom/lody/virtual/server/accounts/VAccount;

    move-result-object v0

    .line 489
    if-eqz v0, :cond_2

    .line 490
    iget-object v0, v0, Lcom/lody/virtual/server/accounts/VAccount;->userDatas:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1

    .line 492
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 493
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasFeatures(ILandroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 388
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_1
    if-nez p4, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "features is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_2
    iget-object v0, p3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAuthenticatorInfo(Ljava/lang/String;)Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;

    move-result-object v4

    .line 392
    if-nez v4, :cond_3

    .line 394
    const/4 v0, 0x7

    :try_start_0
    const-string v1, "account.type does not exist"

    invoke-interface {p2, v0, v1}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :goto_0
    return-void

    .line 395
    :catch_0
    move-exception v0

    .line 396
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 400
    :cond_3
    new-instance v0, Lcom/lody/virtual/server/accounts/VAccountManagerService$2;

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v7, p3, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p2

    move v3, p1

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/lody/virtual/server/accounts/VAccountManagerService$2;-><init>(Lcom/lody/virtual/server/accounts/VAccountManagerService;Landroid/accounts/IAccountManagerResponse;ILcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;ZZLjava/lang/String;Landroid/accounts/Account;[Ljava/lang/String;)V

    .line 432
    invoke-virtual {v0}, Lcom/lody/virtual/server/accounts/VAccountManagerService$2;->bind()V

    goto :goto_0
.end method

.method public invalidateAuthToken(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 746
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accountType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 747
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authToken is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 748
    :cond_1
    iget-object v2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    monitor-enter v2

    .line 749
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 750
    if-eqz v0, :cond_3

    .line 751
    const/4 v1, 0x0

    .line 752
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/accounts/VAccount;

    .line 753
    iget-object v4, v0, Lcom/lody/virtual/server/accounts/VAccount;->type:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 754
    iget-object v0, v0, Lcom/lody/virtual/server/accounts/VAccount;->authTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 755
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 757
    goto :goto_0

    .line 758
    :cond_2
    if-eqz v1, :cond_3

    .line 759
    invoke-direct {p0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->serializeAllAccounts()V

    .line 762
    :cond_3
    iget-object v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->authTokenRecords:Ljava/util/LinkedList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 763
    :try_start_1
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->authTokenRecords:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 764
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 765
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;

    .line 766
    # getter for: Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->authTokenType:Ljava/lang/String;
    invoke-static {v0}, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->access$500(Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v0, v0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->authToken:Ljava/lang/String;

    .line 767
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 768
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 771
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 772
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 771
    :cond_5
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 772
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 773
    return-void

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 195
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/lody/virtual/service/IAccountManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 198
    throw v0
.end method

.method public peekAuthToken(ILandroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 803
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 804
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authTokenType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 805
    :cond_1
    iget-object v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    monitor-enter v1

    .line 806
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAccount(ILandroid/accounts/Account;)Lcom/lody/virtual/server/accounts/VAccount;

    move-result-object v0

    .line 807
    if-eqz v0, :cond_2

    .line 808
    iget-object v0, v0, Lcom/lody/virtual/server/accounts/VAccount;->authTokens:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1

    .line 810
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 811
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public refreshAuthenticatorCache(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 990
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->cache:Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorCache;

    iget-object v0, v0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorCache;->authenticators:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 991
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.accounts.AccountAuthenticator"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 992
    if-eqz p1, :cond_0

    .line 993
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 996
    :cond_0
    invoke-static {}, Lcom/lody/virtual/server/pm/VPackageManagerService;->get()Lcom/lody/virtual/server/pm/VPackageManagerService;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x80

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/lody/virtual/server/pm/VPackageManagerService;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->cache:Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorCache;

    iget-object v1, v1, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorCache;->authenticators:Ljava/util/Map;

    new-instance v2, Lcom/lody/virtual/server/accounts/AppAccountParser;

    invoke-direct {v2}, Lcom/lody/virtual/server/accounts/AppAccountParser;-><init>()V

    .line 995
    invoke-direct {p0, v0, v1, v2}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->generateServicesMap(Ljava/util/List;Ljava/util/Map;Lcom/lody/virtual/server/accounts/IAccountParser;)V

    .line 998
    return-void
.end method

.method public removeAccount(ILandroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Z)V
    .locals 10

    .prologue
    .line 649
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 650
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 651
    :cond_1
    iget-object v0, p3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAuthenticatorInfo(Ljava/lang/String;)Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;

    move-result-object v4

    .line 652
    if-nez v4, :cond_2

    .line 654
    const/4 v0, 0x7

    :try_start_0
    const-string v1, "account.type does not exist"

    invoke-interface {p2, v0, v1}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    :goto_0
    return-void

    .line 655
    :catch_0
    move-exception v0

    .line 656
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 662
    :cond_2
    new-instance v0, Lcom/lody/virtual/server/accounts/VAccountManagerService$8;

    const/4 v6, 0x1

    iget-object v7, p3, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p2

    move v3, p1

    move v5, p4

    move-object v8, p3

    move v9, p1

    invoke-direct/range {v0 .. v9}, Lcom/lody/virtual/server/accounts/VAccountManagerService$8;-><init>(Lcom/lody/virtual/server/accounts/VAccountManagerService;Landroid/accounts/IAccountManagerResponse;ILcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;ZZLjava/lang/String;Landroid/accounts/Account;I)V

    .line 698
    invoke-virtual {v0}, Lcom/lody/virtual/server/accounts/VAccountManagerService$8;->bind()V

    goto :goto_0
.end method

.method public removeAccountExplicitly(ILandroid/accounts/Account;)Z
    .locals 1

    .prologue
    .line 630
    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->removeAccountInternal(ILandroid/accounts/Account;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public renameAccount(ILandroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 635
    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 636
    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->renameAccountInternal(ILandroid/accounts/Account;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 637
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 638
    const-string v2, "authAccount"

    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const-string v2, "accountType"

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    :try_start_0
    invoke-interface {p2, v1}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    :goto_0
    return-void

    .line 642
    :catch_0
    move-exception v0

    .line 643
    sget-object v1, Lcom/lody/virtual/server/accounts/VAccountManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAuthToken(ILandroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 360
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authTokenType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_1
    iget-object v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    monitor-enter v1

    .line 363
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAccount(ILandroid/accounts/Account;)Lcom/lody/virtual/server/accounts/VAccount;

    move-result-object v0

    .line 364
    if-eqz v0, :cond_2

    .line 366
    iget-object v0, v0, Lcom/lody/virtual/server/accounts/VAccount;->authTokens:Ljava/util/Map;

    invoke-interface {v0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    invoke-direct {p0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->serializeAllAccounts()V

    .line 369
    :cond_2
    monitor-exit v1

    .line 370
    return-void

    .line 369
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPassword(ILandroid/accounts/Account;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 333
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->setPasswordInternal(ILandroid/accounts/Account;Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method public setUserData(ILandroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 375
    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAccount(ILandroid/accounts/Account;)Lcom/lody/virtual/server/accounts/VAccount;

    move-result-object v0

    .line 378
    if-eqz v0, :cond_2

    .line 379
    iget-object v0, v0, Lcom/lody/virtual/server/accounts/VAccount;->userDatas:Ljava/util/Map;

    invoke-interface {v0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    invoke-direct {p0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->serializeAllAccounts()V

    .line 382
    :cond_2
    return-void
.end method

.method public updateCredentials(ILandroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 11

    .prologue
    .line 440
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :cond_1
    if-nez p4, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authTokenType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_2
    iget-object v0, p3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAuthenticatorInfo(Ljava/lang/String;)Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;

    move-result-object v4

    .line 444
    if-nez v4, :cond_3

    .line 446
    const/4 v0, 0x7

    :try_start_0
    const-string v1, "account.type does not exist"

    invoke-interface {p2, v0, v1}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    :goto_0
    return-void

    .line 447
    :catch_0
    move-exception v0

    .line 448
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 452
    :cond_3
    new-instance v0, Lcom/lody/virtual/server/accounts/VAccountManagerService$3;

    const/4 v6, 0x0

    iget-object v7, p3, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p2

    move v3, p1

    move/from16 v5, p5

    move-object v8, p3

    move-object v9, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/lody/virtual/server/accounts/VAccountManagerService$3;-><init>(Lcom/lody/virtual/server/accounts/VAccountManagerService;Landroid/accounts/IAccountManagerResponse;ILcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;ZZLjava/lang/String;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 468
    invoke-virtual {v0}, Lcom/lody/virtual/server/accounts/VAccountManagerService$3;->bind()V

    goto :goto_0
.end method

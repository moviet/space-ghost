.class public final Lcom/lody/virtual/server/am/AttributeCache;
.super Ljava/lang/Object;
.source "AttributeCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/server/am/AttributeCache$Entry;,
        Lcom/lody/virtual/server/am/AttributeCache$Package;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/lody/virtual/server/am/AttributeCache;


# instance fields
.field private final mConfiguration:Landroid/content/res/Configuration;

.field private final mContext:Landroid/content/Context;

.field private final mPackages:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lody/virtual/server/am/AttributeCache$Package;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/lody/virtual/server/am/AttributeCache;->sInstance:Lcom/lody/virtual/server/am/AttributeCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/am/AttributeCache;->mPackages:Ljava/util/WeakHashMap;

    .line 40
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/am/AttributeCache;->mConfiguration:Landroid/content/res/Configuration;

    .line 43
    iput-object p1, p0, Lcom/lody/virtual/server/am/AttributeCache;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/lody/virtual/server/am/AttributeCache;->sInstance:Lcom/lody/virtual/server/am/AttributeCache;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/lody/virtual/server/am/AttributeCache;

    invoke-direct {v0, p0}, Lcom/lody/virtual/server/am/AttributeCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lody/virtual/server/am/AttributeCache;->sInstance:Lcom/lody/virtual/server/am/AttributeCache;

    .line 50
    :cond_0
    return-void
.end method

.method public static instance()Lcom/lody/virtual/server/am/AttributeCache;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/lody/virtual/server/am/AttributeCache;->sInstance:Lcom/lody/virtual/server/am/AttributeCache;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;I[I)Lcom/lody/virtual/server/am/AttributeCache$Entry;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 76
    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/am/AttributeCache;->mPackages:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/am/AttributeCache$Package;

    .line 80
    if-eqz v0, :cond_0

    .line 81
    # getter for: Lcom/lody/virtual/server/am/AttributeCache$Package;->mMap:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/lody/virtual/server/am/AttributeCache$Package;->access$000(Lcom/lody/virtual/server/am/AttributeCache$Package;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 82
    if-eqz v1, :cond_3

    .line 83
    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lody/virtual/server/am/AttributeCache$Entry;

    .line 84
    if-eqz v2, :cond_3

    .line 85
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :goto_0
    return-object v2

    .line 91
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/lody/virtual/server/am/AttributeCache;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 93
    if-nez v1, :cond_1

    .line 94
    :try_start_2
    monitor-exit p0

    move-object v2, v3

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    monitor-exit p0

    move-object v2, v3

    goto :goto_0

    .line 99
    :cond_1
    new-instance v0, Lcom/lody/virtual/server/am/AttributeCache$Package;

    invoke-direct {v0, v1}, Lcom/lody/virtual/server/am/AttributeCache$Package;-><init>(Landroid/content/Context;)V

    .line 100
    iget-object v1, p0, Lcom/lody/virtual/server/am/AttributeCache;->mPackages:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    move-object v0, v3

    .line 103
    :goto_1
    if-nez v0, :cond_2

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 105
    # getter for: Lcom/lody/virtual/server/am/AttributeCache$Package;->mMap:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/lody/virtual/server/am/AttributeCache$Package;->access$000(Lcom/lody/virtual/server/am/AttributeCache$Package;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    :cond_2
    :try_start_3
    new-instance v2, Lcom/lody/virtual/server/am/AttributeCache$Entry;

    iget-object v4, v1, Lcom/lody/virtual/server/am/AttributeCache$Package;->context:Landroid/content/Context;

    iget-object v1, v1, Lcom/lody/virtual/server/am/AttributeCache$Package;->context:Landroid/content/Context;

    invoke-virtual {v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {v2, v4, v1}, Lcom/lody/virtual/server/am/AttributeCache$Entry;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 110
    invoke-virtual {v0, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 115
    :try_start_4
    monitor-exit p0

    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 111
    :catch_1
    move-exception v0

    .line 112
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v2, v3

    goto :goto_0

    :cond_3
    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1
.end method

.method public removePackage(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 57
    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/am/AttributeCache;->mPackages:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    monitor-exit p0

    .line 60
    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 63
    monitor-enter p0

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/am/AttributeCache;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 65
    const v1, -0x400000a1    # -1.9999808f

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/lody/virtual/server/am/AttributeCache;->mPackages:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 72
    :cond_0
    monitor-exit p0

    .line 73
    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

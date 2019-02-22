.class public final Lcom/lody/virtual/helper/utils/collection/ArraySet;
.super Ljava/lang/Object;
.source "ArraySet.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x4

.field private static final CACHE_SIZE:I = 0xa

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ArraySet"

.field static mBaseCache:[Ljava/lang/Object;

.field static mBaseCacheSize:I

.field static mTwiceBaseCache:[Ljava/lang/Object;

.field static mTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field mCollections:Lcom/lody/virtual/helper/utils/collection/MapCollections;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lody/virtual/helper/utils/collection/MapCollections",
            "<TE;TE;>;"
        }
    .end annotation
.end field

.field mHashes:[I

.field mSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    sget-object v0, Lcom/lody/virtual/helper/utils/collection/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mHashes:[I

    .line 227
    sget-object v0, Lcom/lody/virtual/helper/utils/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 228
    const/4 v0, 0x0

    iput v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    .line 229
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    if-nez p1, :cond_0

    .line 236
    sget-object v0, Lcom/lody/virtual/helper/utils/collection/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mHashes:[I

    .line 237
    sget-object v0, Lcom/lody/virtual/helper/utils/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 241
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    .line 242
    return-void

    .line 239
    :cond_0
    invoke-direct {p0, p1}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->allocArrays(I)V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/lody/virtual/helper/utils/collection/ArraySet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lody/virtual/helper/utils/collection/ArraySet",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/lody/virtual/helper/utils/collection/ArraySet;-><init>()V

    .line 249
    if-eqz p1, :cond_0

    .line 250
    invoke-virtual {p0, p1}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->addAll(Lcom/lody/virtual/helper/utils/collection/ArraySet;)V

    .line 252
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/lody/virtual/helper/utils/collection/ArraySet;-><init>()V

    .line 257
    if-eqz p1, :cond_0

    .line 258
    invoke-virtual {p0, p1}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 260
    :cond_0
    return-void
.end method

.method private allocArrays(I)V
    .locals 5

    .prologue
    .line 155
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 156
    const-class v1, Lcom/lody/virtual/helper/utils/collection/ArraySet;

    monitor-enter v1

    .line 157
    :try_start_0
    sget-object v0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mTwiceBaseCache:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 158
    sget-object v2, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 159
    iput-object v2, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 160
    const/4 v0, 0x0

    aget-object v0, v2, v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    sput-object v0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 161
    const/4 v0, 0x1

    aget-object v0, v2, v0

    check-cast v0, [I

    check-cast v0, [I

    iput-object v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mHashes:[I

    .line 162
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v4, v2, v0

    .line 163
    sget v0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mTwiceBaseCacheSize:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mTwiceBaseCacheSize:I

    .line 166
    monitor-exit v1

    .line 187
    :goto_0
    return-void

    .line 168
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :cond_1
    :goto_1
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mHashes:[I

    .line 186
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mArray:[Ljava/lang/Object;

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 169
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 170
    const-class v1, Lcom/lody/virtual/helper/utils/collection/ArraySet;

    monitor-enter v1

    .line 171
    :try_start_2
    sget-object v0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mBaseCache:[Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 172
    sget-object v2, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mBaseCache:[Ljava/lang/Object;

    .line 173
    iput-object v2, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 174
    const/4 v0, 0x0

    aget-object v0, v2, v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    sput-object v0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mBaseCache:[Ljava/lang/Object;

    .line 175
    const/4 v0, 0x1

    aget-object v0, v2, v0

    check-cast v0, [I

    check-cast v0, [I

    iput-object v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mHashes:[I

    .line 176
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v4, v2, v0

    .line 177
    sget v0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mBaseCacheSize:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mBaseCacheSize:I

    .line 180
    monitor-exit v1

    goto :goto_0

    .line 182
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1
.end method

.method private static freeArrays([I[Ljava/lang/Object;I)V
    .locals 4

    .prologue
    const/16 v2, 0xa

    const/4 v3, 0x2

    .line 190
    array-length v0, p0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 191
    const-class v1, Lcom/lody/virtual/helper/utils/collection/ArraySet;

    monitor-enter v1

    .line 192
    :try_start_0
    sget v0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mTwiceBaseCacheSize:I

    if-ge v0, v2, :cond_1

    .line 193
    const/4 v0, 0x0

    sget-object v2, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mTwiceBaseCache:[Ljava/lang/Object;

    aput-object v2, p1, v0

    .line 194
    const/4 v0, 0x1

    aput-object p0, p1, v0

    .line 195
    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-lt v0, v3, :cond_0

    .line 196
    const/4 v2, 0x0

    aput-object v2, p1, v0

    .line 195
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 198
    :cond_0
    sput-object p1, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 199
    sget v0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mTwiceBaseCacheSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mTwiceBaseCacheSize:I

    .line 203
    :cond_1
    monitor-exit v1

    .line 219
    :cond_2
    :goto_1
    return-void

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 204
    :cond_3
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 205
    const-class v1, Lcom/lody/virtual/helper/utils/collection/ArraySet;

    monitor-enter v1

    .line 206
    :try_start_1
    sget v0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mBaseCacheSize:I

    if-ge v0, v2, :cond_5

    .line 207
    const/4 v0, 0x0

    sget-object v2, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mBaseCache:[Ljava/lang/Object;

    aput-object v2, p1, v0

    .line 208
    const/4 v0, 0x1

    aput-object p0, p1, v0

    .line 209
    add-int/lit8 v0, p2, -0x1

    :goto_2
    if-lt v0, v3, :cond_4

    .line 210
    const/4 v2, 0x0

    aput-object v2, p1, v0

    .line 209
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 212
    :cond_4
    sput-object p1, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mBaseCache:[Ljava/lang/Object;

    .line 213
    sget v0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mBaseCacheSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mBaseCacheSize:I

    .line 217
    :cond_5
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method private getCollection()Lcom/lody/virtual/helper/utils/collection/MapCollections;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lody/virtual/helper/utils/collection/MapCollections",
            "<TE;TE;>;"
        }
    .end annotation

    .prologue
    .line 611
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mCollections:Lcom/lody/virtual/helper/utils/collection/MapCollections;

    if-nez v0, :cond_0

    .line 612
    new-instance v0, Lcom/lody/virtual/helper/utils/collection/ArraySet$1;

    invoke-direct {v0, p0}, Lcom/lody/virtual/helper/utils/collection/ArraySet$1;-><init>(Lcom/lody/virtual/helper/utils/collection/ArraySet;)V

    iput-object v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mCollections:Lcom/lody/virtual/helper/utils/collection/MapCollections;

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mCollections:Lcom/lody/virtual/helper/utils/collection/MapCollections;

    return-object v0
.end method

.method private indexOf(Ljava/lang/Object;I)I
    .locals 4

    .prologue
    .line 79
    iget v2, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    .line 82
    if-nez v2, :cond_1

    .line 83
    const/4 v0, -0x1

    .line 113
    :cond_0
    :goto_0
    return v0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mHashes:[I

    invoke-static {v0, v2, p2}, Lcom/lody/virtual/helper/utils/collection/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 89
    if-ltz v0, :cond_0

    .line 94
    iget-object v1, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    add-int/lit8 v1, v0, 0x1

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v3, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mHashes:[I

    aget v3, v3, v1

    if-ne v3, p2, :cond_3

    .line 101
    iget-object v3, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_0

    .line 100
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 105
    :cond_3
    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_4

    iget-object v2, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mHashes:[I

    aget v2, v2, v0

    if-ne v2, p2, :cond_4

    .line 106
    iget-object v2, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 105
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 113
    :cond_4
    xor-int/lit8 v0, v1, -0x1

    goto :goto_0
.end method

.method private indexOfNull()I
    .locals 4

    .prologue
    .line 117
    iget v2, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    .line 120
    if-nez v2, :cond_1

    .line 121
    const/4 v0, -0x1

    .line 151
    :cond_0
    :goto_0
    return v0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mHashes:[I

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lcom/lody/virtual/helper/utils/collection/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 127
    if-ltz v0, :cond_0

    .line 132
    iget-object v1, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 138
    add-int/lit8 v1, v0, 0x1

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v3, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mHashes:[I

    aget v3, v3, v1

    if-nez v3, :cond_3

    .line 139
    iget-object v3, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v3, v3, v1

    if-nez v3, :cond_2

    move v0, v1

    goto :goto_0

    .line 138
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 143
    :cond_3
    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_4

    iget-object v2, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mHashes:[I

    aget v2, v2, v0

    if-nez v2, :cond_4

    .line 144
    iget-object v2, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 143
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 151
    :cond_4
    xor-int/lit8 v0, v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    const/16 v0, 0x8

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 343
    if-nez p1, :cond_0

    .line 345
    invoke-direct {p0}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->indexOfNull()I

    move-result v3

    move v4, v2

    .line 350
    :goto_0
    if-ltz v3, :cond_1

    move v0, v2

    .line 384
    :goto_1
    return v0

    .line 347
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    .line 348
    invoke-direct {p0, p1, v4}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v3

    goto :goto_0

    .line 354
    :cond_1
    xor-int/lit8 v3, v3, -0x1

    .line 355
    iget v5, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    iget-object v6, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mHashes:[I

    array-length v6, v6

    if-lt v5, v6, :cond_4

    .line 356
    iget v5, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    if-lt v5, v0, :cond_6

    iget v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    iget v1, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 361
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mHashes:[I

    .line 362
    iget-object v5, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 363
    invoke-direct {p0, v0}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->allocArrays(I)V

    .line 365
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mHashes:[I

    array-length v0, v0

    if-lez v0, :cond_3

    .line 367
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mHashes:[I

    array-length v6, v1

    invoke-static {v1, v2, v0, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 368
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mArray:[Ljava/lang/Object;

    array-length v6, v5

    invoke-static {v5, v2, v0, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 371
    :cond_3
    iget v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    invoke-static {v1, v5, v0}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 374
    :cond_4
    iget v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    if-ge v3, v0, :cond_5

    .line 377
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mHashes:[I

    iget-object v1, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mHashes:[I

    add-int/lit8 v2, v3, 0x1

    iget v5, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    sub-int/2addr v5, v3

    invoke-static {v0, v3, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 378
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mArray:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mArray:[Ljava/lang/Object;

    add-int/lit8 v2, v3, 0x1

    iget v5, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    sub-int/2addr v5, v3

    invoke-static {v0, v3, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 381
    :cond_5
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mHashes:[I

    aput v4, v0, v3

    .line 382
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aput-object p1, v0, v3

    .line 383
    iget v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    .line 384
    const/4 v0, 0x1

    goto :goto_1

    .line 356
    :cond_6
    iget v5, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    if-ge v5, v1, :cond_2

    move v0, v1

    goto :goto_2
.end method

.method public addAll(Lcom/lody/virtual/helper/utils/collection/ArraySet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lody/virtual/helper/utils/collection/ArraySet",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 392
    iget v1, p1, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    .line 393
    iget v2, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->ensureCapacity(I)V

    .line 394
    iget v2, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    if-nez v2, :cond_1

    .line 395
    if-lez v1, :cond_0

    .line 396
    iget-object v2, p1, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mHashes:[I

    iget-object v3, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mHashes:[I

    invoke-static {v2, v0, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 397
    iget-object v2, p1, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mArray:[Ljava/lang/Object;

    iget-object v3, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-static {v2, v0, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 398
    iput v1, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    .line 405
    :cond_0
    return-void

    .line 401
    :cond_1
    :goto_0
    if-ge v0, v1, :cond_0

    .line 402
    invoke-virtual {p1, v0}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 401
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 697
    iget v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->ensureCapacity(I)V

    .line 698
    const/4 v0, 0x0

    .line 699
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 700
    invoke-virtual {p0, v2}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 701
    goto :goto_0

    .line 702
    :cond_0
    return v0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 267
    iget v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mHashes:[I

    iget-object v1, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mArray:[Ljava/lang/Object;

    iget v2, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    invoke-static {v0, v1, v2}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 269
    sget-object v0, Lcom/lody/virtual/helper/utils/collection/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mHashes:[I

    .line 270
    sget-object v0, Lcom/lody/virtual/helper/utils/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 271
    const/4 v0, 0x0

    iput v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    .line 273
    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 300
    invoke-virtual {p0, p1}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 682
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 683
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 684
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 685
    const/4 v0, 0x0

    .line 688
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public ensureCapacity(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 280
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mHashes:[I

    array-length v0, v0

    if-ge v0, p1, :cond_1

    .line 281
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mHashes:[I

    .line 282
    iget-object v1, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 283
    invoke-direct {p0, p1}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->allocArrays(I)V

    .line 284
    iget v2, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    if-lez v2, :cond_0

    .line 285
    iget-object v2, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mHashes:[I

    iget v3, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    iget-object v2, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mArray:[Ljava/lang/Object;

    iget v3, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 288
    :cond_0
    iget v2, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    invoke-static {v0, v1, v2}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 290
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 536
    if-ne p0, p1, :cond_1

    .line 559
    :cond_0
    :goto_0
    return v0

    .line 539
    :cond_1
    instance-of v2, p1, Ljava/util/Set;

    if-eqz v2, :cond_4

    .line 540
    check-cast p1, Ljava/util/Set;

    .line 541
    invoke-virtual {p0}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    move v0, v1

    .line 542
    goto :goto_0

    :cond_2
    move v2, v1

    .line 546
    :goto_1
    :try_start_0
    iget v3, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    if-ge v2, v3, :cond_0

    .line 547
    invoke-virtual {p0, v2}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 548
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    .line 549
    goto :goto_0

    .line 546
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 552
    :catch_0
    move-exception v0

    move v0, v1

    .line 553
    goto :goto_0

    .line 554
    :catch_1
    move-exception v0

    move v0, v1

    .line 555
    goto :goto_0

    :cond_4
    move v0, v1

    .line 559
    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 567
    iget-object v2, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mHashes:[I

    .line 569
    iget v3, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    move v1, v0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 570
    aget v4, v2, v0

    add-int/2addr v1, v4

    .line 569
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 572
    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 310
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->indexOfNull()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 671
    invoke-direct {p0}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->getCollection()Lcom/lody/virtual/helper/utils/collection/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/helper/utils/collection/MapCollections;->getKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 415
    invoke-virtual {p0, p1}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 416
    if-ltz v0, :cond_0

    .line 417
    invoke-virtual {p0, v0}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 418
    const/4 v0, 0x1

    .line 420
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAll(Lcom/lody/virtual/helper/utils/collection/ArraySet;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lody/virtual/helper/utils/collection/ArraySet",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 485
    iget v2, p1, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    .line 489
    iget v3, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    move v1, v0

    .line 490
    :goto_0
    if-ge v1, v2, :cond_0

    .line 491
    invoke-virtual {p1, v1}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 490
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 493
    :cond_0
    iget v1, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    if-eq v3, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 712
    const/4 v0, 0x0

    .line 713
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 714
    invoke-virtual {p0, v2}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 715
    goto :goto_0

    .line 716
    :cond_0
    return v0
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    const/16 v0, 0x8

    const/4 v4, 0x0

    .line 429
    iget-object v1, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v1, v1, p1

    .line 430
    iget v2, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    .line 433
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mHashes:[I

    iget-object v2, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mArray:[Ljava/lang/Object;

    iget v3, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    invoke-static {v0, v2, v3}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 434
    sget-object v0, Lcom/lody/virtual/helper/utils/collection/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mHashes:[I

    .line 435
    sget-object v0, Lcom/lody/virtual/helper/utils/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 436
    iput v4, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    .line 473
    :cond_0
    :goto_0
    return-object v1

    .line 438
    :cond_1
    iget-object v2, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mHashes:[I

    array-length v2, v2

    if-le v2, v0, :cond_4

    iget v2, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    iget-object v3, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mHashes:[I

    array-length v3, v3

    div-int/lit8 v3, v3, 0x3

    if-ge v2, v3, :cond_4

    .line 442
    iget v2, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    if-le v2, v0, :cond_2

    iget v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    iget v2, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 446
    :cond_2
    iget-object v2, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mHashes:[I

    .line 447
    iget-object v3, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 448
    invoke-direct {p0, v0}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->allocArrays(I)V

    .line 450
    iget v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    .line 451
    if-lez p1, :cond_3

    .line 453
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mHashes:[I

    invoke-static {v2, v4, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 454
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-static {v3, v4, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 456
    :cond_3
    iget v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    if-ge p1, v0, :cond_0

    .line 459
    add-int/lit8 v0, p1, 0x1

    iget-object v4, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mHashes:[I

    iget v5, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    sub-int/2addr v5, p1

    invoke-static {v2, v0, v4, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 460
    add-int/lit8 v0, p1, 0x1

    iget-object v2, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mArray:[Ljava/lang/Object;

    iget v4, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    sub-int/2addr v4, p1

    invoke-static {v3, v0, v2, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 463
    :cond_4
    iget v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    .line 464
    iget v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    if-ge p1, v0, :cond_5

    .line 467
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mHashes:[I

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mHashes:[I

    iget v4, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    sub-int/2addr v4, p1

    invoke-static {v0, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 468
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mArray:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mArray:[Ljava/lang/Object;

    iget v4, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    sub-int/2addr v4, p1

    invoke-static {v0, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 470
    :cond_5
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mArray:[Ljava/lang/Object;

    iget v2, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    const/4 v3, 0x0

    aput-object v3, v0, v2

    goto :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 727
    const/4 v1, 0x0

    .line 728
    iget v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v0, v1

    move v1, v3

    :goto_0
    if-ltz v1, :cond_1

    .line 729
    iget-object v2, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 730
    invoke-virtual {p0, v1}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 731
    const/4 v0, 0x1

    .line 728
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 734
    :cond_1
    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 501
    iget v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 506
    iget v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 507
    iget-object v1, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mArray:[Ljava/lang/Object;

    iget v2, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 508
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 513
    array-length v0, p1

    iget v1, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    if-ge v0, v1, :cond_1

    .line 515
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 518
    :goto_0
    iget-object v1, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mArray:[Ljava/lang/Object;

    iget v2, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 519
    array-length v1, v0

    iget v2, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    if-le v1, v2, :cond_0

    .line 520
    iget v1, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 522
    :cond_0
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 584
    invoke-virtual {p0}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    const-string v0, "{}"

    .line 602
    :goto_0
    return-object v0

    .line 588
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    mul-int/lit8 v0, v0, 0xe

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 589
    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 590
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    if-ge v0, v2, :cond_3

    .line 591
    if-lez v0, :cond_1

    .line 592
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    :cond_1
    invoke-virtual {p0, v0}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 595
    if-eq v2, p0, :cond_2

    .line 596
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 590
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 598
    :cond_2
    const-string v2, "(this Set)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 601
    :cond_3
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 602
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

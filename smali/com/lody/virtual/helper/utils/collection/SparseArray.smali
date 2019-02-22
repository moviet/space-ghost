.class public Lcom/lody/virtual/helper/utils/collection/SparseArray;
.super Ljava/lang/Object;
.source "SparseArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[I

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/lody/virtual/helper/utils/collection/SparseArray;-><init>(I)V

    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v2, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mGarbage:Z

    .line 46
    if-nez p1, :cond_0

    .line 47
    sget-object v0, Lcom/lody/virtual/helper/utils/collection/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mKeys:[I

    .line 48
    sget-object v0, Lcom/lody/virtual/helper/utils/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mValues:[Ljava/lang/Object;

    .line 54
    :goto_0
    iput v2, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mSize:I

    .line 55
    return-void

    .line 50
    :cond_0
    invoke-static {p1}, Lcom/lody/virtual/helper/utils/collection/ContainerHelpers;->idealIntArraySize(I)I

    move-result v0

    .line 51
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mKeys:[I

    .line 52
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mValues:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private gc()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 141
    iget v3, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mSize:I

    .line 143
    iget-object v4, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mKeys:[I

    .line 144
    iget-object v5, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mValues:[Ljava/lang/Object;

    move v1, v2

    move v0, v2

    .line 146
    :goto_0
    if-ge v1, v3, :cond_2

    .line 147
    aget-object v6, v5, v1

    .line 149
    sget-object v7, Lcom/lody/virtual/helper/utils/collection/SparseArray;->DELETED:Ljava/lang/Object;

    if-eq v6, v7, :cond_1

    .line 150
    if-eq v1, v0, :cond_0

    .line 151
    aget v7, v4, v1

    aput v7, v4, v0

    .line 152
    aput-object v6, v5, v0

    .line 153
    const/4 v6, 0x0

    aput-object v6, v5, v1

    .line 156
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 146
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    :cond_2
    iput-boolean v2, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mGarbage:Z

    .line 161
    iput v0, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mSize:I

    .line 164
    return-void
.end method


# virtual methods
.method public append(ILjava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 343
    iget v0, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mSize:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mKeys:[I

    iget v1, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mSize:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    if-gt p1, v0, :cond_0

    .line 344
    invoke-virtual {p0, p1, p2}, Lcom/lody/virtual/helper/utils/collection/SparseArray;->put(ILjava/lang/Object;)V

    .line 370
    :goto_0
    return-void

    .line 348
    :cond_0
    iget-boolean v0, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mSize:I

    iget-object v1, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mKeys:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 349
    invoke-direct {p0}, Lcom/lody/virtual/helper/utils/collection/SparseArray;->gc()V

    .line 352
    :cond_1
    iget v0, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mSize:I

    .line 353
    iget-object v1, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mKeys:[I

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 354
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Lcom/lody/virtual/helper/utils/collection/ContainerHelpers;->idealIntArraySize(I)I

    move-result v1

    .line 356
    new-array v2, v1, [I

    .line 357
    new-array v1, v1, [Ljava/lang/Object;

    .line 360
    iget-object v3, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mKeys:[I

    iget-object v4, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mKeys:[I

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    iget-object v3, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mValues:[Ljava/lang/Object;

    iget-object v4, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mValues:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 363
    iput-object v2, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mKeys:[I

    .line 364
    iput-object v1, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mValues:[Ljava/lang/Object;

    .line 367
    :cond_2
    iget-object v1, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mKeys:[I

    aput p1, v1, v0

    .line 368
    iget-object v1, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 369
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mSize:I

    goto :goto_0
.end method

.method public clear()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 327
    iget v2, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mSize:I

    .line 328
    iget-object v3, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mValues:[Ljava/lang/Object;

    move v0, v1

    .line 330
    :goto_0
    if-ge v0, v2, :cond_0

    .line 331
    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    :cond_0
    iput v1, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mSize:I

    .line 335
    iput-boolean v1, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mGarbage:Z

    .line 336
    return-void
.end method

.method public clone()Lcom/lody/virtual/helper/utils/collection/SparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lody/virtual/helper/utils/collection/SparseArray",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 60
    const/4 v1, 0x0

    .line 62
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/helper/utils/collection/SparseArray;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :try_start_1
    iget-object v1, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mKeys:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mKeys:[I

    .line 64
    iget-object v1, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mValues:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mValues:[Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    :goto_0
    return-object v0

    .line 65
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/lody/virtual/helper/utils/collection/SparseArray;->clone()Lcom/lody/virtual/helper/utils/collection/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public delete(I)V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mKeys:[I

    iget v1, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mSize:I

    invoke-static {v0, v1, p1}, Lcom/lody/virtual/helper/utils/collection/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 100
    if-ltz v0, :cond_0

    .line 101
    iget-object v1, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lcom/lody/virtual/helper/utils/collection/SparseArray;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 102
    iget-object v1, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mValues:[Ljava/lang/Object;

    sget-object v2, Lcom/lody/virtual/helper/utils/collection/SparseArray;->DELETED:Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mGarbage:Z

    .line 106
    :cond_0
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lody/virtual/helper/utils/collection/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mKeys:[I

    iget v1, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mSize:I

    invoke-static {v0, v1, p1}, Lcom/lody/virtual/helper/utils/collection/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 87
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lcom/lody/virtual/helper/utils/collection/SparseArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-object p2

    :cond_1
    iget-object v1, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object p2, v1, v0

    goto :goto_0
.end method

.method public indexOfKey(I)I
    .locals 2

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 295
    invoke-direct {p0}, Lcom/lody/virtual/helper/utils/collection/SparseArray;->gc()V

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mKeys:[I

    iget v1, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mSize:I

    invoke-static {v0, v1, p1}, Lcom/lody/virtual/helper/utils/collection/ContainerHelpers;->binarySearch([III)I

    move-result v0

    return v0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 313
    invoke-direct {p0}, Lcom/lody/virtual/helper/utils/collection/SparseArray;->gc()V

    .line 316
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mSize:I

    if-ge v0, v1, :cond_2

    .line 317
    iget-object v1, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 320
    :goto_1
    return v0

    .line 316
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 320
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public keyAt(I)I
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/lody/virtual/helper/utils/collection/SparseArray;->gc()V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 172
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mKeys:[I

    iget v1, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mSize:I

    invoke-static {v0, v1, p1}, Lcom/lody/virtual/helper/utils/collection/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 174
    if-ltz v0, :cond_0

    .line 175
    iget-object v1, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 216
    :goto_0
    return-void

    .line 177
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 179
    iget v1, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lcom/lody/virtual/helper/utils/collection/SparseArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 180
    iget-object v1, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mKeys:[I

    aput p1, v1, v0

    .line 181
    iget-object v1, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v1, v0

    goto :goto_0

    .line 185
    :cond_1
    iget-boolean v1, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mGarbage:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mSize:I

    iget-object v2, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mKeys:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 186
    invoke-direct {p0}, Lcom/lody/virtual/helper/utils/collection/SparseArray;->gc()V

    .line 189
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mKeys:[I

    iget v1, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mSize:I

    invoke-static {v0, v1, p1}, Lcom/lody/virtual/helper/utils/collection/ContainerHelpers;->binarySearch([III)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    .line 192
    :cond_2
    iget v1, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mSize:I

    iget-object v2, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mKeys:[I

    array-length v2, v2

    if-lt v1, v2, :cond_3

    .line 193
    iget v1, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/lody/virtual/helper/utils/collection/ContainerHelpers;->idealIntArraySize(I)I

    move-result v1

    .line 195
    new-array v2, v1, [I

    .line 196
    new-array v1, v1, [Ljava/lang/Object;

    .line 199
    iget-object v3, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mKeys:[I

    iget-object v4, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mKeys:[I

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    iget-object v3, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mValues:[Ljava/lang/Object;

    iget-object v4, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mValues:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    iput-object v2, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mKeys:[I

    .line 203
    iput-object v1, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mValues:[Ljava/lang/Object;

    .line 206
    :cond_3
    iget v1, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mSize:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_4

    .line 208
    iget-object v1, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mKeys:[I

    iget-object v2, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mKeys:[I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    iget-object v1, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mValues:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mValues:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    :cond_4
    iget-object v1, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mKeys:[I

    aput p1, v1, v0

    .line 213
    iget-object v1, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 214
    iget v0, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mSize:I

    goto/16 :goto_0
.end method

.method public remove(I)V
    .locals 0

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/lody/virtual/helper/utils/collection/SparseArray;->delete(I)V

    .line 113
    return-void
.end method

.method public removeAt(I)V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Lcom/lody/virtual/helper/utils/collection/SparseArray;->DELETED:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mValues:[Ljava/lang/Object;

    sget-object v1, Lcom/lody/virtual/helper/utils/collection/SparseArray;->DELETED:Ljava/lang/Object;

    aput-object v1, v0, p1

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mGarbage:Z

    .line 123
    :cond_0
    return-void
.end method

.method public removeAtRange(II)V
    .locals 2

    .prologue
    .line 132
    iget v0, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mSize:I

    add-int v1, p1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 133
    :goto_0
    if-ge p1, v0, :cond_0

    .line 134
    invoke-virtual {p0, p1}, Lcom/lody/virtual/helper/utils/collection/SparseArray;->removeAt(I)V

    .line 133
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 136
    :cond_0
    return-void
.end method

.method public removeReturnOld(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mKeys:[I

    iget v1, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mSize:I

    invoke-static {v0, v1, p1}, Lcom/lody/virtual/helper/utils/collection/ContainerHelpers;->binarySearch([III)I

    move-result v1

    .line 264
    if-ltz v1, :cond_0

    .line 265
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, v1

    sget-object v2, Lcom/lody/virtual/helper/utils/collection/SparseArray;->DELETED:Ljava/lang/Object;

    if-eq v0, v2, :cond_0

    .line 266
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, v1

    .line 267
    iget-object v2, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mValues:[Ljava/lang/Object;

    sget-object v3, Lcom/lody/virtual/helper/utils/collection/SparseArray;->DELETED:Ljava/lang/Object;

    aput-object v3, v2, v1

    .line 268
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mGarbage:Z

    .line 272
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 282
    invoke-direct {p0}, Lcom/lody/virtual/helper/utils/collection/SparseArray;->gc()V

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 286
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/lody/virtual/helper/utils/collection/SparseArray;->gc()V

    .line 227
    :cond_0
    iget v0, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/lody/virtual/helper/utils/collection/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 382
    const-string v0, "{}"

    .line 402
    :goto_0
    return-object v0

    .line 385
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mSize:I

    mul-int/lit8 v0, v0, 0x1c

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 386
    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 387
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mSize:I

    if-ge v0, v2, :cond_3

    .line 388
    if-lez v0, :cond_1

    .line 389
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    :cond_1
    invoke-virtual {p0, v0}, Lcom/lody/virtual/helper/utils/collection/SparseArray;->keyAt(I)I

    move-result v2

    .line 392
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 393
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {p0, v0}, Lcom/lody/virtual/helper/utils/collection/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 395
    if-eq v2, p0, :cond_2

    .line 396
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 387
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 398
    :cond_2
    const-string v2, "(this Map)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 401
    :cond_3
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 402
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
    .line 250
    iget-boolean v0, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/lody/virtual/helper/utils/collection/SparseArray;->gc()V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

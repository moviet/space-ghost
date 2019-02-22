.class public final Lcom/lody/virtual/os/VUserHandle;
.super Ljava/lang/Object;
.source "VUserHandle.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ALL:Lcom/lody/virtual/os/VUserHandle;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lody/virtual/os/VUserHandle;",
            ">;"
        }
    .end annotation
.end field

.field public static final CURRENT:Lcom/lody/virtual/os/VUserHandle;

.field public static final CURRENT_OR_SELF:Lcom/lody/virtual/os/VUserHandle;

.field public static final FIRST_ISOLATED_UID:I = 0x182b8

.field public static final FIRST_SHARED_APPLICATION_GID:I = 0xc350

.field public static final LAST_ISOLATED_UID:I = 0x1869f

.field public static final LAST_SHARED_APPLICATION_GID:I = 0xea5f

.field public static final MU_ENABLED:Z = true

.field public static final OWNER:Lcom/lody/virtual/os/VUserHandle;

.field public static final PER_USER_RANGE:I = 0x186a0

.field public static final USER_ALL:I = -0x1

.field public static final USER_CURRENT:I = -0x2

.field public static final USER_CURRENT_OR_SELF:I = -0x3

.field public static final USER_NULL:I = -0x2710

.field public static final USER_OWNER:I

.field private static final userHandles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/lody/virtual/os/VUserHandle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/lody/virtual/os/VUserHandle;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/lody/virtual/os/VUserHandle;-><init>(I)V

    sput-object v0, Lcom/lody/virtual/os/VUserHandle;->ALL:Lcom/lody/virtual/os/VUserHandle;

    .line 47
    new-instance v0, Lcom/lody/virtual/os/VUserHandle;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/lody/virtual/os/VUserHandle;-><init>(I)V

    sput-object v0, Lcom/lody/virtual/os/VUserHandle;->CURRENT:Lcom/lody/virtual/os/VUserHandle;

    .line 57
    new-instance v0, Lcom/lody/virtual/os/VUserHandle;

    const/4 v1, -0x3

    invoke-direct {v0, v1}, Lcom/lody/virtual/os/VUserHandle;-><init>(I)V

    sput-object v0, Lcom/lody/virtual/os/VUserHandle;->CURRENT_OR_SELF:Lcom/lody/virtual/os/VUserHandle;

    .line 66
    new-instance v0, Lcom/lody/virtual/os/VUserHandle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lody/virtual/os/VUserHandle;-><init>(I)V

    sput-object v0, Lcom/lody/virtual/os/VUserHandle;->OWNER:Lcom/lody/virtual/os/VUserHandle;

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/lody/virtual/os/VUserHandle;->userHandles:Landroid/util/SparseArray;

    .line 373
    new-instance v0, Lcom/lody/virtual/os/VUserHandle$1;

    invoke-direct {v0}, Lcom/lody/virtual/os/VUserHandle$1;-><init>()V

    sput-object v0, Lcom/lody/virtual/os/VUserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput p1, p0, Lcom/lody/virtual/os/VUserHandle;->mHandle:I

    .line 300
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/os/VUserHandle;->mHandle:I

    .line 396
    return-void
.end method

.method public static accept(I)Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v0

    if-ne p0, v0, :cond_1

    .line 89
    :cond_0
    const/4 v0, 0x1

    .line 91
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static formatUid(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    invoke-static {v0, p0}, Lcom/lody/virtual/os/VUserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 251
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatUid(Ljava/io/PrintWriter;I)V
    .locals 4

    .prologue
    const v3, 0x182b8

    const/16 v2, 0x2710

    .line 260
    if-ge p1, v2, :cond_0

    .line 261
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 277
    :goto_0
    return-void

    .line 263
    :cond_0
    const/16 v0, 0x75

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 264
    invoke-static {p1}, Lcom/lody/virtual/os/VUserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 265
    invoke-static {p1}, Lcom/lody/virtual/os/VUserHandle;->getAppId(I)I

    move-result v0

    .line 266
    if-lt v0, v3, :cond_1

    const v1, 0x1869f

    if-gt v0, v1, :cond_1

    .line 267
    const/16 v1, 0x69

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 268
    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_0

    .line 269
    :cond_1
    if-lt v0, v2, :cond_2

    .line 270
    const/16 v1, 0x61

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 271
    add-int/lit16 v0, v0, -0x2710

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_0

    .line 273
    :cond_2
    const/16 v1, 0x73

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 274
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_0
.end method

.method public static formatUid(Ljava/lang/StringBuilder;I)V
    .locals 4

    .prologue
    const v3, 0x182b8

    const/16 v2, 0x2710

    .line 224
    if-ge p1, v2, :cond_0

    .line 225
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    :goto_0
    return-void

    .line 227
    :cond_0
    const/16 v0, 0x75

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 228
    invoke-static {p1}, Lcom/lody/virtual/os/VUserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    invoke-static {p1}, Lcom/lody/virtual/os/VUserHandle;->getAppId(I)I

    move-result v0

    .line 230
    if-lt v0, v3, :cond_1

    const v1, 0x1869f

    if-gt v0, v1, :cond_1

    .line 231
    const/16 v1, 0x69

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 232
    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 233
    :cond_1
    if-lt v0, v2, :cond_2

    .line 234
    const/16 v1, 0x61

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 235
    add-int/lit16 v0, v0, -0x2710

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 237
    :cond_2
    const/16 v1, 0x73

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static getAppId(I)I
    .locals 1

    .prologue
    .line 173
    const v0, 0x186a0

    rem-int v0, p0, v0

    return v0
.end method

.method public static getAppIdFromSharedAppGid(I)I
    .locals 3

    .prologue
    const v2, 0xc350

    .line 182
    invoke-static {p0}, Lcom/lody/virtual/os/VUserHandle;->getAppId(I)I

    move-result v0

    .line 183
    if-lt v0, v2, :cond_0

    const v1, 0xea5f

    if-le v0, v1, :cond_1

    .line 185
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a shared app gid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_1
    add-int/lit16 v0, v0, 0x2710

    sub-int/2addr v0, v2

    return v0
.end method

.method public static getCallingUserHandle()Lcom/lody/virtual/os/VUserHandle;
    .locals 3

    .prologue
    .line 146
    invoke-static {}, Lcom/lody/virtual/os/VBinder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Lcom/lody/virtual/os/VUserHandle;->getUserId(I)I

    move-result v1

    .line 147
    sget-object v0, Lcom/lody/virtual/os/VUserHandle;->userHandles:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/os/VUserHandle;

    .line 149
    if-nez v0, :cond_0

    .line 150
    new-instance v0, Lcom/lody/virtual/os/VUserHandle;

    invoke-direct {v0, v1}, Lcom/lody/virtual/os/VUserHandle;-><init>(I)V

    .line 151
    sget-object v2, Lcom/lody/virtual/os/VUserHandle;->userHandles:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 153
    :cond_0
    return-object v0
.end method

.method public static getCallingUserId()I
    .locals 1

    .prologue
    .line 141
    invoke-static {}, Lcom/lody/virtual/os/VBinder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Lcom/lody/virtual/os/VUserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public static getUid(II)I
    .locals 2

    .prologue
    const v1, 0x186a0

    .line 162
    mul-int v0, p0, v1

    rem-int v1, p1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static getUserId(I)I
    .locals 1

    .prologue
    .line 132
    const v0, 0x186a0

    div-int v0, p0, v0

    return v0
.end method

.method public static isApp(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 118
    if-lez p0, :cond_0

    .line 119
    invoke-static {p0}, Lcom/lody/virtual/os/VUserHandle;->getAppId(I)I

    move-result v1

    .line 120
    const/16 v2, 0x2710

    if-lt v1, v2, :cond_0

    const/16 v2, 0x4e1f

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    .line 122
    :cond_0
    return v0
.end method

.method public static final isIsolated(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 108
    if-lez p0, :cond_0

    .line 109
    invoke-static {p0}, Lcom/lody/virtual/os/VUserHandle;->getAppId(I)I

    move-result v1

    .line 110
    const v2, 0x182b8

    if-lt v1, v2, :cond_0

    const v2, 0x1869f

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    .line 112
    :cond_0
    return v0
.end method

.method public static final isSameApp(II)Z
    .locals 2

    .prologue
    .line 103
    invoke-static {p0}, Lcom/lody/virtual/os/VUserHandle;->getAppId(I)I

    move-result v0

    invoke-static {p1}, Lcom/lody/virtual/os/VUserHandle;->getAppId(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSameUser(II)Z
    .locals 2

    .prologue
    .line 84
    invoke-static {p0}, Lcom/lody/virtual/os/VUserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p1}, Lcom/lody/virtual/os/VUserHandle;->getUserId(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static myUserHandle()Lcom/lody/virtual/os/VUserHandle;
    .locals 2

    .prologue
    .line 399
    new-instance v0, Lcom/lody/virtual/os/VUserHandle;

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/lody/virtual/os/VUserHandle;-><init>(I)V

    return-object v0
.end method

.method public static myUserId()I
    .locals 1

    .prologue
    .line 285
    invoke-static {}, Lcom/lody/virtual/client/VClientImpl;->getClient()Lcom/lody/virtual/client/VClientImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/VClientImpl;->getVUid()I

    move-result v0

    invoke-static {v0}, Lcom/lody/virtual/os/VUserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Lcom/lody/virtual/os/VUserHandle;
    .locals 2

    .prologue
    .line 369
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 370
    const/16 v0, -0x2710

    if-eq v1, v0, :cond_0

    new-instance v0, Lcom/lody/virtual/os/VUserHandle;

    invoke-direct {v0, v1}, Lcom/lody/virtual/os/VUserHandle;-><init>(I)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static writeToParcel(Lcom/lody/virtual/os/VUserHandle;Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 350
    if-eqz p0, :cond_0

    .line 351
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lody/virtual/os/VUserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 355
    :goto_0
    return-void

    .line 353
    :cond_0
    const/16 v0, -0x2710

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 318
    if-eqz p1, :cond_0

    .line 319
    :try_start_0
    check-cast p1, Lcom/lody/virtual/os/VUserHandle;

    .line 320
    iget v1, p0, Lcom/lody/virtual/os/VUserHandle;->mHandle:I

    iget v2, p1, Lcom/lody/virtual/os/VUserHandle;->mHandle:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 324
    :cond_0
    :goto_0
    return v0

    .line 322
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getIdentifier()I
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Lcom/lody/virtual/os/VUserHandle;->mHandle:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Lcom/lody/virtual/os/VUserHandle;->mHandle:I

    return v0
.end method

.method public final isOwner()Z
    .locals 1

    .prologue
    .line 294
    sget-object v0, Lcom/lody/virtual/os/VUserHandle;->OWNER:Lcom/lody/virtual/os/VUserHandle;

    invoke-virtual {p0, v0}, Lcom/lody/virtual/os/VUserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VUserHandle{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lody/virtual/os/VUserHandle;->mHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 337
    iget v0, p0, Lcom/lody/virtual/os/VUserHandle;->mHandle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    return-void
.end method

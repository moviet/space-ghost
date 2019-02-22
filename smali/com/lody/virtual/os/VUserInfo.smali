.class public Lcom/lody/virtual/os/VUserInfo;
.super Ljava/lang/Object;
.source "VUserInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lody/virtual/os/VUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_ADMIN:I = 0x2

.field public static final FLAG_DISABLED:I = 0x40

.field public static final FLAG_GUEST:I = 0x4

.field public static final FLAG_INITIALIZED:I = 0x10

.field public static final FLAG_MANAGED_PROFILE:I = 0x20

.field public static final FLAG_MASK_USER_TYPE:I = 0xff

.field public static final FLAG_PRIMARY:I = 0x1

.field public static final FLAG_RESTRICTED:I = 0x8

.field public static final NO_PROFILE_GROUP_ID:I = -0x1


# instance fields
.field public creationTime:J

.field public flags:I

.field public guestToRemove:Z

.field public iconPath:Ljava/lang/String;

.field public id:I

.field public lastLoggedInTime:J

.field public name:Ljava/lang/String;

.field public partial:Z

.field public profileGroupId:I

.field public serialNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 149
    new-instance v0, Lcom/lody/virtual/os/VUserInfo$1;

    invoke-direct {v0}, Lcom/lody/virtual/os/VUserInfo$1;-><init>()V

    sput-object v0, Lcom/lody/virtual/os/VUserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/lody/virtual/os/VUserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput p1, p0, Lcom/lody/virtual/os/VUserInfo;->id:I

    .line 81
    iput-object p2, p0, Lcom/lody/virtual/os/VUserInfo;->name:Ljava/lang/String;

    .line 82
    iput p4, p0, Lcom/lody/virtual/os/VUserInfo;->flags:I

    .line 83
    iput-object p3, p0, Lcom/lody/virtual/os/VUserInfo;->iconPath:Ljava/lang/String;

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/lody/virtual/os/VUserInfo;->profileGroupId:I

    .line 85
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/os/VUserInfo;->id:I

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/os/VUserInfo;->name:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/os/VUserInfo;->iconPath:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/os/VUserInfo;->flags:I

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/os/VUserInfo;->serialNumber:I

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lody/virtual/os/VUserInfo;->creationTime:J

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lody/virtual/os/VUserInfo;->lastLoggedInTime:J

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/lody/virtual/os/VUserInfo;->partial:Z

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/os/VUserInfo;->profileGroupId:I

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/lody/virtual/os/VUserInfo;->guestToRemove:Z

    .line 170
    return-void

    :cond_0
    move v0, v2

    .line 167
    goto :goto_0

    :cond_1
    move v1, v2

    .line 169
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/lody/virtual/os/VUserInfo$1;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/lody/virtual/os/VUserInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/lody/virtual/os/VUserInfo;)V
    .locals 2

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iget-object v0, p1, Lcom/lody/virtual/os/VUserInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/lody/virtual/os/VUserInfo;->name:Ljava/lang/String;

    .line 116
    iget-object v0, p1, Lcom/lody/virtual/os/VUserInfo;->iconPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/lody/virtual/os/VUserInfo;->iconPath:Ljava/lang/String;

    .line 117
    iget v0, p1, Lcom/lody/virtual/os/VUserInfo;->id:I

    iput v0, p0, Lcom/lody/virtual/os/VUserInfo;->id:I

    .line 118
    iget v0, p1, Lcom/lody/virtual/os/VUserInfo;->flags:I

    iput v0, p0, Lcom/lody/virtual/os/VUserInfo;->flags:I

    .line 119
    iget v0, p1, Lcom/lody/virtual/os/VUserInfo;->serialNumber:I

    iput v0, p0, Lcom/lody/virtual/os/VUserInfo;->serialNumber:I

    .line 120
    iget-wide v0, p1, Lcom/lody/virtual/os/VUserInfo;->creationTime:J

    iput-wide v0, p0, Lcom/lody/virtual/os/VUserInfo;->creationTime:J

    .line 121
    iget-wide v0, p1, Lcom/lody/virtual/os/VUserInfo;->lastLoggedInTime:J

    iput-wide v0, p0, Lcom/lody/virtual/os/VUserInfo;->lastLoggedInTime:J

    .line 122
    iget-boolean v0, p1, Lcom/lody/virtual/os/VUserInfo;->partial:Z

    iput-boolean v0, p0, Lcom/lody/virtual/os/VUserInfo;->partial:Z

    .line 123
    iget v0, p1, Lcom/lody/virtual/os/VUserInfo;->profileGroupId:I

    iput v0, p0, Lcom/lody/virtual/os/VUserInfo;->profileGroupId:I

    .line 124
    iget-boolean v0, p1, Lcom/lody/virtual/os/VUserInfo;->guestToRemove:Z

    iput-boolean v0, p0, Lcom/lody/virtual/os/VUserInfo;->guestToRemove:Z

    .line 125
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public isAdmin()Z
    .locals 2

    .prologue
    .line 92
    iget v0, p0, Lcom/lody/virtual/os/VUserInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 108
    iget v0, p0, Lcom/lody/virtual/os/VUserInfo;->flags:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGuest()Z
    .locals 2

    .prologue
    .line 96
    iget v0, p0, Lcom/lody/virtual/os/VUserInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isManagedProfile()Z
    .locals 2

    .prologue
    .line 104
    iget v0, p0, Lcom/lody/virtual/os/VUserInfo;->flags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrimary()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 88
    iget v1, p0, Lcom/lody/virtual/os/VUserInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRestricted()Z
    .locals 2

    .prologue
    .line 100
    iget v0, p0, Lcom/lody/virtual/os/VUserInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lody/virtual/os/VUserInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lody/virtual/os/VUserInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lody/virtual/os/VUserInfo;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 137
    iget v0, p0, Lcom/lody/virtual/os/VUserInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-object v0, p0, Lcom/lody/virtual/os/VUserInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/lody/virtual/os/VUserInfo;->iconPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget v0, p0, Lcom/lody/virtual/os/VUserInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget v0, p0, Lcom/lody/virtual/os/VUserInfo;->serialNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget-wide v4, p0, Lcom/lody/virtual/os/VUserInfo;->creationTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 143
    iget-wide v4, p0, Lcom/lody/virtual/os/VUserInfo;->lastLoggedInTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 144
    iget-boolean v0, p0, Lcom/lody/virtual/os/VUserInfo;->partial:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget v0, p0, Lcom/lody/virtual/os/VUserInfo;->profileGroupId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget-boolean v0, p0, Lcom/lody/virtual/os/VUserInfo;->guestToRemove:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    return-void

    :cond_0
    move v0, v2

    .line 144
    goto :goto_0

    :cond_1
    move v1, v2

    .line 146
    goto :goto_1
.end method

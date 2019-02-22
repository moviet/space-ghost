.class public abstract Lcom/lody/virtual/service/IUserManager$Stub;
.super Landroid/os/Binder;
.source "IUserManager.java"

# interfaces
.implements Lcom/lody/virtual/service/IUserManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/service/IUserManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/service/IUserManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lody.virtual.service.IUserManager"

.field static final TRANSACTION_createUser:I = 0x1

.field static final TRANSACTION_getUserHandle:I = 0xc

.field static final TRANSACTION_getUserIcon:I = 0x5

.field static final TRANSACTION_getUserInfo:I = 0x7

.field static final TRANSACTION_getUserSerialNumber:I = 0xb

.field static final TRANSACTION_getUsers:I = 0x6

.field static final TRANSACTION_isGuestEnabled:I = 0x9

.field static final TRANSACTION_removeUser:I = 0x2

.field static final TRANSACTION_setGuestEnabled:I = 0x8

.field static final TRANSACTION_setUserIcon:I = 0x4

.field static final TRANSACTION_setUserName:I = 0x3

.field static final TRANSACTION_wipeUser:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.lody.virtual.service.IUserManager"

    invoke-virtual {p0, p0, v0}, Lcom/lody/virtual/service/IUserManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lody/virtual/service/IUserManager;
    .locals 2

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v0, "com.lody.virtual.service.IUserManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lody/virtual/service/IUserManager;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/lody/virtual/service/IUserManager;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/lody/virtual/service/IUserManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/lody/virtual/service/IUserManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 192
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 45
    :sswitch_0
    const-string v0, "com.lody.virtual.service.IUserManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v2, "com.lody.virtual.service.IUserManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 55
    invoke-virtual {p0, v2, v3}, Lcom/lody/virtual/service/IUserManager$Stub;->createUser(Ljava/lang/String;I)Lcom/lody/virtual/os/VUserInfo;

    move-result-object v2

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v2, :cond_0

    .line 58
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    invoke-virtual {v2, p3, v1}, Lcom/lody/virtual/os/VUserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 68
    :sswitch_2
    const-string v2, "com.lody.virtual.service.IUserManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 71
    invoke-virtual {p0, v2}, Lcom/lody/virtual/service/IUserManager$Stub;->removeUser(I)Z

    move-result v2

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 78
    :sswitch_3
    const-string v0, "com.lody.virtual.service.IUserManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-virtual {p0, v0, v2}, Lcom/lody/virtual/service/IUserManager$Stub;->setUserName(ILjava/lang/String;)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 89
    :sswitch_4
    const-string v0, "com.lody.virtual.service.IUserManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 99
    :goto_1
    invoke-virtual {p0, v2, v0}, Lcom/lody/virtual/service/IUserManager$Stub;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 97
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 105
    :sswitch_5
    const-string v2, "com.lody.virtual.service.IUserManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 108
    invoke-virtual {p0, v2}, Lcom/lody/virtual/service/IUserManager$Stub;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    if-eqz v2, :cond_3

    .line 111
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    invoke-virtual {v2, p3, v1}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 115
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 121
    :sswitch_6
    const-string v2, "com.lody.virtual.service.IUserManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 124
    :cond_4
    invoke-virtual {p0, v0}, Lcom/lody/virtual/service/IUserManager$Stub;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 131
    :sswitch_7
    const-string v2, "com.lody.virtual.service.IUserManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 134
    invoke-virtual {p0, v2}, Lcom/lody/virtual/service/IUserManager$Stub;->getUserInfo(I)Lcom/lody/virtual/os/VUserInfo;

    move-result-object v2

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    if-eqz v2, :cond_5

    .line 137
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    invoke-virtual {v2, p3, v1}, Lcom/lody/virtual/os/VUserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 141
    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 147
    :sswitch_8
    const-string v2, "com.lody.virtual.service.IUserManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    move v0, v1

    .line 150
    :cond_6
    invoke-virtual {p0, v0}, Lcom/lody/virtual/service/IUserManager$Stub;->setGuestEnabled(Z)V

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 156
    :sswitch_9
    const-string v2, "com.lody.virtual.service.IUserManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/lody/virtual/service/IUserManager$Stub;->isGuestEnabled()Z

    move-result v2

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    if-eqz v2, :cond_7

    move v0, v1

    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 164
    :sswitch_a
    const-string v0, "com.lody.virtual.service.IUserManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 167
    invoke-virtual {p0, v0}, Lcom/lody/virtual/service/IUserManager$Stub;->wipeUser(I)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 173
    :sswitch_b
    const-string v0, "com.lody.virtual.service.IUserManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 176
    invoke-virtual {p0, v0}, Lcom/lody/virtual/service/IUserManager$Stub;->getUserSerialNumber(I)I

    move-result v0

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 183
    :sswitch_c
    const-string v0, "com.lody.virtual.service.IUserManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 186
    invoke-virtual {p0, v0}, Lcom/lody/virtual/service/IUserManager$Stub;->getUserHandle(I)I

    move-result v0

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

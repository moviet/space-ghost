.class public abstract Lcom/lody/virtual/service/IPackageManager$Stub;
.super Landroid/os/Binder;
.source "IPackageManager.java"

# interfaces
.implements Lcom/lody/virtual/service/IPackageManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/service/IPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/service/IPackageManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lody.virtual.service.IPackageManager"

.field static final TRANSACTION_activitySupportsIntent:I = 0x7

.field static final TRANSACTION_checkPermission:I = 0x4

.field static final TRANSACTION_getActivityInfo:I = 0x6

.field static final TRANSACTION_getAllPermissionGroups:I = 0x16

.field static final TRANSACTION_getApplicationInfo:I = 0x18

.field static final TRANSACTION_getInstalledApplications:I = 0x12

.field static final TRANSACTION_getInstalledPackages:I = 0x11

.field static final TRANSACTION_getPackageInfo:I = 0x5

.field static final TRANSACTION_getPackageUid:I = 0x1

.field static final TRANSACTION_getPackagesForUid:I = 0x2

.field static final TRANSACTION_getPermissionGroupInfo:I = 0x15

.field static final TRANSACTION_getPermissionInfo:I = 0x13

.field static final TRANSACTION_getProviderInfo:I = 0xa

.field static final TRANSACTION_getReceiverInfo:I = 0x8

.field static final TRANSACTION_getServiceInfo:I = 0x9

.field static final TRANSACTION_getSharedLibraries:I = 0x3

.field static final TRANSACTION_queryContentProviders:I = 0x19

.field static final TRANSACTION_queryIntentActivities:I = 0xc

.field static final TRANSACTION_queryIntentContentProviders:I = 0x10

.field static final TRANSACTION_queryIntentReceivers:I = 0xd

.field static final TRANSACTION_queryIntentServices:I = 0xf

.field static final TRANSACTION_queryPermissionsByGroup:I = 0x14

.field static final TRANSACTION_queryReceivers:I = 0x1a

.field static final TRANSACTION_querySharedPackages:I = 0x1b

.field static final TRANSACTION_resolveContentProvider:I = 0x17

.field static final TRANSACTION_resolveIntent:I = 0xb

.field static final TRANSACTION_resolveService:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.lody.virtual.service.IPackageManager"

    invoke-virtual {p0, p0, v0}, Lcom/lody/virtual/service/IPackageManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lody/virtual/service/IPackageManager;
    .locals 2

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v0, "com.lody.virtual.service.IPackageManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lody/virtual/service/IPackageManager;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/lody/virtual/service/IPackageManager;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/lody/virtual/service/IPackageManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/lody/virtual/service/IPackageManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 552
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v0, "com.lody.virtual.service.IPackageManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.lody.virtual.service.IPackageManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 52
    invoke-virtual {p0, v0, v1}, Lcom/lody/virtual/service/IPackageManager$Stub;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 59
    :sswitch_2
    const-string v0, "com.lody.virtual.service.IPackageManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 62
    invoke-virtual {p0, v0}, Lcom/lody/virtual/service/IPackageManager$Stub;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :sswitch_3
    const-string v0, "com.lody.virtual.service.IPackageManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-virtual {p0, v0}, Lcom/lody/virtual/service/IPackageManager$Stub;->getSharedLibraries(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_0

    .line 79
    :sswitch_4
    const-string v0, "com.lody.virtual.service.IPackageManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 86
    invoke-virtual {p0, v0, v1, v2}, Lcom/lody/virtual/service/IPackageManager$Stub;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 93
    :sswitch_5
    const-string v0, "com.lody.virtual.service.IPackageManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 100
    invoke-virtual {p0, v0, v1, v2}, Lcom/lody/virtual/service/IPackageManager$Stub;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    invoke-virtual {v0, p3, v3}, Landroid/content/pm/PackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 107
    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 113
    :sswitch_6
    const-string v0, "com.lody.virtual.service.IPackageManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 122
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 125
    invoke-virtual {p0, v0, v1, v2}, Lcom/lody/virtual/service/IPackageManager$Stub;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v0, :cond_2

    .line 128
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    invoke-virtual {v0, p3, v3}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_1
    move-object v0, v1

    .line 119
    goto :goto_1

    .line 132
    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 138
    :sswitch_7
    const-string v0, "com.lody.virtual.service.IPackageManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    move-object v2, v0

    .line 147
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 148
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 154
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-virtual {p0, v2, v0, v1}, Lcom/lody/virtual/service/IPackageManager$Stub;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    if-eqz v0, :cond_5

    move v0, v3

    :goto_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_3
    move-object v2, v1

    .line 144
    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 151
    goto :goto_3

    :cond_5
    move v0, v4

    .line 157
    goto :goto_4

    .line 162
    :sswitch_8
    const-string v0, "com.lody.virtual.service.IPackageManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 165
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 171
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 174
    invoke-virtual {p0, v0, v1, v2}, Lcom/lody/virtual/service/IPackageManager$Stub;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    if-eqz v0, :cond_7

    .line 177
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    invoke-virtual {v0, p3, v3}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_6
    move-object v0, v1

    .line 168
    goto :goto_5

    .line 181
    :cond_7
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 187
    :sswitch_9
    const-string v0, "com.lody.virtual.service.IPackageManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    .line 190
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 196
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 199
    invoke-virtual {p0, v0, v1, v2}, Lcom/lody/virtual/service/IPackageManager$Stub;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    if-eqz v0, :cond_9

    .line 202
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    invoke-virtual {v0, p3, v3}, Landroid/content/pm/ServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_8
    move-object v0, v1

    .line 193
    goto :goto_6

    .line 206
    :cond_9
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 212
    :sswitch_a
    const-string v0, "com.lody.virtual.service.IPackageManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 215
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 221
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 224
    invoke-virtual {p0, v0, v1, v2}, Lcom/lody/virtual/service/IPackageManager$Stub;->getProviderInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    if-eqz v0, :cond_b

    .line 227
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    invoke-virtual {v0, p3, v3}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_a
    move-object v0, v1

    .line 218
    goto :goto_7

    .line 231
    :cond_b
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 237
    :sswitch_b
    const-string v0, "com.lody.virtual.service.IPackageManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    .line 240
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 246
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 251
    invoke-virtual {p0, v0, v1, v2, v5}, Lcom/lody/virtual/service/IPackageManager$Stub;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    if-eqz v0, :cond_d

    .line 254
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    invoke-virtual {v0, p3, v3}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_c
    move-object v0, v1

    .line 243
    goto :goto_8

    .line 258
    :cond_d
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 264
    :sswitch_c
    const-string v0, "com.lody.virtual.service.IPackageManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    .line 267
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 273
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 278
    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/lody/virtual/service/IPackageManager$Stub;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_e
    move-object v0, v1

    .line 270
    goto :goto_9

    .line 285
    :sswitch_d
    const-string v0, "com.lody.virtual.service.IPackageManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    .line 288
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 294
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 296
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 298
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 299
    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/lody/virtual/service/IPackageManager$Stub;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 300
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_f
    move-object v0, v1

    .line 291
    goto :goto_a

    .line 306
    :sswitch_e
    const-string v0, "com.lody.virtual.service.IPackageManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    .line 309
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 315
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 320
    invoke-virtual {p0, v0, v1, v2, v5}, Lcom/lody/virtual/service/IPackageManager$Stub;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    if-eqz v0, :cond_11

    .line 323
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    invoke-virtual {v0, p3, v3}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_10
    move-object v0, v1

    .line 312
    goto :goto_b

    .line 327
    :cond_11
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 333
    :sswitch_f
    const-string v0, "com.lody.virtual.service.IPackageManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    .line 336
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 342
    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 346
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 347
    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/lody/virtual/service/IPackageManager$Stub;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 348
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_12
    move-object v0, v1

    .line 339
    goto :goto_c

    .line 354
    :sswitch_10
    const-string v0, "com.lody.virtual.service.IPackageManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    .line 357
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 363
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 365
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 368
    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/lody/virtual/service/IPackageManager$Stub;->queryIntentContentProviders(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_13
    move-object v0, v1

    .line 360
    goto :goto_d

    .line 375
    :sswitch_11
    const-string v0, "com.lody.virtual.service.IPackageManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 380
    invoke-virtual {p0, v0, v1}, Lcom/lody/virtual/service/IPackageManager$Stub;->getInstalledPackages(II)Lcom/lody/virtual/helper/proto/VParceledListSlice;

    move-result-object v0

    .line 381
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    if-eqz v0, :cond_14

    .line 383
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 384
    invoke-virtual {v0, p3, v3}, Lcom/lody/virtual/helper/proto/VParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 387
    :cond_14
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 393
    :sswitch_12
    const-string v0, "com.lody.virtual.service.IPackageManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 397
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 398
    invoke-virtual {p0, v0, v1}, Lcom/lody/virtual/service/IPackageManager$Stub;->getInstalledApplications(II)Lcom/lody/virtual/helper/proto/VParceledListSlice;

    move-result-object v0

    .line 399
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    if-eqz v0, :cond_15

    .line 401
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    invoke-virtual {v0, p3, v3}, Lcom/lody/virtual/helper/proto/VParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 405
    :cond_15
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 411
    :sswitch_13
    const-string v0, "com.lody.virtual.service.IPackageManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 415
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 416
    invoke-virtual {p0, v0, v1}, Lcom/lody/virtual/service/IPackageManager$Stub;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    .line 417
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    if-eqz v0, :cond_16

    .line 419
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    invoke-virtual {v0, p3, v3}, Landroid/content/pm/PermissionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 423
    :cond_16
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 429
    :sswitch_14
    const-string v0, "com.lody.virtual.service.IPackageManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 433
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 434
    invoke-virtual {p0, v0, v1}, Lcom/lody/virtual/service/IPackageManager$Stub;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 435
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 441
    :sswitch_15
    const-string v0, "com.lody.virtual.service.IPackageManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 445
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 446
    invoke-virtual {p0, v0, v1}, Lcom/lody/virtual/service/IPackageManager$Stub;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v0

    .line 447
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    if-eqz v0, :cond_17

    .line 449
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 450
    invoke-virtual {v0, p3, v3}, Landroid/content/pm/PermissionGroupInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 453
    :cond_17
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 459
    :sswitch_16
    const-string v0, "com.lody.virtual.service.IPackageManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 462
    invoke-virtual {p0, v0}, Lcom/lody/virtual/service/IPackageManager$Stub;->getAllPermissionGroups(I)Ljava/util/List;

    move-result-object v0

    .line 463
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 469
    :sswitch_17
    const-string v0, "com.lody.virtual.service.IPackageManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 473
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 475
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 476
    invoke-virtual {p0, v0, v1, v2}, Lcom/lody/virtual/service/IPackageManager$Stub;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 477
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    if-eqz v0, :cond_18

    .line 479
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 480
    invoke-virtual {v0, p3, v3}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 483
    :cond_18
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 489
    :sswitch_18
    const-string v0, "com.lody.virtual.service.IPackageManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 493
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 495
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 496
    invoke-virtual {p0, v0, v1, v2}, Lcom/lody/virtual/service/IPackageManager$Stub;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 497
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    if-eqz v0, :cond_19

    .line 499
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 500
    invoke-virtual {v0, p3, v3}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 503
    :cond_19
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 509
    :sswitch_19
    const-string v0, "com.lody.virtual.service.IPackageManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 513
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 515
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 516
    invoke-virtual {p0, v0, v1, v2}, Lcom/lody/virtual/service/IPackageManager$Stub;->queryContentProviders(Ljava/lang/String;II)Lcom/lody/virtual/helper/proto/VParceledListSlice;

    move-result-object v0

    .line 517
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    if-eqz v0, :cond_1a

    .line 519
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    invoke-virtual {v0, p3, v3}, Lcom/lody/virtual/helper/proto/VParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 523
    :cond_1a
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 529
    :sswitch_1a
    const-string v0, "com.lody.virtual.service.IPackageManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 533
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 535
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 536
    invoke-virtual {p0, v0, v1, v2}, Lcom/lody/virtual/service/IPackageManager$Stub;->queryReceivers(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 537
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 543
    :sswitch_1b
    const-string v0, "com.lody.virtual.service.IPackageManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 546
    invoke-virtual {p0, v0}, Lcom/lody/virtual/service/IPackageManager$Stub;->querySharedPackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 547
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 38
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
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

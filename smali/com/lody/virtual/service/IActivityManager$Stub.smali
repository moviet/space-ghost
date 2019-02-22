.class public abstract Lcom/lody/virtual/service/IActivityManager$Stub;
.super Landroid/os/Binder;
.source "IActivityManager.java"

# interfaces
.implements Lcom/lody/virtual/service/IActivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/service/IActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/service/IActivityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lody.virtual.service.IActivityManager"

.field static final TRANSACTION_acquireProviderClient:I = 0x28

.field static final TRANSACTION_addPendingIntent:I = 0x2a

.field static final TRANSACTION_appDoneExecuting:I = 0x12

.field static final TRANSACTION_bindService:I = 0x21

.field static final TRANSACTION_dump:I = 0xd

.field static final TRANSACTION_getActivityClassForToken:I = 0x17

.field static final TRANSACTION_getAppProcessName:I = 0x8

.field static final TRANSACTION_getCallingActivity:I = 0x19

.field static final TRANSACTION_getCallingPackage:I = 0x18

.field static final TRANSACTION_getFreeStubCount:I = 0x2

.field static final TRANSACTION_getInitialPackage:I = 0x10

.field static final TRANSACTION_getPackageForToken:I = 0x1b

.field static final TRANSACTION_getPendingIntent:I = 0x29

.field static final TRANSACTION_getProcessPkgList:I = 0x9

.field static final TRANSACTION_getServices:I = 0x27

.field static final TRANSACTION_getSystemPid:I = 0x3

.field static final TRANSACTION_getTaskInfo:I = 0x1a

.field static final TRANSACTION_getUidByPid:I = 0x4

.field static final TRANSACTION_handleApplicationCrash:I = 0x11

.field static final TRANSACTION_initProcess:I = 0x1

.field static final TRANSACTION_isAppPid:I = 0x7

.field static final TRANSACTION_isAppProcess:I = 0x5

.field static final TRANSACTION_isAppRunning:I = 0x6

.field static final TRANSACTION_isVAServiceToken:I = 0x1c

.field static final TRANSACTION_killAllApps:I = 0xa

.field static final TRANSACTION_killAppByPkg:I = 0xb

.field static final TRANSACTION_killApplicationProcess:I = 0xc

.field static final TRANSACTION_onActivityCreated:I = 0x14

.field static final TRANSACTION_onActivityDestroyed:I = 0x16

.field static final TRANSACTION_onActivityResumed:I = 0x15

.field static final TRANSACTION_peekService:I = 0x25

.field static final TRANSACTION_processRestarted:I = 0x2c

.field static final TRANSACTION_publishService:I = 0x26

.field static final TRANSACTION_registerProcessObserver:I = 0xe

.field static final TRANSACTION_removePendingIntent:I = 0x2b

.field static final TRANSACTION_serviceDoneExecuting:I = 0x24

.field static final TRANSACTION_setServiceForeground:I = 0x20

.field static final TRANSACTION_startActivity:I = 0x13

.field static final TRANSACTION_startService:I = 0x1d

.field static final TRANSACTION_stopService:I = 0x1e

.field static final TRANSACTION_stopServiceToken:I = 0x1f

.field static final TRANSACTION_unbindFinished:I = 0x23

.field static final TRANSACTION_unbindService:I = 0x22

.field static final TRANSACTION_unregisterProcessObserver:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.lody.virtual.service.IActivityManager"

    invoke-virtual {p0, p0, v0}, Lcom/lody/virtual/service/IActivityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lody/virtual/service/IActivityManager;
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
    const-string v0, "com.lody.virtual.service.IActivityManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lody/virtual/service/IActivityManager;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/lody/virtual/service/IActivityManager;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/lody/virtual/service/IActivityManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/lody/virtual/service/IActivityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 699
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_0
    return v9

    .line 42
    :sswitch_0
    const-string v0, "com.lody.virtual.service.IActivityManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.lody.virtual.service.IActivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 54
    invoke-virtual {p0, v0, v1, v2}, Lcom/lody/virtual/service/IActivityManager$Stub;->initProcess(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 61
    :sswitch_2
    const-string v0, "com.lody.virtual.service.IActivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/lody/virtual/service/IActivityManager$Stub;->getFreeStubCount()I

    move-result v0

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 69
    :sswitch_3
    const-string v0, "com.lody.virtual.service.IActivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/lody/virtual/service/IActivityManager$Stub;->getSystemPid()I

    move-result v0

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 77
    :sswitch_4
    const-string v0, "com.lody.virtual.service.IActivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 80
    invoke-virtual {p0, v0}, Lcom/lody/virtual/service/IActivityManager$Stub;->getUidByPid(I)I

    move-result v0

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 87
    :sswitch_5
    const-string v0, "com.lody.virtual.service.IActivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-virtual {p0, v0}, Lcom/lody/virtual/service/IActivityManager$Stub;->isAppProcess(Ljava/lang/String;)Z

    move-result v0

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v0, :cond_0

    move v0, v9

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    move v0, v5

    goto :goto_1

    .line 97
    :sswitch_6
    const-string v0, "com.lody.virtual.service.IActivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 102
    invoke-virtual {p0, v0, v1}, Lcom/lody/virtual/service/IActivityManager$Stub;->isAppRunning(Ljava/lang/String;I)Z

    move-result v0

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v0, :cond_1

    move v5, v9

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 109
    :sswitch_7
    const-string v0, "com.lody.virtual.service.IActivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 112
    invoke-virtual {p0, v0}, Lcom/lody/virtual/service/IActivityManager$Stub;->isAppPid(I)Z

    move-result v0

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    if-eqz v0, :cond_2

    move v5, v9

    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 119
    :sswitch_8
    const-string v0, "com.lody.virtual.service.IActivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 122
    invoke-virtual {p0, v0}, Lcom/lody/virtual/service/IActivityManager$Stub;->getAppProcessName(I)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 129
    :sswitch_9
    const-string v0, "com.lody.virtual.service.IActivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 132
    invoke-virtual {p0, v0}, Lcom/lody/virtual/service/IActivityManager$Stub;->getProcessPkgList(I)Ljava/util/List;

    move-result-object v0

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 139
    :sswitch_a
    const-string v0, "com.lody.virtual.service.IActivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/lody/virtual/service/IActivityManager$Stub;->killAllApps()V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 146
    :sswitch_b
    const-string v0, "com.lody.virtual.service.IActivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 151
    invoke-virtual {p0, v0, v1}, Lcom/lody/virtual/service/IActivityManager$Stub;->killAppByPkg(Ljava/lang/String;I)V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 157
    :sswitch_c
    const-string v0, "com.lody.virtual.service.IActivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 162
    invoke-virtual {p0, v0, v1}, Lcom/lody/virtual/service/IActivityManager$Stub;->killApplicationProcess(Ljava/lang/String;I)V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 168
    :sswitch_d
    const-string v0, "com.lody.virtual.service.IActivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/lody/virtual/service/IActivityManager$Stub;->dump()V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 175
    :sswitch_e
    const-string v0, "com.lody.virtual.service.IActivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lody/virtual/service/interfaces/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lody/virtual/service/interfaces/IProcessObserver;

    move-result-object v0

    .line 178
    invoke-virtual {p0, v0}, Lcom/lody/virtual/service/IActivityManager$Stub;->registerProcessObserver(Lcom/lody/virtual/service/interfaces/IProcessObserver;)V

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 184
    :sswitch_f
    const-string v0, "com.lody.virtual.service.IActivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lody/virtual/service/interfaces/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lody/virtual/service/interfaces/IProcessObserver;

    move-result-object v0

    .line 187
    invoke-virtual {p0, v0}, Lcom/lody/virtual/service/IActivityManager$Stub;->unregisterProcessObserver(Lcom/lody/virtual/service/interfaces/IProcessObserver;)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 193
    :sswitch_10
    const-string v0, "com.lody.virtual.service.IActivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 196
    invoke-virtual {p0, v0}, Lcom/lody/virtual/service/IActivityManager$Stub;->getInitialPackage(I)Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 203
    :sswitch_11
    const-string v0, "com.lody.virtual.service.IActivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lcom/lody/virtual/service/IActivityManager$Stub;->handleApplicationCrash()V

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 210
    :sswitch_12
    const-string v0, "com.lody.virtual.service.IActivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/lody/virtual/service/IActivityManager$Stub;->appDoneExecuting()V

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 217
    :sswitch_13
    const-string v0, "com.lody.virtual.service.IActivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 220
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    move-object v1, v0

    .line 226
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 227
    sget-object v0, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    move-object v2, v0

    .line 233
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 236
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object v4, v0

    .line 242
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v0, p0

    .line 247
    invoke-virtual/range {v0 .. v7}, Lcom/lody/virtual/service/IActivityManager$Stub;->startActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Landroid/os/Bundle;Ljava/lang/String;II)I

    move-result v0

    .line 248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_4
    move-object v1, v4

    .line 223
    goto :goto_2

    :cond_5
    move-object v2, v4

    .line 230
    goto :goto_3

    .line 254
    :sswitch_14
    const-string v0, "com.lody.virtual.service.IActivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    .line 257
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    move-object v1, v0

    .line 263
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    .line 264
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    move-object v2, v0

    .line 270
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 273
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    move-object v4, v0

    .line 279
    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object v0, p0

    .line 286
    invoke-virtual/range {v0 .. v8}, Lcom/lody/virtual/service/IActivityManager$Stub;->onActivityCreated(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;III)V

    .line 287
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_7
    move-object v1, v4

    .line 260
    goto :goto_4

    :cond_8
    move-object v2, v4

    .line 267
    goto :goto_5

    .line 292
    :sswitch_15
    const-string v0, "com.lody.virtual.service.IActivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 296
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 297
    invoke-virtual {p0, v0, v1}, Lcom/lody/virtual/service/IActivityManager$Stub;->onActivityResumed(ILandroid/os/IBinder;)V

    .line 298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 303
    :sswitch_16
    const-string v0, "com.lody.virtual.service.IActivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 308
    invoke-virtual {p0, v0, v1}, Lcom/lody/virtual/service/IActivityManager$Stub;->onActivityDestroyed(ILandroid/os/IBinder;)Z

    move-result v0

    .line 309
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    if-eqz v0, :cond_9

    move v5, v9

    :cond_9
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 315
    :sswitch_17
    const-string v0, "com.lody.virtual.service.IActivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 320
    invoke-virtual {p0, v0, v1}, Lcom/lody/virtual/service/IActivityManager$Stub;->getActivityClassForToken(ILandroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v0

    .line 321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    if-eqz v0, :cond_a

    .line 323
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    invoke-virtual {v0, p3, v9}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 327
    :cond_a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 333
    :sswitch_18
    const-string v0, "com.lody.virtual.service.IActivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 338
    invoke-virtual {p0, v0, v1}, Lcom/lody/virtual/service/IActivityManager$Stub;->getCallingPackage(ILandroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 345
    :sswitch_19
    const-string v0, "com.lody.virtual.service.IActivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 350
    invoke-virtual {p0, v0, v1}, Lcom/lody/virtual/service/IActivityManager$Stub;->getCallingActivity(ILandroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v0

    .line 351
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    if-eqz v0, :cond_b

    .line 353
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    invoke-virtual {v0, p3, v9}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 357
    :cond_b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 363
    :sswitch_1a
    const-string v0, "com.lody.virtual.service.IActivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 366
    invoke-virtual {p0, v0}, Lcom/lody/virtual/service/IActivityManager$Stub;->getTaskInfo(I)Lcom/lody/virtual/helper/proto/AppTaskInfo;

    move-result-object v0

    .line 367
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    if-eqz v0, :cond_c

    .line 369
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    invoke-virtual {v0, p3, v9}, Lcom/lody/virtual/helper/proto/AppTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 373
    :cond_c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 379
    :sswitch_1b
    const-string v0, "com.lody.virtual.service.IActivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 384
    invoke-virtual {p0, v0, v1}, Lcom/lody/virtual/service/IActivityManager$Stub;->getPackageForToken(ILandroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    .line 385
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 391
    :sswitch_1c
    const-string v0, "com.lody.virtual.service.IActivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 394
    invoke-virtual {p0, v0}, Lcom/lody/virtual/service/IActivityManager$Stub;->isVAServiceToken(Landroid/os/IBinder;)Z

    move-result v0

    .line 395
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    if-eqz v0, :cond_d

    move v5, v9

    :cond_d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 401
    :sswitch_1d
    const-string v0, "com.lody.virtual.service.IActivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 405
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    .line 406
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 412
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 414
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 415
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/lody/virtual/service/IActivityManager$Stub;->startService(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 416
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    if-eqz v0, :cond_f

    .line 418
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    invoke-virtual {v0, p3, v9}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_e
    move-object v0, v4

    .line 409
    goto :goto_6

    .line 422
    :cond_f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 428
    :sswitch_1e
    const-string v0, "com.lody.virtual.service.IActivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 432
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    .line 433
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 439
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 441
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 442
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/lody/virtual/service/IActivityManager$Stub;->stopService(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    .line 443
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_10
    move-object v0, v4

    .line 436
    goto :goto_7

    .line 449
    :sswitch_1f
    const-string v0, "com.lody.virtual.service.IActivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    .line 452
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 458
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 460
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 462
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 463
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lody/virtual/service/IActivityManager$Stub;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;II)Z

    move-result v0

    .line 464
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    if-eqz v0, :cond_11

    move v5, v9

    :cond_11
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_12
    move-object v0, v4

    .line 455
    goto :goto_8

    .line 470
    :sswitch_20
    const-string v0, "com.lody.virtual.service.IActivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    .line 473
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    move-object v1, v0

    .line 479
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 481
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 483
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    .line 484
    sget-object v0, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification;

    move-object v4, v0

    .line 490
    :cond_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    move v5, v9

    .line 492
    :cond_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object v0, p0

    .line 493
    invoke-virtual/range {v0 .. v6}, Lcom/lody/virtual/service/IActivityManager$Stub;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;ZI)V

    .line 494
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_15
    move-object v1, v4

    .line 476
    goto :goto_9

    .line 499
    :sswitch_21
    const-string v0, "com.lody.virtual.service.IActivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 503
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 505
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    .line 506
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    move-object v3, v0

    .line 512
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 514
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v5

    .line 516
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 518
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v0, p0

    .line 519
    invoke-virtual/range {v0 .. v7}, Lcom/lody/virtual/service/IActivityManager$Stub;->bindService(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;II)I

    move-result v0

    .line 520
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_16
    move-object v3, v4

    .line 509
    goto :goto_a

    .line 526
    :sswitch_22
    const-string v0, "com.lody.virtual.service.IActivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v0

    .line 530
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 531
    invoke-virtual {p0, v0, v1}, Lcom/lody/virtual/service/IActivityManager$Stub;->unbindService(Landroid/app/IServiceConnection;I)Z

    move-result v0

    .line 532
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    if-eqz v0, :cond_17

    move v5, v9

    :cond_17
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 538
    :sswitch_23
    const-string v0, "com.lody.virtual.service.IActivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 540
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 542
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    .line 543
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 549
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_18

    move v5, v9

    .line 551
    :cond_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 552
    invoke-virtual {p0, v1, v0, v5, v2}, Lcom/lody/virtual/service/IActivityManager$Stub;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;ZI)V

    .line 553
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_19
    move-object v0, v4

    .line 546
    goto :goto_b

    .line 558
    :sswitch_24
    const-string v0, "com.lody.virtual.service.IActivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 560
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 562
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 564
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 566
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 568
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object v0, p0

    .line 569
    invoke-virtual/range {v0 .. v5}, Lcom/lody/virtual/service/IActivityManager$Stub;->serviceDoneExecuting(Landroid/os/IBinder;IIII)V

    .line 570
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 575
    :sswitch_25
    const-string v0, "com.lody.virtual.service.IActivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a

    .line 578
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 584
    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 586
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 587
    invoke-virtual {p0, v0, v1, v2}, Lcom/lody/virtual/service/IActivityManager$Stub;->peekService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/os/IBinder;

    move-result-object v0

    .line 588
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 589
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :cond_1a
    move-object v0, v4

    .line 581
    goto :goto_c

    .line 594
    :sswitch_26
    const-string v0, "com.lody.virtual.service.IActivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 596
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 598
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1b

    .line 599
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 605
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 607
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 608
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/lody/virtual/service/IActivityManager$Stub;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;I)V

    .line 609
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_1b
    move-object v0, v4

    .line 602
    goto :goto_d

    .line 614
    :sswitch_27
    const-string v0, "com.lody.virtual.service.IActivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 616
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 618
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 620
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 621
    invoke-virtual {p0, v0, v1, v2}, Lcom/lody/virtual/service/IActivityManager$Stub;->getServices(III)Lcom/lody/virtual/helper/proto/VParceledListSlice;

    move-result-object v0

    .line 622
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 623
    if-eqz v0, :cond_1c

    .line 624
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 625
    invoke-virtual {v0, p3, v9}, Lcom/lody/virtual/helper/proto/VParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 628
    :cond_1c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 634
    :sswitch_28
    const-string v0, "com.lody.virtual.service.IActivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 636
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 638
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d

    .line 639
    sget-object v0, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ProviderInfo;

    .line 644
    :goto_e
    invoke-virtual {p0, v1, v0}, Lcom/lody/virtual/service/IActivityManager$Stub;->acquireProviderClient(ILandroid/content/pm/ProviderInfo;)Landroid/os/IBinder;

    move-result-object v0

    .line 645
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 646
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :cond_1d
    move-object v0, v4

    .line 642
    goto :goto_e

    .line 651
    :sswitch_29
    const-string v0, "com.lody.virtual.service.IActivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 653
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 654
    invoke-virtual {p0, v0}, Lcom/lody/virtual/service/IActivityManager$Stub;->getPendingIntent(Landroid/os/IBinder;)Lcom/lody/virtual/helper/proto/PendingIntentData;

    move-result-object v0

    .line 655
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 656
    if-eqz v0, :cond_1e

    .line 657
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 658
    invoke-virtual {v0, p3, v9}, Lcom/lody/virtual/helper/proto/PendingIntentData;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 661
    :cond_1e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 667
    :sswitch_2a
    const-string v0, "com.lody.virtual.service.IActivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 669
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 671
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 672
    invoke-virtual {p0, v0, v1}, Lcom/lody/virtual/service/IActivityManager$Stub;->addPendingIntent(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 673
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 678
    :sswitch_2b
    const-string v0, "com.lody.virtual.service.IActivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 680
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 681
    invoke-virtual {p0, v0}, Lcom/lody/virtual/service/IActivityManager$Stub;->removePendingIntent(Landroid/os/IBinder;)V

    .line 682
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 687
    :sswitch_2c
    const-string v0, "com.lody.virtual.service.IActivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 689
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 691
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 693
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 694
    invoke-virtual {p0, v0, v1, v2}, Lcom/lody/virtual/service/IActivityManager$Stub;->processRestarted(Ljava/lang/String;Ljava/lang/String;I)V

    .line 695
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
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
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

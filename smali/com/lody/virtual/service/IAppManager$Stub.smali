.class public abstract Lcom/lody/virtual/service/IAppManager$Stub;
.super Landroid/os/Binder;
.source "IAppManager.java"

# interfaces
.implements Lcom/lody/virtual/service/IAppManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/service/IAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/service/IAppManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lody.virtual.service.IAppManager"

.field static final TRANSACTION_findAppInfo:I = 0x2

.field static final TRANSACTION_findAppPermissions:I = 0xa

.field static final TRANSACTION_getAllApps:I = 0x5

.field static final TRANSACTION_getAppCount:I = 0x6

.field static final TRANSACTION_installApp:I = 0x3

.field static final TRANSACTION_isAppInstalled:I = 0x7

.field static final TRANSACTION_preloadAllApps:I = 0x1

.field static final TRANSACTION_registerObserver:I = 0x8

.field static final TRANSACTION_uninstallApp:I = 0x4

.field static final TRANSACTION_unregisterObserver:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.lody.virtual.service.IAppManager"

    invoke-virtual {p0, p0, v0}, Lcom/lody/virtual/service/IAppManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lody/virtual/service/IAppManager;
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
    const-string v0, "com.lody.virtual.service.IAppManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lody/virtual/service/IAppManager;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/lody/virtual/service/IAppManager;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/lody/virtual/service/IAppManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/lody/virtual/service/IAppManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 151
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 42
    :sswitch_0
    const-string v0, "com.lody.virtual.service.IAppManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.lody.virtual.service.IAppManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/lody/virtual/service/IAppManager$Stub;->preloadAllApps()V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 54
    :sswitch_2
    const-string v2, "com.lody.virtual.service.IAppManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-virtual {p0, v2}, Lcom/lody/virtual/service/IAppManager$Stub;->findAppInfo(Ljava/lang/String;)Lcom/lody/virtual/helper/proto/AppSetting;

    move-result-object v2

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v2, :cond_0

    .line 60
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    invoke-virtual {v2, p3, v1}, Lcom/lody/virtual/helper/proto/AppSetting;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 70
    :sswitch_3
    const-string v2, "com.lody.virtual.service.IAppManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 75
    invoke-virtual {p0, v2, v3}, Lcom/lody/virtual/service/IAppManager$Stub;->installApp(Ljava/lang/String;I)Lcom/lody/virtual/helper/proto/InstallResult;

    move-result-object v2

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v2, :cond_1

    .line 78
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    invoke-virtual {v2, p3, v1}, Lcom/lody/virtual/helper/proto/InstallResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 88
    :sswitch_4
    const-string v2, "com.lody.virtual.service.IAppManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-virtual {p0, v2}, Lcom/lody/virtual/service/IAppManager$Stub;->uninstallApp(Ljava/lang/String;)Z

    move-result v2

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 98
    :sswitch_5
    const-string v0, "com.lody.virtual.service.IAppManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/lody/virtual/service/IAppManager$Stub;->getAllApps()Ljava/util/List;

    move-result-object v0

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 106
    :sswitch_6
    const-string v0, "com.lody.virtual.service.IAppManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/lody/virtual/service/IAppManager$Stub;->getAppCount()I

    move-result v0

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 114
    :sswitch_7
    const-string v2, "com.lody.virtual.service.IAppManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-virtual {p0, v2}, Lcom/lody/virtual/service/IAppManager$Stub;->isAppInstalled(Ljava/lang/String;)Z

    move-result v2

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-eqz v2, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 124
    :sswitch_8
    const-string v0, "com.lody.virtual.service.IAppManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lody/virtual/service/interfaces/IAppObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lody/virtual/service/interfaces/IAppObserver;

    move-result-object v0

    .line 127
    invoke-virtual {p0, v0}, Lcom/lody/virtual/service/IAppManager$Stub;->registerObserver(Lcom/lody/virtual/service/interfaces/IAppObserver;)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 133
    :sswitch_9
    const-string v0, "com.lody.virtual.service.IAppManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lody/virtual/service/interfaces/IAppObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lody/virtual/service/interfaces/IAppObserver;

    move-result-object v0

    .line 136
    invoke-virtual {p0, v0}, Lcom/lody/virtual/service/IAppManager$Stub;->unregisterObserver(Lcom/lody/virtual/service/interfaces/IAppObserver;)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 142
    :sswitch_a
    const-string v0, "com.lody.virtual.service.IAppManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-virtual {p0, v0}, Lcom/lody/virtual/service/IAppManager$Stub;->findAppPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

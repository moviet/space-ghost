.class public abstract Lcom/lody/virtual/service/interfaces/IIntentFilterObserver$Stub;
.super Landroid/os/Binder;
.source "IIntentFilterObserver.java"

# interfaces
.implements Lcom/lody/virtual/service/interfaces/IIntentFilterObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/service/interfaces/IIntentFilterObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/service/interfaces/IIntentFilterObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lody.virtual.service.interfaces.IIntentFilterObserver"

.field static final TRANSACTION_filter:I = 0x1

.field static final TRANSACTION_getCallBack:I = 0x3

.field static final TRANSACTION_setCallBack:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.lody.virtual.service.interfaces.IIntentFilterObserver"

    invoke-virtual {p0, p0, v0}, Lcom/lody/virtual/service/interfaces/IIntentFilterObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lody/virtual/service/interfaces/IIntentFilterObserver;
    .locals 2

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string v0, "com.lody.virtual.service.interfaces.IIntentFilterObserver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lody/virtual/service/interfaces/IIntentFilterObserver;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/lody/virtual/service/interfaces/IIntentFilterObserver;

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lcom/lody/virtual/service/interfaces/IIntentFilterObserver$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/lody/virtual/service/interfaces/IIntentFilterObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 86
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 44
    :sswitch_0
    const-string v0, "com.lody.virtual.service.interfaces.IIntentFilterObserver"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 45
    goto :goto_0

    .line 49
    :sswitch_1
    const-string v0, "com.lody.virtual.service.interfaces.IIntentFilterObserver"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 57
    :goto_1
    invoke-virtual {p0, v0}, Lcom/lody/virtual/service/interfaces/IIntentFilterObserver$Stub;->filter(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    invoke-virtual {v0, p3, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    move v0, v1

    .line 66
    goto :goto_0

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 64
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 70
    :sswitch_2
    const-string v0, "com.lody.virtual.service.interfaces.IIntentFilterObserver"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 73
    invoke-virtual {p0, v0}, Lcom/lody/virtual/service/interfaces/IIntentFilterObserver$Stub;->setCallBack(Landroid/os/IBinder;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 75
    goto :goto_0

    .line 79
    :sswitch_3
    const-string v0, "com.lody.virtual.service.interfaces.IIntentFilterObserver"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/lody/virtual/service/interfaces/IIntentFilterObserver$Stub;->getCallBack()Landroid/os/IBinder;

    move-result-object v0

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v1

    .line 83
    goto :goto_0

    .line 40
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

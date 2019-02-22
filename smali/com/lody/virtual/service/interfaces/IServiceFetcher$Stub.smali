.class public abstract Lcom/lody/virtual/service/interfaces/IServiceFetcher$Stub;
.super Landroid/os/Binder;
.source "IServiceFetcher.java"

# interfaces
.implements Lcom/lody/virtual/service/interfaces/IServiceFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/service/interfaces/IServiceFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/service/interfaces/IServiceFetcher$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lody.virtual.service.interfaces.IServiceFetcher"

.field static final TRANSACTION_addService:I = 0x2

.field static final TRANSACTION_getService:I = 0x1

.field static final TRANSACTION_removeService:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.lody.virtual.service.interfaces.IServiceFetcher"

    invoke-virtual {p0, p0, v0}, Lcom/lody/virtual/service/interfaces/IServiceFetcher$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lody/virtual/service/interfaces/IServiceFetcher;
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
    const-string v0, "com.lody.virtual.service.interfaces.IServiceFetcher"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lody/virtual/service/interfaces/IServiceFetcher;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/lody/virtual/service/interfaces/IServiceFetcher;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/lody/virtual/service/interfaces/IServiceFetcher$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/lody/virtual/service/interfaces/IServiceFetcher$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v1, "com.lody.virtual.service.interfaces.IServiceFetcher"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v1, "com.lody.virtual.service.interfaces.IServiceFetcher"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-virtual {p0, v1}, Lcom/lody/virtual/service/interfaces/IServiceFetcher$Stub;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 57
    :sswitch_2
    const-string v1, "com.lody.virtual.service.interfaces.IServiceFetcher"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 62
    invoke-virtual {p0, v1, v2}, Lcom/lody/virtual/service/interfaces/IServiceFetcher$Stub;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 68
    :sswitch_3
    const-string v1, "com.lody.virtual.service.interfaces.IServiceFetcher"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {p0, v1}, Lcom/lody/virtual/service/interfaces/IServiceFetcher$Stub;->removeService(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

.class public Lcom/lody/virtual/helper/proto/PendingIntentData;
.super Ljava/lang/Object;
.source "PendingIntentData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lody/virtual/helper/proto/PendingIntentData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public creator:Ljava/lang/String;

.field public pendingIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/lody/virtual/helper/proto/PendingIntentData$1;

    invoke-direct {v0}, Lcom/lody/virtual/helper/proto/PendingIntentData$1;-><init>()V

    sput-object v0, Lcom/lody/virtual/helper/proto/PendingIntentData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/helper/proto/PendingIntentData;->creator:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/helper/proto/PendingIntentData;->pendingIntent:Landroid/app/PendingIntent;

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/lody/virtual/helper/proto/PendingIntentData;->creator:Ljava/lang/String;

    .line 20
    invoke-static {p2}, Lcom/lody/virtual/helper/proto/PendingIntentData;->readPendingIntent(Landroid/os/IBinder;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/helper/proto/PendingIntentData;->pendingIntent:Landroid/app/PendingIntent;

    .line 21
    return-void
.end method

.method public static readPendingIntent(Landroid/os/IBinder;)Landroid/app/PendingIntent;
    .locals 2

    .prologue
    .line 24
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 25
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 26
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 28
    :try_start_0
    invoke-static {v0}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 30
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lody/virtual/helper/proto/PendingIntentData;->creator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/lody/virtual/helper/proto/PendingIntentData;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, p2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 41
    return-void
.end method

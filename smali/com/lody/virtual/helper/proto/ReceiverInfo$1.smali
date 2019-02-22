.class final Lcom/lody/virtual/helper/proto/ReceiverInfo$1;
.super Ljava/lang/Object;
.source "ReceiverInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/helper/proto/ReceiverInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/lody/virtual/helper/proto/ReceiverInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lody/virtual/helper/proto/ReceiverInfo;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/lody/virtual/helper/proto/ReceiverInfo;

    invoke-direct {v0, p1}, Lcom/lody/virtual/helper/proto/ReceiverInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/lody/virtual/helper/proto/ReceiverInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lody/virtual/helper/proto/ReceiverInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lody/virtual/helper/proto/ReceiverInfo;
    .locals 1

    .prologue
    .line 21
    new-array v0, p1, [Lcom/lody/virtual/helper/proto/ReceiverInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/lody/virtual/helper/proto/ReceiverInfo$1;->newArray(I)[Lcom/lody/virtual/helper/proto/ReceiverInfo;

    move-result-object v0

    return-object v0
.end method

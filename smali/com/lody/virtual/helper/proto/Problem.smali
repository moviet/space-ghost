.class public Lcom/lody/virtual/helper/proto/Problem;
.super Ljava/lang/Object;
.source "Problem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lody/virtual/helper/proto/Problem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public e:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/lody/virtual/helper/proto/Problem$1;

    invoke-direct {v0}, Lcom/lody/virtual/helper/proto/Problem$1;-><init>()V

    sput-object v0, Lcom/lody/virtual/helper/proto/Problem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    iput-object v0, p0, Lcom/lody/virtual/helper/proto/Problem;->e:Ljava/lang/Throwable;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/lody/virtual/helper/proto/Problem;->e:Ljava/lang/Throwable;

    .line 24
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lody/virtual/helper/proto/Problem;->e:Ljava/lang/Throwable;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 38
    return-void
.end method

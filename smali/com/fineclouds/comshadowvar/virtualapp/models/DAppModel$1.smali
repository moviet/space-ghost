.class final Lcom/fineclouds/spaceghostq1/virtualapp/models/DAppModel$1;
.super Ljava/lang/Object;
.source "DAppModel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fineclouds/spaceghostq1/virtualapp/models/DAppModel;
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
        "Lcom/fineclouds/spaceghostq1/virtualapp/models/DAppModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/fineclouds/spaceghostq1/virtualapp/models/DAppModel;
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DAppModel;

    invoke-direct {v0, p1}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DAppModel;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/fineclouds/spaceghostq1/virtualapp/models/DAppModel;
    .locals 1

    .prologue
    .line 89
    new-array v0, p1, [Lcom/fineclouds/spaceghostq1/virtualapp/models/DAppModel;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DAppModel$1;->a(Landroid/os/Parcel;)Lcom/fineclouds/spaceghostq1/virtualapp/models/DAppModel;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DAppModel$1;->a(I)[Lcom/fineclouds/spaceghostq1/virtualapp/models/DAppModel;

    move-result-object v0

    return-object v0
.end method

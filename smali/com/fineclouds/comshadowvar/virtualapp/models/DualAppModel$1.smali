.class final Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel$1;
.super Ljava/lang/Object;
.source "DualAppModel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;
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
        "Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;
    .locals 1

    .prologue
    .line 174
    new-instance v0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    invoke-direct {v0, p1}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;
    .locals 1

    .prologue
    .line 179
    new-array v0, p1, [Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel$1;->a(Landroid/os/Parcel;)Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel$1;->a(I)[Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    move-result-object v0

    return-object v0
.end method

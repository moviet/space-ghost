.class Lcom/lody/virtual/helper/proto/VParceledListSlice$2;
.super Landroid/os/Binder;
.source "VParceledListSlice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/helper/proto/VParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/helper/proto/VParceledListSlice;

.field final synthetic val$N:I

.field final synthetic val$callFlags:I

.field final synthetic val$listElementClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/lody/virtual/helper/proto/VParceledListSlice;ILjava/lang/Class;I)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/lody/virtual/helper/proto/VParceledListSlice$2;->this$0:Lcom/lody/virtual/helper/proto/VParceledListSlice;

    iput p2, p0, Lcom/lody/virtual/helper/proto/VParceledListSlice$2;->val$N:I

    iput-object p3, p0, Lcom/lody/virtual/helper/proto/VParceledListSlice$2;->val$listElementClass:Ljava/lang/Class;

    iput p4, p0, Lcom/lody/virtual/helper/proto/VParceledListSlice$2;->val$callFlags:I

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 177
    if-eq p1, v2, :cond_0

    .line 178
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 200
    :goto_0
    return v0

    .line 180
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 181
    # getter for: Lcom/lody/virtual/helper/proto/VParceledListSlice;->DEBUG:Z
    invoke-static {}, Lcom/lody/virtual/helper/proto/VParceledListSlice;->access$100()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    # getter for: Lcom/lody/virtual/helper/proto/VParceledListSlice;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lody/virtual/helper/proto/VParceledListSlice;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Writing more @"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lody/virtual/helper/proto/VParceledListSlice$2;->val$N:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v1, v0

    .line 183
    :goto_1
    iget v0, p0, Lcom/lody/virtual/helper/proto/VParceledListSlice$2;->val$N:I

    if-ge v1, v0, :cond_3

    invoke-virtual {p3}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    const/high16 v3, 0x40000

    if-ge v0, v3, :cond_3

    .line 184
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget-object v0, p0, Lcom/lody/virtual/helper/proto/VParceledListSlice$2;->this$0:Lcom/lody/virtual/helper/proto/VParceledListSlice;

    # getter for: Lcom/lody/virtual/helper/proto/VParceledListSlice;->mList:Ljava/util/List;
    invoke-static {v0}, Lcom/lody/virtual/helper/proto/VParceledListSlice;->access$300(Lcom/lody/virtual/helper/proto/VParceledListSlice;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 187
    iget-object v3, p0, Lcom/lody/virtual/helper/proto/VParceledListSlice$2;->val$listElementClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    # invokes: Lcom/lody/virtual/helper/proto/VParceledListSlice;->verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V
    invoke-static {v3, v4}, Lcom/lody/virtual/helper/proto/VParceledListSlice;->access$400(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 189
    iget v3, p0, Lcom/lody/virtual/helper/proto/VParceledListSlice$2;->val$callFlags:I

    invoke-virtual {p3, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 191
    # getter for: Lcom/lody/virtual/helper/proto/VParceledListSlice;->DEBUG:Z
    invoke-static {}, Lcom/lody/virtual/helper/proto/VParceledListSlice;->access$100()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    # getter for: Lcom/lody/virtual/helper/proto/VParceledListSlice;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lody/virtual/helper/proto/VParceledListSlice;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrote extra #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lody/virtual/helper/proto/VParceledListSlice$2;->this$0:Lcom/lody/virtual/helper/proto/VParceledListSlice;

    # getter for: Lcom/lody/virtual/helper/proto/VParceledListSlice;->mList:Ljava/util/List;
    invoke-static {v4}, Lcom/lody/virtual/helper/proto/VParceledListSlice;->access$300(Lcom/lody/virtual/helper/proto/VParceledListSlice;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 194
    goto :goto_1

    .line 195
    :cond_3
    iget v0, p0, Lcom/lody/virtual/helper/proto/VParceledListSlice$2;->val$N:I

    if-ge v1, v0, :cond_5

    .line 196
    # getter for: Lcom/lody/virtual/helper/proto/VParceledListSlice;->DEBUG:Z
    invoke-static {}, Lcom/lody/virtual/helper/proto/VParceledListSlice;->access$100()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 197
    # getter for: Lcom/lody/virtual/helper/proto/VParceledListSlice;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lody/virtual/helper/proto/VParceledListSlice;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Breaking @"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/lody/virtual/helper/proto/VParceledListSlice$2;->val$N:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_5
    move v0, v2

    .line 200
    goto/16 :goto_0
.end method

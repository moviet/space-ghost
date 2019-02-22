.class Lcom/lody/virtual/helper/utils/collection/ArraySet$1;
.super Lcom/lody/virtual/helper/utils/collection/MapCollections;
.source "ArraySet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/helper/utils/collection/ArraySet;->getCollection()Lcom/lody/virtual/helper/utils/collection/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lody/virtual/helper/utils/collection/MapCollections",
        "<TE;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/helper/utils/collection/ArraySet;


# direct methods
.method constructor <init>(Lcom/lody/virtual/helper/utils/collection/ArraySet;)V
    .locals 0

    .prologue
    .line 612
    iput-object p1, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet$1;->this$0:Lcom/lody/virtual/helper/utils/collection/ArraySet;

    invoke-direct {p0}, Lcom/lody/virtual/helper/utils/collection/MapCollections;-><init>()V

    return-void
.end method


# virtual methods
.method protected colClear()V
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet$1;->this$0:Lcom/lody/virtual/helper/utils/collection/ArraySet;

    invoke-virtual {v0}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->clear()V

    .line 656
    return-void
.end method

.method protected colGetEntry(II)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet$1;->this$0:Lcom/lody/virtual/helper/utils/collection/ArraySet;

    iget-object v0, v0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected colGetMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TE;TE;>;"
        }
    .end annotation

    .prologue
    .line 635
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not a map"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected colGetSize()I
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet$1;->this$0:Lcom/lody/virtual/helper/utils/collection/ArraySet;

    iget v0, v0, Lcom/lody/virtual/helper/utils/collection/ArraySet;->mSize:I

    return v0
.end method

.method protected colIndexOfKey(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet$1;->this$0:Lcom/lody/virtual/helper/utils/collection/ArraySet;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected colIndexOfValue(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet$1;->this$0:Lcom/lody/virtual/helper/utils/collection/ArraySet;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected colPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .prologue
    .line 640
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet$1;->this$0:Lcom/lody/virtual/helper/utils/collection/ArraySet;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 641
    return-void
.end method

.method protected colRemoveAt(I)V
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/ArraySet$1;->this$0:Lcom/lody/virtual/helper/utils/collection/ArraySet;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/helper/utils/collection/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 651
    return-void
.end method

.method protected colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 645
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not a map"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

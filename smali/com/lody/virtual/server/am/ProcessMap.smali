.class public Lcom/lody/virtual/server/am/ProcessMap;
.super Ljava/lang/Object;
.source "ProcessMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mMap:Lcom/lody/virtual/helper/utils/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lody/virtual/helper/utils/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lody/virtual/helper/utils/collection/SparseArray",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lcom/lody/virtual/helper/utils/collection/ArrayMap;

    invoke-direct {v0}, Lcom/lody/virtual/helper/utils/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/am/ProcessMap;->mMap:Lcom/lody/virtual/helper/utils/collection/ArrayMap;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)TE;"
        }
    .end annotation

    .prologue
    .line 10
    iget-object v0, p0, Lcom/lody/virtual/server/am/ProcessMap;->mMap:Lcom/lody/virtual/helper/utils/collection/ArrayMap;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/helper/utils/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/helper/utils/collection/SparseArray;

    .line 11
    if-nez v0, :cond_0

    .line 12
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p2}, Lcom/lody/virtual/helper/utils/collection/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getMap()Lcom/lody/virtual/helper/utils/collection/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lody/virtual/helper/utils/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lody/virtual/helper/utils/collection/SparseArray",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lody/virtual/server/am/ProcessMap;->mMap:Lcom/lody/virtual/helper/utils/collection/ArrayMap;

    return-object v0
.end method

.method public put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lody/virtual/server/am/ProcessMap;->mMap:Lcom/lody/virtual/helper/utils/collection/ArrayMap;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/helper/utils/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/helper/utils/collection/SparseArray;

    .line 18
    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/lody/virtual/helper/utils/collection/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/lody/virtual/helper/utils/collection/SparseArray;-><init>(I)V

    .line 20
    iget-object v1, p0, Lcom/lody/virtual/server/am/ProcessMap;->mMap:Lcom/lody/virtual/helper/utils/collection/ArrayMap;

    invoke-virtual {v1, p1, v0}, Lcom/lody/virtual/helper/utils/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/lody/virtual/helper/utils/collection/SparseArray;->put(ILjava/lang/Object;)V

    .line 23
    return-object p3
.end method

.method public remove(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)TE;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lody/virtual/server/am/ProcessMap;->mMap:Lcom/lody/virtual/helper/utils/collection/ArrayMap;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/helper/utils/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/helper/utils/collection/SparseArray;

    .line 28
    if-eqz v0, :cond_1

    .line 29
    invoke-virtual {v0, p2}, Lcom/lody/virtual/helper/utils/collection/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v1

    .line 30
    invoke-virtual {v0}, Lcom/lody/virtual/helper/utils/collection/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/lody/virtual/server/am/ProcessMap;->mMap:Lcom/lody/virtual/helper/utils/collection/ArrayMap;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/helper/utils/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    .line 35
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

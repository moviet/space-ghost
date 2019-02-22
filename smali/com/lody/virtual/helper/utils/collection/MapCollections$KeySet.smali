.class final Lcom/lody/virtual/helper/utils/collection/MapCollections$KeySet;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/helper/utils/collection/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/helper/utils/collection/MapCollections;


# direct methods
.method constructor <init>(Lcom/lody/virtual/helper/utils/collection/MapCollections;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/lody/virtual/helper/utils/collection/MapCollections$KeySet;->this$0:Lcom/lody/virtual/helper/utils/collection/MapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 269
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;)Z"
        }
    .end annotation

    .prologue
    .line 274
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/MapCollections$KeySet;->this$0:Lcom/lody/virtual/helper/utils/collection/MapCollections;

    invoke-virtual {v0}, Lcom/lody/virtual/helper/utils/collection/MapCollections;->colClear()V

    .line 280
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/MapCollections$KeySet;->this$0:Lcom/lody/virtual/helper/utils/collection/MapCollections;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/helper/utils/collection/MapCollections;->colIndexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/MapCollections$KeySet;->this$0:Lcom/lody/virtual/helper/utils/collection/MapCollections;

    invoke-virtual {v0}, Lcom/lody/virtual/helper/utils/collection/MapCollections;->colGetMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lody/virtual/helper/utils/collection/MapCollections;->containsAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 339
    invoke-static {p0, p1}, Lcom/lody/virtual/helper/utils/collection/MapCollections;->equalsSetHelper(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 344
    .line 345
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/MapCollections$KeySet;->this$0:Lcom/lody/virtual/helper/utils/collection/MapCollections;

    invoke-virtual {v0}, Lcom/lody/virtual/helper/utils/collection/MapCollections;->colGetSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move v3, v1

    :goto_0
    if-ltz v2, :cond_1

    .line 346
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/MapCollections$KeySet;->this$0:Lcom/lody/virtual/helper/utils/collection/MapCollections;

    invoke-virtual {v0, v2, v1}, Lcom/lody/virtual/helper/utils/collection/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v0

    .line 347
    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    add-int/2addr v3, v0

    .line 345
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 347
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    .line 349
    :cond_1
    return v3
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/MapCollections$KeySet;->this$0:Lcom/lody/virtual/helper/utils/collection/MapCollections;

    invoke-virtual {v0}, Lcom/lody/virtual/helper/utils/collection/MapCollections;->colGetSize()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 299
    new-instance v0, Lcom/lody/virtual/helper/utils/collection/MapCollections$ArrayIterator;

    iget-object v1, p0, Lcom/lody/virtual/helper/utils/collection/MapCollections$KeySet;->this$0:Lcom/lody/virtual/helper/utils/collection/MapCollections;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/helper/utils/collection/MapCollections$ArrayIterator;-><init>(Lcom/lody/virtual/helper/utils/collection/MapCollections;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/MapCollections$KeySet;->this$0:Lcom/lody/virtual/helper/utils/collection/MapCollections;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/helper/utils/collection/MapCollections;->colIndexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 305
    if-ltz v0, :cond_0

    .line 306
    iget-object v1, p0, Lcom/lody/virtual/helper/utils/collection/MapCollections$KeySet;->this$0:Lcom/lody/virtual/helper/utils/collection/MapCollections;

    invoke-virtual {v1, v0}, Lcom/lody/virtual/helper/utils/collection/MapCollections;->colRemoveAt(I)V

    .line 307
    const/4 v0, 0x1

    .line 309
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/MapCollections$KeySet;->this$0:Lcom/lody/virtual/helper/utils/collection/MapCollections;

    invoke-virtual {v0}, Lcom/lody/virtual/helper/utils/collection/MapCollections;->colGetMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lody/virtual/helper/utils/collection/MapCollections;->removeAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/MapCollections$KeySet;->this$0:Lcom/lody/virtual/helper/utils/collection/MapCollections;

    invoke-virtual {v0}, Lcom/lody/virtual/helper/utils/collection/MapCollections;->colGetMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lody/virtual/helper/utils/collection/MapCollections;->retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/MapCollections$KeySet;->this$0:Lcom/lody/virtual/helper/utils/collection/MapCollections;

    invoke-virtual {v0}, Lcom/lody/virtual/helper/utils/collection/MapCollections;->colGetSize()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/MapCollections$KeySet;->this$0:Lcom/lody/virtual/helper/utils/collection/MapCollections;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lody/virtual/helper/utils/collection/MapCollections;->toArrayHelper(I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 334
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/collection/MapCollections$KeySet;->this$0:Lcom/lody/virtual/helper/utils/collection/MapCollections;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/lody/virtual/helper/utils/collection/MapCollections;->toArrayHelper([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

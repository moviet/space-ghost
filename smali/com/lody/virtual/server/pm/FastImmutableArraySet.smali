.class public final Lcom/lody/virtual/server/pm/FastImmutableArraySet;
.super Ljava/util/AbstractSet;
.source "FastImmutableArraySet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/server/pm/FastImmutableArraySet$FastIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TT;>;"
    }
.end annotation


# instance fields
.field mContents:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field mIterator:Lcom/lody/virtual/server/pm/FastImmutableArraySet$FastIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lody/virtual/server/pm/FastImmutableArraySet$FastIterator",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/lody/virtual/server/pm/FastImmutableArraySet;->mContents:[Ljava/lang/Object;

    .line 38
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lody/virtual/server/pm/FastImmutableArraySet;->mIterator:Lcom/lody/virtual/server/pm/FastImmutableArraySet$FastIterator;

    .line 43
    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/lody/virtual/server/pm/FastImmutableArraySet$FastIterator;

    iget-object v1, p0, Lcom/lody/virtual/server/pm/FastImmutableArraySet;->mContents:[Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/lody/virtual/server/pm/FastImmutableArraySet$FastIterator;-><init>([Ljava/lang/Object;)V

    .line 45
    iput-object v0, p0, Lcom/lody/virtual/server/pm/FastImmutableArraySet;->mIterator:Lcom/lody/virtual/server/pm/FastImmutableArraySet$FastIterator;

    .line 49
    :goto_0
    return-object v0

    .line 47
    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Lcom/lody/virtual/server/pm/FastImmutableArraySet$FastIterator;->mIndex:I

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lody/virtual/server/pm/FastImmutableArraySet;->mContents:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

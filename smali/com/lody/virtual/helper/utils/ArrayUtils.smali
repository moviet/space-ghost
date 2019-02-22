.class public Lcom/lody/virtual/helper/utils/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkOffsetAndCount(III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 126
    or-int v0, p1, p2

    if-ltz v0, :cond_0

    if-gt p1, p0, :cond_0

    sub-int v0, p0, p1

    if-ge v0, p2, :cond_1

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 129
    :cond_1
    return-void
.end method

.method public static contains([II)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 15
    if-nez p0, :cond_1

    .line 21
    :cond_0
    :goto_0
    return v0

    .line 16
    :cond_1
    array-length v2, p0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget v3, p0, v1

    .line 17
    if-ne v3, p1, :cond_2

    .line 18
    const/4 v0, 0x1

    goto :goto_0

    .line 16
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .prologue
    .line 12
    invoke-static {p0, p1}, Lcom/lody/virtual/helper/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getFirst([Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    .prologue
    .line 118
    invoke-static {p0, p1}, Lcom/lody/virtual/helper/utils/ArrayUtils;->indexOfFirst([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result v0

    .line 119
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 120
    aget-object v0, p0, v0

    .line 122
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Class;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;I)I"
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 86
    invoke-static {p0}, Lcom/lody/virtual/helper/utils/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    array-length v4, p0

    const/4 v0, 0x0

    move v3, v0

    move v1, v2

    move v0, p2

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, p0, v3

    .line 89
    add-int/lit8 v1, v1, 0x1

    .line 90
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-ne v5, p1, :cond_0

    .line 91
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_0

    move v0, v1

    .line 97
    :goto_1
    return v0

    .line 88
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 97
    goto :goto_1
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 29
    if-nez p0, :cond_1

    move v0, v1

    .line 33
    :cond_0
    :goto_0
    return v0

    .line 30
    :cond_1
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 31
    aget-object v2, p0, v0

    invoke-static {v2, p1}, Lcom/lody/virtual/helper/compat/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 33
    goto :goto_0
.end method

.method public static indexOfFirst([Ljava/lang/Object;Ljava/lang/Class;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 45
    invoke-static {p0}, Lcom/lody/virtual/helper/utils/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    array-length v3, p0

    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, p0, v2

    .line 48
    add-int/lit8 v0, v0, 0x1

    .line 49
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne p1, v4, :cond_0

    .line 54
    :goto_1
    return v0

    .line 47
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 54
    goto :goto_1
.end method

.method public static indexOfLast([Ljava/lang/Object;Ljava/lang/Class;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 101
    invoke-static {p0}, Lcom/lody/virtual/helper/utils/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    array-length v0, p0

    :goto_0
    if-lez v0, :cond_1

    .line 103
    add-int/lit8 v1, v0, -0x1

    aget-object v1, p0, v1

    .line 104
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 105
    add-int/lit8 v0, v0, -0x1

    .line 109
    :goto_1
    return v0

    .line 102
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 109
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static indexOfObject([Ljava/lang/Object;Ljava/lang/Class;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;I)I"
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 72
    if-nez p0, :cond_1

    move p2, v0

    .line 81
    :goto_0
    return p2

    .line 79
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 75
    :cond_1
    array-length v1, p0

    if-ge p2, v1, :cond_2

    .line 76
    aget-object v1, p0, p2

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_2
    move p2, v0

    .line 81
    goto :goto_0
.end method

.method public static isEmpty([Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    .prologue
    .line 113
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static protoIndexOf([Ljava/lang/Class;Ljava/lang/Class;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 37
    if-nez p0, :cond_1

    move v0, v1

    .line 41
    :cond_0
    :goto_0
    return v0

    .line 38
    :cond_1
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 39
    aget-object v2, p0, v0

    if-eq v2, p1, :cond_0

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 41
    goto :goto_0
.end method

.method public static protoIndexOf([Ljava/lang/Class;Ljava/lang/Class;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;I)I"
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 58
    if-nez p0, :cond_1

    move p2, v0

    .line 67
    :goto_0
    return p2

    .line 65
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 61
    :cond_1
    array-length v1, p0

    if-ge p2, v1, :cond_2

    .line 62
    aget-object v1, p0, p2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_2
    move p2, v0

    .line 67
    goto :goto_0
.end method

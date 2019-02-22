.class public Lcom/lody/virtual/helper/utils/ClassUtils;
.super Ljava/lang/Object;
.source "ClassUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fixArgs([Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 19
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 20
    aget-object v2, p0, v0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_1

    aget-object v2, p1, v0

    if-nez v2, :cond_1

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v0

    .line 19
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22
    :cond_1
    aget-object v2, p0, v0

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_0

    aget-object v2, p1, v0

    if-nez v2, :cond_0

    .line 23
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, p1, v0

    goto :goto_1

    .line 26
    :cond_2
    return-void
.end method

.method public static isClassExist(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 11
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    const/4 v0, 0x1

    .line 14
    :goto_0
    return v0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public Lcom/lody/virtual/client/hook/base/ReplaceLastUidHook;
.super Lcom/lody/virtual/client/hook/base/StaticHook;
.source "ReplaceLastUidHook.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/base/StaticHook;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method


# virtual methods
.method public varargs beforeCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 17
    const-class v0, Ljava/lang/Integer;

    invoke-static {p3, v0}, Lcom/lody/virtual/helper/utils/ArrayUtils;->indexOfLast([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result v1

    .line 18
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    .line 19
    aget-object v0, p3, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 20
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 21
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/base/ReplaceLastUidHook;->getRealUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, v1

    .line 24
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/base/StaticHook;->beforeCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

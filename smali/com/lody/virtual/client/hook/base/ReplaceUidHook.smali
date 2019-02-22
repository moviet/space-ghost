.class public Lcom/lody/virtual/client/hook/base/ReplaceUidHook;
.super Lcom/lody/virtual/client/hook/base/StaticHook;
.source "ReplaceUidHook.java"


# instance fields
.field private final index:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/base/StaticHook;-><init>(Ljava/lang/String;)V

    .line 12
    iput p2, p0, Lcom/lody/virtual/client/hook/base/ReplaceUidHook;->index:I

    .line 13
    return-void
.end method


# virtual methods
.method public varargs beforeCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 17
    iget v0, p0, Lcom/lody/virtual/client/hook/base/ReplaceUidHook;->index:I

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 18
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 19
    iget v0, p0, Lcom/lody/virtual/client/hook/base/ReplaceUidHook;->index:I

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/base/ReplaceUidHook;->getRealUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v0

    .line 21
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/base/StaticHook;->beforeCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

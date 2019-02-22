.class public Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgHook;
.super Lcom/lody/virtual/client/hook/base/StaticHook;
.source "ReplaceSpecPkgHook.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ReplaceSpecPkgHook"


# instance fields
.field private index:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/base/StaticHook;-><init>(Ljava/lang/String;)V

    .line 18
    iput p2, p0, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgHook;->index:I

    .line 19
    return-void
.end method


# virtual methods
.method public varargs beforeCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 23
    if-eqz p3, :cond_1

    .line 24
    iget v0, p0, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgHook;->index:I

    .line 25
    if-gez v0, :cond_0

    .line 26
    array-length v1, p3

    add-int/2addr v0, v1

    .line 28
    :cond_0
    if-ltz v0, :cond_1

    array-length v1, p3

    if-ge v0, v1, :cond_1

    aget-object v1, p3, v0

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 29
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgHook;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v0

    .line 32
    :cond_1
    const-string v0, "ReplaceSpecPkgHook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beforeCall method:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/base/StaticHook;->beforeCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

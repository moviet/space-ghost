.class public Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgHook;
.super Lcom/lody/virtual/client/hook/base/StaticHook;
.source "ReplaceCallingPkgHook.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ReplaceCallingPkgHook"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/base/StaticHook;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method public varargs beforeCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 21
    const-string v0, "ReplaceCallingPkgHook"

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

    .line 22
    invoke-static {p3}, Lcom/lody/virtual/client/hook/utils/HookUtils;->replaceFirstAppPkg([Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/base/StaticHook;->beforeCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.class public Lcom/lody/virtual/client/hook/base/ReplaceSequencePkgHook;
.super Lcom/lody/virtual/client/hook/base/StaticHook;
.source "ReplaceSequencePkgHook.java"


# instance fields
.field private sequence:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/base/StaticHook;-><init>(Ljava/lang/String;)V

    .line 17
    iput p2, p0, Lcom/lody/virtual/client/hook/base/ReplaceSequencePkgHook;->sequence:I

    .line 18
    return-void
.end method


# virtual methods
.method public varargs beforeCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/lody/virtual/client/hook/base/ReplaceSequencePkgHook;->sequence:I

    invoke-static {p3, v0}, Lcom/lody/virtual/client/hook/utils/HookUtils;->replaceSequenceAppPkg([Ljava/lang/Object;I)Ljava/lang/String;

    .line 23
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/base/StaticHook;->beforeCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

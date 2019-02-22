.class final Lcom/lody/virtual/client/hook/base/HookBinderDelegate$AsBinder;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "HookBinderDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/base/HookBinderDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AsBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/hook/base/HookBinderDelegate;


# direct methods
.method private constructor <init>(Lcom/lody/virtual/client/hook/base/HookBinderDelegate;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/lody/virtual/client/hook/base/HookBinderDelegate$AsBinder;->this$0:Lcom/lody/virtual/client/hook/base/HookBinderDelegate;

    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/Hook;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lody/virtual/client/hook/base/HookBinderDelegate;Lcom/lody/virtual/client/hook/base/HookBinderDelegate$1;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/base/HookBinderDelegate$AsBinder;-><init>(Lcom/lody/virtual/client/hook/base/HookBinderDelegate;)V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/HookBinderDelegate$AsBinder;->this$0:Lcom/lody/virtual/client/hook/base/HookBinderDelegate;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, "asBinder"

    return-object v0
.end method

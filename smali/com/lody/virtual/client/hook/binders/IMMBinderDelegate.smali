.class public Lcom/lody/virtual/client/hook/binders/IMMBinderDelegate;
.super Lcom/lody/virtual/client/hook/base/HookBinderDelegate;
.source "IMMBinderDelegate.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/HookBinderDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInterface()Landroid/os/IInterface;
    .locals 2

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/binders/IMMBinderDelegate;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 23
    sget-object v1, Lmirror/com/android/internal/view/inputmethod/InputMethodManager;->mService:Lmirror/RefObject;

    invoke-virtual {v1, v0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    return-object v0
.end method

.method protected bridge synthetic createInterface()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/binders/IMMBinderDelegate;->createInterface()Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method

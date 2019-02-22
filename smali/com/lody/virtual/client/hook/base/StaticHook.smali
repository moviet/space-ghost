.class public Lcom/lody/virtual/client/hook/base/StaticHook;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "StaticHook.java"


# instance fields
.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/Hook;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/lody/virtual/client/hook/base/StaticHook;->mName:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/StaticHook;->mName:Ljava/lang/String;

    return-object v0
.end method

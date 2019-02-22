.class final La/d/d/c$a;
.super Ljava/lang/Object;
.source "InternalObservableUtils.java"

# interfaces
.implements La/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/d/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/c/b",
        "<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 383
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, La/d/d/c$a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 386
    new-instance v0, La/b/f;

    invoke-direct {v0, p1}, La/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.class public final La/d/a/d;
.super Ljava/lang/Object;
.source "OnSubscribeFromIterable.java"

# interfaces
.implements La/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/d/a/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "La/d$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "iterable must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iput-object p1, p0, La/d/a/d;->a:Ljava/lang/Iterable;

    .line 43
    return-void
.end method


# virtual methods
.method public a(La/j;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    :try_start_0
    iget-object v0, p0, La/d/a/d;->a:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 59
    invoke-virtual {p1}, La/j;->b()Z

    move-result v2

    if-nez v2, :cond_0

    .line 60
    if-nez v1, :cond_1

    .line 61
    invoke-virtual {p1}, La/j;->a()V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    invoke-static {v0, p1}, La/b/b;->a(Ljava/lang/Throwable;La/e;)V

    goto :goto_0

    .line 63
    :cond_1
    new-instance v1, La/d/a/d$a;

    invoke-direct {v1, p1, v0}, La/d/a/d$a;-><init>(La/j;Ljava/util/Iterator;)V

    invoke-virtual {p1, v1}, La/j;->a(La/f;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, La/j;

    invoke-virtual {p0, p1}, La/d/a/d;->a(La/j;)V

    return-void
.end method

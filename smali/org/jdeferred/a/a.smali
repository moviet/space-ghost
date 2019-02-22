.class public abstract Lorg/jdeferred/a/a;
.super Ljava/lang/Object;
.source "AbstractDeferredManager.java"

# interfaces
.implements Lorg/jdeferred/d;


# instance fields
.field protected final a:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-class v0, Lorg/jdeferred/a/a;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/jdeferred/a/a;->a:Lorg/slf4j/Logger;

    return-void
.end method


# virtual methods
.method public a(Lorg/jdeferred/c;)Lorg/jdeferred/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jdeferred/c",
            "<TD;TP;>;)",
            "Lorg/jdeferred/h",
            "<TD;",
            "Ljava/lang/Throwable;",
            "TP;>;"
        }
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p1}, Lorg/jdeferred/c;->b()Lorg/jdeferred/d$a;

    move-result-object v0

    sget-object v1, Lorg/jdeferred/d$a;->b:Lorg/jdeferred/d$a;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/jdeferred/c;->b()Lorg/jdeferred/d$a;

    move-result-object v0

    sget-object v1, Lorg/jdeferred/d$a;->a:Lorg/jdeferred/d$a;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/jdeferred/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    :cond_0
    invoke-virtual {p0, p1}, Lorg/jdeferred/a/a;->a(Ljava/lang/Runnable;)V

    .line 192
    :cond_1
    invoke-virtual {p1}, Lorg/jdeferred/c;->a()Lorg/jdeferred/h;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a(Ljava/lang/Runnable;)V
.end method

.method public abstract a()Z
.end method

.method public b(Ljava/lang/Runnable;)Lorg/jdeferred/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lorg/jdeferred/h",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    new-instance v0, Lorg/jdeferred/c;

    invoke-direct {v0, p1}, Lorg/jdeferred/c;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lorg/jdeferred/a/a;->a(Lorg/jdeferred/c;)Lorg/jdeferred/h;

    move-result-object v0

    return-object v0
.end method

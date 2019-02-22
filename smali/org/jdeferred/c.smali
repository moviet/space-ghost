.class public Lorg/jdeferred/c;
.super Ljava/util/concurrent/FutureTask;
.source "DeferredFutureTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask",
        "<TD;>;"
    }
.end annotation


# instance fields
.field protected final a:Lorg/jdeferred/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jdeferred/b",
            "<TD;",
            "Ljava/lang/Throwable;",
            "TP;>;"
        }
    .end annotation
.end field

.field protected final b:Lorg/jdeferred/d$a;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 55
    new-instance v0, Lorg/jdeferred/a/d;

    invoke-direct {v0}, Lorg/jdeferred/a/d;-><init>()V

    iput-object v0, p0, Lorg/jdeferred/c;->a:Lorg/jdeferred/b;

    .line 56
    sget-object v0, Lorg/jdeferred/d$a;->a:Lorg/jdeferred/d$a;

    iput-object v0, p0, Lorg/jdeferred/c;->b:Lorg/jdeferred/d$a;

    .line 57
    return-void
.end method


# virtual methods
.method public a()Lorg/jdeferred/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jdeferred/h",
            "<TD;",
            "Ljava/lang/Throwable;",
            "TP;>;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lorg/jdeferred/c;->a:Lorg/jdeferred/b;

    invoke-interface {v0}, Lorg/jdeferred/b;->a()Lorg/jdeferred/h;

    move-result-object v0

    return-object v0
.end method

.method public b()Lorg/jdeferred/d$a;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/jdeferred/c;->b:Lorg/jdeferred/d$a;

    return-object v0
.end method

.method protected done()V
    .locals 2

    .prologue
    .line 79
    :try_start_0
    invoke-virtual {p0}, Lorg/jdeferred/c;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lorg/jdeferred/c;->a:Lorg/jdeferred/b;

    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    invoke-interface {v0, v1}, Lorg/jdeferred/b;->b(Ljava/lang/Object;)Lorg/jdeferred/b;

    .line 82
    :cond_0
    invoke-virtual {p0}, Lorg/jdeferred/c;->get()Ljava/lang/Object;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lorg/jdeferred/c;->a:Lorg/jdeferred/b;

    invoke-interface {v1, v0}, Lorg/jdeferred/b;->a(Ljava/lang/Object;)Lorg/jdeferred/b;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    iget-object v1, p0, Lorg/jdeferred/c;->a:Lorg/jdeferred/b;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/jdeferred/b;->b(Ljava/lang/Object;)Lorg/jdeferred/b;

    goto :goto_0

    .line 84
    :catch_1
    move-exception v0

    goto :goto_0
.end method

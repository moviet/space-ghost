.class public final La/d/c/h;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ScheduledAction.java"

# interfaces
.implements La/k;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/d/c/h$c;,
        La/d/c/h$b;,
        La/d/c/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Ljava/lang/Thread;",
        ">;",
        "La/k;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final a:La/d/d/i;

.field final b:La/c/a;


# direct methods
.method public constructor <init>(La/c/a;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 39
    iput-object p1, p0, La/d/c/h;->b:La/c/a;

    .line 40
    new-instance v0, La/d/d/i;

    invoke-direct {v0}, La/d/d/i;-><init>()V

    iput-object v0, p0, La/d/c/h;->a:La/d/d/i;

    .line 41
    return-void
.end method

.method public constructor <init>(La/c/a;La/d/d/i;)V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 47
    iput-object p1, p0, La/d/c/h;->b:La/c/a;

    .line 48
    new-instance v0, La/d/d/i;

    new-instance v1, La/d/c/h$c;

    invoke-direct {v1, p0, p2}, La/d/c/h$c;-><init>(La/d/c/h;La/d/d/i;)V

    invoke-direct {v0, v1}, La/d/d/i;-><init>(La/k;)V

    iput-object v0, p0, La/d/c/h;->a:La/d/d/i;

    .line 49
    return-void
.end method

.method public constructor <init>(La/c/a;La/i/b;)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 43
    iput-object p1, p0, La/d/c/h;->b:La/c/a;

    .line 44
    new-instance v0, La/d/d/i;

    new-instance v1, La/d/c/h$b;

    invoke-direct {v1, p0, p2}, La/d/c/h$b;-><init>(La/d/c/h;La/i/b;)V

    invoke-direct {v0, v1}, La/d/d/i;-><init>(La/k;)V

    iput-object v0, p0, La/d/c/h;->a:La/d/d/i;

    .line 45
    return-void
.end method


# virtual methods
.method public a(La/i/b;)V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, La/d/c/h;->a:La/d/d/i;

    new-instance v1, La/d/c/h$b;

    invoke-direct {v1, p0, p1}, La/d/c/h$b;-><init>(La/d/c/h;La/i/b;)V

    invoke-virtual {v0, v1}, La/d/d/i;->a(La/k;)V

    .line 111
    return-void
.end method

.method a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 66
    invoke-static {p1}, La/f/c;->a(Ljava/lang/Throwable;)V

    .line 67
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 69
    return-void
.end method

.method public a(Ljava/util/concurrent/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, La/d/c/h;->a:La/d/d/i;

    new-instance v1, La/d/c/h$a;

    invoke-direct {v1, p0, p1}, La/d/c/h$a;-><init>(La/d/c/h;Ljava/util/concurrent/Future;)V

    invoke-virtual {v0, v1}, La/d/d/i;->a(La/k;)V

    .line 100
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, La/d/c/h;->a:La/d/d/i;

    invoke-virtual {v0}, La/d/d/i;->b()Z

    move-result v0

    return v0
.end method

.method public d_()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, La/d/c/h;->a:La/d/d/i;

    invoke-virtual {v0}, La/d/d/i;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, La/d/c/h;->a:La/d/d/i;

    invoke-virtual {v0}, La/d/d/i;->d_()V

    .line 81
    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 54
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0, v0}, La/d/c/h;->lazySet(Ljava/lang/Object;)V

    .line 55
    iget-object v0, p0, La/d/c/h;->b:La/c/a;

    invoke-interface {v0}, La/c/a;->c()V
    :try_end_0
    .catch La/b/f; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-virtual {p0}, La/d/c/h;->d_()V

    .line 63
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Exception thrown on Scheduler.Worker thread. Add `onError` handling."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, La/d/c/h;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    invoke-virtual {p0}, La/d/c/h;->d_()V

    goto :goto_0

    .line 58
    :catch_1
    move-exception v0

    .line 59
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Fatal Exception thrown on Scheduler.Worker thread."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, La/d/c/h;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    invoke-virtual {p0}, La/d/c/h;->d_()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, La/d/c/h;->d_()V

    throw v0
.end method

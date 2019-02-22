.class public abstract La/d/d/d;
.super Ljava/lang/Object;
.source "ObjectPool.java"

# interfaces
.implements La/d/c/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "La/d/c/i;"
    }
.end annotation


# instance fields
.field a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TT;>;"
        }
    .end annotation
.end field

.field final b:I

.field final c:I

.field private final d:J

.field private final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/concurrent/Future",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 37
    const-wide/16 v0, 0x43

    invoke-direct {p0, v2, v2, v0, v1}, La/d/d/d;-><init>(IIJ)V

    .line 38
    return-void
.end method

.method private constructor <init>(IIJ)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, La/d/d/d;->b:I

    .line 54
    iput p2, p0, La/d/d/d;->c:I

    .line 55
    iput-wide p3, p0, La/d/d/d;->d:J

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, La/d/d/d;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 58
    invoke-direct {p0, p1}, La/d/d/d;->a(I)V

    .line 60
    invoke-virtual {p0}, La/d/d/d;->a()V

    .line 61
    return-void
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 153
    invoke-static {}, La/d/d/b/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    new-instance v0, La/d/d/b/d;

    iget v1, p0, La/d/d/d;->c:I

    const/16 v2, 0x400

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v1}, La/d/d/b/d;-><init>(I)V

    iput-object v0, p0, La/d/d/d;->a:Ljava/util/Queue;

    .line 159
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_1

    .line 160
    iget-object v1, p0, La/d/d/d;->a:Ljava/util/Queue;

    invoke-virtual {p0}, La/d/d/d;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 156
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, La/d/d/d;->a:Ljava/util/Queue;

    goto :goto_0

    .line 162
    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    .line 106
    :goto_0
    iget-object v0, p0, La/d/d/d;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 143
    :cond_0
    :goto_1
    return-void

    .line 109
    :cond_1
    invoke-static {}, La/d/c/c;->b()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 113
    :try_start_0
    new-instance v1, La/d/d/d$1;

    invoke-direct {v1, p0}, La/d/d/d$1;-><init>(La/d/d/d;)V

    iget-wide v2, p0, La/d/d/d;->d:J

    iget-wide v4, p0, La/d/d/d;->d:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 137
    iget-object v1, p0, La/d/d/d;->e:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    invoke-static {v0}, La/f/c;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 85
    if-nez p1, :cond_0

    .line 90
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, La/d/d/d;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected abstract b()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public d()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, La/d/d/d;->e:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 98
    if-eqz v0, :cond_0

    .line 99
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 101
    :cond_0
    return-void
.end method

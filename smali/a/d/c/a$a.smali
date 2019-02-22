.class final La/d/c/a$a;
.super Ljava/lang/Object;
.source "CachedThreadScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/d/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ThreadFactory;

.field private final b:J

.field private final c:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "La/d/c/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private final d:La/i/b;

.field private final e:Ljava/util/concurrent/ScheduledExecutorService;

.field private final f:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, La/d/c/a$a;->a:Ljava/util/concurrent/ThreadFactory;

    .line 56
    if-eqz p4, :cond_0

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, La/d/c/a$a;->b:J

    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, La/d/c/a$a;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 58
    new-instance v0, La/i/b;

    invoke-direct {v0}, La/i/b;-><init>()V

    iput-object v0, p0, La/d/c/a$a;->d:La/i/b;

    .line 62
    if-eqz p4, :cond_1

    .line 63
    const/4 v0, 0x1

    new-instance v1, La/d/c/a$a$1;

    invoke-direct {v1, p0, p1}, La/d/c/a$a$1;-><init>(La/d/c/a$a;Ljava/util/concurrent/ThreadFactory;)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 70
    invoke-static {v0}, La/d/c/g;->b(Ljava/util/concurrent/ScheduledExecutorService;)Z

    .line 71
    new-instance v1, La/d/c/a$a$2;

    invoke-direct {v1, p0}, La/d/c/a$a$2;-><init>(La/d/c/a$a;)V

    iget-wide v2, p0, La/d/c/a$a;->b:J

    iget-wide v4, p0, La/d/c/a$a;->b:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    move-object v2, v0

    move-object v0, v1

    .line 80
    :goto_1
    iput-object v2, p0, La/d/c/a$a;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 81
    iput-object v0, p0, La/d/c/a$a;->f:Ljava/util/concurrent/Future;

    .line 82
    return-void

    .line 56
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method


# virtual methods
.method a()La/d/c/a$c;
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, La/d/c/a$a;->d:La/i/b;

    invoke-virtual {v0}, La/i/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, La/d/c/a;->b:La/d/c/a$c;

    .line 98
    :goto_0
    return-object v0

    .line 88
    :cond_0
    iget-object v0, p0, La/d/c/a$a;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    iget-object v0, p0, La/d/c/a$a;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/d/c/a$c;

    .line 90
    if-eqz v0, :cond_0

    goto :goto_0

    .line 96
    :cond_1
    new-instance v0, La/d/c/a$c;

    iget-object v1, p0, La/d/c/a$a;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, La/d/c/a$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 97
    iget-object v1, p0, La/d/c/a$a;->d:La/i/b;

    invoke-virtual {v1, v0}, La/i/b;->a(La/k;)V

    goto :goto_0
.end method

.method a(La/d/c/a$c;)V
    .locals 4

    .prologue
    .line 103
    invoke-virtual {p0}, La/d/c/a$a;->c()J

    move-result-wide v0

    iget-wide v2, p0, La/d/c/a$a;->b:J

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, La/d/c/a$c;->a(J)V

    .line 105
    iget-object v0, p0, La/d/c/a$a;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 106
    return-void
.end method

.method b()V
    .locals 6

    .prologue
    .line 109
    iget-object v0, p0, La/d/c/a$a;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    invoke-virtual {p0}, La/d/c/a$a;->c()J

    move-result-wide v2

    .line 112
    iget-object v0, p0, La/d/c/a$a;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/d/c/a$c;

    .line 113
    invoke-virtual {v0}, La/d/c/a$c;->c()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-gtz v4, :cond_1

    .line 114
    iget-object v4, p0, La/d/c/a$a;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 115
    iget-object v4, p0, La/d/c/a$a;->d:La/i/b;

    invoke-virtual {v4, v0}, La/i/b;->b(La/k;)V

    goto :goto_0

    .line 124
    :cond_1
    return-void
.end method

.method c()J
    .locals 2

    .prologue
    .line 127
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method d()V
    .locals 2

    .prologue
    .line 132
    :try_start_0
    iget-object v0, p0, La/d/c/a$a;->f:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, La/d/c/a$a;->f:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 135
    :cond_0
    iget-object v0, p0, La/d/c/a$a;->e:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, La/d/c/a$a;->e:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :cond_1
    iget-object v0, p0, La/d/c/a$a;->d:La/i/b;

    invoke-virtual {v0}, La/i/b;->d_()V

    .line 141
    return-void

    .line 139
    :catchall_0
    move-exception v0

    iget-object v1, p0, La/d/c/a$a;->d:La/i/b;

    invoke-virtual {v1}, La/i/b;->d_()V

    throw v0
.end method

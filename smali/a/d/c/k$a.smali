.class final La/d/c/k$a;
.super La/g$a;
.source "TrampolineScheduler.java"

# interfaces
.implements La/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/d/c/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field final b:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "La/d/c/k$b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:La/i/a;

.field private final d:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, La/g$a;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, La/d/c/k$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, La/d/c/k$a;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 47
    new-instance v0, La/i/a;

    invoke-direct {v0}, La/i/a;-><init>()V

    iput-object v0, p0, La/d/c/k$a;->c:La/i/a;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, La/d/c/k$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private a(La/c/a;J)La/k;
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, La/d/c/k$a;->c:La/i/a;

    invoke-virtual {v0}, La/i/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-static {}, La/i/c;->a()La/k;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    .line 66
    :cond_0
    new-instance v0, La/d/c/k$b;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, La/d/c/k$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, La/d/c/k$b;-><init>(La/c/a;Ljava/lang/Long;I)V

    .line 67
    iget-object v1, p0, La/d/c/k$a;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v1, p0, La/d/c/k$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    if-nez v1, :cond_3

    .line 71
    :cond_1
    iget-object v0, p0, La/d/c/k$a;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/d/c/k$b;

    .line 72
    if-eqz v0, :cond_2

    .line 73
    iget-object v0, v0, La/d/c/k$b;->a:La/c/a;

    invoke-interface {v0}, La/c/a;->c()V

    .line 75
    :cond_2
    iget-object v0, p0, La/d/c/k$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_1

    .line 76
    invoke-static {}, La/i/c;->a()La/k;

    move-result-object v0

    goto :goto_0

    .line 79
    :cond_3
    new-instance v1, La/d/c/k$a$1;

    invoke-direct {v1, p0, v0}, La/d/c/k$a$1;-><init>(La/d/c/k$a;La/d/c/k$b;)V

    invoke-static {v1}, La/i/c;->a(La/c/a;)La/k;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(La/c/a;)La/k;
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p0}, La/d/c/k$a;->a()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, La/d/c/k$a;->a(La/c/a;J)La/k;

    move-result-object v0

    return-object v0
.end method

.method public a(La/c/a;JLjava/util/concurrent/TimeUnit;)La/k;
    .locals 4

    .prologue
    .line 57
    invoke-virtual {p0}, La/d/c/k$a;->a()J

    move-result-wide v0

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 59
    new-instance v2, La/d/c/j;

    invoke-direct {v2, p1, p0, v0, v1}, La/d/c/j;-><init>(La/c/a;La/g$a;J)V

    invoke-direct {p0, v2, v0, v1}, La/d/c/k$a;->a(La/c/a;J)La/k;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, La/d/c/k$a;->c:La/i/a;

    invoke-virtual {v0}, La/i/a;->b()Z

    move-result v0

    return v0
.end method

.method public d_()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, La/d/c/k$a;->c:La/i/a;

    invoke-virtual {v0}, La/i/a;->d_()V

    .line 93
    return-void
.end method

.class public final La/g/a;
.super Ljava/lang/Object;
.source "Schedulers.java"


# static fields
.field private static final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "La/g/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:La/g;

.field private final b:La/g;

.field private final c:La/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, La/g/a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {}, La/f/f;->a()La/f/f;

    move-result-object v0

    invoke-virtual {v0}, La/f/f;->f()La/f/g;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, La/f/g;->d()La/g;

    move-result-object v1

    .line 60
    if-eqz v1, :cond_0

    .line 61
    iput-object v1, p0, La/g/a;->a:La/g;

    .line 66
    :goto_0
    invoke-virtual {v0}, La/f/g;->e()La/g;

    move-result-object v1

    .line 67
    if-eqz v1, :cond_1

    .line 68
    iput-object v1, p0, La/g/a;->b:La/g;

    .line 73
    :goto_1
    invoke-virtual {v0}, La/f/g;->f()La/g;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_2

    .line 75
    iput-object v0, p0, La/g/a;->c:La/g;

    .line 79
    :goto_2
    return-void

    .line 63
    :cond_0
    invoke-static {}, La/f/g;->a()La/g;

    move-result-object v1

    iput-object v1, p0, La/g/a;->a:La/g;

    goto :goto_0

    .line 70
    :cond_1
    invoke-static {}, La/f/g;->b()La/g;

    move-result-object v1

    iput-object v1, p0, La/g/a;->b:La/g;

    goto :goto_1

    .line 77
    :cond_2
    invoke-static {}, La/f/g;->c()La/g;

    move-result-object v0

    iput-object v0, p0, La/g/a;->c:La/g;

    goto :goto_2
.end method

.method public static a()La/g;
    .locals 1

    .prologue
    .line 108
    invoke-static {}, La/g/a;->d()La/g/a;

    move-result-object v0

    iget-object v0, v0, La/g/a;->c:La/g;

    invoke-static {v0}, La/f/c;->b(La/g;)La/g;

    move-result-object v0

    return-object v0
.end method

.method public static b()La/g;
    .locals 1

    .prologue
    .line 123
    invoke-static {}, La/g/a;->d()La/g/a;

    move-result-object v0

    iget-object v0, v0, La/g/a;->a:La/g;

    invoke-static {v0}, La/f/c;->a(La/g;)La/g;

    move-result-object v0

    return-object v0
.end method

.method private static d()La/g/a;
    .locals 3

    .prologue
    .line 42
    :goto_0
    sget-object v0, La/g/a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/g/a;

    .line 43
    if-eqz v0, :cond_1

    .line 48
    :cond_0
    return-object v0

    .line 46
    :cond_1
    new-instance v0, La/g/a;

    invoke-direct {v0}, La/g/a;-><init>()V

    .line 47
    sget-object v1, La/g/a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    invoke-virtual {v0}, La/g/a;->c()V

    goto :goto_0
.end method


# virtual methods
.method declared-synchronized c()V
    .locals 1

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/g/a;->a:La/g;

    instance-of v0, v0, La/d/c/i;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, La/g/a;->a:La/g;

    check-cast v0, La/d/c/i;

    invoke-interface {v0}, La/d/c/i;->d()V

    .line 233
    :cond_0
    iget-object v0, p0, La/g/a;->b:La/g;

    instance-of v0, v0, La/d/c/i;

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, La/g/a;->b:La/g;

    check-cast v0, La/d/c/i;

    invoke-interface {v0}, La/d/c/i;->d()V

    .line 236
    :cond_1
    iget-object v0, p0, La/g/a;->c:La/g;

    instance-of v0, v0, La/d/c/i;

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, La/g/a;->c:La/g;

    check-cast v0, La/d/c/i;

    invoke-interface {v0}, La/d/c/i;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :cond_2
    monitor-exit p0

    return-void

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

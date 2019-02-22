.class public final La/a/b/a;
.super Ljava/lang/Object;
.source "AndroidSchedulers.java"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "La/a/b/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:La/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, La/a/b/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, La/a/a/a;->a()La/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/a;->b()La/a/a/b;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, La/a/a/b;->b()La/g;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    iput-object v0, p0, La/a/b/a;->b:La/g;

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v0, La/a/b/b;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/b/b;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, La/a/b/a;->b:La/g;

    goto :goto_0
.end method

.method public static a()La/g;
    .locals 1

    .prologue
    .line 57
    invoke-static {}, La/a/b/a;->b()La/a/b/a;

    move-result-object v0

    iget-object v0, v0, La/a/b/a;->b:La/g;

    return-object v0
.end method

.method private static b()La/a/b/a;
    .locals 3

    .prologue
    .line 33
    :cond_0
    sget-object v0, La/a/b/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/b/a;

    .line 34
    if-eqz v0, :cond_1

    .line 39
    :goto_0
    return-object v0

    .line 37
    :cond_1
    new-instance v0, La/a/b/a;

    invoke-direct {v0}, La/a/b/a;-><init>()V

    .line 38
    sget-object v1, La/a/b/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

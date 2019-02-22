.class final La/d/a/c$a;
.super La/j;
.source "OnSubscribeDoOnEach.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/d/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "La/j",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:La/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/j",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final b:La/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/e",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method constructor <init>(La/j;La/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<-TT;>;",
            "La/e",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1}, La/j;-><init>(La/j;)V

    .line 53
    iput-object p1, p0, La/d/a/c$a;->a:La/j;

    .line 54
    iput-object p2, p0, La/d/a/c$a;->b:La/e;

    .line 55
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, La/d/a/c$a;->c:Z

    if-eqz v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 63
    :cond_0
    :try_start_0
    iget-object v0, p0, La/d/a/c$a;->b:La/e;

    invoke-interface {v0}, La/e;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, La/d/a/c$a;->c:Z

    .line 70
    iget-object v0, p0, La/d/a/c$a;->a:La/j;

    invoke-virtual {v0}, La/j;->a()V

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    invoke-static {v0, p0}, La/b/b;->a(Ljava/lang/Throwable;La/e;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 75
    iget-boolean v0, p0, La/d/a/c$a;->c:Z

    if-eqz v0, :cond_0

    .line 76
    invoke-static {p1}, La/f/c;->a(Ljava/lang/Throwable;)V

    .line 88
    :goto_0
    return-void

    .line 79
    :cond_0
    iput-boolean v5, p0, La/d/a/c$a;->c:Z

    .line 81
    :try_start_0
    iget-object v0, p0, La/d/a/c$a;->b:La/e;

    invoke-interface {v0, p1}, La/e;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    iget-object v0, p0, La/d/a/c$a;->a:La/j;

    invoke-virtual {v0, p1}, La/j;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    invoke-static {v0}, La/b/b;->b(Ljava/lang/Throwable;)V

    .line 84
    iget-object v1, p0, La/d/a/c$a;->a:La/j;

    new-instance v2, La/b/a;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object v0, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, La/b/a;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, La/j;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a_(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 92
    iget-boolean v0, p0, La/d/a/c$a;->c:Z

    if-eqz v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 96
    :cond_0
    :try_start_0
    iget-object v0, p0, La/d/a/c$a;->b:La/e;

    invoke-interface {v0, p1}, La/e;->a_(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    iget-object v0, p0, La/d/a/c$a;->a:La/j;

    invoke-virtual {v0, p1}, La/j;->a_(Ljava/lang/Object;)V

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    invoke-static {v0, p0, p1}, La/b/b;->a(Ljava/lang/Throwable;La/e;Ljava/lang/Object;)V

    goto :goto_0
.end method

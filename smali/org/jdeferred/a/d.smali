.class public Lorg/jdeferred/a/d;
.super Lorg/jdeferred/a/b;
.source "DeferredObject.java"

# interfaces
.implements Lorg/jdeferred/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jdeferred/a/b",
        "<TD;TF;TP;>;",
        "Lorg/jdeferred/b",
        "<TD;TF;TP;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/jdeferred/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lorg/jdeferred/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Lorg/jdeferred/b",
            "<TD;TF;TP;>;"
        }
    .end annotation

    .prologue
    .line 62
    monitor-enter p0

    .line 63
    :try_start_0
    invoke-virtual {p0}, Lorg/jdeferred/a/d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deferred object already finished, cannot resolve again"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 66
    :cond_0
    :try_start_1
    sget-object v0, Lorg/jdeferred/h$a;->c:Lorg/jdeferred/h$a;

    iput-object v0, p0, Lorg/jdeferred/a/d;->c:Lorg/jdeferred/h$a;

    .line 67
    iput-object p1, p0, Lorg/jdeferred/a/d;->h:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :try_start_2
    invoke-virtual {p0, p1}, Lorg/jdeferred/a/d;->d(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 72
    :try_start_3
    iget-object v0, p0, Lorg/jdeferred/a/d;->c:Lorg/jdeferred/h$a;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/jdeferred/a/d;->a(Lorg/jdeferred/h$a;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    monitor-exit p0

    .line 75
    return-object p0

    .line 72
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lorg/jdeferred/a/d;->c:Lorg/jdeferred/h$a;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Lorg/jdeferred/a/d;->a(Lorg/jdeferred/h$a;Ljava/lang/Object;Ljava/lang/Object;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public a()Lorg/jdeferred/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jdeferred/h",
            "<TD;TF;TP;>;"
        }
    .end annotation

    .prologue
    .line 107
    return-object p0
.end method

.method public b(Ljava/lang/Object;)Lorg/jdeferred/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Lorg/jdeferred/b",
            "<TD;TF;TP;>;"
        }
    .end annotation

    .prologue
    .line 91
    monitor-enter p0

    .line 92
    :try_start_0
    invoke-virtual {p0}, Lorg/jdeferred/a/d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deferred object already finished, cannot reject again"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 94
    :cond_0
    :try_start_1
    sget-object v0, Lorg/jdeferred/h$a;->b:Lorg/jdeferred/h$a;

    iput-object v0, p0, Lorg/jdeferred/a/d;->c:Lorg/jdeferred/h$a;

    .line 95
    iput-object p1, p0, Lorg/jdeferred/a/d;->i:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    :try_start_2
    invoke-virtual {p0, p1}, Lorg/jdeferred/a/d;->e(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 100
    :try_start_3
    iget-object v0, p0, Lorg/jdeferred/a/d;->c:Lorg/jdeferred/h$a;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/jdeferred/a/d;->a(Lorg/jdeferred/h$a;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    monitor-exit p0

    .line 103
    return-object p0

    .line 100
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lorg/jdeferred/a/d;->c:Lorg/jdeferred/h$a;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1}, Lorg/jdeferred/a/d;->a(Lorg/jdeferred/h$a;Ljava/lang/Object;Ljava/lang/Object;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public g(Ljava/lang/Object;)Lorg/jdeferred/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)",
            "Lorg/jdeferred/b",
            "<TD;TF;TP;>;"
        }
    .end annotation

    .prologue
    .line 80
    monitor-enter p0

    .line 81
    :try_start_0
    invoke-virtual {p0}, Lorg/jdeferred/a/d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deferred object already finished, cannot notify progress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 84
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/jdeferred/a/d;->f(Ljava/lang/Object;)V

    .line 85
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    return-object p0
.end method

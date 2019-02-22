.class public abstract Lorg/jdeferred/a/b;
.super Ljava/lang/Object;
.source "AbstractPromise.java"

# interfaces
.implements Lorg/jdeferred/h;


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
        "Ljava/lang/Object;",
        "Lorg/jdeferred/h",
        "<TD;TF;TP;>;"
    }
.end annotation


# instance fields
.field protected final b:Lorg/slf4j/Logger;

.field protected volatile c:Lorg/jdeferred/h$a;

.field protected final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jdeferred/e",
            "<TD;>;>;"
        }
    .end annotation
.end field

.field protected final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jdeferred/f",
            "<TF;>;>;"
        }
    .end annotation
.end field

.field protected final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jdeferred/g",
            "<TP;>;>;"
        }
    .end annotation
.end field

.field protected final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jdeferred/a",
            "<TD;TF;>;>;"
        }
    .end annotation
.end field

.field protected h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field protected i:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-class v0, Lorg/jdeferred/a/b;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/jdeferred/a/b;->b:Lorg/slf4j/Logger;

    .line 44
    sget-object v0, Lorg/jdeferred/h$a;->a:Lorg/jdeferred/h$a;

    iput-object v0, p0, Lorg/jdeferred/a/b;->c:Lorg/jdeferred/h$a;

    .line 46
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/jdeferred/a/b;->d:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/jdeferred/a/b;->e:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/jdeferred/a/b;->f:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/jdeferred/a/b;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lorg/jdeferred/e;)Lorg/jdeferred/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/e",
            "<TD;>;)",
            "Lorg/jdeferred/h",
            "<TD;TF;TP;>;"
        }
    .end annotation

    .prologue
    .line 61
    monitor-enter p0

    .line 62
    :try_start_0
    invoke-virtual {p0}, Lorg/jdeferred/a/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lorg/jdeferred/a/b;->h:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lorg/jdeferred/a/b;->a(Lorg/jdeferred/e;Ljava/lang/Object;)V

    .line 67
    :goto_0
    monitor-exit p0

    .line 68
    return-object p0

    .line 65
    :cond_0
    iget-object v0, p0, Lorg/jdeferred/a/b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lorg/jdeferred/f;)Lorg/jdeferred/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/f",
            "<TF;>;)",
            "Lorg/jdeferred/h",
            "<TD;TF;TP;>;"
        }
    .end annotation

    .prologue
    .line 73
    monitor-enter p0

    .line 74
    :try_start_0
    invoke-virtual {p0}, Lorg/jdeferred/a/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lorg/jdeferred/a/b;->i:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lorg/jdeferred/a/b;->a(Lorg/jdeferred/f;Ljava/lang/Object;)V

    .line 79
    :goto_0
    monitor-exit p0

    .line 80
    return-object p0

    .line 77
    :cond_0
    iget-object v0, p0, Lorg/jdeferred/a/b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lorg/jdeferred/g;)Lorg/jdeferred/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/g",
            "<TP;>;)",
            "Lorg/jdeferred/h",
            "<TD;TF;TP;>;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lorg/jdeferred/a/b;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    return-object p0
.end method

.method protected a(Lorg/jdeferred/a;Lorg/jdeferred/h$a;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/a",
            "<TD;TF;>;",
            "Lorg/jdeferred/h$a;",
            "TD;TF;)V"
        }
    .end annotation

    .prologue
    .line 155
    invoke-interface {p1, p2, p3, p4}, Lorg/jdeferred/a;->a(Lorg/jdeferred/h$a;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    return-void
.end method

.method protected a(Lorg/jdeferred/e;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/e",
            "<TD;>;TD;)V"
        }
    .end annotation

    .prologue
    .line 107
    invoke-interface {p1, p2}, Lorg/jdeferred/e;->a(Ljava/lang/Object;)V

    .line 108
    return-void
.end method

.method protected a(Lorg/jdeferred/f;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/f",
            "<TF;>;TF;)V"
        }
    .end annotation

    .prologue
    .line 122
    invoke-interface {p1, p2}, Lorg/jdeferred/f;->a(Ljava/lang/Object;)V

    .line 123
    return-void
.end method

.method protected a(Lorg/jdeferred/g;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/g",
            "<TP;>;TP;)V"
        }
    .end annotation

    .prologue
    .line 136
    invoke-interface {p1, p2}, Lorg/jdeferred/g;->a(Ljava/lang/Object;)V

    .line 137
    return-void
.end method

.method protected a(Lorg/jdeferred/h$a;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/h$a;",
            "TD;TF;)V"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lorg/jdeferred/a/b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdeferred/a;

    .line 142
    :try_start_0
    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/jdeferred/a/b;->a(Lorg/jdeferred/a;Lorg/jdeferred/h$a;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    iget-object v2, p0, Lorg/jdeferred/a/b;->b:Lorg/slf4j/Logger;

    const-string v3, "an uncaught exception occured in a AlwaysCallback"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Lorg/jdeferred/a/b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 149
    monitor-enter p0

    .line 150
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 151
    monitor-exit p0

    .line 152
    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lorg/jdeferred/a/b;->c:Lorg/jdeferred/h$a;

    sget-object v1, Lorg/jdeferred/h$a;->a:Lorg/jdeferred/h$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lorg/jdeferred/a/b;->c:Lorg/jdeferred/h$a;

    sget-object v1, Lorg/jdeferred/h$a;->c:Lorg/jdeferred/h$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lorg/jdeferred/a/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdeferred/e;

    .line 98
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lorg/jdeferred/a/b;->a(Lorg/jdeferred/e;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    iget-object v2, p0, Lorg/jdeferred/a/b;->b:Lorg/slf4j/Logger;

    const-string v3, "an uncaught exception occured in a DoneCallback"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lorg/jdeferred/a/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 104
    return-void
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lorg/jdeferred/a/b;->c:Lorg/jdeferred/h$a;

    sget-object v1, Lorg/jdeferred/h$a;->b:Lorg/jdeferred/h$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected e(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lorg/jdeferred/a/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdeferred/f;

    .line 113
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lorg/jdeferred/a/b;->a(Lorg/jdeferred/f;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    iget-object v2, p0, Lorg/jdeferred/a/b;->b:Lorg/slf4j/Logger;

    const-string v3, "an uncaught exception occured in a FailCallback"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lorg/jdeferred/a/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 119
    return-void
.end method

.method protected f(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)V"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lorg/jdeferred/a/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdeferred/g;

    .line 128
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lorg/jdeferred/a/b;->a(Lorg/jdeferred/g;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    iget-object v2, p0, Lorg/jdeferred/a/b;->b:Lorg/slf4j/Logger;

    const-string v3, "an uncaught exception occured in a ProgressCallback"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 133
    :cond_0
    return-void
.end method

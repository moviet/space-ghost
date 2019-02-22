.class public abstract Lcom/a/a/c/b/c/a;
.super Lcom/a/a/c/b/c/e;
.source "DefaultPutResolver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/c/b/c/e",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/a/a/c/b/c/e;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation
.end method

.method public a(Lcom/a/a/c/c;Ljava/lang/Object;)Lcom/a/a/c/b/c/f;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/c/c;",
            "TT;)",
            "Lcom/a/a/c/b/c/f;"
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p0, p2}, Lcom/a/a/c/b/c/a;->b(Ljava/lang/Object;)Lcom/a/a/c/c/e;

    move-result-object v1

    .line 60
    invoke-virtual {p1}, Lcom/a/a/c/c;->d()Lcom/a/a/c/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c/c$a;->a()V

    .line 63
    :try_start_0
    invoke-virtual {p1}, Lcom/a/a/c/c;->d()Lcom/a/a/c/c$a;

    move-result-object v2

    invoke-static {}, Lcom/a/a/c/c/c;->j()Lcom/a/a/c/c/c$a;

    move-result-object v0

    .line 64
    invoke-virtual {v1}, Lcom/a/a/c/c/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/a/a/c/c/c$a;->a(Ljava/lang/String;)Lcom/a/a/c/c/c$b;

    move-result-object v0

    .line 65
    invoke-virtual {v1}, Lcom/a/a/c/c/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/a/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/a/a/c/c/c$b;->a(Ljava/lang/String;)Lcom/a/a/c/c/c$b;

    move-result-object v3

    .line 66
    invoke-virtual {v1}, Lcom/a/a/c/c/e;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/b/d;->b(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v3, v0}, Lcom/a/a/c/c/c$b;->a([Ljava/lang/Object;)Lcom/a/a/c/c/c$b;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/a/a/c/c/c$b;->a()Lcom/a/a/c/c/c;

    move-result-object v0

    .line 63
    invoke-virtual {v2, v0}, Lcom/a/a/c/c$a;->a(Lcom/a/a/c/c/c;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 72
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/a/a/c/b/c/a;->a(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v0

    .line 74
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 75
    invoke-virtual {p0, p2}, Lcom/a/a/c/b/c/a;->c(Ljava/lang/Object;)Lcom/a/a/c/c/b;

    move-result-object v1

    .line 76
    invoke-virtual {p1}, Lcom/a/a/c/c;->d()Lcom/a/a/c/c$a;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/a/a/c/c$a;->a(Lcom/a/a/c/c/b;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 77
    invoke-virtual {v1}, Lcom/a/a/c/c/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/a/a/c/b/c/f;->a(JLjava/lang/String;)Lcom/a/a/c/b/c/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 83
    :goto_0
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 87
    invoke-virtual {p1}, Lcom/a/a/c/c;->d()Lcom/a/a/c/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c/c$a;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 92
    invoke-virtual {p1}, Lcom/a/a/c/c;->d()Lcom/a/a/c/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c/c$a;->c()V

    return-object v0

    .line 79
    :cond_0
    :try_start_3
    invoke-virtual {p1}, Lcom/a/a/c/c;->d()Lcom/a/a/c/c$a;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/a/a/c/c$a;->a(Lcom/a/a/c/c/e;Landroid/content/ContentValues;)I

    move-result v0

    .line 80
    invoke-virtual {v1}, Lcom/a/a/c/c/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a/c/b/c/f;->a(ILjava/lang/String;)Lcom/a/a/c/b/c/f;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 92
    :catchall_1
    move-exception v0

    invoke-virtual {p1}, Lcom/a/a/c/c;->d()Lcom/a/a/c/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c/c$a;->c()V

    throw v0
.end method

.method protected abstract b(Ljava/lang/Object;)Lcom/a/a/c/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/a/a/c/c/e;"
        }
    .end annotation
.end method

.method protected abstract c(Ljava/lang/Object;)Lcom/a/a/c/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/a/a/c/c/b;"
        }
    .end annotation
.end method

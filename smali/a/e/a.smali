.class public La/e/a;
.super La/j;
.source "SafeSubscriber.java"


# annotations
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
.field a:Z

.field private final b:La/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/j",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1}, La/j;-><init>(La/j;)V

    .line 66
    iput-object p1, p0, La/e/a;->b:La/j;

    .line 67
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 76
    iget-boolean v0, p0, La/e/a;->a:Z

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, La/e/a;->a:Z

    .line 79
    :try_start_0
    iget-object v0, p0, La/e/a;->b:La/j;

    invoke-virtual {v0}, La/j;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :try_start_1
    invoke-virtual {p0}, La/e/a;->d_()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 97
    :cond_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    invoke-static {v0}, La/f/c;->a(Ljava/lang/Throwable;)V

    .line 93
    new-instance v1, La/b/h;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, La/b/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 80
    :catch_1
    move-exception v0

    .line 83
    :try_start_2
    invoke-static {v0}, La/b/b;->b(Ljava/lang/Throwable;)V

    .line 84
    invoke-static {v0}, La/f/c;->a(Ljava/lang/Throwable;)V

    .line 85
    new-instance v1, La/b/d;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, La/b/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    :catchall_0
    move-exception v0

    .line 90
    :try_start_3
    invoke-virtual {p0}, La/e/a;->d_()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 93
    throw v0

    .line 91
    :catch_2
    move-exception v0

    .line 92
    invoke-static {v0}, La/f/c;->a(Ljava/lang/Throwable;)V

    .line 93
    new-instance v1, La/b/h;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, La/b/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 112
    invoke-static {p1}, La/b/b;->b(Ljava/lang/Throwable;)V

    .line 113
    iget-boolean v0, p0, La/e/a;->a:Z

    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, La/e/a;->a:Z

    .line 115
    invoke-virtual {p0, p1}, La/e/a;->b(Ljava/lang/Throwable;)V

    .line 117
    :cond_0
    return-void
.end method

.method public a_(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 133
    :try_start_0
    iget-boolean v0, p0, La/e/a;->a:Z

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, La/e/a;->b:La/j;

    invoke-virtual {v0, p1}, La/j;->a_(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 139
    invoke-static {v0, p0}, La/b/b;->a(Ljava/lang/Throwable;La/e;)V

    goto :goto_0
.end method

.method protected b(Ljava/lang/Throwable;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 151
    invoke-static {}, La/f/f;->a()La/f/f;

    move-result-object v0

    invoke-virtual {v0}, La/f/f;->b()La/f/b;

    move-result-object v0

    invoke-virtual {v0, p1}, La/f/b;->a(Ljava/lang/Throwable;)V

    .line 153
    :try_start_0
    iget-object v0, p0, La/e/a;->b:La/j;

    invoke-virtual {v0, p1}, La/j;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catch La/b/f; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 191
    :try_start_1
    invoke-virtual {p0}, La/e/a;->d_()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    .line 196
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 167
    :try_start_2
    invoke-virtual {p0}, La/e/a;->d_()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 172
    throw v0

    .line 168
    :catch_1
    move-exception v0

    .line 169
    invoke-static {v0}, La/f/c;->a(Ljava/lang/Throwable;)V

    .line 170
    new-instance v1, La/b/f;

    const-string v2, "Observer.onError not implemented and error while unsubscribing."

    new-instance v3, La/b/a;

    new-array v4, v8, [Ljava/lang/Throwable;

    aput-object p1, v4, v6

    aput-object v0, v4, v7

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, La/b/a;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v2, v3}, La/b/f;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 173
    :catch_2
    move-exception v0

    .line 179
    invoke-static {v0}, La/f/c;->a(Ljava/lang/Throwable;)V

    .line 181
    :try_start_3
    invoke-virtual {p0}, La/e/a;->d_()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 187
    new-instance v1, La/b/e;

    const-string v2, "Error occurred when trying to propagate error to Observer.onError"

    new-instance v3, La/b/a;

    new-array v4, v8, [Ljava/lang/Throwable;

    aput-object p1, v4, v6

    aput-object v0, v4, v7

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, La/b/a;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v2, v3}, La/b/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 182
    :catch_3
    move-exception v1

    .line 183
    invoke-static {v1}, La/f/c;->a(Ljava/lang/Throwable;)V

    .line 184
    new-instance v2, La/b/e;

    const-string v3, "Error occurred when trying to propagate error to Observer.onError and during unsubscription."

    new-instance v4, La/b/a;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Throwable;

    aput-object p1, v5, v6

    aput-object v0, v5, v7

    aput-object v1, v5, v8

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0}, La/b/a;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, v3, v4}, La/b/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 192
    :catch_4
    move-exception v0

    .line 193
    invoke-static {v0}, La/f/c;->a(Ljava/lang/Throwable;)V

    .line 194
    new-instance v1, La/b/e;

    invoke-direct {v1, v0}, La/b/e;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

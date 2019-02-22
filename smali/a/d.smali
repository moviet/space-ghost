.class public La/d;
.super Ljava/lang/Object;
.source "Observable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/d$b;,
        La/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:La/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/d$a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(La/d$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/d$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, La/d;->a:La/d$a;

    .line 60
    return-void
.end method

.method public static a(La/d$a;)La/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "La/d$a",
            "<TT;>;)",
            "La/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, La/d;

    invoke-static {p0}, La/f/c;->a(La/d$a;)La/d$a;

    move-result-object v1

    invoke-direct {v0, v1}, La/d;-><init>(La/d$a;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;)La/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TT;>;)",
            "La/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1946
    new-instance v0, La/d/a/d;

    invoke-direct {v0, p0}, La/d/a/d;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, La/d;->a(La/d$a;)La/d;

    move-result-object v0

    return-object v0
.end method

.method static a(La/j;La/d;)La/k;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "La/j",
            "<-TT;>;",
            "La/d",
            "<TT;>;)",
            "La/k;"
        }
    .end annotation

    .prologue
    .line 10268
    if-nez p0, :cond_0

    .line 10269
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "subscriber can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10271
    :cond_0
    iget-object v0, p1, La/d;->a:La/d$a;

    if-nez v0, :cond_1

    .line 10272
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onSubscribe function can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10280
    :cond_1
    invoke-virtual {p0}, La/j;->e_()V

    .line 10287
    instance-of v0, p0, La/e/a;

    if-nez v0, :cond_2

    .line 10289
    new-instance v0, La/e/a;

    invoke-direct {v0, p0}, La/e/a;-><init>(La/j;)V

    move-object p0, v0

    .line 10296
    :cond_2
    :try_start_0
    iget-object v0, p1, La/d;->a:La/d$a;

    invoke-static {p1, v0}, La/f/c;->a(La/d;La/d$a;)La/d$a;

    move-result-object v0

    invoke-interface {v0, p0}, La/d$a;->a(Ljava/lang/Object;)V

    .line 10297
    invoke-static {p0}, La/f/c;->a(La/k;)La/k;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 10319
    :goto_0
    return-object v0

    .line 10298
    :catch_0
    move-exception v0

    .line 10300
    invoke-static {v0}, La/b/b;->b(Ljava/lang/Throwable;)V

    .line 10302
    invoke-virtual {p0}, La/j;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10303
    invoke-static {v0}, La/f/c;->c(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, La/f/c;->a(Ljava/lang/Throwable;)V

    .line 10319
    :goto_1
    invoke-static {}, La/i/c;->a()La/k;

    move-result-object v0

    goto :goto_0

    .line 10307
    :cond_3
    :try_start_1
    invoke-static {v0}, La/f/c;->c(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p0, v1}, La/j;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 10308
    :catch_1
    move-exception v1

    .line 10309
    invoke-static {v1}, La/b/b;->b(Ljava/lang/Throwable;)V

    .line 10312
    new-instance v2, La/b/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error occurred attempting to subscribe ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "] and then again while trying to pass to onError."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, La/b/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10314
    invoke-static {v2}, La/f/c;->c(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 10316
    throw v2
.end method

.method public static b(Ljava/lang/Object;)La/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "La/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2236
    invoke-static {p0}, La/d/d/h;->a(Ljava/lang/Object;)La/d/d/h;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(I)La/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "La/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10439
    new-instance v0, La/d/a/k;

    invoke-direct {v0, p1}, La/d/a/k;-><init>(I)V

    invoke-virtual {p0, v0}, La/d;->a(La/d$b;)La/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;)La/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "La/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5566
    invoke-static {}, La/g/a;->b()La/g;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, La/d;->a(JLjava/util/concurrent/TimeUnit;La/g;)La/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;La/g;)La/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "La/g;",
            ")",
            "La/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5591
    new-instance v0, La/d/a/h;

    invoke-direct {v0, p1, p2, p3, p4}, La/d/a/h;-><init>(JLjava/util/concurrent/TimeUnit;La/g;)V

    invoke-virtual {p0, v0}, La/d;->a(La/d$b;)La/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(La/c/b;)La/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/c/b",
            "<-TT;>;)",
            "La/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5957
    invoke-static {}, La/c/c;->a()La/c/c$a;

    move-result-object v0

    .line 5958
    invoke-static {}, La/c/c;->a()La/c/c$a;

    move-result-object v1

    .line 5959
    new-instance v2, La/d/d/a;

    invoke-direct {v2, p1, v0, v1}, La/d/d/a;-><init>(La/c/b;La/c/b;La/c/a;)V

    .line 5961
    new-instance v0, La/d/a/c;

    invoke-direct {v0, p0, v2}, La/d/a/c;-><init>(La/d;La/e;)V

    invoke-static {v0}, La/d;->a(La/d$a;)La/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(La/c/e;)La/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "La/c/e",
            "<-TT;+TR;>;)",
            "La/d",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 7590
    new-instance v0, La/d/a/f;

    invoke-direct {v0, p0, p1}, La/d/a/f;-><init>(La/d;La/c/e;)V

    invoke-static {v0}, La/d;->a(La/d$a;)La/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(La/d$b;)La/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "La/d$b",
            "<+TR;-TT;>;)",
            "La/d",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 251
    new-instance v0, La/d/a/e;

    iget-object v1, p0, La/d;->a:La/d$a;

    invoke-direct {v0, v1, p1}, La/d/a/e;-><init>(La/d$a;La/d$b;)V

    invoke-static {v0}, La/d;->a(La/d$a;)La/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(La/g;)La/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/g;",
            ")",
            "La/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7673
    sget v0, La/d/d/f;->a:I

    invoke-virtual {p0, p1, v0}, La/d;->a(La/g;I)La/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(La/g;I)La/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/g;",
            "I)",
            "La/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7707
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, La/d;->a(La/g;ZI)La/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(La/g;ZI)La/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/g;",
            "ZI)",
            "La/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7778
    instance-of v0, p0, La/d/d/h;

    if-eqz v0, :cond_0

    .line 7779
    check-cast p0, La/d/d/h;

    invoke-virtual {p0, p1}, La/d/d/h;->c(La/g;)La/d;

    move-result-object v0

    .line 7781
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, La/d/a/i;

    invoke-direct {v0, p1, p2, p3}, La/d/a/i;-><init>(La/g;ZI)V

    invoke-virtual {p0, v0}, La/d;->a(La/d$b;)La/d;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(La/j;)La/k;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<-TT;>;)",
            "La/k;"
        }
    .end annotation

    .prologue
    .line 10198
    :try_start_0
    invoke-virtual {p1}, La/j;->e_()V

    .line 10200
    iget-object v0, p0, La/d;->a:La/d$a;

    invoke-static {p0, v0}, La/f/c;->a(La/d;La/d$a;)La/d$a;

    move-result-object v0

    invoke-interface {v0, p1}, La/d$a;->a(Ljava/lang/Object;)V

    .line 10201
    invoke-static {p1}, La/f/c;->a(La/k;)La/k;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 10218
    :goto_0
    return-object v0

    .line 10202
    :catch_0
    move-exception v0

    .line 10204
    invoke-static {v0}, La/b/b;->b(Ljava/lang/Throwable;)V

    .line 10207
    :try_start_1
    invoke-static {v0}, La/f/c;->c(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, La/j;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 10218
    invoke-static {}, La/i/c;->a()La/k;

    move-result-object v0

    goto :goto_0

    .line 10208
    :catch_1
    move-exception v1

    .line 10209
    invoke-static {v1}, La/b/b;->b(Ljava/lang/Throwable;)V

    .line 10212
    new-instance v2, La/b/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error occurred attempting to subscribe ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "] and then again while trying to pass to onError."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, La/b/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10214
    invoke-static {v2}, La/f/c;->c(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 10216
    throw v2
.end method

.method public final b(La/g;)La/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/g;",
            ")",
            "La/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10344
    instance-of v0, p0, La/d/d/h;

    if-eqz v0, :cond_0

    .line 10345
    check-cast p0, La/d/d/h;

    invoke-virtual {p0, p1}, La/d/d/h;->c(La/g;)La/d;

    move-result-object v0

    .line 10347
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, La/d/a/j;

    invoke-direct {v0, p0, p1}, La/d/a/j;-><init>(La/d;La/g;)V

    invoke-static {v0}, La/d;->a(La/d$a;)La/d;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()La/k;
    .locals 4

    .prologue
    .line 10035
    invoke-static {}, La/c/c;->a()La/c/c$a;

    move-result-object v0

    .line 10036
    sget-object v1, La/d/d/c;->g:La/c/b;

    .line 10037
    invoke-static {}, La/c/c;->a()La/c/c$a;

    move-result-object v2

    .line 10038
    new-instance v3, La/d/d/b;

    invoke-direct {v3, v0, v1, v2}, La/d/d/b;-><init>(La/c/b;La/c/b;La/c/a;)V

    invoke-virtual {p0, v3}, La/d;->b(La/j;)La/k;

    move-result-object v0

    return-object v0
.end method

.method public final b(La/c/b;)La/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/c/b",
            "<-TT;>;)",
            "La/k;"
        }
    .end annotation

    .prologue
    .line 10062
    if-nez p1, :cond_0

    .line 10063
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onNext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10066
    :cond_0
    sget-object v0, La/d/d/c;->g:La/c/b;

    .line 10067
    invoke-static {}, La/c/c;->a()La/c/c$a;

    move-result-object v1

    .line 10068
    new-instance v2, La/d/d/b;

    invoke-direct {v2, p1, v0, v1}, La/d/d/b;-><init>(La/c/b;La/c/b;La/c/a;)V

    invoke-virtual {p0, v2}, La/d;->b(La/j;)La/k;

    move-result-object v0

    return-object v0
.end method

.method public final b(La/j;)La/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<-TT;>;)",
            "La/k;"
        }
    .end annotation

    .prologue
    .line 10263
    invoke-static {p1, p0}, La/d;->a(La/j;La/d;)La/k;

    move-result-object v0

    return-object v0
.end method

.class public final La/f/c;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"


# static fields
.field static volatile a:La/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/c/b",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile b:La/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/c/e",
            "<",
            "La/d$a;",
            "La/d$a;",
            ">;"
        }
    .end annotation
.end field

.field static volatile c:La/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/c/e",
            "<",
            "La/h$a;",
            "La/h$a;",
            ">;"
        }
    .end annotation
.end field

.field static volatile d:La/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/c/e",
            "<",
            "La/a$a;",
            "La/a$a;",
            ">;"
        }
    .end annotation
.end field

.field static volatile e:La/c/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/c/f",
            "<",
            "La/d;",
            "La/d$a;",
            "La/d$a;",
            ">;"
        }
    .end annotation
.end field

.field static volatile f:La/c/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/c/f",
            "<",
            "La/h;",
            "La/h$a;",
            "La/h$a;",
            ">;"
        }
    .end annotation
.end field

.field static volatile g:La/c/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/c/f",
            "<",
            "La/a;",
            "La/a$a;",
            "La/a$a;",
            ">;"
        }
    .end annotation
.end field

.field static volatile h:La/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/c/e",
            "<",
            "La/g;",
            "La/g;",
            ">;"
        }
    .end annotation
.end field

.field static volatile i:La/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/c/e",
            "<",
            "La/g;",
            "La/g;",
            ">;"
        }
    .end annotation
.end field

.field static volatile j:La/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/c/e",
            "<",
            "La/c/a;",
            "La/c/a;",
            ">;"
        }
    .end annotation
.end field

.field static volatile k:La/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/c/e",
            "<",
            "La/k;",
            "La/k;",
            ">;"
        }
    .end annotation
.end field

.field static volatile l:La/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/c/e",
            "<",
            "La/k;",
            "La/k;",
            ">;"
        }
    .end annotation
.end field

.field static volatile m:La/c/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/c/d",
            "<+",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field static volatile n:La/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/c/e",
            "<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile o:La/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/c/e",
            "<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile p:La/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/c/e",
            "<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile q:La/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/c/e",
            "<",
            "La/d$b;",
            "La/d$b;",
            ">;"
        }
    .end annotation
.end field

.field static volatile r:La/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/c/e",
            "<",
            "La/d$b;",
            "La/d$b;",
            ">;"
        }
    .end annotation
.end field

.field static volatile s:La/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/c/e",
            "<",
            "La/a$b;",
            "La/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 88
    invoke-static {}, La/f/c;->a()V

    .line 89
    return-void
.end method

.method public static a(La/a$a;)La/a$a;
    .locals 1

    .prologue
    .line 364
    sget-object v0, La/f/c;->d:La/c/e;

    .line 365
    if-eqz v0, :cond_0

    .line 366
    invoke-interface {v0, p0}, La/c/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a$a;

    .line 368
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static a(La/c/a;)La/c/a;
    .locals 1

    .prologue
    .line 417
    sget-object v0, La/f/c;->j:La/c/e;

    .line 418
    if-eqz v0, :cond_0

    .line 419
    invoke-interface {v0, p0}, La/c/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/c/a;

    .line 421
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static a(La/d$a;)La/d$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "La/d$a",
            "<TT;>;)",
            "La/d$a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 336
    sget-object v0, La/f/c;->b:La/c/e;

    .line 337
    if-eqz v0, :cond_0

    .line 338
    invoke-interface {v0, p0}, La/c/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/d$a;

    .line 340
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static a(La/d;La/d$a;)La/d$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "La/d",
            "<TT;>;",
            "La/d$a",
            "<TT;>;)",
            "La/d$a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 433
    sget-object v0, La/f/c;->e:La/c/f;

    .line 434
    if-eqz v0, :cond_0

    .line 435
    invoke-interface {v0, p0, p1}, La/c/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/d$a;

    .line 437
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public static a(La/d$b;)La/d$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "La/d$b",
            "<TR;TT;>;)",
            "La/d$b",
            "<TR;TT;>;"
        }
    .end annotation

    .prologue
    .line 475
    sget-object v0, La/f/c;->q:La/c/e;

    .line 476
    if-eqz v0, :cond_0

    .line 477
    invoke-interface {v0, p0}, La/c/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/d$b;

    .line 479
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static a(La/g;)La/g;
    .locals 1

    .prologue
    .line 377
    sget-object v0, La/f/c;->h:La/c/e;

    .line 378
    if-eqz v0, :cond_0

    .line 379
    invoke-interface {v0, p0}, La/c/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/g;

    .line 381
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static a(La/k;)La/k;
    .locals 1

    .prologue
    .line 446
    sget-object v0, La/f/c;->k:La/c/e;

    .line 447
    if-eqz v0, :cond_0

    .line 448
    invoke-interface {v0, p0}, La/c/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/k;

    .line 450
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method static a()V
    .locals 1

    .prologue
    .line 102
    new-instance v0, La/f/c$1;

    invoke-direct {v0}, La/f/c$1;-><init>()V

    sput-object v0, La/f/c;->a:La/c/b;

    .line 109
    new-instance v0, La/f/c$9;

    invoke-direct {v0}, La/f/c$9;-><init>()V

    sput-object v0, La/f/c;->e:La/c/f;

    .line 116
    new-instance v0, La/f/c$10;

    invoke-direct {v0}, La/f/c$10;-><init>()V

    sput-object v0, La/f/c;->k:La/c/e;

    .line 123
    new-instance v0, La/f/c$11;

    invoke-direct {v0}, La/f/c$11;-><init>()V

    sput-object v0, La/f/c;->f:La/c/f;

    .line 138
    new-instance v0, La/f/c$12;

    invoke-direct {v0}, La/f/c$12;-><init>()V

    sput-object v0, La/f/c;->l:La/c/e;

    .line 145
    new-instance v0, La/f/c$13;

    invoke-direct {v0}, La/f/c$13;-><init>()V

    sput-object v0, La/f/c;->g:La/c/f;

    .line 152
    new-instance v0, La/f/c$14;

    invoke-direct {v0}, La/f/c$14;-><init>()V

    sput-object v0, La/f/c;->j:La/c/e;

    .line 159
    new-instance v0, La/f/c$15;

    invoke-direct {v0}, La/f/c$15;-><init>()V

    sput-object v0, La/f/c;->n:La/c/e;

    .line 166
    new-instance v0, La/f/c$16;

    invoke-direct {v0}, La/f/c$16;-><init>()V

    sput-object v0, La/f/c;->q:La/c/e;

    .line 173
    new-instance v0, La/f/c$2;

    invoke-direct {v0}, La/f/c$2;-><init>()V

    sput-object v0, La/f/c;->o:La/c/e;

    .line 180
    new-instance v0, La/f/c$3;

    invoke-direct {v0}, La/f/c$3;-><init>()V

    sput-object v0, La/f/c;->r:La/c/e;

    .line 187
    new-instance v0, La/f/c$4;

    invoke-direct {v0}, La/f/c$4;-><init>()V

    sput-object v0, La/f/c;->p:La/c/e;

    .line 194
    new-instance v0, La/f/c$5;

    invoke-direct {v0}, La/f/c$5;-><init>()V

    sput-object v0, La/f/c;->s:La/c/e;

    .line 201
    invoke-static {}, La/f/c;->b()V

    .line 202
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 302
    sget-object v0, La/f/c;->a:La/c/b;

    .line 303
    if-eqz v0, :cond_0

    .line 305
    :try_start_0
    invoke-interface {v0, p0}, La/c/b;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :goto_0
    return-void

    .line 307
    :catch_0
    move-exception v0

    .line 313
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The onError handler threw an Exception. It shouldn\'t. => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 316
    invoke-static {v0}, La/f/c;->b(Ljava/lang/Throwable;)V

    .line 319
    :cond_0
    invoke-static {p0}, La/f/c;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static b(La/d$b;)La/d$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "La/d$b",
            "<TR;TT;>;)",
            "La/d$b",
            "<TR;TT;>;"
        }
    .end annotation

    .prologue
    .line 533
    sget-object v0, La/f/c;->r:La/c/e;

    .line 534
    if-eqz v0, :cond_0

    .line 535
    invoke-interface {v0, p0}, La/c/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/d$b;

    .line 537
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static b(La/g;)La/g;
    .locals 1

    .prologue
    .line 403
    sget-object v0, La/f/c;->i:La/c/e;

    .line 404
    if-eqz v0, :cond_0

    .line 405
    invoke-interface {v0, p0}, La/c/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/g;

    .line 407
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method static b()V
    .locals 1

    .prologue
    .line 206
    new-instance v0, La/f/c$6;

    invoke-direct {v0}, La/f/c$6;-><init>()V

    sput-object v0, La/f/c;->b:La/c/e;

    .line 213
    new-instance v0, La/f/c$7;

    invoke-direct {v0}, La/f/c$7;-><init>()V

    sput-object v0, La/f/c;->c:La/c/e;

    .line 220
    new-instance v0, La/f/c$8;

    invoke-direct {v0}, La/f/c$8;-><init>()V

    sput-object v0, La/f/c;->d:La/c/e;

    .line 226
    return-void
.end method

.method static b(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 323
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    .line 325
    invoke-interface {v1, v0, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 326
    return-void
.end method

.method public static c()La/c/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/c/d",
            "<+",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1237
    sget-object v0, La/f/c;->m:La/c/d;

    return-object v0
.end method

.method public static c(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 459
    sget-object v0, La/f/c;->n:La/c/e;

    .line 460
    if-eqz v0, :cond_0

    .line 461
    invoke-interface {v0, p0}, La/c/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 463
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

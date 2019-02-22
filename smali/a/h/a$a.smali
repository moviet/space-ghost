.class final La/h/a$a;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "PublishSubject.java"

# interfaces
.implements La/e;
.implements La/f;
.implements La/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "La/e",
        "<TT;>;",
        "La/f;",
        "La/k;"
    }
.end annotation


# instance fields
.field final a:La/h/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/h/a$b",
            "<TT;>;"
        }
    .end annotation
.end field

.field final b:La/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/j",
            "<-TT;>;"
        }
    .end annotation
.end field

.field c:J


# direct methods
.method public constructor <init>(La/h/a$b;La/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/h/a$b",
            "<TT;>;",
            "La/j",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 265
    iput-object p1, p0, La/h/a$a;->a:La/h/a$b;

    .line 266
    iput-object p2, p0, La/h/a$a;->b:La/j;

    .line 267
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 321
    invoke-virtual {p0}, La/h/a$a;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, La/h/a$a;->b:La/j;

    invoke-virtual {v0}, La/j;->a()V

    .line 324
    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 5

    .prologue
    .line 271
    invoke-static {p1, p2}, La/d/a/a;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    :cond_0
    invoke-virtual {p0}, La/h/a$a;->get()J

    move-result-wide v0

    .line 274
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 283
    :cond_1
    :goto_0
    return-void

    .line 277
    :cond_2
    invoke-static {v0, v1, p1, p2}, La/d/a/a;->a(JJ)J

    move-result-wide v2

    .line 278
    invoke-virtual {p0, v0, v1, v2, v3}, La/h/a$a;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 314
    invoke-virtual {p0}, La/h/a$a;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, La/h/a$a;->b:La/j;

    invoke-virtual {v0, p1}, La/j;->a(Ljava/lang/Throwable;)V

    .line 317
    :cond_0
    return-void
.end method

.method public a_(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 299
    invoke-virtual {p0}, La/h/a$a;->get()J

    move-result-wide v0

    .line 300
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 301
    iget-wide v2, p0, La/h/a$a;->c:J

    .line 302
    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 303
    const-wide/16 v0, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, La/h/a$a;->c:J

    .line 304
    iget-object v0, p0, La/h/a$a;->b:La/j;

    invoke-virtual {v0, p1}, La/j;->a_(Ljava/lang/Object;)V

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    invoke-virtual {p0}, La/h/a$a;->d_()V

    .line 307
    iget-object v0, p0, La/h/a$a;->b:La/j;

    new-instance v1, La/b/c;

    const-string v2, "PublishSubject: could not emit value due to lack of requests"

    invoke-direct {v1, v2}, La/b/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, La/j;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b()Z
    .locals 4

    .prologue
    .line 287
    invoke-virtual {p0}, La/h/a$a;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d_()V
    .locals 4

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 292
    invoke-virtual {p0, v2, v3}, La/h/a$a;->getAndSet(J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, La/h/a$a;->a:La/h/a$b;

    invoke-virtual {v0, p0}, La/h/a$b;->b(La/h/a$a;)V

    .line 295
    :cond_0
    return-void
.end method

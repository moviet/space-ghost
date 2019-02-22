.class final La/d/c/a$b;
.super La/g$a;
.source "CachedThreadScheduler.java"

# interfaces
.implements La/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/d/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final b:La/i/b;

.field private final c:La/d/c/a$a;

.field private final d:La/d/c/a$c;


# direct methods
.method constructor <init>(La/d/c/a$a;)V
    .locals 1

    .prologue
    .line 183
    invoke-direct {p0}, La/g$a;-><init>()V

    .line 178
    new-instance v0, La/i/b;

    invoke-direct {v0}, La/i/b;-><init>()V

    iput-object v0, p0, La/d/c/a$b;->b:La/i/b;

    .line 184
    iput-object p1, p0, La/d/c/a$b;->c:La/d/c/a$a;

    .line 185
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, La/d/c/a$b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 186
    invoke-virtual {p1}, La/d/c/a$a;->a()La/d/c/a$c;

    move-result-object v0

    iput-object v0, p0, La/d/c/a$b;->d:La/d/c/a$c;

    .line 187
    return-void
.end method


# virtual methods
.method public a(La/c/a;)La/k;
    .locals 3

    .prologue
    .line 212
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, La/d/c/a$b;->a(La/c/a;JLjava/util/concurrent/TimeUnit;)La/k;

    move-result-object v0

    return-object v0
.end method

.method public a(La/c/a;JLjava/util/concurrent/TimeUnit;)La/k;
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, La/d/c/a$b;->b:La/i/b;

    invoke-virtual {v0}, La/i/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-static {}, La/i/c;->a()La/k;

    move-result-object v0

    .line 233
    :goto_0
    return-object v0

    .line 222
    :cond_0
    iget-object v0, p0, La/d/c/a$b;->d:La/d/c/a$c;

    new-instance v1, La/d/c/a$b$1;

    invoke-direct {v1, p0, p1}, La/d/c/a$b$1;-><init>(La/d/c/a$b;La/c/a;)V

    invoke-virtual {v0, v1, p2, p3, p4}, La/d/c/a$c;->b(La/c/a;JLjava/util/concurrent/TimeUnit;)La/d/c/h;

    move-result-object v0

    .line 231
    iget-object v1, p0, La/d/c/a$b;->b:La/i/b;

    invoke-virtual {v1, v0}, La/i/b;->a(La/k;)V

    .line 232
    iget-object v1, p0, La/d/c/a$b;->b:La/i/b;

    invoke-virtual {v0, v1}, La/d/c/h;->a(La/i/b;)V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, La/d/c/a$b;->b:La/i/b;

    invoke-virtual {v0}, La/i/b;->b()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, La/d/c/a$b;->c:La/d/c/a$a;

    iget-object v1, p0, La/d/c/a$b;->d:La/d/c/a$c;

    invoke-virtual {v0, v1}, La/d/c/a$a;->a(La/d/c/a$c;)V

    .line 203
    return-void
.end method

.method public d_()V
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, La/d/c/a$b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, La/d/c/a$b;->d:La/d/c/a$c;

    invoke-virtual {v0, p0}, La/d/c/a$c;->a(La/c/a;)La/k;

    .line 197
    :cond_0
    iget-object v0, p0, La/d/c/a$b;->b:La/i/b;

    invoke-virtual {v0}, La/i/b;->d_()V

    .line 198
    return-void
.end method

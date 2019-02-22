.class final La/d/c/e$a;
.super La/g$a;
.source "ImmediateScheduler.java"

# interfaces
.implements La/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/d/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final a:La/i/a;

.field final synthetic b:La/d/c/e;


# direct methods
.method constructor <init>(La/d/c/e;)V
    .locals 1

    .prologue
    .line 45
    iput-object p1, p0, La/d/c/e$a;->b:La/d/c/e;

    invoke-direct {p0}, La/g$a;-><init>()V

    .line 43
    new-instance v0, La/i/a;

    invoke-direct {v0}, La/i/a;-><init>()V

    iput-object v0, p0, La/d/c/e$a;->a:La/i/a;

    .line 46
    return-void
.end method


# virtual methods
.method public a(La/c/a;)La/k;
    .locals 1

    .prologue
    .line 58
    invoke-interface {p1}, La/c/a;->c()V

    .line 59
    invoke-static {}, La/i/c;->a()La/k;

    move-result-object v0

    return-object v0
.end method

.method public a(La/c/a;JLjava/util/concurrent/TimeUnit;)La/k;
    .locals 4

    .prologue
    .line 51
    iget-object v0, p0, La/d/c/e$a;->b:La/d/c/e;

    invoke-virtual {v0}, La/d/c/e;->b()J

    move-result-wide v0

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 53
    new-instance v2, La/d/c/j;

    invoke-direct {v2, p1, p0, v0, v1}, La/d/c/j;-><init>(La/c/a;La/g$a;J)V

    invoke-virtual {p0, v2}, La/d/c/e$a;->a(La/c/a;)La/k;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, La/d/c/e$a;->a:La/i/a;

    invoke-virtual {v0}, La/i/a;->b()Z

    move-result v0

    return v0
.end method

.method public d_()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, La/d/c/e$a;->a:La/i/a;

    invoke-virtual {v0}, La/i/a;->d_()V

    .line 65
    return-void
.end method

.class La/d/a/h$1;
.super La/j;
.source "OperatorDelay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/d/a/h;->a(La/j;)La/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/j",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:Z

.field final synthetic b:La/g$a;

.field final synthetic c:La/j;

.field final synthetic d:La/d/a/h;


# direct methods
.method constructor <init>(La/d/a/h;La/j;La/g$a;La/j;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, La/d/a/h$1;->d:La/d/a/h;

    iput-object p3, p0, La/d/a/h$1;->b:La/g$a;

    iput-object p4, p0, La/d/a/h$1;->c:La/j;

    invoke-direct {p0, p2}, La/j;-><init>(La/j;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 53
    iget-object v0, p0, La/d/a/h$1;->b:La/g$a;

    new-instance v1, La/d/a/h$1$1;

    invoke-direct {v1, p0}, La/d/a/h$1$1;-><init>(La/d/a/h$1;)V

    iget-object v2, p0, La/d/a/h$1;->d:La/d/a/h;

    iget-wide v2, v2, La/d/a/h;->a:J

    iget-object v4, p0, La/d/a/h$1;->d:La/d/a/h;

    iget-object v4, v4, La/d/a/h;->b:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, La/g$a;->a(La/c/a;JLjava/util/concurrent/TimeUnit;)La/k;

    .line 64
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, La/d/a/h$1;->b:La/g$a;

    new-instance v1, La/d/a/h$1$2;

    invoke-direct {v1, p0, p1}, La/d/a/h$1$2;-><init>(La/d/a/h$1;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, La/g$a;->a(La/c/a;)La/k;

    .line 78
    return-void
.end method

.method public a_(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, La/d/a/h$1;->b:La/g$a;

    new-instance v1, La/d/a/h$1$3;

    invoke-direct {v1, p0, p1}, La/d/a/h$1$3;-><init>(La/d/a/h$1;Ljava/lang/Object;)V

    iget-object v2, p0, La/d/a/h$1;->d:La/d/a/h;

    iget-wide v2, v2, La/d/a/h;->a:J

    iget-object v4, p0, La/d/a/h$1;->d:La/d/a/h;

    iget-object v4, v4, La/d/a/h;->b:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, La/g$a;->a(La/c/a;JLjava/util/concurrent/TimeUnit;)La/k;

    .line 92
    return-void
.end method

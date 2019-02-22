.class La/d/a/j$1$1;
.super La/j;
.source "OperatorSubscribeOn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/d/a/j$1;->c()V
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
.field final synthetic a:Ljava/lang/Thread;

.field final synthetic b:La/d/a/j$1;


# direct methods
.method constructor <init>(La/d/a/j$1;La/j;Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, La/d/a/j$1$1;->b:La/d/a/j$1;

    iput-object p3, p0, La/d/a/j$1$1;->a:Ljava/lang/Thread;

    invoke-direct {p0, p2}, La/j;-><init>(La/j;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 68
    :try_start_0
    iget-object v0, p0, La/d/a/j$1$1;->b:La/d/a/j$1;

    iget-object v0, v0, La/d/a/j$1;->a:La/j;

    invoke-virtual {v0}, La/j;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    iget-object v0, p0, La/d/a/j$1$1;->b:La/d/a/j$1;

    iget-object v0, v0, La/d/a/j$1;->b:La/g$a;

    invoke-virtual {v0}, La/g$a;->d_()V

    .line 72
    return-void

    .line 70
    :catchall_0
    move-exception v0

    iget-object v1, p0, La/d/a/j$1$1;->b:La/d/a/j$1;

    iget-object v1, v1, La/d/a/j$1;->b:La/g$a;

    invoke-virtual {v1}, La/g$a;->d_()V

    throw v0
.end method

.method public a(La/f;)V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, La/d/a/j$1$1;->b:La/d/a/j$1;

    iget-object v0, v0, La/d/a/j$1;->a:La/j;

    new-instance v1, La/d/a/j$1$1$1;

    invoke-direct {v1, p0, p1}, La/d/a/j$1$1$1;-><init>(La/d/a/j$1$1;La/f;)V

    invoke-virtual {v0, v1}, La/j;->a(La/f;)V

    .line 91
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 59
    :try_start_0
    iget-object v0, p0, La/d/a/j$1$1;->b:La/d/a/j$1;

    iget-object v0, v0, La/d/a/j$1;->a:La/j;

    invoke-virtual {v0, p1}, La/j;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    iget-object v0, p0, La/d/a/j$1$1;->b:La/d/a/j$1;

    iget-object v0, v0, La/d/a/j$1;->b:La/g$a;

    invoke-virtual {v0}, La/g$a;->d_()V

    .line 63
    return-void

    .line 61
    :catchall_0
    move-exception v0

    iget-object v1, p0, La/d/a/j$1$1;->b:La/d/a/j$1;

    iget-object v1, v1, La/d/a/j$1;->b:La/g$a;

    invoke-virtual {v1}, La/g$a;->d_()V

    throw v0
.end method

.method public a_(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, La/d/a/j$1$1;->b:La/d/a/j$1;

    iget-object v0, v0, La/d/a/j$1;->a:La/j;

    invoke-virtual {v0, p1}, La/j;->a_(Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.class La/d/a/k$1;
.super La/j;
.source "OperatorTake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/d/a/k;->a(La/j;)La/j;
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
.field a:I

.field b:Z

.field final synthetic c:La/j;

.field final synthetic d:La/d/a/k;


# direct methods
.method constructor <init>(La/d/a/k;La/j;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, La/d/a/k$1;->d:La/d/a/k;

    iput-object p2, p0, La/d/a/k$1;->c:La/j;

    invoke-direct {p0}, La/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, La/d/a/k$1;->b:Z

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, La/d/a/k$1;->b:Z

    .line 56
    iget-object v0, p0, La/d/a/k$1;->c:La/j;

    invoke-virtual {v0}, La/j;->a()V

    .line 58
    :cond_0
    return-void
.end method

.method public a(La/f;)V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, La/d/a/k$1;->c:La/j;

    new-instance v1, La/d/a/k$1$1;

    invoke-direct {v1, p0, p1}, La/d/a/k$1$1;-><init>(La/d/a/k$1;La/f;)V

    invoke-virtual {v0, v1}, La/j;->a(La/f;)V

    .line 116
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, La/d/a/k$1;->b:Z

    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, La/d/a/k$1;->b:Z

    .line 65
    :try_start_0
    iget-object v0, p0, La/d/a/k$1;->c:La/j;

    invoke-virtual {v0, p1}, La/j;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-virtual {p0}, La/d/a/k$1;->d_()V

    .line 70
    :cond_0
    return-void

    .line 67
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, La/d/a/k$1;->d_()V

    throw v0
.end method

.method public a_(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 74
    invoke-virtual {p0}, La/d/a/k$1;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, La/d/a/k$1;->a:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, La/d/a/k$1;->a:I

    iget-object v2, p0, La/d/a/k$1;->d:La/d/a/k;

    iget v2, v2, La/d/a/k;->a:I

    if-ge v0, v2, :cond_0

    .line 75
    iget v0, p0, La/d/a/k$1;->a:I

    iget-object v2, p0, La/d/a/k$1;->d:La/d/a/k;

    iget v2, v2, La/d/a/k;->a:I

    if-ne v0, v2, :cond_1

    move v0, v1

    .line 76
    :goto_0
    iget-object v2, p0, La/d/a/k$1;->c:La/j;

    invoke-virtual {v2, p1}, La/j;->a_(Ljava/lang/Object;)V

    .line 77
    if-eqz v0, :cond_0

    iget-boolean v0, p0, La/d/a/k$1;->b:Z

    if-nez v0, :cond_0

    .line 78
    iput-boolean v1, p0, La/d/a/k$1;->b:Z

    .line 80
    :try_start_0
    iget-object v0, p0, La/d/a/k$1;->c:La/j;

    invoke-virtual {v0}, La/j;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-virtual {p0}, La/d/a/k$1;->d_()V

    .line 86
    :cond_0
    return-void

    .line 75
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, La/d/a/k$1;->d_()V

    throw v0
.end method

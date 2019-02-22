.class La/d/a/g$1;
.super La/j;
.source "OperatorAny.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/d/a/g;->a(La/j;)La/j;
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

.field b:Z

.field final synthetic c:La/d/b/a;

.field final synthetic d:La/j;

.field final synthetic e:La/d/a/g;


# direct methods
.method constructor <init>(La/d/a/g;La/d/b/a;La/j;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, La/d/a/g$1;->e:La/d/a/g;

    iput-object p2, p0, La/d/a/g$1;->c:La/d/b/a;

    iput-object p3, p0, La/d/a/g$1;->d:La/j;

    invoke-direct {p0}, La/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 81
    iget-boolean v0, p0, La/d/a/g$1;->b:Z

    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, La/d/a/g$1;->b:Z

    .line 83
    iget-boolean v0, p0, La/d/a/g$1;->a:Z

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, La/d/a/g$1;->c:La/d/b/a;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, La/d/b/a;->a(Ljava/lang/Object;)V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, La/d/a/g$1;->c:La/d/b/a;

    iget-object v1, p0, La/d/a/g$1;->e:La/d/a/g;

    iget-boolean v1, v1, La/d/a/g;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, La/d/b/a;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, La/d/a/g$1;->b:Z

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, La/d/a/g$1;->b:Z

    .line 73
    iget-object v0, p0, La/d/a/g$1;->d:La/j;

    invoke-virtual {v0, p1}, La/j;->a(Ljava/lang/Throwable;)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-static {p1}, La/f/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
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

    .line 49
    iget-boolean v0, p0, La/d/a/g$1;->b:Z

    if-eqz v0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iput-boolean v1, p0, La/d/a/g$1;->a:Z

    .line 55
    :try_start_0
    iget-object v0, p0, La/d/a/g$1;->e:La/d/a/g;

    iget-object v0, v0, La/d/a/g;->a:La/c/e;

    invoke-interface {v0, p1}, La/c/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    iput-boolean v1, p0, La/d/a/g$1;->b:Z

    .line 62
    iget-object v2, p0, La/d/a/g$1;->c:La/d/b/a;

    iget-object v0, p0, La/d/a/g$1;->e:La/d/a/g;

    iget-boolean v0, v0, La/d/a/g;->b:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, La/d/b/a;->a(Ljava/lang/Object;)V

    .line 63
    invoke-virtual {p0}, La/d/a/g$1;->d_()V

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    invoke-static {v0, p0, p1}, La/b/b;->a(Ljava/lang/Throwable;La/e;Ljava/lang/Object;)V

    goto :goto_0

    .line 62
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

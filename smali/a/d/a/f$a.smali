.class final La/d/a/f$a;
.super La/j;
.source "OnSubscribeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/d/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "La/j",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:La/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/j",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final b:La/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/c/e",
            "<-TT;+TR;>;"
        }
    .end annotation
.end field

.field c:Z


# direct methods
.method public constructor <init>(La/j;La/c/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<-TR;>;",
            "La/c/e",
            "<-TT;+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, La/j;-><init>()V

    .line 60
    iput-object p1, p0, La/d/a/f$a;->a:La/j;

    .line 61
    iput-object p2, p0, La/d/a/f$a;->b:La/c/e;

    .line 62
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, La/d/a/f$a;->c:Z

    if-eqz v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, La/d/a/f$a;->a:La/j;

    invoke-virtual {v0}, La/j;->a()V

    goto :goto_0
.end method

.method public a(La/f;)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, La/d/a/f$a;->a:La/j;

    invoke-virtual {v0, p1}, La/j;->a(La/f;)V

    .line 103
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, La/d/a/f$a;->c:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-static {p1}, La/f/c;->a(Ljava/lang/Throwable;)V

    .line 89
    :goto_0
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, La/d/a/f$a;->c:Z

    .line 88
    iget-object v0, p0, La/d/a/f$a;->a:La/j;

    invoke-virtual {v0, p1}, La/j;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a_(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 69
    :try_start_0
    iget-object v0, p0, La/d/a/f$a;->b:La/c/e;

    invoke-interface {v0, p1}, La/c/e;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 77
    iget-object v1, p0, La/d/a/f$a;->a:La/j;

    invoke-virtual {v1, v0}, La/j;->a_(Ljava/lang/Object;)V

    .line 78
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    invoke-static {v0}, La/b/b;->b(Ljava/lang/Throwable;)V

    .line 72
    invoke-virtual {p0}, La/d/a/f$a;->d_()V

    .line 73
    invoke-static {v0, p1}, La/b/g;->a(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, La/d/a/f$a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

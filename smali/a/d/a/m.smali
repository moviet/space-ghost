.class public final La/d/a/m;
.super Ljava/lang/Object;
.source "SingleLiftObservableOperator.java"

# interfaces
.implements La/h$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/d/a/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "La/h$a",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final a:La/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/h$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field final b:La/d$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/d$b",
            "<+TR;-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static a(La/j;)La/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "La/j",
            "<TT;>;)",
            "La/i",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, La/d/a/m$a;

    invoke-direct {v0, p0}, La/d/a/m$a;-><init>(La/j;)V

    .line 63
    invoke-virtual {p0, v0}, La/j;->a(La/k;)V

    .line 64
    return-object v0
.end method


# virtual methods
.method public a(La/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/i",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, La/d/a/l$a;

    invoke-direct {v0, p1}, La/d/a/l$a;-><init>(La/i;)V

    .line 46
    invoke-virtual {p1, v0}, La/i;->a(La/k;)V

    .line 49
    :try_start_0
    iget-object v1, p0, La/d/a/m;->b:La/d$b;

    invoke-static {v1}, La/f/c;->b(La/d$b;)La/d$b;

    move-result-object v1

    invoke-interface {v1, v0}, La/d$b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/j;

    .line 51
    invoke-static {v0}, La/d/a/m;->a(La/j;)La/i;

    move-result-object v1

    .line 53
    invoke-virtual {v0}, La/j;->e_()V

    .line 55
    iget-object v0, p0, La/d/a/m;->a:La/h$a;

    invoke-interface {v0, v1}, La/h$a;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    invoke-static {v0, p1}, La/b/b;->a(Ljava/lang/Throwable;La/i;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 32
    check-cast p1, La/i;

    invoke-virtual {p0, p1}, La/d/a/m;->a(La/i;)V

    return-void
.end method

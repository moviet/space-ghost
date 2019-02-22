.class public final La/d/a/e;
.super Ljava/lang/Object;
.source "OnSubscribeLift.java"

# interfaces
.implements La/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "La/d$a",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final a:La/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/d$a",
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
.method public constructor <init>(La/d$a;La/d$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/d$a",
            "<TT;>;",
            "La/d$b",
            "<+TR;-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, La/d/a/e;->a:La/d$a;

    .line 38
    iput-object p2, p0, La/d/a/e;->b:La/d$b;

    .line 39
    return-void
.end method


# virtual methods
.method public a(La/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    :try_start_0
    iget-object v0, p0, La/d/a/e;->b:La/d$b;

    invoke-static {v0}, La/f/c;->a(La/d$b;)La/d$b;

    move-result-object v0

    invoke-interface {v0, p1}, La/d$b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/j;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    :try_start_1
    invoke-virtual {v0}, La/j;->e_()V

    .line 48
    iget-object v1, p0, La/d/a/e;->a:La/d$a;

    invoke-interface {v1, v0}, La/d$a;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 62
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v1

    .line 53
    :try_start_2
    invoke-static {v1}, La/b/b;->b(Ljava/lang/Throwable;)V

    .line 54
    invoke-virtual {v0, v1}, La/j;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 56
    :catch_1
    move-exception v0

    .line 57
    invoke-static {v0}, La/b/b;->b(Ljava/lang/Throwable;)V

    .line 60
    invoke-virtual {p1, v0}, La/j;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, La/j;

    invoke-virtual {p0, p1}, La/d/a/e;->a(La/j;)V

    return-void
.end method

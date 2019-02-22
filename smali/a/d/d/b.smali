.class public final La/d/d/b;
.super La/j;
.source "ActionSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "La/j",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:La/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/c/b",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:La/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/c/b",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final c:La/c/a;


# direct methods
.method public constructor <init>(La/c/b;La/c/b;La/c/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/c/b",
            "<-TT;>;",
            "La/c/b",
            "<",
            "Ljava/lang/Throwable;",
            ">;",
            "La/c/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, La/j;-><init>()V

    .line 32
    iput-object p1, p0, La/d/d/b;->a:La/c/b;

    .line 33
    iput-object p2, p0, La/d/d/b;->b:La/c/b;

    .line 34
    iput-object p3, p0, La/d/d/b;->c:La/c/a;

    .line 35
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, La/d/d/b;->c:La/c/a;

    invoke-interface {v0}, La/c/a;->c()V

    .line 50
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, La/d/d/b;->b:La/c/b;

    invoke-interface {v0, p1}, La/c/b;->a(Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method public a_(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, La/d/d/b;->a:La/c/b;

    invoke-interface {v0, p1}, La/c/b;->a(Ljava/lang/Object;)V

    .line 40
    return-void
.end method

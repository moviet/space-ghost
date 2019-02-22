.class final La/d/a/m$a;
.super La/i;
.source "SingleLiftObservableOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/d/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "La/i",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:La/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/j",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(La/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0}, La/i;-><init>()V

    .line 71
    iput-object p1, p0, La/d/a/m$a;->a:La/j;

    .line 72
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, La/d/a/m$a;->a:La/j;

    new-instance v1, La/d/b/b;

    iget-object v2, p0, La/d/a/m$a;->a:La/j;

    invoke-direct {v1, v2, p1}, La/d/b/b;-><init>(La/j;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, La/j;->a(La/f;)V

    .line 77
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, La/d/a/m$a;->a:La/j;

    invoke-virtual {v0, p1}, La/j;->a(Ljava/lang/Throwable;)V

    .line 82
    return-void
.end method

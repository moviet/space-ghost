.class public La/h/b;
.super La/h/c;
.source "SerializedSubject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "La/h/c",
        "<TT;TR;>;"
    }
.end annotation


# instance fields
.field private final b:La/e/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/e/b",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:La/h/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/h/c",
            "<TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La/h/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/h/c",
            "<TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, La/h/b$1;

    invoke-direct {v0, p1}, La/h/b$1;-><init>(La/h/c;)V

    invoke-direct {p0, v0}, La/h/c;-><init>(La/d$a;)V

    .line 51
    iput-object p1, p0, La/h/b;->c:La/h/c;

    .line 52
    new-instance v0, La/e/b;

    invoke-direct {v0, p1}, La/e/b;-><init>(La/e;)V

    iput-object v0, p0, La/h/b;->b:La/e/b;

    .line 53
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, La/h/b;->b:La/e/b;

    invoke-virtual {v0}, La/e/b;->a()V

    .line 58
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, La/h/b;->b:La/e/b;

    invoke-virtual {v0, p1}, La/e/b;->a(Ljava/lang/Throwable;)V

    .line 63
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
    .line 67
    iget-object v0, p0, La/h/b;->b:La/e/b;

    invoke-virtual {v0, p1}, La/e/b;->a_(Ljava/lang/Object;)V

    .line 68
    return-void
.end method

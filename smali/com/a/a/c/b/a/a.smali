.class public abstract Lcom/a/a/c/b/a/a;
.super Lcom/a/a/c/b/a/b;
.source "DefaultDeleteResolver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/c/b/a/b",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/a/a/c/b/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/c/c;Ljava/lang/Object;)Lcom/a/a/c/b/a/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/c/c;",
            "TT;)",
            "Lcom/a/a/c/b/a/c;"
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p0, p2}, Lcom/a/a/c/b/a/a;->a(Ljava/lang/Object;)Lcom/a/a/c/c/a;

    move-result-object v0

    .line 30
    invoke-virtual {p1}, Lcom/a/a/c/c;->d()Lcom/a/a/c/c$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/a/c/c$a;->a(Lcom/a/a/c/c/a;)I

    move-result v1

    .line 31
    invoke-virtual {v0}, Lcom/a/a/c/c/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a/c/b/a/c;->a(ILjava/lang/String;)Lcom/a/a/c/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a(Ljava/lang/Object;)Lcom/a/a/c/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/a/a/c/c/a;"
        }
    .end annotation
.end method

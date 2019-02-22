.class Lcom/a/a/b/e;
.super Ljava/lang/Object;
.source "RxChangesBus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:La/h/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/h/c",
            "<TT;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, La/h/a;->c()La/h/a;

    move-result-object v0

    invoke-virtual {v0}, La/h/a;->d()La/h/b;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/e;->a:La/h/c;

    .line 14
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/a/a/b/e;->a:La/h/c;

    invoke-virtual {v0, p1}, La/h/c;->a_(Ljava/lang/Object;)V

    .line 19
    return-void
.end method

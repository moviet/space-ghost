.class public final La/d/a/h;
.super Ljava/lang/Object;
.source "OperatorDelay.java"

# interfaces
.implements La/d$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "La/d$b",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final a:J

.field final b:Ljava/util/concurrent/TimeUnit;

.field final c:La/g;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;La/g;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide p1, p0, La/d/a/h;->a:J

    .line 39
    iput-object p3, p0, La/d/a/h;->b:Ljava/util/concurrent/TimeUnit;

    .line 40
    iput-object p4, p0, La/d/a/h;->c:La/g;

    .line 41
    return-void
.end method


# virtual methods
.method public a(La/j;)La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<-TT;>;)",
            "La/j",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, La/d/a/h;->c:La/g;

    invoke-virtual {v0}, La/g;->a()La/g$a;

    move-result-object v0

    .line 46
    invoke-virtual {p1, v0}, La/j;->a(La/k;)V

    .line 47
    new-instance v1, La/d/a/h$1;

    invoke-direct {v1, p0, p1, v0, p1}, La/d/a/h$1;-><init>(La/d/a/h;La/j;La/g$a;La/j;)V

    return-object v1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    check-cast p1, La/j;

    invoke-virtual {p0, p1}, La/d/a/h;->a(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method

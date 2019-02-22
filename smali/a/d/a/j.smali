.class public final La/d/a/j;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

# interfaces
.implements La/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "La/d$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:La/g;

.field final b:La/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/d",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La/d;La/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/d",
            "<TT;>;",
            "La/g;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, La/d/a/j;->a:La/g;

    .line 37
    iput-object p1, p0, La/d/a/j;->b:La/d;

    .line 38
    return-void
.end method


# virtual methods
.method public a(La/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, La/d/a/j;->a:La/g;

    invoke-virtual {v0}, La/g;->a()La/g$a;

    move-result-object v0

    .line 43
    invoke-virtual {p1, v0}, La/j;->a(La/k;)V

    .line 45
    new-instance v1, La/d/a/j$1;

    invoke-direct {v1, p0, p1, v0}, La/d/a/j$1;-><init>(La/d/a/j;La/j;La/g$a;)V

    invoke-virtual {v0, v1}, La/g$a;->a(La/c/a;)La/k;

    .line 97
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, La/j;

    invoke-virtual {p0, p1}, La/d/a/j;->a(La/j;)V

    return-void
.end method

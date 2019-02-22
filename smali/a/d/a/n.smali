.class public final La/d/a/n;
.super Ljava/lang/Object;
.source "SingleToObservable.java"

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
.field final a:La/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/h$a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La/h$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/h$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, La/d/a/n;->a:La/h$a;

    .line 33
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
    .line 37
    new-instance v0, La/d/a/m$a;

    invoke-direct {v0, p1}, La/d/a/m$a;-><init>(La/j;)V

    .line 38
    invoke-virtual {p1, v0}, La/j;->a(La/k;)V

    .line 39
    iget-object v1, p0, La/d/a/n;->a:La/h$a;

    invoke-interface {v1, v0}, La/h$a;->a(Ljava/lang/Object;)V

    .line 40
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, La/j;

    invoke-virtual {p0, p1}, La/d/a/n;->a(La/j;)V

    return-void
.end method

.class public final La/d/a/l;
.super Ljava/lang/Object;
.source "SingleFromObservable.java"

# interfaces
.implements La/h$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/d/a/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "La/h$a",
        "<TT;>;"
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


# direct methods
.method public constructor <init>(La/d$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/d$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, La/d/a/l;->a:La/d$a;

    .line 35
    return-void
.end method


# virtual methods
.method public a(La/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/i",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, La/d/a/l$a;

    invoke-direct {v0, p1}, La/d/a/l$a;-><init>(La/i;)V

    .line 40
    invoke-virtual {p1, v0}, La/i;->a(La/k;)V

    .line 41
    iget-object v1, p0, La/d/a/l;->a:La/d$a;

    invoke-interface {v1, v0}, La/d$a;->a(Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, La/i;

    invoke-virtual {p0, p1}, La/d/a/l;->a(La/i;)V

    return-void
.end method

.class public final La/d/a/g;
.super Ljava/lang/Object;
.source "OperatorAny.java"

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
        "<",
        "Ljava/lang/Boolean;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:La/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/c/e",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final b:Z


# direct methods
.method public constructor <init>(La/c/e;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/c/e",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, La/d/a/g;->a:La/c/e;

    .line 37
    iput-boolean p2, p0, La/d/a/g;->b:Z

    .line 38
    return-void
.end method


# virtual methods
.method public a(La/j;)La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<-",
            "Ljava/lang/Boolean;",
            ">;)",
            "La/j",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, La/d/b/a;

    invoke-direct {v0, p1}, La/d/b/a;-><init>(La/j;)V

    .line 43
    new-instance v1, La/d/a/g$1;

    invoke-direct {v1, p0, v0, p1}, La/d/a/g$1;-><init>(La/d/a/g;La/d/b/a;La/j;)V

    .line 92
    invoke-virtual {p1, v1}, La/j;->a(La/k;)V

    .line 93
    invoke-virtual {p1, v0}, La/j;->a(La/f;)V

    .line 94
    return-object v1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    check-cast p1, La/j;

    invoke-virtual {p0, p1}, La/d/a/g;->a(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method

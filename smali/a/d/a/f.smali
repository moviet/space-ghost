.class public final La/d/a/f;
.super Ljava/lang/Object;
.source "OnSubscribeMap.java"

# interfaces
.implements La/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/d/a/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "La/d$a",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final a:La/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/d",
            "<TT;>;"
        }
    .end annotation
.end field

.field final b:La/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/c/e",
            "<-TT;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La/d;La/c/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/d",
            "<TT;>;",
            "La/c/e",
            "<-TT;+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, La/d/a/f;->a:La/d;

    .line 41
    iput-object p2, p0, La/d/a/f;->b:La/c/e;

    .line 42
    return-void
.end method


# virtual methods
.method public a(La/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, La/d/a/f$a;

    iget-object v1, p0, La/d/a/f;->b:La/c/e;

    invoke-direct {v0, p1, v1}, La/d/a/f$a;-><init>(La/j;La/c/e;)V

    .line 47
    invoke-virtual {p1, v0}, La/j;->a(La/k;)V

    .line 48
    iget-object v1, p0, La/d/a/f;->a:La/d;

    invoke-virtual {v1, v0}, La/d;->a(La/j;)La/k;

    .line 49
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, La/j;

    invoke-virtual {p0, p1}, La/d/a/f;->a(La/j;)V

    return-void
.end method

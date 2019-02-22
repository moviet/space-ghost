.class public La/d/a/c;
.super Ljava/lang/Object;
.source "OnSubscribeDoOnEach.java"

# interfaces
.implements La/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/d/a/c$a;
    }
.end annotation

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
.field private final a:La/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/e",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final b:La/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/d",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La/d;La/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/d",
            "<TT;>;",
            "La/e",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, La/d/a/c;->b:La/d;

    .line 36
    iput-object p2, p0, La/d/a/c;->a:La/e;

    .line 37
    return-void
.end method


# virtual methods
.method public a(La/j;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, La/d/a/c;->b:La/d;

    new-instance v1, La/d/a/c$a;

    iget-object v2, p0, La/d/a/c;->a:La/e;

    invoke-direct {v1, p1, v2}, La/d/a/c$a;-><init>(La/j;La/e;)V

    invoke-virtual {v0, v1}, La/d;->a(La/j;)La/k;

    .line 42
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, La/j;

    invoke-virtual {p0, p1}, La/d/a/c;->a(La/j;)V

    return-void
.end method

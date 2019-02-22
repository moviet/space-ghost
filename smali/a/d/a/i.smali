.class public final La/d/a/i;
.super Ljava/lang/Object;
.source "OperatorObserveOn.java"

# interfaces
.implements La/d$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/d/a/i$a;
    }
.end annotation

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
.field private final a:La/g;

.field private final b:Z

.field private final c:I


# direct methods
.method public constructor <init>(La/g;ZI)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, La/d/a/i;->a:La/g;

    .line 61
    iput-boolean p2, p0, La/d/a/i;->b:Z

    .line 62
    if-lez p3, :cond_0

    :goto_0
    iput p3, p0, La/d/a/i;->c:I

    .line 63
    return-void

    .line 62
    :cond_0
    sget p3, La/d/d/f;->a:I

    goto :goto_0
.end method


# virtual methods
.method public a(La/j;)La/j;
    .locals 4
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
    .line 67
    iget-object v0, p0, La/d/a/i;->a:La/g;

    instance-of v0, v0, La/d/c/e;

    if-eqz v0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-object p1

    .line 70
    :cond_1
    iget-object v0, p0, La/d/a/i;->a:La/g;

    instance-of v0, v0, La/d/c/k;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, La/d/a/i$a;

    iget-object v1, p0, La/d/a/i;->a:La/g;

    iget-boolean v2, p0, La/d/a/i;->b:Z

    iget v3, p0, La/d/a/i;->c:I

    invoke-direct {v0, v1, p1, v2, v3}, La/d/a/i$a;-><init>(La/g;La/j;ZI)V

    .line 75
    invoke-virtual {v0}, La/d/a/i$a;->d()V

    move-object p1, v0

    .line 76
    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    check-cast p1, La/j;

    invoke-virtual {p0, p1}, La/d/a/i;->a(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method

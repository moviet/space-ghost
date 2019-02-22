.class final La/d/d/h$b;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements La/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/d/d/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
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
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final b:La/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/c/e",
            "<",
            "La/c/a;",
            "La/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;La/c/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "La/c/e",
            "<",
            "La/c/a;",
            "La/k;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p1, p0, La/d/d/h$b;->a:Ljava/lang/Object;

    .line 154
    iput-object p2, p0, La/d/d/h$b;->b:La/c/e;

    .line 155
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
    .line 159
    new-instance v0, La/d/d/h$c;

    iget-object v1, p0, La/d/d/h$b;->a:Ljava/lang/Object;

    iget-object v2, p0, La/d/d/h$b;->b:La/c/e;

    invoke-direct {v0, p1, v1, v2}, La/d/d/h$c;-><init>(La/j;Ljava/lang/Object;La/c/e;)V

    invoke-virtual {p1, v0}, La/j;->a(La/f;)V

    .line 160
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 148
    check-cast p1, La/j;

    invoke-virtual {p0, p1}, La/d/d/h$b;->a(La/j;)V

    return-void
.end method

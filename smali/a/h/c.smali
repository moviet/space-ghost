.class public abstract La/h/c;
.super La/d;
.source "Subject.java"

# interfaces
.implements La/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "La/d",
        "<TR;>;",
        "La/e",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(La/d$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/d$a",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1}, La/d;-><init>(La/d$a;)V

    .line 28
    return-void
.end method


# virtual methods
.method public final d()La/h/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/h/b",
            "<TT;TR;>;"
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, La/h/b;

    if-ne v0, v1, :cond_0

    .line 56
    check-cast p0, La/h/b;

    .line 58
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, La/h/b;

    invoke-direct {v0, p0}, La/h/b;-><init>(La/h/c;)V

    move-object p0, v0

    goto :goto_0
.end method

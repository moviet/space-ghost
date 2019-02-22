.class public final La/h/a;
.super La/h/c;
.source "PublishSubject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/h/a$a;,
        La/h/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "La/h/c",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:La/h/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/h/a$b",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(La/h/a$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/h/a$b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0, p1}, La/h/c;-><init>(La/d$a;)V

    .line 67
    iput-object p1, p0, La/h/a;->b:La/h/a$b;

    .line 68
    return-void
.end method

.method public static c()La/h/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "La/h/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, La/h/a;

    new-instance v1, La/h/a$b;

    invoke-direct {v1}, La/h/a$b;-><init>()V

    invoke-direct {v0, v1}, La/h/a;-><init>(La/h/a$b;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, La/h/a;->b:La/h/a$b;

    invoke-virtual {v0}, La/h/a$b;->a()V

    .line 83
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, La/h/a;->b:La/h/a$b;

    invoke-virtual {v0, p1}, La/h/a$b;->a(Ljava/lang/Throwable;)V

    .line 78
    return-void
.end method

.method public a_(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, La/h/a;->b:La/h/a$b;

    invoke-virtual {v0, p1}, La/h/a$b;->a_(Ljava/lang/Object;)V

    .line 73
    return-void
.end method

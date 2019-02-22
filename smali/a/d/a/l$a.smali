.class final La/d/a/l$a;
.super La/j;
.source "SingleFromObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/d/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "La/j",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:La/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/i",
            "<-TT;>;"
        }
    .end annotation
.end field

.field b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field c:I


# direct methods
.method constructor <init>(La/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/i",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, La/j;-><init>()V

    .line 56
    iput-object p1, p0, La/d/a/l$a;->a:La/i;

    .line 57
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 83
    iget v0, p0, La/d/a/l$a;->c:I

    .line 84
    if-nez v0, :cond_1

    .line 85
    iget-object v0, p0, La/d/a/l$a;->a:La/i;

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-virtual {v0, v1}, La/i;->a(Ljava/lang/Throwable;)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 87
    const/4 v0, 0x2

    iput v0, p0, La/d/a/l$a;->c:I

    .line 88
    iget-object v0, p0, La/d/a/l$a;->b:Ljava/lang/Object;

    .line 89
    const/4 v1, 0x0

    iput-object v1, p0, La/d/a/l$a;->b:Ljava/lang/Object;

    .line 90
    iget-object v1, p0, La/d/a/l$a;->a:La/i;

    invoke-virtual {v1, v0}, La/i;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 73
    iget v0, p0, La/d/a/l$a;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 74
    invoke-static {p1}, La/f/c;->a(Ljava/lang/Throwable;)V

    .line 79
    :goto_0
    return-void

    .line 76
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, La/d/a/l$a;->b:Ljava/lang/Object;

    .line 77
    iget-object v0, p0, La/d/a/l$a;->a:La/i;

    invoke-virtual {v0, p1}, La/i;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a_(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 61
    iget v0, p0, La/d/a/l$a;->c:I

    .line 62
    if-nez v0, :cond_1

    .line 63
    iput v1, p0, La/d/a/l$a;->c:I

    .line 64
    iput-object p1, p0, La/d/a/l$a;->b:Ljava/lang/Object;

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    if-ne v0, v1, :cond_0

    .line 66
    const/4 v0, 0x2

    iput v0, p0, La/d/a/l$a;->c:I

    .line 67
    iget-object v0, p0, La/d/a/l$a;->a:La/i;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "The upstream produced more than one value"

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, La/i;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.class La/d/d/h$2;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements La/c/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/d/d/h;->c(La/g;)La/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/c/e",
        "<",
        "La/c/a;",
        "La/k;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:La/g;

.field final synthetic b:La/d/d/h;


# direct methods
.method constructor <init>(La/d/d/h;La/g;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, La/d/d/h$2;->b:La/d/d/h;

    iput-object p2, p0, La/d/d/h$2;->a:La/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/c/a;)La/k;
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, La/d/d/h$2;->a:La/g;

    invoke-virtual {v0}, La/g;->a()La/g$a;

    move-result-object v0

    .line 110
    new-instance v1, La/d/d/h$2$1;

    invoke-direct {v1, p0, p1, v0}, La/d/d/h$2$1;-><init>(La/d/d/h$2;La/c/a;La/g$a;)V

    invoke-virtual {v0, v1}, La/g$a;->a(La/c/a;)La/k;

    .line 120
    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 106
    check-cast p1, La/c/a;

    invoke-virtual {p0, p1}, La/d/d/h$2;->a(La/c/a;)La/k;

    move-result-object v0

    return-object v0
.end method

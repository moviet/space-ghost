.class La/d/d/h$1;
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
.field final synthetic a:La/d/c/b;

.field final synthetic b:La/d/d/h;


# direct methods
.method constructor <init>(La/d/d/h;La/d/c/b;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, La/d/d/h$1;->b:La/d/d/h;

    iput-object p2, p0, La/d/d/h$1;->a:La/d/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/c/a;)La/k;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, La/d/d/h$1;->a:La/d/c/b;

    invoke-virtual {v0, p1}, La/d/c/b;->a(La/c/a;)La/k;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    check-cast p1, La/c/a;

    invoke-virtual {p0, p1}, La/d/d/h$1;->a(La/c/a;)La/k;

    move-result-object v0

    return-object v0
.end method

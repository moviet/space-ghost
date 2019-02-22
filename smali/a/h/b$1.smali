.class La/h/b$1;
.super Ljava/lang/Object;
.source "SerializedSubject.java"

# interfaces
.implements La/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/h/b;-><init>(La/h/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/d$a",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:La/h/c;


# direct methods
.method constructor <init>(La/h/c;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, La/h/b$1;->a:La/h/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, La/h/b$1;->a:La/h/c;

    invoke-virtual {v0, p1}, La/h/c;->a(La/j;)La/k;

    .line 48
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 43
    check-cast p1, La/j;

    invoke-virtual {p0, p1}, La/h/b$1;->a(La/j;)V

    return-void
.end method

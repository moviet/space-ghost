.class final La/d/c/k$b;
.super Ljava/lang/Object;
.source "TrampolineScheduler.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/d/c/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "La/d/c/k$b;",
        ">;"
    }
.end annotation


# instance fields
.field final a:La/c/a;

.field final b:Ljava/lang/Long;

.field final c:I


# direct methods
.method constructor <init>(La/c/a;Ljava/lang/Long;I)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, La/d/c/k$b;->a:La/c/a;

    .line 109
    iput-object p2, p0, La/d/c/k$b;->b:Ljava/lang/Long;

    .line 110
    iput p3, p0, La/d/c/k$b;->c:I

    .line 111
    return-void
.end method


# virtual methods
.method public a(La/d/c/k$b;)I
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, La/d/c/k$b;->b:Ljava/lang/Long;

    iget-object v1, p1, La/d/c/k$b;->b:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    .line 116
    if-nez v0, :cond_0

    .line 117
    iget v0, p0, La/d/c/k$b;->c:I

    iget v1, p1, La/d/c/k$b;->c:I

    invoke-static {v0, v1}, La/d/c/k;->a(II)I

    move-result v0

    .line 119
    :cond_0
    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 102
    check-cast p1, La/d/c/k$b;

    invoke-virtual {p0, p1}, La/d/c/k$b;->a(La/d/c/k$b;)I

    move-result v0

    return v0
.end method

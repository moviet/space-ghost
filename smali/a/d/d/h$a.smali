.class final La/d/d/h$a;
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
    name = "a"
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


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, La/d/d/h$a;->a:Ljava/lang/Object;

    .line 134
    return-void
.end method


# virtual methods
.method public a(La/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, La/d/d/h$a;->a:Ljava/lang/Object;

    invoke-static {p1, v0}, La/d/d/h;->a(La/j;Ljava/lang/Object;)La/f;

    move-result-object v0

    invoke-virtual {p1, v0}, La/j;->a(La/f;)V

    .line 139
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 129
    check-cast p1, La/j;

    invoke-virtual {p0, p1}, La/d/d/h$a;->a(La/j;)V

    return-void
.end method

.class public abstract La/i;
.super Ljava/lang/Object;
.source "SingleSubscriber.java"

# interfaces
.implements La/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "La/k;"
    }
.end annotation


# instance fields
.field private final a:La/d/d/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, La/d/d/i;

    invoke-direct {v0}, La/d/d/i;-><init>()V

    iput-object v0, p0, La/i;->a:La/d/d/i;

    return-void
.end method


# virtual methods
.method public final a(La/k;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, La/i;->a:La/d/d/i;

    invoke-virtual {v0, p1}, La/d/d/i;->a(La/k;)V

    .line 68
    return-void
.end method

.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Throwable;)V
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, La/i;->a:La/d/d/i;

    invoke-virtual {v0}, La/d/d/i;->b()Z

    move-result v0

    return v0
.end method

.method public final d_()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, La/i;->a:La/d/d/i;

    invoke-virtual {v0}, La/d/d/i;->d_()V

    .line 73
    return-void
.end method

.class final La/d/d/c$g;
.super Ljava/lang/Object;
.source "InternalObservableUtils.java"

# interfaces
.implements La/c/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/d/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/c/e",
        "<",
        "Ljava/util/List",
        "<+",
        "La/d",
        "<*>;>;[",
        "La/d",
        "<*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, La/d/d/c$g;->a(Ljava/util/List;)[La/d;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;)[La/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "La/d",
            "<*>;>;)[",
            "La/d",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 89
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [La/d;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/d;

    return-object v0
.end method

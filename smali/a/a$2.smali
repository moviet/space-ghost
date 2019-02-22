.class final La/a$2;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements La/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/b;)V
    .locals 1

    .prologue
    .line 81
    invoke-static {}, La/i/c;->a()La/k;

    move-result-object v0

    invoke-interface {p1, v0}, La/b;->a(La/k;)V

    .line 82
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 78
    check-cast p1, La/b;

    invoke-virtual {p0, p1}, La/a$2;->a(La/b;)V

    return-void
.end method

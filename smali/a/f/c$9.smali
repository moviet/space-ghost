.class final La/f/c$9;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"

# interfaces
.implements La/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/f/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/c/f",
        "<",
        "La/d;",
        "La/d$a;",
        "La/d$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/d;La/d$a;)La/d$a;
    .locals 1

    .prologue
    .line 112
    invoke-static {}, La/f/f;->a()La/f/f;

    move-result-object v0

    invoke-virtual {v0}, La/f/f;->c()La/f/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, La/f/d;->a(La/d;La/d$a;)La/d$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    check-cast p1, La/d;

    check-cast p2, La/d$a;

    invoke-virtual {p0, p1, p2}, La/f/c$9;->a(La/d;La/d$a;)La/d$a;

    move-result-object v0

    return-object v0
.end method

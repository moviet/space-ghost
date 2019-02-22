.class final La/f/c$11;
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
        "La/h;",
        "La/h$a;",
        "La/h$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/h;La/h$a;)La/h$a;
    .locals 3

    .prologue
    .line 127
    invoke-static {}, La/f/f;->a()La/f/f;

    move-result-object v0

    invoke-virtual {v0}, La/f/f;->d()La/f/h;

    move-result-object v1

    .line 129
    invoke-static {}, La/f/i;->a()La/f/h;

    move-result-object v0

    if-ne v1, v0, :cond_0

    .line 133
    :goto_0
    return-object p2

    :cond_0
    new-instance v0, La/d/a/l;

    new-instance v2, La/d/a/n;

    invoke-direct {v2, p2}, La/d/a/n;-><init>(La/h$a;)V

    invoke-virtual {v1, p1, v2}, La/f/h;->a(La/h;La/d$a;)La/d$a;

    move-result-object v1

    invoke-direct {v0, v1}, La/d/a/l;-><init>(La/d$a;)V

    move-object p2, v0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 123
    check-cast p1, La/h;

    check-cast p2, La/h$a;

    invoke-virtual {p0, p1, p2}, La/f/c$11;->a(La/h;La/h$a;)La/h$a;

    move-result-object v0

    return-object v0
.end method

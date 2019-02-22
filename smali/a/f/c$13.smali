.class final La/f/c$13;
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
        "La/a;",
        "La/a$a;",
        "La/a$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/a;La/a$a;)La/a$a;
    .locals 1

    .prologue
    .line 148
    invoke-static {}, La/f/f;->a()La/f/f;

    move-result-object v0

    invoke-virtual {v0}, La/f/f;->e()La/f/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, La/f/a;->a(La/a;La/a$a;)La/a$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 145
    check-cast p1, La/a;

    check-cast p2, La/a$a;

    invoke-virtual {p0, p1, p2}, La/f/c$13;->a(La/a;La/a$a;)La/a$a;

    move-result-object v0

    return-object v0
.end method

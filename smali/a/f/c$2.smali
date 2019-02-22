.class final La/f/c$2;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"

# interfaces
.implements La/c/e;


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
        "La/c/e",
        "<",
        "Ljava/lang/Throwable;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 173
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, La/f/c$2;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 176
    invoke-static {}, La/f/f;->a()La/f/f;

    move-result-object v0

    invoke-virtual {v0}, La/f/f;->d()La/f/h;

    move-result-object v0

    invoke-virtual {v0, p1}, La/f/h;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

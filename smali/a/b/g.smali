.class public final La/b/g;
.super Ljava/lang/RuntimeException;
.source "OnErrorThrowable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/b/g$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 98
    if-nez p0, :cond_0

    .line 99
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    .line 101
    :cond_0
    invoke-static {p0}, La/b/b;->c(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 102
    instance-of v1, v0, La/b/g$a;

    if-eqz v1, :cond_1

    .line 104
    check-cast v0, La/b/g$a;

    invoke-virtual {v0}, La/b/g$a;->a()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 110
    :goto_0
    return-object p0

    .line 109
    :cond_1
    new-instance v0, La/b/g$a;

    invoke-direct {v0, p1}, La/b/g$a;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v0}, La/b/b;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

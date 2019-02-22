.class public Lfineclouds/com/mylibrary/a/d/a;
.super Ljava/lang/Object;
.source "DeviceInfoCollector.java"


# direct methods
.method public static a(Landroid/content/Context;)Lfineclouds/com/mylibrary/a/c/c;
    .locals 2

    .prologue
    .line 13
    new-instance v0, Lfineclouds/com/mylibrary/a/c/c;

    invoke-direct {v0}, Lfineclouds/com/mylibrary/a/c/c;-><init>()V

    .line 14
    invoke-static {}, Lfineclouds/com/mylibrary/a/d/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfineclouds/com/mylibrary/a/c/c;->c(Ljava/lang/String;)V

    .line 15
    invoke-static {p0}, Lfineclouds/com/mylibrary/a/d/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfineclouds/com/mylibrary/a/c/c;->d(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lfineclouds/com/mylibrary/a/d/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfineclouds/com/mylibrary/a/c/c;->e(Ljava/lang/String;)V

    .line 17
    const-string v1, "2C:Removed"

    invoke-virtual {v0, v1}, Lfineclouds/com/mylibrary/a/c/c;->f(Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lfineclouds/com/mylibrary/a/d/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfineclouds/com/mylibrary/a/c/c;->i(Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lfineclouds/com/mylibrary/a/d/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfineclouds/com/mylibrary/a/c/c;->j(Ljava/lang/String;)V

    .line 20
    const-string v1, "2C:Removed"

    invoke-virtual {v0, v1}, Lfineclouds/com/mylibrary/a/c/c;->k(Ljava/lang/String;)V

    .line 21
    invoke-static {p0}, Lfineclouds/com/mylibrary/a/d/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfineclouds/com/mylibrary/a/c/c;->h(Ljava/lang/String;)V

    .line 22
    invoke-static {p0}, Lfineclouds/com/mylibrary/a/d/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfineclouds/com/mylibrary/a/c/c;->g(Ljava/lang/String;)V

    .line 23
    invoke-static {p0}, Lfineclouds/com/mylibrary/a/d/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfineclouds/com/mylibrary/a/c/c;->b(Ljava/lang/String;)V

    .line 24
    const-string v1, "2C:Removed"

    invoke-virtual {v0, v1}, Lfineclouds/com/mylibrary/a/c/c;->a(Ljava/lang/String;)V

    .line 25
    return-object v0
.end method

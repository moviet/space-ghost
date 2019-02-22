.class public Lfineclouds/com/mylibrary/a/d/c;
.super Ljava/lang/Object;
.source "HeadInfoCollector.java"


# direct methods
.method public static a(Landroid/content/Context;)Lfineclouds/com/mylibrary/a/c/d;
    .locals 4

    .prologue
    .line 15
    new-instance v0, Lfineclouds/com/mylibrary/a/c/d;

    invoke-direct {v0}, Lfineclouds/com/mylibrary/a/c/d;-><init>()V

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfineclouds/com/mylibrary/a/c/d;->b(Ljava/lang/String;)V

    .line 17
    invoke-static {p0}, Lfineclouds/com/mylibrary/a/d/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfineclouds/com/mylibrary/a/c/d;->d(Ljava/lang/String;)V

    .line 18
    invoke-static {p0}, Lfineclouds/com/mylibrary/a/d/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfineclouds/com/mylibrary/a/c/d;->e(Ljava/lang/String;)V

    .line 19
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfineclouds/com/mylibrary/a/c/d;->l(Ljava/lang/String;)V

    .line 20
    const-string v1, "2C:Removed"

    invoke-virtual {v0, v1}, Lfineclouds/com/mylibrary/a/c/d;->m(Ljava/lang/String;)V

    .line 21
    const-string v1, "2C:Removed"

    invoke-virtual {v0, v1}, Lfineclouds/com/mylibrary/a/c/d;->n(Ljava/lang/String;)V

    .line 22
    const-string v1, "2C:Removed"

    invoke-virtual {v0, v1}, Lfineclouds/com/mylibrary/a/c/d;->p(Ljava/lang/String;)V

    .line 23
    const-string v1, "2C:Removed"

    invoke-virtual {v0, v1}, Lfineclouds/com/mylibrary/a/c/d;->c(Ljava/lang/String;)V

    .line 24
    invoke-static {p0}, Lfineclouds/com/mylibrary/a/d/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfineclouds/com/mylibrary/a/c/d;->h(Ljava/lang/String;)V

    .line 25
    const-string v1, "2C:Removed"

    invoke-virtual {v0, v1}, Lfineclouds/com/mylibrary/a/c/d;->j(Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lfineclouds/com/mylibrary/a/d/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfineclouds/com/mylibrary/a/c/d;->k(Ljava/lang/String;)V

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfineclouds/com/mylibrary/a/c/d;->f(Ljava/lang/String;)V

    .line 28
    const-string v1, ""

    invoke-virtual {v0, v1}, Lfineclouds/com/mylibrary/a/c/d;->g(Ljava/lang/String;)V

    .line 29
    const-string v1, ""

    invoke-virtual {v0, v1}, Lfineclouds/com/mylibrary/a/c/d;->i(Ljava/lang/String;)V

    .line 30
    const-string v1, ""

    invoke-virtual {v0, v1}, Lfineclouds/com/mylibrary/a/c/d;->o(Ljava/lang/String;)V

    .line 31
    const-string v1, "2C:Removed"

    invoke-virtual {v0, v1}, Lfineclouds/com/mylibrary/a/c/d;->r(Ljava/lang/String;)V

    .line 32
    invoke-static {p0}, Lfineclouds/com/mylibrary/a/d/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfineclouds/com/mylibrary/a/c/d;->q(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lfineclouds/com/mylibrary/a/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfineclouds/com/mylibrary/a/c/d;->a(Ljava/lang/String;)V

    .line 34
    return-object v0
.end method

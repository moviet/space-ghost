.class public Lfineclouds/com/mylibrary/a/c;
.super Ljava/lang/Object;
.source "PSStatistics.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {p0, p1, v0}, Lfineclouds/com/mylibrary/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 16
    return-void
.end method

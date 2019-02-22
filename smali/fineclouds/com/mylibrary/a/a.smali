.class public Lfineclouds/com/mylibrary/a/a;
.super Ljava/lang/Object;
.source "PSCollector.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:J

.field private static c:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 15
    const-string v0, "AppOpen"

    sput-object v0, Lfineclouds/com/mylibrary/a/a;->a:Ljava/lang/String;

    .line 16
    sput-wide v2, Lfineclouds/com/mylibrary/a/a;->b:J

    .line 17
    sput-wide v2, Lfineclouds/com/mylibrary/a/a;->c:J

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    new-instance v0, Lfineclouds/com/mylibrary/a/c/b;

    invoke-direct {v0}, Lfineclouds/com/mylibrary/a/c/b;-><init>()V

    .line 20
    invoke-virtual {v0, p1}, Lfineclouds/com/mylibrary/a/c/b;->a(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0, p2}, Lfineclouds/com/mylibrary/a/c/b;->a(Ljava/util/Map;)V

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lfineclouds/com/mylibrary/a/c/b;->a(J)V

    .line 24
    new-instance v1, Lfineclouds/com/mylibrary/a/a/a;

    invoke-static {}, Lfineclouds/com/mylibrary/a/b;->a()Lfineclouds/com/mylibrary/a/b/c;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lfineclouds/com/mylibrary/a/a/a;-><init>(Landroid/content/Context;Lfineclouds/com/mylibrary/a/c/b;Lfineclouds/com/mylibrary/a/b/c;)V

    .line 25
    invoke-virtual {v1}, Lfineclouds/com/mylibrary/a/a/a;->c()V

    .line 26
    return-void
.end method

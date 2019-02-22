.class public Lfineclouds/com/mylibrary/a/b;
.super Ljava/lang/Object;
.source "PSConfig.java"


# static fields
.field public static a:I

.field public static b:I

.field private static c:Z

.field private static d:I

.field private static e:Lfineclouds/com/mylibrary/a/b/c;

.field private static f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 10
    const/4 v0, 0x0

    sput-boolean v0, Lfineclouds/com/mylibrary/a/b;->c:Z

    .line 11
    sput v1, Lfineclouds/com/mylibrary/a/b;->d:I

    .line 13
    sput v1, Lfineclouds/com/mylibrary/a/b;->a:I

    .line 14
    const/4 v0, 0x2

    sput v0, Lfineclouds/com/mylibrary/a/b;->b:I

    .line 16
    const-string v0, "MMX_001"

    sput-object v0, Lfineclouds/com/mylibrary/a/b;->f:Ljava/lang/String;

    return-void
.end method

.method public static a()Lfineclouds/com/mylibrary/a/b/c;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lfineclouds/com/mylibrary/a/b;->e:Lfineclouds/com/mylibrary/a/b/c;

    return-object v0
.end method

.method public static a(Lfineclouds/com/mylibrary/a/b/c;)V
    .locals 0

    .prologue
    .line 26
    sput-object p0, Lfineclouds/com/mylibrary/a/b;->e:Lfineclouds/com/mylibrary/a/b/c;

    .line 27
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    sput-object p0, Lfineclouds/com/mylibrary/a/b;->f:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lfineclouds/com/mylibrary/a/b;->c:Z

    return v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lfineclouds/com/mylibrary/a/b;->f:Ljava/lang/String;

    return-object v0
.end method

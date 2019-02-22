.class public final Lcom/a/a/b/c;
.super Ljava/lang/Object;
.source "Environment.java"


# static fields
.field public static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Lcom/a/a/b/c;->a()Z

    move-result v0

    sput-boolean v0, Lcom/a/a/b/c;->a:Z

    return-void
.end method

.method private static a()Z
    .locals 1

    .prologue
    .line 22
    :try_start_0
    const-string v0, "a.d"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    const/4 v0, 0x1

    .line 25
    :goto_0
    return v0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    const/4 v0, 0x0

    goto :goto_0
.end method

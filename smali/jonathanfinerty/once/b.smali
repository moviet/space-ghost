.class public Ljonathanfinerty/once/b;
.super Ljava/lang/Object;
.source "Once.java"


# static fields
.field private static a:J

.field private static b:Ljonathanfinerty/once/c;

.field private static c:Ljonathanfinerty/once/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    const-wide/16 v0, -0x1

    sput-wide v0, Ljonathanfinerty/once/b;->a:J

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 36
    sget-object v0, Ljonathanfinerty/once/b;->b:Ljonathanfinerty/once/c;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ljonathanfinerty/once/c;

    const-string v1, "TagLastSeenMap"

    invoke-direct {v0, p0, v1}, Ljonathanfinerty/once/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Ljonathanfinerty/once/b;->b:Ljonathanfinerty/once/c;

    .line 40
    :cond_0
    sget-object v0, Ljonathanfinerty/once/b;->c:Ljonathanfinerty/once/d;

    if-nez v0, :cond_1

    .line 41
    new-instance v0, Ljonathanfinerty/once/d;

    const-string v1, "ToDoSet"

    invoke-direct {v0, p0, v1}, Ljonathanfinerty/once/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Ljonathanfinerty/once/b;->c:Ljonathanfinerty/once/d;

    .line 44
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 46
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 47
    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    sput-wide v0, Ljonathanfinerty/once/b;->a:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    goto :goto_0
.end method

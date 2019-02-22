.class Ljonathanfinerty/once/a;
.super Ljava/lang/Object;
.source "AsyncSharedPreferenceLoader.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljonathanfinerty/once/a$1;

    invoke-direct {v0, p0}, Ljonathanfinerty/once/a$1;-><init>(Ljonathanfinerty/once/a;)V

    iput-object v0, p0, Ljonathanfinerty/once/a;->b:Landroid/os/AsyncTask;

    .line 21
    iput-object p1, p0, Ljonathanfinerty/once/a;->a:Landroid/content/Context;

    .line 22
    iget-object v0, p0, Ljonathanfinerty/once/a;->b:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 23
    return-void
.end method

.method static synthetic a(Ljonathanfinerty/once/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Ljonathanfinerty/once/a;->a:Landroid/content/Context;

    return-object v0
.end method
